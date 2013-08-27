##################################################
#### Vorbeste.tcl By BLaCkShaDoW @ #L&L ##########
#### http://ShellRomania.info ######
##################################################
###### How to install this #######################
###### Put in eggdrop.conf at the end           ##
###### http://ShellRomania.info                  #
###### line " source scripts/vorbeste.tcl " ######
######## Enjoy ###################################
##################################################
#You can add as many words as you but remember to modify the scripting to work for the word added as you see below.Thanks

set flagurile -|-
setudef flag vorbeste

set cuvantul1 "sal"
set cuvantul2 "pa"
set cuvantul3 "bot"
set cuvantul4 "brb"
set cuvantul5 "ban"
set cuvantul6 "pula"
set cuvantul7 "pizda"
set cuvantul8 "stf"
set cuvantul9 "part"
set cuvantul10 "op"
set cuvantul11 "access"
set cuvantul12 "bye"
set cuvantul13 "kick"
set cuvantul14 "voice"



bind pub $flagurile $cuvantul1 text-1
bind pub $flagurile $cuvantul2 text-2
bind pub $flagurile $cuvantul3 text-3
bind pub $flagurile $cuvantul4 text-4
bind pub $flagurile $cuvantul5 text-5
bind pub $flagurile $cuvantul6 text-6
bind pub $flagurile $cuvantul7 text-7
bind pub $flagurile $cuvantul8 text-8
bind pub $flagurile $cuvantul9 text-9
bind pub $flagurile $cuvantul10 text-10
bind pub $flagurile $cuvantul11 text-11
bind pub $flagurile $cuvantul12 text-12
bind pub $flagurile $cuvantul13 text-13
bind pub $flagurile $cuvantul14 text-14


proc text-1 {nick uhost handle chan args }  {
global text1
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Salut $nick ce faci ?:P asl pls :>"
}
return 0
}
proc text-2 {nick uhost handle chan args }  {
global text2
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Unde pleci $nick ? ma lasi singur ?:|"
}
return 0

}

proc text-3 {nick uhost handle chan args}  {
global text3
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Ce boti ma $nick ? cred ca visezi :P "
}
return 0
}

proc text-4 {nick uhost handle chan args}  {
global text4
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Ce brb $nick ? nu pleca nicaieri ca iti dau salam"
}
return 0
}
proc text-5 {nick uhost handle chan args}  {
global text5
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Cui vrei sa ii dai ban $nick ? ori vrei sa faci mass ban ?:D"
}
return 0
}

proc text-6 {nick uhost handle chan args}  {
global text6
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Pe aia sa o iei tu in gura ba $nick :>"
}
return 0
}

proc text-7 {nick uhost handle chan args}  {
global text7
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Aaaa vrei sa o lingi $nick ?:D"
}
return 0
}

proc text-8 {nick uhost handle chan args}  {
global text8
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Si tie sa iti traiasca familia $nick "
}
return 0
}

proc text-9 {nick uhost handle chan args }  {
global text9
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Nu ai plecat odata  $nick ?? arivederciii"
}
return 0

}

proc text-10 {nick uhost handle chan args }  {
global text10
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Ne pare rau $nick dar s-au terminat opurile :D"
}
return 0

}

proc text-11 {nick uhost handle chan args }  {
global text11
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Nu ii da access $nick ca face take Bwhahha :D"
}
return 0

}

proc text-12 {nick uhost handle chan args }  {
global text12
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Nu pleca $nick cine imi mai face mie mancare ?:<"
}
return 0

}

proc text-13 {nick uhost handle chan args }  {
global text13
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Asa da-l afara $nick fii rau ::D"
}
return 0

}

proc text-14 {nick uhost handle chan args }  {
global text14
if { [channel get $chan vorbeste] } {
puthelp "PRIVMSG $chan :\0032Nu stiam ca vrei o cruce $nick ca iti dadeam eu una :D"
}
return 0

}



putlog "Loaded words.tcl v1.0 by BLaCkShaDoW"

