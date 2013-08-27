bind join - * hymaster

proc hymaster {nick uhost hand chan} {
global botnick

if {[string equal -nocase $nick $botnick]} {return} elseif {
[check:N:gl $hand]} {puthelp "PRIVMSG $chan :2WoW.....4 $nick 2is a 4Global 14MASTER 2! Respect 4;12-)"} elseif {
[check:n:gl $hand]} {puthelp "PRIVMSG $chan :2WoW.....4 $nick 2is a 4Global 14OWNER 2! Respect 4;12-)"} elseif {
[check:m:gl $hand]} {puthelp "PRIVMSG $chan :2WoW.....4 $nick 2is a 4Global 14OPER 2! Respect 4;12-)"}
}