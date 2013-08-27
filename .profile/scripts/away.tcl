bind pub n !away do:away
 
proc do:away {nick uhost hand chan arg} {
   set awaymsg [lrange [split $arg] 0 end]
   if {$awaymsg == ""} { puthelp "PRIVMSG $chan : 2Format: 4!away 3<2Mesaj3|2Back3>"; return } 
   if {[string equal -nocase [lindex $awaymsg 0] back]} {puthelp "PRIVMSG $chan :14ScoT 4AwaY`uL 14SetaT de Tine !!"; puthelp "AWAY :"; return}
   puthelp "AWAY :[join $awaymsg]" 
   puthelp "PRIVMSG $chan : 14Done... 3Am SetaT 4AwaY`uL 14!!"
}