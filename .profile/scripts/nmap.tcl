bind pub - !nmap port_scan
proc port_scan {nick uhost handle chan args} {
       putserv "PRIVMSG $chan : Scanning $args Sa Vedem Porturile"
       global data_var
       set data_var [exec nmap $args]
       set l [split $data_var "\r\n"]
       foreach i $l { puthelp "PRIVMSG $chan : $i " }
       putlog "<<$chan>> !$handle! !nmap"
}
putlog "s4ve !nmap loaded.."
