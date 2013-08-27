########################################################################
#
# Vip TCL
#
# .vip on/off 
# .addvip nick
# .listvip
# .remvip numar ( il iei din lista )
#
#un TCL de adaugat VIp-uri pt fiecare canal.Aceste nick-uri la intrare         
#vor primii din partea eggdrop-ului voice.Desigur exista si un timer
#pentru verificare daca toate VIP-urile au VOICE :)
#Have FUn :P
#                                      DaNioN ProductionS
#######################################################################

#Aici setezi timpu in care sa faca verificarea daca VIp-urile au voice

set viptime "30"

#Daca vreti ca nick-ul sa primeasca si un mesaj seteaza aici "1"
#daca nu seteaza "0"

set viphowmsg "1"

#Daca ai setat mai sus "1" seteaza aici mesajul

set vipmsg "Ai primit VOICE deorece esti in lista de VIP a acestui canal :)"

#Aici setezi cine poate adauga vipurile si activa tcl-ul

set vipwho "Nmn|MN"

#######################################################################

bind pub $vipwho .vip vipstatus
bind pub $vipwho .addvip addvip
bind pub $vipwho .remvip remvip
bind pub $vipwho .listvip listvip
bind join - * vipscan
setudef flag vip


if {![info exists vips_running]} {
timer $viptime vips
set vips_running 1
}

proc vipstatus {nick host hand chan arg} {
set flag "vip"
set why [lindex [split $arg] 0]
if {$why == "" } { puthelp "NOTICE $nick :use .vip <on> / <off>"
return 0
}
if {$why == "on"} {
channel set $chan +$flag
puthelp "NOTICE $nick :Am activat sistemul de VIP pe $chan"
return 0
}
if {$why == "off"} {
channel set $chan -$flag
puthelp "NOTICE $nick :Am dezactivat sistemul de VIP pe $chan"
return 0
}
}

proc addvip {nick host hand chan arg} {
set dir "logs/vip($chan).txt"
set vip [join [lindex [split $arg] 0]]
if {$vip == ""} { puthelp "NOTICE $nick :Foloseste .addvip <nick>"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}

set file [open $dir a]
puts $file $vip
close $file
puthelp "NOTICE $nick :Am adaugat ca VIP - $vip - in baza mea de date"
}

proc listvip {nick host hand chan arg} {
set dir "logs/vip($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu exista VIP-URI !"
return 0
}

foreach vip $data {
set i [expr $i +1]
lappend vipnumber $i.$vip
}
foreach txt [wordwrap [join $vipnumber " "] 200] {
puthelp "NOTICE $nick :Userii cu statut de VIP sunt :"
puthelp "NOTICE $nick :$txt"
}
}

proc remvip {nick host hand chan arg} {
set dir "logs/vip($chan).txt"
set number [join [lindex [split $arg] 0]]
if {$number == ""} { puthelp "NOTICE $nick :Foloseste .remvip <numar> (il iei din lista)"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
puthelp "NOTICE $nick :Am sters din lista de VIP-URI nick-ul cu numarul $number.Te rog verifica cu .listvip"
}

proc vipscan {nick host hand chan} {
global vipmsg viphowmsg
set dir "logs/vip($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
if {$data == ""} { 
return 0
}
foreach vip $data {
if {[string match -nocase $nick $vip]} {
if {$viphowmsg == "1"} {
puthelp "NOTICE $nick :$vipmsg"
}
pushmode $chan +v $vip
}
}
}



proc vips { } {
global viptime
foreach chan [channels] {
set dir "logs/vip($chan).txt"
if {[channel get $chan vip]} {
putlog "verific VIP-urile pe $chan.."
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
foreach vip $data {
if {[onchan $vip $chan]} {
if {![isvoice $vip $chan]} {
pushmode $chan +v $vip
}
}
}
}
}
timer $viptime vips
return 1
}


proc wordwrap {str {len 100} {splitChr { }}} { 
   set out [set cur {}]; set i 0 
   foreach word [split [set str][unset str] $splitChr] { 
     if {[incr i [string len $word]]>$len} { 
         lappend out [join $cur $splitChr] 
         set cur [list $word] 
         set i [string len $word] 
      } { 
         lappend cur $word 
      } 
      incr i 
   } 
   lappend out [join $cur $splitChr] 
}



putlog "VIP TCL by DaNioN Loaded"