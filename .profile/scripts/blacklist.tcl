#  $Id: blacklist.tcl,v 0.3 2004/07/26 20:06:03 Interzisu Exp $  #
#                                                               #
#  Commands:                                                    #
#  .blackadd <mask> <reason>                                    #
#  .blackdel <mask|#id>                                         #
#  .blacklist                                                   #
#################################################################


set blacklist_file "scripts/blacklist"


bind PUB  m|m \.blist      blacklist:list
bind PUB  m|m \.badd       blacklist:add
bind PUB  m|m \.bdel       blacklist:del
bind TIME -|- "0* * * * *" blacklist:sentry
bind JOIN -|- *            blacklist:join


proc blacklist:list {nickname hostname handle channel arguments} {
 global blacklist
  set entrys 0
  puthelp "NOTICE $nickname :Blacklist"
  puthelp "NOTICE $nickname :Nr. Nick                      Ip/Host"
  foreach entry [array names blacklist] {
    incr entrys
    set owner [lindex $blacklist($entry) 0]
    while {[string length $owner] < 15} {
      set owner "$owner "
    }
    if {[string length $entrys] < 2} {
      set target "$entrys "
    } else {
      set target $entrys
    }
    puthelp "NOTICE $nickname :#$target $owner $entry"
  }
  puthelp "NOTICE $nickname :Sfarsitul Listei."
}


proc blacklist:add {nickname hostname handle channel arguments} {
 global blacklist
  set arguments [blacklist:clean $arguments]
  set banmask [blacklist:validate:host [lindex $arguments 0]]
  if {([regexp -all -- {!} $banmask] > 1) || ([regexp -all -- {@} $banmask] > 1)} {
    puthelp "NOTICE $nickname :Scuze, nu poti adauga acest ban."
    return
  }
  set owner $handle
  if {[regexp {^(\d{1,2}|[0-3][0-6][0-5])$} [lindex $arguments 1]]} {
   set expire [expr ([lindex $arguments 1] * 86400) + [unixtime]]
   set reason [join [lrange $arguments 2 end]]
  } else {
   set expire 0
   set reason [join [lrange $arguments 1 end]]
  }
  if {[llength $reason] >= 1} {
    if {![info exists blacklist($banmask)]} {
      set blacklist($banmask) "$owner $expire $reason"
      puthelp "NOTICE $nickname :Done. $banmask Ban Reusit (mesaj: $reason)."
      blacklist:sentry
    } else {
      puthelp "NOTICE $nickname :Scuze, nu poti adauga acest ip/host."
    }
  } else {
    puthelp "NOTICE $nickname :Ai uitat sa pui mesajul de ban."
  }
}


proc blacklist:del {nickname hostname handle channel arguments} {
 global blacklist
  set arguments [blacklist:clean $arguments]
  set banmask [lindex $arguments 0]
  set success 0
  if {[regexp {^#([0-9]+)$} $banmask tmp number]} {
    set item 0
    foreach entry [array names blacklist] {
      incr item
      if {$item == $number} {
        unset blacklist($entry)
        set success 1
      }
    }
  } else {
    if {[info exists blacklist($banmask)]} {
      unset blacklist($banmask)
      set success 1
    }
  }
  if {$success == 0} {
    puthelp "NOTICE $nickname :Nu poti scoate acest ban. Incearca \$blacklist sa vezi banurile."
  } else {
    puthelp "NOTICE $nickname :Done."
  }
}


proc blacklist:sentry {{minute "0"} {hour "0"} {day "0"} {week "0"} {year "0"}} {
 global blacklist
  foreach channel [channels] {
    if {![botisop $channel]} {continue}
    foreach target [chanlist $channel] {
      set userhost [blacklist:weirdclean "$target![getchanhost $target]"]
      foreach entry [array names blacklist] {
        set expire [lindex $blacklist($entry) 1]
        if {$expire >= [unixtime] || ($expire == 0)} {
          set reason [lrange [blacklist:clean $blacklist($entry)] 2 end]
          set blackhost [blacklist:weirdclean $entry]
          if {[string match -nocase $blackhost $userhost]} {
            putquick "MODE $channel -o+b $target $entry"
            putquick "KICK $channel $target :[join $reason]"
          }
        } else {
          unset blacklist($entry)
        }
      }
    }
  }
  blacklist:save
}


proc blacklist:join {nickname hostname handle channel} {
 global blacklist
  if {![botisop $channel]} {return}
  set userhost [blacklist:weirdclean "$nickname![getchanhost $nickname]"]
  foreach entry [array names blacklist] {
    set reason [lrange [blacklist:clean $blacklist($entry)] 2 end]
    set blackhost [blacklist:weirdclean $entry]
    if {[string match -nocase $blackhost $userhost]} {
      putquick "MODE $channel -o+b $nickname $entry"
      putquick "KICK $channel $nickname :[join $reason]"
    }
  }
}


proc blacklist:validate:host {i} {
  regsub -all {\*+} $i {*} i
  array set ban {
    ident *
    host *
  }
  set ban(nick) $i
  if {[regexp -- {!} $i]} {
    regexp -- {^(.+?)!(.*?)(@(.*))?$} $i tmp ban(nick) ban(ident) tmp ban(host)
  } elseif {[regexp -- {@} $i]} {
    regexp -- {^(.+!)?(.*?)(@(.*))?$} $i tmp ban(nick) ban(ident) tmp ban(host)
  }
  foreach item [array names ban] {
    if {[string length $ban($item)] < 1} {
      set ban($item) *
    }
  }
  return $ban(nick)!$ban(ident)@$ban(host)
}


proc blacklist:load {} {
 global blacklist blacklist_file
  regexp {(\S+/)?} $blacklist_file tmp blacklist_dir
  if {$blacklist_dir != ""} {
    if {![file isdirectory $blacklist_dir]} {
      file mkdir $blacklist_dir
      putlog "Created directory: $blacklist_dir"
    }
  }
  if {![file exists $blacklist_file]} {
    array set blacklist {}
    return
  }
  if {[array exists blacklist]} {
    array unset blacklist
  }
  set file [open $blacklist_file r]
  while {![eof $file]} {
    gets $file line
    if {[regexp -- {(\S+)\s(\S+)\s(\S+)\s(.+)} $line tmp banmask owner expire reason]} {
      if {$expire >= [unixtime] || ($expire == 0)} {
        set blacklist($banmask) "$owner $expire $reason"
      }
    }
  }
  close $file
}


proc blacklist:save {} {
 global blacklist blacklist_file
  set file "[open $blacklist_file w]"
  foreach entry [array names blacklist] {
    puts $file "$entry $blacklist($entry)"
  }
  close $file
}


proc blacklist:weirdclean {i} {
  regsub -all -- \\\\ $i \001 i
  regsub -all -- \\\[ $i \002 i
  regsub -all -- \\\] $i \003 i
  regsub -all -- \\\} $i \004 i
  regsub -all -- \\\{ $i \005 i
  return $i
}


proc blacklist:clean {i} {
  regsub -all -- \\\\ $i \\\\\\\\ i
  regsub -all -- \\\[ $i \\\\\[ i
  regsub -all -- \\\] $i \\\\\] i
  regsub -all -- \\\} $i \\\\\} i
  regsub -all -- \\\{ $i \\\\\{ i
  regsub -all -- \\\" $i \\\\\" i
  return $i
}


blacklist:load

putlog "Script loaded: Blacklist :O by Interzisu"
