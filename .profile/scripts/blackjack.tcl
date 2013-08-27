#
#
#                                                              # BLACKJACK (21) #
#
#   # Comenzi:
#	!blackjack on 		- Porneste Jocul BlackJack pe Canal
#	!blackjack off		- Opreste Jocul Blackjack pe Canal
#	!blackjack 			- Incepe jocul
#	!blackjack stats	- Arata statisticile Blackjack pentru canalul respectiv
#	!blackjack version	- Arata versiunea Jocului Blackjack
#	!join 				- Intra in joc
#	!carte 				- Trage o carte
#	!ajunge				- Termina
#	!stop				- Doar pentru Owner, opreste jocul de tot
# # Configuratie:
#
# Semnul de comanda al jocului, strandard este !blackjack
set ::blackjack(trigger) "!"

# Floodtime, 300 secunde = 5 minute
set ::blackjack(flood) "10"

#
# # Nu schimba nimic mai joc de aceasta linie, numai daca ai idee de ceea ce faci!

set bj(autor) 		"Dudu"
set bj(web) 		"http://www.aditza.net"
set bj(nume) 		"TCL Blackjack"
set bj(versiune) 	"v1.1"

setudef 	flag 	blackjack
setudef 	str  	blackjackc

bind pub 	* 	$::blackjack(trigger)blackjack 	game:blackjack
bind pub 	* 	$::blackjack(trigger)join 		blackjack:join
bind pub 	* 	$::blackjack(trigger)carte 		blackjack:carte
bind pub 	* 	$::blackjack(trigger)ajunge	 	blackjack:ajunge
bind pub 	n 	$::blackjack(trigger)stop 		blackjack:stop

# Procese
proc str2pat {string} {
	return [string map [list \\ \\\\ \[ \\\[ \] \\\] ] $string]
}

proc game:blackjack {nick host hand chan arg} {
	switch -exact -- [string tolower [lindex [split $arg] 0]] {
		"on" {
			if {![matchattr $hand n|n $chan]} {
				return 0
			}
			if {[channel get $chan "blackjack"]} {
				putserv "notice $nick :Jocul Blackjack este deja activ pe canalul $chan."
				return 0
			} elseif {![channel get $chan "blackjack"]} {
				channel set $chan +blackjack
				putserv "notice $nick :Jocul Blackjack a fost activat pe canalul $chan."
			}
		}
		"off" {
			if {![matchattr $hand n|n $chan]} {
				return 0
			}
			if {![channel get $chan "blackjack"]} {
				putserv "notice $nick :Jocul Blackjack este deja dezactivat pe canalul $chan."
				return 0
			} elseif {[channel get $chan "blackjack"]} {
				channel set $chan -blackjack
				putserv "notice $nick :Jocul Blackjack a fost dezactivat de pe canalul $chan."
			}
		}
		"stats" {
			if {[info exists ::blackjack(flood,count,$chan)] && [expr {[unixtime] - $::blackjack(flood,count,$chan)}] < 300} {
			} else {
				if {[channel get $chan "blackjackc"] == ""} {
					putserv "privmsg $chan :Nu am vazut nici un joc pe canalul $chan !"
				} elseif {[channel get $chan "blackjackc"] == "1"} {
					putserv "privmsg $chan :Am vazut un singur joc pe canalul $chan !"
				} else {
					putserv "privmsg $chan :Am vazut [channel get $chan "blackjackc"] jocuri pe canalul $chan !"
				}
				set ::blackjack(flood,count,$chan) [unixtime]
				utimer 300 [list unset ::blackjack(flood,count,$chan)]
			}
		}
		"version" {
			global bj
			if {[info exists ::blackjack(flood,version,$chan)] && [expr {[unixtime] - $::blackjack(flood,version,$chan)}] < 300} {
			return 0
			} else {
				putserv "privmsg $chan :Folosesc $bj(nume) $bj(versiune) modificat de $bj(autor) - $bj(web)"
				set ::blackjack(flood,version,$chan) [unixtime]
				utimer 300 [list unset ::blackjack(flood,version,$chan)]
			}
		}
		"" {
			if {![channel get $chan "blackjack"]} {
				return 0
			} elseif {[info exists ::blackjack(flood,$chan)] && [expr {[unixtime] - $::blackjack(flood,$chan)}] < $::blackjack(flood)} {
				return 0
			} else {
				if {[info exists ::blackjack(request,$chan)] == "1" || [info exists ::blackjack(started,$chan)] == "1"} {
					puthelp "notice $nick :Este deja un joc Blackjack activ pe canalul $chan . Te rog sa fii mai atent data viitoare!"
					return 0
				} else {
					set ::blackjack(request,$chan) "1"
				}
			}
			if {$::blackjack(request,$chan) == "1"} {
				set ::blackjack(player,$chan) "[str2pat $nick]"
				set ::blackjack(active,$chan) "0"
				putserv "privmsg $chan :Jocul va porni in 30 de secunde! Tasteaza $::blackjack(trigger)join ca sa intrii in joc!"
				utimer 30 [list blackjack:expire $chan]
				return
			}
		}
	}
}

