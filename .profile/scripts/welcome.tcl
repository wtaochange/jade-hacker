if {![info exists welcomefile]} { 
   set welcomefile "welcomefile" 
   set welcomesetfile "welcomeset" 
} 

bind pub - !welcome pub_welcome 
bind pub - `welcome pub_welcome 
bind pub - .welcome pub_welcome 
bind join - *!*@* set_welcome 
bind msg - welcome welcome_set 
bind dcc - welcome welcome_set_dcc 


proc welcome:replace { nick chan line } { 
  global botnick 
  if {[string match "*%nick%*" $line]} { regsub -all %nick% $line $nick line } 
  if {[string match "*%chan%*" $line]} { regsub -all %chan% $line $chan line } 
  return $line 
} 


proc set_welcome {nick uhost hand chan} { 
  global random_welcome setwelcome botnick welcome:replace 

 if {$botnick != $nick} { 
  if [channel get $chan welcome] { 
  if {[info exists setwelcome([string tolower $chan])] && [lindex $setwelcome([string tolower $chan]) 0] != ""} { 
    set i $setwelcome([string tolower $chan]) 
    puthelp "PRIVMSG $nick :[welcome:replace $nick $chan $i]" 

   } { 

     foreach i [array names random_welcome] { 
        if {[lsearch -exact [string tolower [channels]] [string tolower $i]] != -1} { 
            if {[lindex $random_welcome([string tolower $i]) 0] != ""} { 
              set welcome [lindex $random_welcome($i) [rand [llength $random_welcome($i)]]] 
                if {$chan == $i} { 
                  puthelp "PRIVMSG $nick :$welcome 
                } 
            } 
} 
        } { 
            unset random_welcome($i) 
          } 
      } 
   } 
 } 
} 

proc welcome_show_pub {nick uhost hand channel arg} { 
  global random_welcome setwelcome botnick 


  if {![matchattr $hand m|m $channel]} { 
     putserv "PRIVMSG $channel :Sorry, you are not authorized to use this command." 
     return 0 
  } 

  if {[info exists setwelcome([string tolower $channel])] && [lindex $setwelcome([string tolower $channel]) 0] != ""} { 
    set i $setwelcome([string tolower $channel]) 
       putserv "PRIVMSG $channel :\002welcome Set to:\002  $i" 
       putserv "PRIVMSG $channel :Use welcome SET $channel OFF if you want to turn it off." 
    
    } 
    putserv "PRIVMSG $channel :Type \002/msg $botnick welcome HELP\002 for help." 

  return 1 
} 


proc welcome_show {nick uhost hand arg} { 
  global random_welcome setwelcome botnick 

  set channel [lindex $arg 0] 
  if {$channel == ""} { 
     putserv "PRIVMSG $nick :Usage: welcome <channel>" 
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

  if {[info exists setwelcome([string tolower $channel])] && [lindex $setwelcome([string tolower $channel]) 0] != ""} { 
    set i $setwelcome([string tolower $channel]) 
       putserv "PRIVMSG $nick :\002welcome Set to:\002  $i" 
       putserv "PRIVMSG $nick :Use welcome SET $channel OFF if you want to turn it off." 
    
    } 
  

  putserv "PRIVMSG $nick :Type \002/msg $botnick welcome HELP\002 for help." 

  return 1 
} 

proc welcome_show_dcc {hand idx arg} { 
  global random_welcome setwelcome botnick 

  set channel [lindex $arg 0] 
  if {$channel == ""} { 
     putidx $idx "Usage: welcome <channel>" 
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

  putidx $idx "welcomes for \002$channel\002:" 

  if {[info exists setwelcome([string tolower $channel])] && [lindex $setwelcome([string tolower $channel]) 0] != ""} { 
    set i $setwelcome([string tolower $channel]) 
       putidx $idx "\002welcome Set to:\002  $i" 
       putidx $idx "Use welcome SET $channel OFF if you want to turn it off." 
       } 


  
  putidx $idx "Type \002.welcome HELP\002 for help." 

  return 1 
} 

proc welcome_set_pub {nick uhost hand channel arg} { 
  global setwelcome 

  if {![matchattr $hand m|m $channel]} { 
     putserv "PRIVMSG $channel :Sorry, you are not authorized to use this command." 
     return 0 
  } 
  if {[string tolower [lindex $arg 1]] != "-off"} { 
    putserv "PRIVMSG $channel :welcome set to: [lrange $arg 1 end]" 
    set setwelcome([string tolower $channel]) [lrange $arg 1 end] 
  } { 
    putserv "PRIVMSG $channel :welcome set off $channel" 
    set setwelcome([string tolower $channel]) [lrange "" 1 end] 
  } 
  
  putlog "Writing welcomes file..." 
  welcome_write 
  
  return 1 

} 


proc welcome_set {nick uhost hand arg} { 
  global setwelcome 

  set channel [lindex $arg 1] 

  if {$channel == ""} { 
     putserv "PRIVMSG $nick :Usage: welcome SET <channel> <welcome>" 
     putserv "PRIVMSG $nick :Or:    welcome SET <channel> OFF" 
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
    putserv "PRIVMSG $nick :welcome set to: [lrange $arg 1 end]" 
    set setwelcome([string tolower $channel]) [lrange $arg 1 end] 
  } { 
    putserv "PRIVMSG $nick :welcome set off $channel" 
    set setwelcome([string tolower $channel]) [lrange "" 1 end] 
  } 
  
  putlog "Writing welcomes file..." 
  welcome_write 
  
  return 1 

} 

proc welcome_set_dcc {hand idx arg} { 
  global setwelcome 

  set channel [lindex $arg 2] 

  if {$channel == ""} { 
     putidx $idx "Usage: welcome SET <channel> <welcome>" 
     putidx $idx "Or:    welcome SET <channel> OFF" 
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
    putidx $idx "welcome set to: [lrange $arg 1 end]" 
    set setwelcome([string tolower $channel]) [lrange $arg 2 end] 
  } { 
    putidx $idx "welcome set off $channel" 
    set setwelcome([string tolower $channel]) [lrange "" 2 end] 
  } 
  
  
  putlog "Writing welcomes file..." 
  welcome_write 
  
  return 1 

} 
proc welcome_load {} { 
   global random_welcome setwelcome welcomefile welcomesetfile 

   if {[info exists random_welcome]} {unset random_welcome} 
   if {[catch {set fd [open $welcomefile r]}] != 0} {return 0} 
   while {![eof $fd]} { 
      set inp [gets $fd] 
      if {[eof $fd]} {break} 
      if {[string trim $inp " "] == ""} {continue} 
      set channel [lindex $inp 0] 
      lappend random_welcome([string tolower $channel]) [lrange $inp 1 end] 
   } 
   close $fd 

   if {[info exists setwelcome]} {unset setwelcome} 
   if {[catch {set fd [open $welcomesetfile r]}] != 0} {return 0} 
   while {![eof $fd]} { 
      set inp [gets $fd] 
      if {[eof $fd]} {break} 
      if {[string trim $inp " "] == ""} {continue} 
      set channel [lindex $inp 0] 
      lappend setwelcome([string tolower $channel]) [lrange $inp 1 end] 
   } 
   close $fd 



   return 1 
} 

proc welcome_write {} { 
   global welcomefile random_welcome setwelcome welcomesetfile 

   set fd [open $welcomefile w] 
   foreach channel [array names random_welcome] { 
      if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] != -1} { 
         if {[lindex $random_welcome([string tolower $channel]) 0] != ""} { 
            foreach i $random_welcome([string tolower $channel]) { 
               puts $fd "$channel $i" 
            } 
         } 
      } 
   } 
   close $fd 

   set fd [open $welcomesetfile w] 
   foreach channel [array names setwelcome] { 
      if {[lsearch -exact [string tolower [channels]] [string tolower $channel]] != -1} { 
         if {[lindex $setwelcome([string tolower $channel]) 0] != ""} { 
            set i $setwelcome([string tolower $channel]) 
               puts $fd "$channel $i" 
         } 
      } 
   } 
   close $fd 

   return 1 
} 


proc msg_welcome {nick uhost hand arg} { 
  switch [string tolower [lindex $arg 0]] { 
    "set"       {set r [welcome_set $nick $uhost $hand $arg]} 
    "help"      {set r [welcome_help $nick $uhost $hand $arg]} 
    default     {set r [welcome_show $nick $uhost $hand $arg]} 
  } 
  return $r 
} 

proc pub_welcome {nick uhost hand channel arg} { 
  switch [string tolower [lindex $arg 0]] { 
    "set"       {set r [welcome_set_pub $nick $uhost $hand $channel $arg]} 
    "help"      {set r [welcome_help_pub $nick $uhost $hand $channel $arg]} 
    default     {set r [welcome_show_pub $nick $uhost $hand $channel $arg]} 
  } 
  return $r 
} 


proc dcc_welcome {hand idx arg} { 
  switch [string tolower [lindex $arg 0]] { 
    "set"       {set r [welcome_set_dcc $hand $idx $arg]} 
    "help"      {set r [welcome_help_dcc $hand $idx $arg]} 
    default     {set r [welcome_show_dcc $hand $idx $arg]} 
  } 
  return $r 
} 


welcome_load 

if {![info exists set_welcome_running] && ![info exists random_welcome] && ![info exists setwelcome]} { 
  set set_welcome_running 1 
}