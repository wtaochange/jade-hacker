bind pub -|- @horoscop check:zodie

setudef flag horoscop

proc check:zodie {nick host hand chan arg} {
global settings

if {![channel get $chan horoscop]} {puthelp "NOTICE $nick :FAILED: Horoscop isn`t set. Try !chanset +horoscop"; return}

set arg [lindex $arg 0]

if {$arg == "" || ![regexp {^(berbec|taur|gemeni|rac|leu|fecioara|balanta|scorpion|sagetator|capricorn|varsator|pesti)$} $arg]} {
putserv "NOTICE $nick :Foloseste: !horoscop <zodie> : zodie = <berbec|taur|gemeni|rac|leu|fecioara|balanta|scorpion|sagetator|capricorn|varsator|pesti>"
return 0
}

set pagina "http://www.zodii.ro/zodiac/$arg*zodie_$arg-horoscop_zilnic.html"
set http [http::config -useragent mozilla]
set http [http::geturl $pagina -timeout [expr 1000 * 10]]
set html [http::data $http]
http::cleanup $http ;
regexp {<div class="textArticol">(.*)} $html horoscop
regsub -all "<div class=\"textArticol\">" $horoscop "" horoscop
regsub -all "</div>" $horoscop "" horoscop
putserv "PRIVMSG $nick :[string toupper $arg]: $horoscop"
}
putlog "Horoscop loaded sucessfully. Modificat de IuClik"