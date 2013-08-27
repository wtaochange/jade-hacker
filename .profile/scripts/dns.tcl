#--------------------------------------------------------
#
#                     !Dns Version 3.1
#                   Scripted by I_strike
#
#
#                   !dns <adresse/host>
#                   !User@host <nick>
#                   !dnsnick <nick>
#                   !amsg <message>
#
#           You can chat with me on #egg-world from Undernet
#               ( /server quebec.qu.ca.undernet.org )
#
#-------------------------------------------------------

# SET THE CHARACTER THAT WILL BE USED BEFORE PUBLIC QUERRIES
# EXAMPLE: "#" => #seen, #op .... DEFAULT: "!"

set dnshost(cmdchar) "!"


#-----------------please don't CHANGE ANY OF THE FOLLOWING LINES----------------------
bind pub - [string trim $dnshost(cmdchar)]dns dns:res
bind pub n|n [string trim $dnshost(cmdchar)]amsg pub:amsg
bind pub - [string trim $dnshost(cmdchar)]User@host pub:host
bind pub - [string trim $dnshost(cmdchar)]dnsnick dns:nick
bind raw * 311 raw:host
bind raw * 401 raw:fail

set dns_chan ""
set dns_host ""
set dns_nick ""
set dns_bynick ""

proc pub:host {nick uhost hand chan arg} {
global dns_chan
set dns_chan "$chan"
putserv "WHOIS [lindex $arg 0]"
}

proc raw:host {from signal arg} {
global dns_chan dns_nick dns_host dns_bynick
set dns_nick "[lindex $arg 1]"
set dns_host "*!*[lindex $arg 2]@[lindex $arg 3]"
foreach dns_say $dns_chan { puthelp "PRIVMSG $dns_say :12The User@host of7 $dns_nick 12iS7 $dns_host ." }
if {$dns_bynick == "oui"} {
                set hostip [split [lindex $arg 3] ]
                dnslookup $hostip resolve_rep $dns_chan $hostip
                set dns_bynick "non"
}
}

proc raw:fail {from signal arg} {
global dns_chan
set arg "[lindex $arg 1]"
foreach dns_say $dns_chan { puthelp "PRIVMSG $dns_say :\037\004$arg\017: No such nick." }
}

proc pub:ver {nick uhost hand chan text} {
putserv "PRIVMSG $chan : dNs Resolver bY Rafa"
}

proc dns:res {nick uhost hand chan text} {
 if {$text == ""} {
            puthelp "privmsg $chan :Syntax: [string trim $dnshost(cmdchar)]dns <host or ip>"
        } else {
                set hostip [split $text]
                dnslookup $hostip resolve_rep $chan $hostip
        }
}

proc dns:nick {nick uhost hand chan arg} {
global dns_chan dns_bynick dnshost
 if {$arg == ""} {
 puthelp "privmsg $chan :Syntax: [string trim $dnshost(cmdchar)]dnsnick <nick>"
        } else {
set dns_chan "$chan"
set dns_bynick "oui"
putserv "WHOIS [lindex $arg 0]"
        }
}

proc resolve_rep {ip host status chan hostip} {
        if {!$status} {
                puthelp "privmsg $chan :13U1nable 13T1o 13R1esolve 14 $hostip . 14."
        } elseif {[regexp -nocase -- $ip $hostip]} {
                puthelp "privmsg $chan :13R1esolved12: 13» 1 $ip  13« 14To 13» 1 $host . 13«"
        } else {
                puthelp "privmsg $chan :13R1esolved12: 13» 1 $host  13« 14To 13»1 $ip 13«"
        }
}

putlog "dNs Resolver bY Rafa"
