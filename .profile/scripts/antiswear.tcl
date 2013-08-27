proc anti:swear {nick uhost hand chan text} {     
       global username badwords punished            
       
       if {![botisop $chan] || ![channel get $chan antiswear] || [check:fo:ch $hand $chan $nick]} {return 0}   
       set swears "$badwords"
       set how "swear"
       set why "antiswear"
       foreach swearword [string tolower $swears] {  
          if {[string match -nocase "* $swearword *" " $text "]} {
	newchanban $chan [a:maskhost -host $uhost] $username "channel $why protection enabled (Time:[channel get $chan ban-time])" [channel get $chan ban-time] sticky
	putcmdlog "<<${username}>> $why protection -- $chan ${nick}!${uhost}"  }        } 
}

set badwords {
"*fuck*" 
"*muie*" 
"*ass*" 
"*whore*" 
"*shit*" 
"*cunt*" 
"*suck*" 
"*dick*" 
"*suck*" 
"*penis*" 
"*bitch*" 
"*asshole*" 
"*fucker*" 
"*fuckin`*" 
"*fucking*" 
"*masturbate*"
"*pula*"
"*pwla*"
"*pola*"
"*coaie*"
"*floci*"
"*gaoz*"
"*pizda*"
"*pidar*"
"*gandon*"
"*poola*"
"*muist*"
"*fut*"
"*coaie*"
"*suka*"
"*suca*"
"*matii*"
"*lindic*"
"*sperma*"
"*curva*"
"*sugi*"
"*suge*"
"*dobitoc*"
"*cretin*"
"*idiot*"
"*fut*"
"*futut*"
"*fututa*"
"*masturbat*"
"*masturbeaza*"
"*masturba*"
"*gandon*"
"*hui*"
"*pohui*"
"*pizdet*"
"*vafla*"
"*coaie*"
"*sugar*"
"*mata*"
"*linge*"
"*laba*"
"*fut*"
}

bind pubm -|- *             anti:swear