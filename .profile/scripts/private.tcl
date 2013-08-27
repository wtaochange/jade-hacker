#private tcl by blackshadow


bind join -|- * join:private

setudef flag private

proc join:private {nick uhost hand chan} { 
   global username 
    
   if {[channel get $chan private] && [botisop $chan] && ![matchattr $hand vf|fvom $chan]} { newchanban $chan [a:maskhost -host $uhost] $username "Private Chan!" [channel get $chan ban-time] sticky} 
}

putlog "private tcl by blackshadow loaded"