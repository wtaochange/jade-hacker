# Seteaza aici canalele pe care scriptul va functiona.Daca lasi "" inseamna ca scriptul va fi activ pe toate canalele pe care botul are op.
# Daca vrei sa setezi scriptul pentru un singur canal , sau mai multe , foloseste set chanz "#canal1 #canal2"
# Script downloadat de pe egghelp.org si editat / tradus de jonny (jonny@jonny.ro)
set chanz "#qd-shells"

# Metoda de pedepsire
# 1 - kick 2 - server ban 3 - ban local, 4 - ban global

set punishm "2"

# Motivul kick-ului

set kickr "NU folosi notice!"

# Tipul de ban
# Banuiesc ca sunt indeajunse optiuni ;)
# 1 - *!*@host.domain
# 2 - *!ident@host.domain
# 3 - *!*ident@host.domain
# 4 - *!ident@*
# 5 - *!*ident@*
# 6 - nick!*@*
# 7 - nick!ident@*
# 8 - nick!ident@host.doamin
# 9 - nick!*ident@host.domain
# 10 - nick!*@host

set bantype "1"

# Motivul banului
set banr "NU folosi notice!"

# Durata banului in minute, 0 = ban permanent, va fi folosit daca ai setat punishm la 3 sau 4
set btime "60"

bind NOTC - * NoticeBan

proc NoticeBan {nick uhost handle text dest} {
global botnick punishm kickr banr btime chanz bantype
if {(![validchan $dest]) || (![botisop $dest])} { return 0 }
if {[matchattr $nick mo|mo $dest] || [isop $nick $dest] || [isvoice $nick $dest] || [matchattr $nick o|o $dest]} {return 
0} 
if {([isbotnick $nick]) || ([string tolower $nick] == "chanserv") || (![onchan $nick $dest])} {return 0} 
if {($chanz != "") && ([lsearch -exact [split [string tolower $chanz]] [string tolower $dest]] == -1)} {return 0} 
if {$punishm != "1"} {
switch -- $bantype { 
1 { set banmask "*!*@[lindex [split $uhost @] 1]" }
2 { set banmask "*!$uhost" }
3 { set banmask "*!*$uhost" }
4 { set banmask "*![lindex [split $uhost @] 0]@*" }
5 { set banmask "*!*[lindex [split $uhost @] 0]@*" }
6 { set banmask "$nick!*@*" } 
7 { set banmask "$nick![lindex [split $uhost @] 0]@*" }
8 { set banmask "$nick!$uhost" }
9 { set banmask "$nick!*$uhost" } 
10 { set banmask "$nick!*@[lindex [split $uhost @] 1]" } 
default { set banmask "*!*@[lindex [split $uhost @] 1]" }
return $banmask 
 }
}
if {$punishm == "1"} { 
putserv "KICK $dest $nick :$kickr"
}
if {$punishm == "2"} {
putserv "MODE $dest +b $banmask"
putserv "KICK $dest $nick :$kickr"
}
if {$punishm == "3"} {
newchanban "$dest" "$banmask" "NoticeBan" "$banr done by (\002$nick\002!$uhost)" "$btime" 
putserv "KICK $dest $nick :$kickr"
}
if {$punishm == "4"} {
newban "$banmask" "NoticeBan" "$banr done by (\002$nick\002!$uhost)" "$btime" 
putserv "KICK $dest $nick :$kickr"
}
return 1
  }
putlog "Anti notice script loaded."