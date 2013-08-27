package require http

bind pub -|- !cs checkcsc

proc checkcsc {nick host hand chan arg} {

        set valchan [join [lindex [split $arg] 0]]
        if { $valchan == "" } { return 0 }
        set token [http::config -useragent "lynx"]
        set dachan [wt:filter $valchan]
        set token [http::geturl "http://194.109.147.174/live/check_app.php?name=$dachan"]
        set html [http::data $token]

	if {[string match "*No applications*" $html]} {
                puthelp "PRIVMSG $chan :$valchan: No existe ninguna aplicación en CService para este canal o ya esta registrado"
		    return 0
        }

        if {[string match "*DB is currently being maintained*" $html]} {
                puthelp "PRIVMSG $chan :$valchan: La Base de Datos de CService esta fuera de servicio en este momento"
		    return 0
        }

        upvar #0 $token state

        foreach {name value} $state(meta) {

                if {[regexp -nocase ^location$ $name]} {

                        set regurl "http://cservice.undernet.org/live/$value"
                        set token [http::geturl $regurl]
                        set html [http::data $token]
                        set html [split $html "\n"]
                        set regobj 0
			set regcomment ""
                        foreach line $html {
                                 if {[string match "*by user :*" $line]} {
                                        regexp {(.*)<b>(.*)</b>(.*)} $line match blah reguser blah
                                 }


                                 if {[string match "*Posted on :*" $line]} {
                                        regexp {(.*)<b>(.*)</b>(.*)} $line match blah regdate blah
                                 }

                                if {[string match "*Current status :*" $line]} {
                       			regexp {(.*)<b>(.*)</b>(.*)} $line match blah regstatus blah
					regsub -all {<[^>]*>} $regstatus {} regstatus
                                }

                                if {[string match "*Decision comment :*" $line]} {
  					regexp {(.*)<b>(.*)</b>(.*)} $line match blah regcomment blah
					regsub -all {<[^>]*>} $regcomment {} regcomment2
                                }

                                if {[string match "*Comment :*" $line]} {
                                        incr regobj 1
                                }
                                if {![info exists regcomment2]} {
                                        set regcomment2 "n/a"
                                }
                        }
		}
        }
        set regstatus2 [string tolower $regstatus]
        if {$regstatus2 == "pending"} {
	  set regstatus "\00312$regstatus"
        } elseif {$regstatus2 == "incoming"} {
          set regstatus "\00308$regstatus"
        } elseif {$regstatus2 == "rejeced"} {
	  set regstatus "\00304$regstatus"
	} elseif {$regstatus2 == "accepted"} {
	  set regstatus "\00309$regstatus"
        } elseif {$regstatus2 == "ready for review"} {
	  set regstatus "\00306$regstatus"
        } elseif {$regstatus2 == "cancelled by the applicant"} {
	  set regstatus "\00314$regstatus"
        }

	    putserv "PRIVMSG $chan :\0031\002\00302|\0031\002 \0031\002Aplicación CService\0031\002 \0031\002\00302|\0031\002\0031\002\00302|\0031\002\0031\002\00302|\0031\002 \0031\002#Canal:\0031\002 $valchan \0031\002\00302|\0031\002 \0031\002Estado:\0031\002 \002$regstatus\002 \0031\002\00302|\0031\002 \0031\002Username:\0031\002 $reguser \0031\002\00302|\0031\002 \0031\002Fecha:\0031\002 $regdate \0031\002\00302|\0031\002 \0031\002Objeciones:\0031\002 $regobj \0031\002\00302|\0031\002 \0031\002Comentarios:\0031\002 $regcomment2 \0031\002\00302|\0031\002 \0031\002URL:\0031\002 $regurl \0031\002\00302|\0031\002"
        return 0
}

proc wt:filter {x {y ""} } {

        for {set i 0} {$i < [string length $x]} {incr i} {
                switch -- [string index $x $i] {
                        "é" {append y "%E9"}
                        "è" {append y "%E8"}
                        "î" {append y "%CE"}
                        "É" {append y "%E9"}
                        "È" {append y "%E8"}
                        "Î" {append y "%CE"}
                        "&" {append y "%26"}
                        "#" {append y "%23"}
                        " " {append y "+"}
                        default {append y [string index $x $i]}
                }
        }
        return $y
}


#################################################################################


putlog "Check CService Channel Aplication para #AyudaIRC @ UnderNet by 1BaRDaHL * 1bardahl@linuxmail.org 1v1.0 cargado."