proc blackjack:join {nick host hand chan arg} {
	if {![channel get $chan "blackjack"]} {
		return 0
	} elseif {[info exists ::blackjack(request,$chan)] == "0"} {
		return 0
	} elseif {[llength $::blackjack(player,$chan)] == 10} {
		puthelp "notice $nick :Jocul Blackjack este deja plin! Te rog sa incerci data viitoare"
		return 0
	}
	if {[lsearch $::blackjack(player,$chan) [str2pat $nick]] == "-1"} {
		lappend ::blackjack(player,$chan) $nick
		puthelp "notice $nick :Ai fost inscris in Jocul BlackJack"
	} else {
		puthelp "notice $nick :Esti deja inscris in Jocul BlackJack"
	}
}

proc blackjack:expire {chan} {
	if {[llength $::blackjack(player,$chan)] < 2} {
		putserv "privmsg $chan :Cele 30 de secunde au trecut si nu s-a inscris nimeni in joc! Pentru a reporni jocul tasteaza !blackjack"
		unset ::blackjack(player,$chan)
		unset ::blackjack(request,$chan)
	} else {
		unset ::blackjack(request,$chan)
		set ::blackjack(started,$chan) "1"
		foreach player $::blackjack(player,$chan) {
			set ::blackjack(gesamt,wert,$chan,[getchanhost $player]) "0"
			set ::blackjack(gesamt,carten,$chan,[getchanhost $player]) ""
		}
		set ::blackjack(stapel,Trefla,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
		set ::blackjack(stapel,Inima-Neagra,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
		set ::blackjack(stapel,Inima-Rosie,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
		set ::blackjack(stapel,Romb,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
		set ::blackjack(stapel,alle,$chan) "Trefla Inima-Neagra Inima-Rosie Romb"
		putserv "privmsg $chan :Jocul incepe acum! Jucatorii sunt [join $::blackjack(player,$chan) ", "]. Trage o carte folosind comanda $::blackjack(trigger)carte. Cand esti sigur ca iti ajung tasteaza $::blackjack(trigger)ajunge. [lindex $::blackjack(player,$chan) 0] incepe!"
		set ::blackjack(idletimer,$chan) [utimer 30 [list blackjack:idle [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)] $chan]]
	}
}

proc blackjack:carte {nick host hand chan arg} {
	if {![channel get $chan "blackjack"]} {
		return 0
	} elseif {![info exists ::blackjack(started,$chan)]} {
		return 0
	} elseif {$nick != [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)]} {
		return 0
	}

	if {[info exists ::blackjack(idletimer,$chan)]} {
		killutimer $::blackjack(idletimer,$chan)
		unset ::blackjack(idletimer,$chan)
	}

	foreach stapel $::blackjack(stapel,alle,$chan) {
		if {[llength $::blackjack(stapel,$stapel,$chan)] < 1} {
			set ::blackjack(stapel,alle,$chan) "[lrange $::blackjack(stapel,alle,$chan) 0 [expr {[lsearch -exact $::blackjack(stapel,alle,$chan) $stapel] - 1}]] [lrange $::blackjack(stapel,alle,$chan) [expr {[lsearch -exact $::blackjack(stapel,alle,$chan) $stapel] + 1}] end]"
			set ::blackjack(stapel,$chan) "[rand [llength $::blackjack(stapel,alle,$chan)]]"
			set ::blackjack(stapelw,$chan) "[lindex $::blackjack(stapel,alle,$chan) $::blackjack(stapel,$chan)]"
			set ::blackjack(carte,$chan) "[rand [llength $::blackjack(stapel,$::blackjack(stapelw,$chan),$chan)]]"
			set ::blackjack(wert,$chan) "[lindex $::blackjack(stapel,[lindex $::blackjack(stapel,alle,$chan) $::blackjack(stapel,$chan)],$chan) $::blackjack(carte,$chan)]"
		} else {
			set ::blackjack(stapel,$chan) "[rand [llength $::blackjack(stapel,alle,$chan)]]"
			set ::blackjack(stapelw,$chan) "[lindex $::blackjack(stapel,alle,$chan) $::blackjack(stapel,$chan)]"
			set ::blackjack(carte,$chan) "[rand [llength $::blackjack(stapel,$::blackjack(stapelw,$chan),$chan)]]"
			set ::blackjack(wert,$chan) "[lindex $::blackjack(stapel,[lindex $::blackjack(stapel,alle,$chan) $::blackjack(stapel,$chan)],$chan) $::blackjack(carte,$chan)]"
		}
	}
	if {$::blackjack(stapelw,$chan) == "Trefla" || $::blackjack(stapelw,$chan) == "Inima-Neagra"} {
		set blackjack(farbe,$chan) "\0031,0"
	} elseif {$::blackjack(stapelw,$chan) == "Inima-Rosie" || $::blackjack(stapelw,$chan) == "Romb"} {
		set blackjack(farbe,$chan) "\0030,2"
	}

	if {$::blackjack(gesamt,wert,$chan,$host) == 21 || $::blackjack(gesamt,wert,$chan,$host) > 21} {
		puthelp "notice $nick :Ai deja $::blackjack(gesamt,wert,$chan,$host) puncte! Tasteaza $::blackjack(trigger)ajunge."
		return 0
	} elseif {$::blackjack(wert,$chan) == "Valet" || $::blackjack(wert,$chan) == "Dama" ||  $::blackjack(wert,$chan) == "Rege"} {
		set ::blackjack(gesamt,wert,$chan,$host) "[expr {$::blackjack(gesamt,wert,$chan,$host) + 10}]"
	} elseif {$::blackjack(wert,$chan) == "As"} {
		if {[expr {$::blackjack(gesamt,wert,$chan,$host) + 11}] > 21} {
			set ::blackjack(gesamt,wert,$chan,$host) "[expr {$::blackjack(gesamt,wert,$chan,$host) + 1}]"
		} else {
			set ::blackjack(gesamt,wert,$chan,$host) "[expr {$::blackjack(gesamt,wert,$chan,$host) + 11}]"
		}
	} else {
		set ::blackjack(gesamt,wert,$chan,$host) "[expr {$::blackjack(gesamt,wert,$chan,$host) + $::blackjack(wert,$chan)}]"
	}

	set ::blackjack(gesamt,carten,$chan,$host) " $::blackjack(gesamt,carten,$chan,$host) $blackjack(farbe,$chan)$::blackjack(stapelw,$chan) $::blackjack(wert,$chan)\003"

	putquick "notice $nick :Cartile tale sunt:$::blackjack(gesamt,carten,$chan,$host) - Total Puncte: $::blackjack(gesamt,wert,$chan,$host)"
	set ::blackjack(stapel,[lindex $::blackjack(stapel,alle,$chan) $::blackjack(stapel,$chan)],$chan) "[lrange $::blackjack(stapel,[lindex $::blackjack(stapel,alle,$chan) $::blackjack(stapel,$chan)],$chan) 0 [expr {$::blackjack(carte,$chan)-1}]] [lrange $::blackjack(stapel,[lindex $::blackjack(stapel,alle,$chan) $::blackjack(stapel,$chan)],$chan) [expr {$::blackjack(carte,$chan)+1}] end]"
}

proc blackjack:idle {nick chan} {
	putserv "privmsg $chan :Jucatorul $nick se pare ca doarme cu capul pe tastatura!"
	unset ::blackjack(idletimer,$chan)
	blackjack:ajunge $nick [getchanhost $nick] [nick2hand $nick] $chan keyed
}

proc blackjack:kick {nick chan} {
	set ::player(kick,$chan) "$::blackjack(player,$chan)"
	set ::blackjack(player,$chan) ""
	foreach players $::player(kick,$chan) {
		if {$players != $nick} {
			lappend ::blackjack(player,$chan) "$players"
		} else {
			continue;
		}
	}
	unset ::player(kick,$chan)
}

proc blackjack:ajunge {nick host hand chan arg} {
	if {![channel get $chan "blackjack"]} {
		return 0
	} elseif {![info exists ::blackjack(started,$chan)]} {
		return 0
	}
	if {$nick != [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)]} {
		return 0
	}
	if {$::blackjack(gesamt,wert,$chan,$host) == 0 && [llength $::blackjack(gesamt,carten,$chan,$host)] == 0 && $arg != "keyed"} {
		puthelp "notice $nick :Trebuie sa tragi macar o carte ca sa poti folosi comanda $::blackjack(trigger)ajunge"
		return 0
	} elseif {$::blackjack(gesamt,wert,$chan,[getchanhost [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)]]) > 21 || $::blackjack(gesamt,wert,$chan,[getchanhost [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)]]) == "0" && $arg == "keyed"} {
		blackjack:kick [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)] $chan
	} else {
		incr ::blackjack(active,$chan)
	}
	if {[expr {[llength $::blackjack(player,$chan)]-1}] < $::blackjack(active,$chan)} {
		if {[llength $::blackjack(player,$chan)] < 1} {
			putserv "privmsg $chan :Nu a castigat nici un jucator. Ar trebui sa mai invatzati sa jucati BlackJack!"
		} else {
			set ::blackjack(winner,$chan,check) "$::blackjack(gesamt,wert,$chan,[getchanhost [lindex $::blackjack(player,$chan) 0]])"
			set ::blackjack(winner,$chan) "[lindex $::blackjack(player,$chan) 0]"
			set ::blackjack(winner,$chan,zahl) "1"
			foreach player $::blackjack(player,$chan) {
				if {$::blackjack(winner,$chan) == $player} {
					continue;
				} elseif {$::blackjack(gesamt,wert,$chan,[getchanhost $player]) > 21} {
					continue;
				} elseif {$::blackjack(gesamt,wert,$chan,[getchanhost $player]) > $::blackjack(winner,$chan,check)} {
					set ::blackjack(winner,$chan) "$player"
					set ::blackjack(winner,$chan,check) "$::blackjack(gesamt,wert,$chan,[getchanhost $player])"
					continue;
				} elseif {$::blackjack(gesamt,wert,$chan,[getchanhost $player]) == $::blackjack(winner,$chan,check)} {
					lappend ::blackjack(winner,$chan) "$player"
					continue;
				}
			}
			if {[llength $::blackjack(winner,$chan)] > 1} {
				set ::blackjack(player,$chan) "$::blackjack(winner,$chan)"
				foreach player $::blackjack(player,$chan) {
					set ::blackjack(gesamt,wert,$chan,[getchanhost $player $chan]) "0"
					set ::blackjack(gesamt,carten,$chan,[getchanhost $player $chan]) ""
				}
				set ::blackjack(stapel,Trefla,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
				set ::blackjack(stapel,Inima-Neagra,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
				set ::blackjack(stapel,Inima-Rosie,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
				set ::blackjack(stapel,Romb,$chan) "As 2 3 4 5 6 7 8 9 10 Valet Dama Rege"
				set ::blackjack(stapel,alle,$chan) "Trefla Inima-Neagra Inima-Rosie Romb"
				set ::blackjack(active,$chan) "0"
				putserv "privmsg $chan :Jucatorii [join $::blackjack(player,$chan) ", "] au acelasi numar de puncte: $::blackjack(winner,$chan,check). Se va incepe o runda pentru departajare! [lindex $::blackjack(player,$chan) 0] incepe."
				set ::blackjack(idletimer,$chan) [utimer 30 [list blackjack:idle [lindex $::blackjack(player,$chan) 0] $chan]]
				return 0
			} else {
				putserv "privmsg $chan :Castigatorul este $::blackjack(winner,$chan) cu $::blackjack(gesamt,wert,$chan,[getchanhost $::blackjack(winner,$chan) $chan]) puncte!"
			}
			unset ::blackjack(winner,$chan)
			unset ::blackjack(winner,$chan,zahl)
			unset ::blackjack(winner,$chan,check)
		}
		if {[channel get $chan "blackjackc"] == ""} {
			set bjcount "0"
		} else {
		set bjcount "[channel get $chan blackjackc]"
		}
		incr bjcount
		channel set $chan blackjackc "$bjcount"
		set ::blackjack(flood,$chan) [unixtime]
		utimer 10 [list unset ::blackjack(flood,$chan)]
		foreach player $::blackjack(player,$chan) {
			unset ::blackjack(gesamt,wert,$chan,[getchanhost $player $chan])
		}
		unset ::blackjack(player,$chan)
		unset ::blackjack(started,$chan)
		unset ::blackjack(stapel,Trefla,$chan)
		unset ::blackjack(stapel,Inima-Neagra,$chan)
		unset ::blackjack(stapel,Inima-Rosie,$chan)
		unset ::blackjack(stapel,Romb,$chan)
		unset ::blackjack(stapel,alle,$chan)
		unset ::blackjack(stapel,$chan)
		unset ::blackjack(stapelw,$chan)
		unset ::blackjack(carte,$chan)
		unset ::blackjack(wert,$chan)
		return 0
	} else {
		putserv "privmsg $chan :Ok, [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)] tu esti urmatorul!"
		set ::blackjack(idletimer,$chan) [utimer 30 [list blackjack:idle [lindex $::blackjack(player,$chan) $::blackjack(active,$chan)] $chan]]
	}
}

proc blackjack:stop {nick host hand chan arg} {
	if {[info exists ::blackjack(request,$chan)]} {
		unset ::blackjack(request,$chan)
		putquick "notice $nick :Gata! Toate variabilele \$::blackjack(request,$chan) de pe $chan au fost resetate!"
	}
	if {[info exists ::blackjack(started,$chan)]} {
		unset ::blackjack(started,$chan)
		putquick "notice $nick :Gata! Toate variabilele \$::blackjack(started,$chan) de pe $chan au fost resetate!"
	}
}

putlog "Incarcat $bj(nume) $bj(versiune) modificat de $bj(autor) - $bj(web)"

# EOF