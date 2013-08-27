#####################################################
#TxTGreet 1.0 by darles (TCL script for eggdrop 1.x)#
#TxTGreet released: 09.08.2005                      #
#---------------------------------------------------#
#  Homepage: http://egghelp.nasa-team.net           #
#  e-mail: darles@takas.lt                          #
#  IRC: irc.data.lt:6667 @ Aitvaras.net #egghelp    #
#---------------------------------------------------#  
#  Please don't change my nick to your...           #
#  Thanks, darles                                   #
#####################################################
#  Commands:                                        #
#                                                   #
#  !greet <greet text> - add greet or change it     #
#  !remgreet - remove greet                         #
#  !mygreet - show greet                            #
#                                                   #
#####################################################
#                                                   #
#  THANKS FOR:                                      #             
#  www.rulex.net - (For shell)                      #
#  irc.quakenet.org @ QuakeNet #tcl (help)          #
#                                                   #
#####################################################

### Necessary configuration ###

set patch "patch/to/your/greet/dir" 
# Example: "home/darles/eggdrop/greet"

set greetsize "100"
# Greet limit (symbols)

set floodtimer "20"
# Time after which person can change it's greet

### End of necessary configuration ###

### Other configuration ### 

set floodtext "Don't flood!!! You could set greet after $floodtimer seconds"
# This is message will be showed for flooders

set greetok "Your greet has been successfully set"
# This message will be showed, when greet is OK

set greetbad "Your greet is longer than $greetsize symbols"
# This error message will be showed then greet is longer than it should be

set greetdel "Your greet successfully deleted"
# This message will be showed then greet will be successfully deleted

set greetdelerr "Your greet not found"
# This error message will be showed then greet file not found
set yourgreet "Your greet is:"
# This is message using in !mygreet command

#####################################################
#                                                   #
#        PLEASE DO NOT EDIT LINES BELOW!!!          #
#                                                   #
#####################################################              

bind pub - !greet addgreet
bind pub - !remgreet remgreet
bind pub - !mygreet mygreet
bind pub - !help help
bind join - * showgreet

proc addgreet {nick uhost hand chan arg} {
global file greetsize patch greetbad greetok floodtext floodtimer
set file "$nick.txt2"
if {[file exist /$patch/$file]} {
set file2 [open /$patch/$file r]
gets $file2 ignore
close $file2
putserv "NOTICE $nick :$ignore"
} else {
set file3 [open /$patch/$nick.txt w+]
set text [lrange [split $arg] 0 end]
if {[string length $text] >= $greetsize} {
putserv "NOTICE $nick :$greetbad"
return 1
} else {
puts $file3 "$text"
close $file3
putserv "NOTICE $nick :$greetok"
set file4 [open /$patch/$file w+]
puts $file4 $floodtext
close $file4
utimer $floodtimer del
}
}
}
proc del {} {
global file patch
file delete "/$patch/$file"
}
proc showgreet {nick uhost hand chan} {
global patch
if {[file exist /$patch/$nick.txt]} {
set file5 [open /$patch/$nick.txt r+]
gets $file5 text
close $file5
putserv "PRIVMSG $chan :\[$nick\] $text"
}
}
proc mygreet {nick uhost hand chan arg} {
global patch
if {[file exist /$patch/$nick.txt]} {
set file6 [open /$patch/$nick.txt r]
gets $file6 text
close $file6
putserv "NOTICE $nick :$yourgreet: \[$nick\] $text"
}
}
proc remgreet {nick uhost hand chan arg} {
global patch greetdel greetdelerr
if {[file exist /$patch/$nick.txt]} {
file delete "/$patch/$nick.txt"
file delete "/$patch/$nick.txt2"
putserv "NOTICE $nick :$greetdel"
} else {
putserv "NOTICE $nick :$greetdelerr"
}
}
proc help {nick uhost hand chan arg} {
putserv "NOTICE $nick :My commands is:"
putserv "NOTICE $nick :!greet <text> - set your greet, !remgreet - remove your greet, !mygreet - show your greet, !help - show this help"
putserv "NOTICE $nick :Greet script by darles."
}
putlog "TxTGreet 1.0 by darles successfully loaded"