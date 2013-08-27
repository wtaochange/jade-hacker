if {![info exists leavefile]} {
   set leavefile "leavefile"
   set leavesetfile "leaveset"
}

bind pub - !leave pub_leave
bind pub - `leave pub_leave
bind pub - .leave pub_leave
bind part - *!*@* set_leave
bind msg - leave leave_set
bind dcc - leave leave_set_dcc


proc leave:replace { nick chan line } {
  global botnick
  if {[string match "*%nick%*" $line]} { regsub -all %nick% $line $nick line }
  if {[string match "*%chan%*" $line]} { regsub -all %chan% $line $chan line }
  return $line
}


proc set_leave {nick uhost hand chan text} {
  global random_leave setleave botnick leave:replace

 if {$botnick != $nick} {
  if [channel get $chan leave] {
  if {[info exists setleave([string tolower $chan])] && [lindex $setleave([string tolower $chan]) 0] != ""} {
    set i $setleave([string tolower $chan]) 
    puthelp "PRIVMSG $nick :[leave:replace $nick $chan $i]"

   } {

     foreach i [array names random_leave] {
        if {[lsearch -exact [string tolower [channels]] [string tolower $i]] != -1} {
            if {[lindex $random_leave([string tolower $i]) 0] != ""} {
              set leave [lindex $random_leave($i) [rand [llength $random_leave($i)]]]
                if {$chan == $i} {
                  puthelp "PRIVMSG $nick :$leave
                }
            }
}
        } {
            unset random_leave($i)
          }
      }
   }
 }
}

proc leave_show_pub {nick uhost hand channel arg} {
  global random_leave setleave botnick 


  if {![matchattr $hand m|m $channel]} {
     putserv "PRIVMSG $channel :Sorry, you are not authorized to use this command."
     return 0
  }

  if {[info exists setleave([string tolower $channel])] && [lindex $setleave([string tolower $channel]) 0] != ""} {
    set i $setleave([string tolower $channel]) 
       putserv "PRIVMSG $channel :\002leave Set to:\002  $i"
       putserv "PRIVMSG $channel :Use leave SET $channel OFF if you want to turn it off."
   
    }
    putserv "PRIVMSG $channel :Type \002/msg $botnick leave HELP\002 for help."

  return 1
}


proc leave_show {nick uhost hand arg} {
  global random_leave setleave botnick 

  set channel [lindex $arg 0]
  if {$channel == ""} {
     putserv "PRIVMSG $nick :Usage: leave <channel>"
     return 0
  }

    if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] == -1} {
     putserv "PRIVMSG $nick :I am not on ${channel}."
     return 0
  }

    if {![matchattr $hand m|m $channel]} {
     putserv "PRIVMSG $nick :Sorry, you are not authorized to use this command."
     return 0
  }

  if {[info exists setleave([string tolower $channel])] && [lindex $setleave([string tolower $channel]) 0] != ""} {
    set i $setleave([string tolower $channel]) 
       putserv "PRIVMSG $nick :\002leave Set to:\002  $i"
       putserv "PRIVMSG $nick :Use leave SET $channel OFF if you want to turn it off."
   
    }
  

  putserv "PRIVMSG $nick :Type \002/msg $botnick leave HELP\002 for help."

  return 1
}

proc leave_show_dcc {hand idx arg} {
  global random_leave setleave botnick 

  set channel [lindex $arg 0]
  if {$channel == ""} {
     putidx $idx "Usage: leave <channel>"
     return 0
  }

  
  if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] == -1} {
     putidx $idx "I am not on ${channel}."
     return 0
  }

  if {![matchattr $hand m|m $channel]} {
     putidx $idx "Sorry, you are not authorized to use this command."
     return 0
  }

  putidx $idx "leaves for \002$channel\002:"

  if {[info exists setleave([string tolower $channel])] && [lindex $setleave([string tolower $channel]) 0] != ""} {
    set i $setleave([string tolower $channel]) 
       putidx $idx "\002leave Set to:\002  $i"
       putidx $idx "Use leave SET $channel OFF if you want to turn it off."
       }


 
  putidx $idx "Type \002.leave HELP\002 for help."

  return 1
}

proc leave_set_pub {nick uhost hand channel arg} {
  global setleave

  if {![matchattr $hand m|m $channel]} {
     putserv "PRIVMSG $channel :Sorry, you are not authorized to use this command."
     return 0
  }
  if {[string tolower [lindex $arg 1]] != "-off"} {
    putserv "PRIVMSG $channel :leave set to: [lrange $arg 1 end]"
    set setleave([string tolower $channel]) [lrange $arg 1 end]
  } {
    putserv "PRIVMSG $channel :leave set off $channel"
    set setleave([string tolower $channel]) [lrange "" 1 end]
  }
  
  putlog "Writing leaves file..."
  leave_write
  
  return 1

}


proc leave_set {nick uhost hand arg} {
  global setleave

  set channel [lindex $arg 1]

  if {$channel == ""} {
     putserv "PRIVMSG $nick :Usage: leave SET <channel> <leave>"
     putserv "PRIVMSG $nick :Or:    leave SET <channel> OFF"
     return 0
  }

  if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] == -1} {
     putserv "PRIVMSG $nick :I am not on ${channel}."
     return 0
  }

  if {![matchattr $hand m|m $channel]} {
     putserv "PRIVMSG $nick :Sorry, you are not authorized to use this command."
     return 0
  }

  if {[string tolower [lindex $arg 1]] != "-off"} {
    putserv "PRIVMSG $nick :leave set to: [lrange $arg 1 end]"
    set setleave([string tolower $channel]) [lrange $arg 1 end]
  } {
    putserv "PRIVMSG $nick :leave set off $channel"
    set setleave([string tolower $channel]) [lrange "" 1 end]
  }
  
  putlog "Writing leaves file..."
  leave_write
  
  return 1

}

proc leave_set_dcc {hand idx arg} {
  global setleave

  set channel [lindex $arg 2]

  if {$channel == ""} {
     putidx $idx "Usage: leave SET <channel> <leave>"
     putidx $idx "Or:    leave SET <channel> OFF"
     return 0
  }

  if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] == -1} {
     putidx $idx "I am not on ${channel}."
     return 0
  }

  if {![matchattr $hand m|m $channel]} {
     putidx $idx "Sorry, you are not authorized to use this command."
     return 0
  }

  if {[string tolower [lindex $arg 2]] != "-off"} {
    putidx $idx "leave set to: [lrange $arg 1 end]"
    set setleave([string tolower $channel]) [lrange $arg 2 end]
  } {
    putidx $idx "leave set off $channel"
    set setleave([string tolower $channel]) [lrange "" 2 end]
  }
  
  
  putlog "Writing leaves file..."
  leave_write
  
  return 1

}
proc leave_load {} {
   global random_leave setleave leavefile leavesetfile

   if {[info exists random_leave]} {unset random_leave}
   if {[catch {set fd [open $leavefile r]}] != 0} {return 0}
   while {![eof $fd]} {
      set inp [gets $fd]
      if {[eof $fd]} {break}
      if {[string trim $inp " "] == ""} {continue}
      set channel [lindex $inp 0]
      lappend random_leave([string tolower $channel]) [lrange $inp 1 end]
   }
   close $fd

   if {[info exists setleave]} {unset setleave}
   if {[catch {set fd [open $leavesetfile r]}] != 0} {return 0}
   while {![eof $fd]} {
      set inp [gets $fd]
      if {[eof $fd]} {break}
      if {[string trim $inp " "] == ""} {continue}
      set channel [lindex $inp 0]
      lappend setleave([string tolower $channel]) [lrange $inp 1 end]
   }
   close $fd



   return 1
}

proc leave_write {} {
   global leavefile random_leave setleave leavesetfile

   set fd [open $leavefile w]
   foreach channel [array names random_leave] {
      if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] != -1} {
         if {[lindex $random_leave([string tolower $channel]) 0] != ""} {
            foreach i $random_leave([string tolower $channel]) {
               puts $fd "$channel $i"
            }
         }
      }
   }
   close $fd

   set fd [open $leavesetfile w]
   foreach channel [array names setleave] {
      if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] != -1} {
         if {[lindex $setleave([string tolower $channel]) 0] != ""} {
            set i $setleave([string tolower $channel]) 
               puts $fd "$channel $i"
         }
      }
   }
   close $fd

   return 1
}


proc msg_leave {nick uhost hand arg} {
  switch [string tolower [lindex $arg 0]] {
    "set"       {set r [leave_set $nick $uhost $hand $arg]}
    "help"      {set r [leave_help $nick $uhost $hand $arg]}
    default     {set r [leave_show $nick $uhost $hand $arg]}
  }
  return $r
}

proc pub_leave {nick uhost hand channel arg} {
  switch [string tolower [lindex $arg 0]] {
    "set"       {set r [leave_set_pub $nick $uhost $hand $channel $arg]}
    "help"      {set r [leave_help_pub $nick $uhost $hand $channel $arg]}
    default     {set r [leave_show_pub $nick $uhost $hand $channel $arg]}
  }
  return $r
}


proc dcc_leave {hand idx arg} {
  switch [string tolower [lindex $arg 0]] {
    "set"       {set r [leave_set_dcc $hand $idx $arg]}
    "help"      {set r [leave_help_dcc $hand $idx $arg]}
    default     {set r [leave_show_dcc $hand $idx $arg]}
  }
  return $r
}


leave_load

if {![info exists set_leave_running] && ![info exists random_leave] && ![info exists setleave]} {
  set set_leave_running 1
}