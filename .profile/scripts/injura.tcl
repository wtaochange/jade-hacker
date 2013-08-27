# Author : BLaCkShaDoW

bind pub - !injura pub_injura

set injs {
"mai tragi mah sarmale cu prashtia?"
"mai pui gogonele la CEC ba ?"
"tzi-o mai pui cu maica-ta?"
"te mai crezi mah vaca k umblai ieri cu talanga la gat"
"tzi-au dat drumu de la parnaie ma?"
"parca stateai la circ ba .... nu?"
"trage-tzi ba fermoaru la pantaloni ca ti se vede scula... ba nu se vede... nu ai.. a disparut"
"uscatule"
"varza paroasa"
"morcov putrezit ce eshti"
"doua fire doua paie \ azi tu iar linge co*ie "
"doua fire doua paie , iar ejti la parnaie"
"ba taci mah k mi s-au crapat oglinzile la baie"
"carpaciule"
"linge-blide"
"sacatare"
"vacozurule"
"shoseta nespalata din razboi"
"rashcetatule"
"mai batzi mah cuie cu maica-ta?"
"mai faci private cu X?"
"ieshi draq de pe irc k jegareshti firele"
"sarantocu' dreaq ... nici acum nu mi-ai dat inapoi ziarele alea de tzi le-am dat sa te inveleshti in gara cu ele"
"homeless"
"putoare jalnica"
"mai prinzi fluturi prin congelator?"
"mai dai la copca cu ciorapii?"
"vino draq shi dezlipeshte ciorapii de pe geamu meu k nu pot ...."
"mai dai la copca cu ciorapii?"
"vino draq shi dezlipeshte ciorapii de pe geamu meu k nu pot ...."
"mai mananci mah brazii de craciun?"
"tzi-ash da una da' mi-e k te fac mai simpatic"
"iar lingi tzurtzuri din corcodush pe post de skittles?"
"sa shtii k nu te iert k mi-ai baut after-shaveu'"
"shi sa-mi dai inapoi salamu'. Perversule!"
"ai intrat pana la urma in casa? ma iertzi k am lipit abtzibildu' cu 'Tragetzi', era o gluma ..."
"m-am intalnit cu sor-ta la consignatzie... era in vitrina ..."
"mai tzii minte cand te-am trimis la piatza sa cumperi un mega?"
"te mai scobeshti in dintzi cu lama de ras?"
"pana la urma papagalu' ala din colivie era taica-tu ?"
"Tzi-am vazut pisica ... de unde ai luat-o mah - de la alimentara?"
"shi pune-tzi draq un intrerupator in camera k m-am saturat de fatza ta electrocutata"
"apropos ... vezi k tzi-am legat clatza de la usa la 220! poate iti creste tensiunea ca ceea ce ai in pantaloni nu creste!"
"mai faci laba cu patentu !?"
"Cand o sugi tragi in tine ??!"
}

setudef flag injura

proc pub_injura {nick uhost hand chan rest} {
global injs
    if {$rest == ""} {
if {[string match "*+injura*" [channel info $chan]]} {
    puthelp "NOTICE $nick :Comanda: !injura <nick>" }
    return 0
   } {
    set who [lindex $rest 0]
    if {([regexp -nocase "blackshadow" $who]) || ([regexp -nocase "blitz" $who]) || ([regexp -nocase "black-shadow" $who])} { 
			putserv "KICK $chan $nick :\0032Injur-o tu pe ma-ta mai bine\0034!\003" 
			return 0 }
    set injur [lindex $injs [rand [llength $injs]]]
                                        putserv "PRIVMSG $chan :$who $injur" 
                                        return 0 }
}

putlog "Injura TCL loaded !"

