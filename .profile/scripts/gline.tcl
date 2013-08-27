#######################
#### G-Line Script ####
#######################
###
## Info
# Va permite sa aflati daca un ip este sau nu in gline si peste cat timp expira acesta.
###
## Comenzi:
# !gline ip
# !gline ~*@ip
# !gline *ident@ip
###
## Cum se instaleaza:
# Puteti instala acest TCL prin editarea fisierului eggdrop.conf.
# Mai întai copiati acest TCL in directorul dvs. preferat, apoi adaugati o linie in eggdrop.conf
#   source path/to/gline.tcl
# Salveaza fisierul config si dati comanda rehash botului.
# Dupa aceasta, script-ul este instalat.
#
###

#################
### Variables ###
#################
## General settings:
# Ce este accesul minim de care cineva are nevoie pentru a efectua comanda gline cu botul?
#  o = global op,   m = global master,   n = global owner
# |o = channel op, |m = channel master, |n = channel owner
set gline(acc) "-"
set gline(author) "DaNioN <danion_danion@yahoo.com>"
set gline(version) "1.1"

# End of Config
#############
### Binds ###
#############

bind pub $gline(acc) ".gline" gline:ip
bind pub $gline(acc) "!gline" gline:ip

#############
### Procs ###
#############
###
## Acest proces executa comanda de gline in cazul in care a fost tastata corect.
proc gline:ip { nickname hostname handle channel arguments } {
	global gline
  set target [lindex [split $arguments] 0]
	if {$target == ""} {
	putquick "PRIVMSG $channel :Please choose a target first."
	return 0
	}
	if {![string match -nocase *.*.*.* $target]} {
  putquick "PRIVMSG $channel :$nickname NO/Invalid IP pattern. USAGE: !gline 79.117.173.204"
  putlog "G-line INFO $channel :$nickname - INVALID IP PATTERN"
  return 0
  }
	putquick "gline $target"
  set ::glinechannel $channel
	set ::glinetarget $target
	bind RAW - 512 gline:nosuch
	bind RAW - 280 gline:info
}

###
## Acest proces afiseaza rezultatul procesului de verificare.
proc gline:putmsg { channel arguments } {
	putquick "PRIVMSG $channel :$arguments"
	}

###
## Acest proces seteaza mesajele gline`ului.
proc gline:info { from keyword arguments } {
	set channel $::glinechannel
  set target $::glinetarget
	set address [lindex $arguments 1]
	set timestamp [lindex $arguments 2]
	set reason [join [lrange $arguments 7 end]]
	gline:putmsg $channel "Ip-ul \00304\037$target\037\003 a fost gasit in gline cu motivul (\00302G-lined $reason\003). G-line`ul expira in data de \00302[clock format $timestamp -format "%d/%m/%Y"] \003la ora\00302 [clock format $timestamp -format "%H:%M:%S"]\003."
	gline:putmsg $channel "Timp ramas pana expira: \00304[duration [expr {$timestamp - [unixtime]}]]"
	unbind RAW - 280 gline:info
}

###
## Acest proces seteaza mesajul pentru ip-urile fara gline.
proc gline:nosuch { from keyword arguments } {
  set channel $::glinechannel
  set target $::glinetarget
  gline:putmsg $channel "\002NU\002 a fost gasit nici un g-line pentru ip-ul\00304 \037$target\037"
  unbind RAW - 512 gline:nosuch
}

putlog "\002GLine:\002 gline.tcl $gline(version) by $gline(author) is loaded."

## History
# 1.0  - Acest script cu aceleasi functionalitati.
# 1.1  - adaugat linia care afiseaza cat timp a mai ramas pana expira g-line`ul.
## End of Version History - www.craiova.tk
