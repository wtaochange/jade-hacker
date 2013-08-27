##########################################################################
#
# InfoChan
#
#Arata data de creearea a canalelor.
#
#FOloseste !cc <#canal>
#                                          BLaCkShaDoW ProductionS
#########################################################################

#Aici setezi cine poate folosii aceasta comanda

set ccwho "nm|-"

#########################################################################

bind pub $ccwho !cc infochanpublic

proc createdpublic { from keyword arguments } {
set chan $::chan
set date [lindex [split $arguments] 2]
set dates [ctime $date]
puthelp "PRIVMSG $chan :Canalul a fost creeat in data de :$dates"
unbind RAW - 329 createdpublic
}

proc nocreatedpublic { from keyword arguments } {
set chan $::chan
puthelp "PRIVMSG $chan :Acest canal nu este creeat.Te rog specifica altul"
unbind RAW - 403 nocreatedpublic
}

proc infochanpublic {nick host hand chan arg} {
set ::chan $chan
set c [lindex [split $arg] 0]
if {$c == ""} { puthelp "NOTICE $nick :Use !cc <chan>"
return 0
}
putquick "MODE $c"
bind raw - 329 createdpublic
bind raw - 403 nocreatedpublic
}

