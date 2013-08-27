#### 
#### Pub.Country.tcl - Public !country code Display
#### by Wizard Suntop (aka Suntop/DaSmurf@IRCNet) <Suntop@Suntop.com>
#### (For real email address, msg Suntop@IRCNet!)
#### You can ALWAYS find the newest version at:
#### http://suntop.trust-me.nu/irc/eggdrop/tcl/Pub.Country.html
#### 
#6#
### --==> WARNING!: <==--
###
# This Script must not under any circumstances fall into
# the wrong hands! ..Or any hands at all for that matter...
# It will then be ruined...so keep it on your Hard Drive
# and it might work as it is sopposed too! ;o)
#
#
####################################################################################################
#
#  Pub.Country.tcl -> type: !country SR <-any Country Code
#  Then your bot will reply: <botnick> Country: SR = Suriname
#
####################################################################################################
####################################################################################################
#
#  Undocumented Features aka Bugs (bunny?=):
#
#  --==> Tested and works under Eggdrop 1.6.x AND Windrop 1.6.x
#  --==> Found no bugs, if you however do find any bugs (or Undocumented Features as i like to call it=)
#  --==> send bug reports to Suntop@trust-me.nu -with subject: Bug Report: Pub.Country.tcl
#  --==> Newest version can ALWAYS be found here: http://suntop.trust-me.nu/
#
#
#  Version Info:
#
#
#  July 26th 2006
#  0.1e - Fixed so !pubcountry <options> <settings> works for users
#         with channel flags as well :o)
#         OBS!: This does *NOT* Apply to global settings such as color and sendto.
#
#
#  Februar 10th 2005
#  0.1d - Changed *one* variable (in case its in use in other scripts)
#         Now *ALL* variables is array: $pubc()
#         Added an option to enable the script for the current channel *IN* the channel
#         Ex: In #chan, you type: !pubcountry  ..and you enable it for #chan
#         Or stay in #chan, type: !pubcountry add #chan2  ..and #chan2 is activated ;o)
#         !pubcountry <options> <attributes> ..or !pubcountry help for help =)
#         Also added Pub (Channel): !country <channel> INFO (or: !pubcountry <channel> INFO)
#         Or DCC/Partyline: .country <channel> INFO  --Tells current status of Channel
#
#
#  January 15th 2005
#  0.1c - First Official Release
#         Fixed so the settings wont be reset on .rehash and .restart
#
#
#  December 20th 2004
#  0.1b - Added Version Reply
#         Added Options to turn all Colors ON or OFF
#         (For those of you who dont like colors=)
#         Added DCC/Partyline settings control:
#         - Turn Colors ON/OFF with: .country color <1/2/3>
#           (1 = Colored version, 2 = only bold and underlined, 3 = No control codes)
#         - Specify where to reply with: .country sendto <1/2/3>
#           (1 = privmsg to chan, 2 = notice to nick, 3 = even Version is notice to nick)
#         Added DCC/Partyline display:
#         - Use the same commands on the partyline =)
#           Ie: .country SE ..displays: <botnick> Country: SE = Sweden
#
#
#  November 2004
#  0.1a - First Beta Test
#
#
#
####################################################################################################
####################################################################################################
##
##  --==> Settings:
#
#
###********#-#-#-# OBS!!!: Read THIS! OBS!!! #-#-#-#********###
###  --==> Cause of how channel flags works, this script will be disabled by default!
###  --==> You will have to turn this script ON throught DCC/Partyline
###  --==> To activate it on your channel, go to DCC, and simply type: .country add #channel
#
#
#
##########
#
#  --==> Below here You can specify how you want this script to behave.
#  --==> Change *ONLY* the one character between the " "s
#  --==> If you want to change set pubc(char) "!" <-*ONLY* change the ! character.
#  --==> Example: set pubc(char) "&"
#
##########
##
## -=> Here you can specify what command character you 
## --> want to use, to trigger the public command.
## --> example: !country <-the ! char
#
set pubc(char) "!"
#
#
##########
##
## -=> how do you want the bot to reply?
## --> 1 = privmsg to chan
## --> 2 = notice to nick
## --> 3 = Even version is displayed as notice to nick
##
##  OBS! If you specify 1 or 2, then when someone type: !country version
##  the version info will be displayed in the channel.
##
#
set pubc(msg) "1"
#
#
##########
##
## -=> Do you want Colors Enabled or not?
## --> 1 = Colored Version (default)
## -->     (Colors on version reply and the word Country: used by the bot)
## --> 2 = No Colors whatsoever, but keep bold and underlined
## --> 3 = No Colors AND NO Bold/underlined (Aka NO Control Codes whatsoever)
##
#
set pubc(colors) "1"
#
#
##########
##
## --==> What kind of flag is needed to change settings?
##
## -=> What flag do you need to Add/Remove Channels?
## --> In DCC with the bot/Partyline, as well as Pub (Channel) you can add Current Channel, or 
## --> Specified channels for the public !Country <code> script.
## --> In DCC/Partyline:
## --> Type: .country help add/rem for help. (add *OR* rem without the / of course ;o)
## --> .country add #channel ..will enable the script to work on #channel
## --> .country rem #channel ..will disable the script for #channel
## --> .country #chan INFO ..will tell if !Country is active or not for #chan
## --> In Pub (Channel):
## --> Type: !pubcountry help add/rem for help. (add *OR* rem without the / of course ;o)
## --> !pubcountry add <#channel> ..will enable the script to work on #channel
## --> !pubcountry rem <#channel> ..will disable the script for #channel
## --> !country #chan INFO ..will tell you if !country is active or not for #chan
## -->  !pubcountry <#chan> INFO ..does the same, but <#chan> is optional.
## --> NOTE: If you dont specify any Channel, then it will be the current channel.
#
set pubc(addflag) "m"
#
#
## -=> What flag do you need to Change Global Settings? (Colors/destination)
## --> In DCC with the bot/Partyline, as well as pub (Channel) you can change settings.
## --> In DCC/Partyline:
## --> Type: .country help color/sendto for help.  (color *OR* sendto without the / of course ;o)
## --> Type: .country color <1/2/3> ..will enable/disable colors.
## --> Type: .country sendto <1/2/3> ..will set how the bot will send the info
## --> In Pub (Channel):
## --> Type: !pubcountry help color/sendto for help.  (color *OR* sendto without the / of course ;o)
## --> Type: !pubcountry color <1/2/3> ..will enable/disable colors.
## --> Type: !pubcountry sendto <1/2/3> ..will set how the bot will send the info
##
## --==> OBS! Color and Destination settings is Global, and *NOT* per channel!
##
#
set pubc(setflag) "n"
#
#
#
#
##
##
####################
##
## Do NOT Edit below here..
#
#
set pubc(ver) "0.1e"
##
#
#
####################################################################################################
#-#-#-# OBS!: DO *NOT* Edit anything between this lines, then the script will NOT WORK! OBS! #-#-#-#
#
setudef flag pub-country
set pubc(auth) "Wizard Suntop"
set pubc(verls) "\002\0033--\0032==\0036>\002\00312 Public Country Code\003"
set pubc(verlsb) "\002--==>\002 Public Country Code"
set pubc(verlsn) "--==> Public Country Code"
set pubc(vb) "\0036by \00312$pubc(auth)\003"
set pubc(vbn) "by $pubc(auth)"
set pubc(vend) "\002\0036<\0032==\0033--\003\002"
set pubc(vendb) "\002<==--\002"
set pubc(vendn) "<==--"
set pubc(vers) "\00310v$pubc(ver)\003"
set pubc(versn) "v$pubc(ver)"
set pubc(verl) "$pubc(verls) $pubc(vers) $pubc(vb) $pubc(vend)"
set pubc(verlb) "$pubc(verlsb) $pubc(versn) $pubc(vbn) $pubc(vendb)"
set pubc(verln) "$pubc(verlsn) $pubc(versn) $pubc(vbn) $pubc(vendn)"
#
#-#-#-# OBS!: DO *NOT* Edit anything between this lines, then the script will NOT WORK! OBS! #-#-#-#
####################################################################################################
####################################################################################################
##
## -=> Bindings: <=-
#
bind pub -|- $pubc(char)country pub.country
bind pub -|- $pubc(char)pubcountry pub.pubcountry
bind dcc -|- country dcc.country
#
##
####################################################################################################
####################################################################################################
##
## The Actual Proc (Command)
##
#### OBS! DO NOT EDIT ANYTHING BELOW HERE!!!!
##
#
#
proc putsto {to msg} {
  global pubc sto
  if {$pubc(msg) == "1"} { putserv "PRIVMSG $to :$msg" }
  if {$pubc(msg) == "2"} { putserv "NOTICE $to :$msg" }
  if {$pubc(msg) == "3"} { putserv "NOTICE $to :$msg" }
}
proc putsnot {nickn msg} {
  set nick [lindex [split $nickn] 0]
  putserv "NOTICE $nick :$msg"
}
#
#
## --==> The Actual DCC Settings/help for .coountry <option> <attribute>
#
proc dcco.country {h i t} {
  global botnick pubc
  set var [string tolower [lindex $t 0] 0 end]
  set attr [string tolower [lindex $t 1] 0 end]
  if {($pubc(ver) != "0.1e")} { return 0 }
  if {$pubc(colors) == "1"} { set pubc(coldesc) "Use Colors" }
  if {$pubc(colors) == "2"} { set pubc(coldesc) "No Colors, only bold and underlined" }
  if {$pubc(colors) == "3"} { set pubc(coldesc) "No Control Codes whatsoever!" }
  if {$pubc(msg) == "1"} { set pubc(msgdesc) "Privmsg to channel" }
  if {$pubc(msg) == "2"} { set pubc(msgdesc) "Notice to nick - Version Reply to channel" }
  if {$pubc(msg) == "3"} { set pubc(msgdesc) "Notice to nick - Even Version Reply" }
  if {[validchan $attr]} { set pubc(act) [channel get $attr pub-country] }
  if {$var == ""} { putlog "#$h# Country (Error: Missing Parameters)" ;putidx $i "Usage: .country <option> <attribute>" ;putidx $i "Valid Options: color, sendto" ;putidx $i "Type: .country help <option> for more info." ;return 0 }
  if {($var == "help") || ($var == "hjelp") || ($var == "?")} {
    if {$attr == ""} { putlog "#$h# help country" ;putidx $i "Usage: .country <country code/option> <attribute>" ;putidx $i "Shows the country for <country code>" ;putidx $i "To change settings, use: .country <Option> <attribute>" ;putidx $i "Valid Options: color, sendto, add, rem" ;putidx $i "To see the Status info of a channel, type: .country #channel info" ;putidx $i "Type: .country help <option> for more info." ;return 0 }
    if {($attr == "color") || ($attr == "colors")} { putlog "#$h# help country color" ;putidx $i "Usage: .country color <1/2/3>" ;putidx $i "-=> 1 = Use Colors (Not many places anyway..)" ;putidx $i "-=> 2 = No Colors, only bold and underlined" ;putidx $i "-=> 3 = No Control Codes whatsoever!" ;return 0 }
    if {($attr == "send") || ($attr == "sendto")} { putlog "#$h# help country sendto" ;putidx $i "Usage: .country sendto <1/2/3>" ;putidx $i "-=> 1 = Privmsg to channel" ;putidx $i "-=> 2 = Notice to nick (Version Reply displayed in channel)" ;putidx $i "-=> 3 = Notice to nick (Even Version Reply)" ;return 0 }
    if {($attr == "add") || ($attr == "active") || ($attr == "activate")} { putlog "#$h# help country add" ;putidx $i "Usage: .country <add|rem> <channel>" ;putidx $i "-=> Turn Public Country Code <On|Off> for <Channel>" ;return 0 }
    if {($attr == "del") || ($attr == "rem") || ($attr == "remove") || ($attr == "deactive") || ($attr == "deactivate")} { putlog "#$h# help country rem" ;putidx $i "Usage: .country <add|rem> <channel>" ;putidx $i "-=> Turn Public Country Code <On|Off> for <Channel>" ;return 0 } else { putlog "#$h# Country help (Error: Unknown Help Topic)" ;putidx $i "Oops..No help for $attr :o/" ;putidx $i "Usage: .country <option> <attribute>" ;putidx $i "Valid Options: color, sendto, add, rem" ;putidx $i "To see the Status info of a channel, type: .country #channel info" ;putidx $i "Type: .country help <option> for more info." ;return 0 }
  }
  if {($var == "add") || ($var == "active") || ($var == "activate")} {
    if {([matchattr $h $pubc(addflag)])} {
      if {$attr == ""} { putlog "#$h# Country add (Error: Forgot what chan to add!)" ;putidx $i "Usage: .country <add|rem> <channel>" ;putidx $i "-=> Turn Public Country Code <ON|OFF> for <channel>" ;return 0 }
      if {![validchan $attr]} { putlog "#$h# Country add $attr (Error: Not a valid channel)" ;putidx $i "Oops! $attr is not a Valid channel! (where I am)" ;return 0 }
      if {$pubc(act) == "1"} { putlog "#$h# Country add $attr (Error: Allready Active)" ;putidx $i "Ehrm..! !Country is allready Activated on $attr" ;return 0 } else { putlog "#$h# Country add $attr (Active)" ;putidx $i "Ok! Activated !Country on $attr :o)" ;channel set $attr +pub-country ;return 0 }
    } else { putlog "#$h# Country add $attr (Error: Not enough flags)" ;putidx $i "Sorry, but you dont have enough flags for that command" ;return 0 }
  }
  if {($var == "del") || ($var == "rem") || ($var == "remove") || ($var == "deactive") || ($var == "deactivate")} {
    if {([matchattr $h $pubc(addflag)])} {
      if {$attr == ""} { putlog "#$h# Country add (Error: Forgot what chan to add!)" ;putidx $i "Usage: .country <add|rem> <channel>" ;putidx $i "-=> Turn Public Country Code <ON|OFF> for <channel>" ;return 0 }
      if {![validchan $attr]} { putlog "#$h# Country add $attr (Error: Not a valid channel)" ;putidx $i "Oops! $attr is not a Valid channel! (where I am)" ;return 0 }
      if {$pubc(act) == "0"} { putlog "#$h# Country add $attr (Error: Allready Deactive)" ;putidx $i "Ehrm..! !Country is allready Deactivated on $attr" ;return 0 } else { putlog "#$h# Country add $attr (Deactive)" ;putidx $i "Ok! Deactivated !Country on $attr :o)" ;channel set $attr -pub-country ;return 0 }
    } else { putlog "#$h# Country add $attr (Error: Not enough flags)" ;putidx $i "Sorry, but you dont have enough flags for that command" ;return 0 }
  }
  if {($var == "color") || ($var == "colors")} {
    if {$attr == ""} { putlog "#$h# Country color (Info - Currently: $pubc(colors) ($pubc(coldesc)))" ;putidx $i "Usage: .country color <1/2/3>" ;putidx $i "Currently: $pubc(colors) ($pubc(coldesc))" ;return 0 }
    if {$attr == "1"} {
      if {[matchattr $h $pubc(setflag)]} { set pubc(colors) "1" ;putlog "#$h# Country color 1 (ON)" ;putidx $i "Ok, set! $pubc(char)country will now be displayed with some colors :o)" ;return 0 } else { putlog "#$h# Country color (Error: Not enough flags..)" ;putidx $i "Sorry, you dont have the correct flags for that.. :o/" ;return 0 }
    }
    if {$attr == "2"} {
      if {[matchattr $h $pubc(setflag)]} { set pubc(colors) "2" ;putlog "#$h# Country color 2 (OFF, only bold/underlined)" ;putidx $i "Ok, set! $pubc(char)country will now be displayed without any colors, only bold and underlined :o)" ;return 0 } else { putlog "#$h# Country color (Error: Not enough flags..)" ;putidx $i "Sorry, you dont have the correct flags for that.. :o/" ;return 0 }
    }
    if {$attr == "3"} {
      if {[matchattr $h $pubc(setflag)]} { set pubc(colors) "3" ;putlog "#$h# Country color 3 (OFF)" ;putidx $i "Ok, set! $pubc(char)country will not use ANY control codes whatsoever! :o)" ;return 0 } else { putlog "#$h# Country color (Error: Not enough flags..)" ;putidx $i "Sorry, you dont have the correct flags for that.. :o/" ;return 0 }
    } else { putlog "#$h# Country (Error: Invalid attribute! (Used: $attr))" ;putidx $i "Error: Illegal attribute! Valid Attributes is: 1 2 or 3!" ;return 0 }
  }
  if {($var == "send") || ($var == "sendto")} {
    if {$attr == ""} { putlog "#$h# Country sendto (Info - Currently: $pubc(msg) ($pubc(msgdesc)))" ;putidx $i "Usage: .country sendto <1/2/3>" ;putidx $i "Currently: $pubc(msg) ($pubc(msgdesc))" ;return 0 }
    if {$attr == "1"} {
      if {[matchattr $h $pubc(setflag)]} { set pubc(msg) "1" ;putlog "#$h# Country sendto 1 (channel)" ;putidx $i "Ok, set! Displaying !country resoult in current channel :o)" ;return 0 } else { putlog "#$h# Country sendto (Error: Not enough flags..)" ;putidx $i "Sorry, you dont have the correct flags for that.. :o/" ;return 0 }
    }
    if {$attr == "2"} {
      if {[matchattr $h $pubc(setflag)]} { set pubc(msg) "2" ;putlog "#$h# Country sendto 2 (notice to nick)" ;putidx $i "Ok, set! Displaying !country resoult as notice to nick :o)" ;return 0 } else { putlog "#$h# Country sendto (Error: Not enough flags..)" ;putidx $i "Sorry, you dont have the correct flags for that.. :o/" ;return 0 }
    }
    if {$attr == "3"} {
      if {[matchattr $h $pubc(setflag)]} { set pubc(msg) "3" ;putlog "#$h# Country sendto 3 (notice to nick)" ;putidx $i "Ok, set! Displaying !country resoult as notice to nick (Even version info) :o)" ;return 0 } else { putlog "#$h# Country sendto (Error: Not enough flags..)" ;putidx $i "Sorry, you dont have the correct flags for that.. :o/" ;return 0 }
    } else { putlog "#$h# Country (Error: Invalid attribute! (Used: $attr))" ;putidx $i "Error: Illegal attribute! Valid Attributes is: 1 2 or 3!" ;return 0 }
  } else { putlog "#$h# Country (Error: Invalid Option! (Used: $var))" ;putidx $i "Error: Illegal Option! Valid Options are: color, sendto, add, rem!" ;return 0 }
  return 0
}
#
#
## --==> The Actual Pub (channel) Settings/help for !pubcoountry <option> <attribute>
#
proc pub.pubcountry {ni u h ch t} {
  global botnick pubc
  if {![validuser $h]} { return 0 }
  if {([matchattr $h n]) || ([matchattr $h n]) && ([matchattr $h |n $ch]) || ([matchattr $h |n $ch]) || (![matchattr $h n]) && ([matchattr $h |n $ch]) || ([matchattr $h n]) && (![matchattr $h |n $ch])} { set nk(fl) "*" } else {
    if {([matchattr $h m]) || ([matchattr $h m]) && ([matchattr $h |m $ch]) || ([matchattr $h |m $ch]) || (![matchattr $h m]) && ([matchattr $h |m $ch]) || ([matchattr $h m]) && (![matchattr $h |m $ch])} { set nk(fl) "¤" } else {
      if {([matchattr $h o]) || ([matchattr $h o]) && ([matchattr $h |o $ch]) || ([matchattr $h |o $ch]) || (![matchattr $h o]) && ([matchattr $h |o $ch]) || ([matchattr $h o]) && (![matchattr $h |o $ch])} { set nk(fl) "@" } else { set nk(fl) "+" }
    }
  }
  set var [string tolower [lindex $t 0] 0 end]
  set attr [string tolower [lindex $t 1] 0 end]
  if {[string index $var 0] == "."} { set var [string trimleft $var .] }
  if {[string index $var 0] == "-"} { set var [string trimleft $var -] }
  if {$var == "info"} {
    set pubc(act) [channel get $ch pub-country]
    if {$pubc(act) == "1"} { set pubc(actxt) "ON - Activated" }
    if {$pubc(act) == "0"} { set pubc(actxt) "OFF - Deactivated" }
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country INFO ($pubc(actxt))"
    putsnot $ni "$pubc(char)country is $pubc(actxt) on $ch :o)"
    return 0
  }
  if {[string index $var 0] == "#"} {
    set var [lindex $t 0]
    if {![validchan $var]} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)pubcountry $var INFO (Error: Not a valid channel)" ;putsnot $ni "Usage: $pubc(char)pubcountry <channel> INFO" ;putsnot $ni "Oops! $var is not a Valid channel! (where I am)" ;putsnot $ni "To see Status, you have to use a valid channel!" ;return 0 }
    set pubc(act) [channel get $var pub-country]
    if {$pubc(act) == "1"} { set pubc(actxt) "ON - Activated" }
    if {$pubc(act) == "0"} { set pubc(actxt) "OFF - Deactivated" }
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $var INFO ($pubc(actxt))"
    putsnot $ni "$pubc(char)country is $pubc(actxt) on $var :o)"
    return 0
  }
  if {[string index $var 0] == "!"} {
    set var [lindex $t 0]
    if {![validchan $var]} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)pubcountry $var INFO (Error: Not a valid channel)" ;putsnot $ni "Usage: $pubc(char)pubcountry <channel> INFO" ;putsnot $ni "Oops! $var is not a Valid channel! (where I am)" ;putsnot $ni "To see Status, you have to use a valid channel!" ;return 0 }
    set pubc(act) [channel get $var pub-country]
    if {$pubc(act) == "1"} { set pubc(actxt) "ON - Activated" }
    if {$pubc(act) == "0"} { set pubc(actxt) "OFF - Deactivated" }
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $var INFO ($pubc(actxt))"
    putsnot $ni "$pubc(char)country is $pubc(actxt) on $var :o)"
    return 0
  }
  if {($pubc(ver) != "0.1e")} { return 0 }
  if {$pubc(colors) == "1"} { set pubc(coldesc) "Use Colors" }
  if {$pubc(colors) == "2"} { set pubc(coldesc) "No Colors, only bold and underlined" }
  if {$pubc(colors) == "3"} { set pubc(coldesc) "No Control Codes whatsoever!" }
  if {$pubc(msg) == "1"} { set pubc(msgdesc) "Privmsg to channel" }
  if {$pubc(msg) == "2"} { set pubc(msgdesc) "Notice to nick - Version Reply to channel" }
  if {$pubc(msg) == "3"} { set pubc(msgdesc) "Notice to nick - Even Version Reply" }
  set pubc(act) [channel get $ch pub-country]
  if {$var == ""} {
    if {([matchattr $h $pubc(addflag)]) || ([matchattr $h |$pubc(addflag) $ch])} {
      if {$pubc(act) == "1"} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry (Error: Allready Active)" ;putsnot $ni "Ehrm..! $pubc(char)Country is Allready Active on $ch" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry (Activated)" ;putsnot $ni "Ok! Activated $pubc(char)Country on $ch :o)" ;channel set $ch +pub-country ;return 0 }
    } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry (Error: Dont have the ADD flag)" ;putsnot $ni "Sorry, but you dont have enough flags for that command" ;return 0 }
  }
  if {($var == "help") || ($var == "hjelp") || ($var == "?")} {
    if {$attr == ""} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)help PubCountry" ;putsnot $ni "Usage: $pubc(char)pubcountry <option> <attribute>" ;putsnot $ni "Valid Options: color, sendto, add, rem" ;putsnot $ni "Type: !pubcountry help <option> for more info." ;return 0 }
    if {($attr == "color") || ($attr == "colors")} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)help PubCountry color" ;putsnot $ni "Usage: $pubc(char)pubcountry color <1/2/3>" ;putsnot $ni "-=> 1 = Use Colors (Not many places anyway..)" ;putsnot $ni "-=> 2 = No Colors, only bold and underlined" ;putsnot $ni "-=> 3 = No Control Codes whatsoever!" ;return 0 }
    if {($attr == "send") || ($attr == "sendto")} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)help PubCountry sendto" ;putsnot $ni "Usage: $pubc(char)pubcountry sendto <1/2/3>" ;putsnot $ni "-=> 1 = Privmsg to channel" ;putsnot $ni "-=> 2 = Notice to nick (Version Reply displayed in channel)" ;putsnot $ni "-=> 3 = Notice to nick (Even Version Reply)" ;return 0 }
    if {($attr == "add") || ($attr == "active") || ($attr == "activate")} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)help PubCountry add" ;putsnot $ni "Usage: $pubc(char)pubcountry <add|rem> <channel>" ;putsnot $ni "-=> Turn Public Country Code <On|Off> for <Channel>" ;putsnot $ni "-=> If Channel isnt specified, Curren Channel will be effected" ;return 0 }
    if {($attr == "del") || ($attr == "rem") || ($attr == "remove") || ($attr == "deactive") || ($attr == "deactivate")} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)help PubCountry rem" ;putsnot $ni "Usage: $pubc(char)pubcountry <add|rem> <channel>" ;putsnot $ni "-=> Turn Public Country Code <On|Off> for <Channel>" ;putsnot $ni "-=> If Channel isnt specified, Curren Channel will be effected" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)help PubCountry (Error: Missing Parameters)" ;putsnot $ni "Usage: $pubc(char)pubcountry <option> <attribute>" ;putsnot $ni "Valid Options: color, sendto, add, rem" ;putsnot $ni "Type: .country help <option> for more info." ;return 0 }
  }
  if {($var == "add") || ($var == "active") || ($var == "activate")} {
    if {([matchattr $h $pubc(addflag)]) || ([matchattr $h |$pubc(addflag) $ch])} {
      if {$attr != ""} {
      set pubc(act) [channel get $attr pub-country]
      if {![validchan $attr]} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry add $attr (Error: Invalid channel)" ;putsnot $ni "Oops! $attr is not a Valid channel! (where I am)" ;return 0 }
      if {$pubc(act) == "1"} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry add $attr (Error: Allready Activated)" ;putsnot $ni "Ehrm..! $pubc(char)Country is allready Activated on $attr" ;return 0 }
        putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry add $attr (Active)"
        putsnot $ni "Ok! Activated $pubc(char)Country on $attr :o)"
        channel set $attr +pub-country
        return 0
      }
      if {$pubc(act) == "1"} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry add (Error: Allready Activated)" ;putsnot $ni "Ehrm..! $pubc(char)Country is allready Activated on $ch" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry add (Active)" ;putsnot $ni "Ok! Activated !Country on $ch :o)" ;channel set $ch +pub-country ;return 0 }
    } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry add (Error: Not enough flags)" ;putsnot $ni "Sorry, but you dont have enough flags for that command" ;return 0 }
  }
  if {($var == "del") || ($var == "rem") || ($var == "remove") || ($var == "deactive") || ($var == "deactivate")} {
    if {([matchattr $h $pubc(addflag)]) || ([matchattr $h |$pubc(addflag) $ch])} {
      if {$attr != ""} {
      set pubc(act) [channel get $attr pub-country]
      if {![validchan $attr]} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry rem $attr (Error: Invalid channel)" ;putsnot $ni "Oops! $attr is not a Valid channel! (where I am)" ;return 0 }
      if {$pubc(act) == "0"} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry rem $attr (Error: Allready Deactivated)" ;putsnot $ni "Ehrm..! $pubc(char)Country is allready Deactivated on $attr" ;return 0 }
        putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry rem $attr (Deactive)"
        putsnot $ni "Ok! Deactivated $pubc(char)Country on $attr :o)"
        channel set $attr -pub-country
        return 0
      }
      if {$pubc(act) == "0"} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry rem (Error: Allready Deactivated)" ;putsnot $ni "Ehrm..! $pubc(char)Country is allready Deactivated on $ch" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry rem (Deactive)" ;putsnot $ni "Ok! Deactivated $pubc(char)Country on $ch :o)" ;channel set $ch -pub-country ;return 0 }
    } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry rem (Error: Not enough flags)" ;putsnot $ni "Sorry, but you dont have enough flags for that command" ;return 0 }
  }
  if {($var == "color") || ($var == "colors")} {
    if {$attr == ""} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color (Info - Currently: $pubc(colors) ($pubc(coldesc)))" ;putsnot $ni "Usage: $pubc(char)pubcountry color <1/2/3>" ;putsnot $ni "Currently: $pubc(colors) ($pubc(coldesc))" ;return 0 }
    if {$attr == "1"} {
      if {([matchattr $h $pubc(setflag)]) || ([matchattr $h |$pubc(setflag) $ch])} { set pubc(colors) "1" ;putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color 1 (ON)" ;putsnot $ni "Ok, set! $pubc(char)country will now be displayed with some colors :o)" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color (Error: Not enough flags..)" ;putsnot $ni "Sorry, but you dont have the correct flags for that command.. :o/" ;return 0 }
    }
    if {$attr == "2"} {
      if {([matchattr $h $pubc(setflag)]) || ([matchattr $h |$pubc(setflag) $ch])} { set pubc(colors) "2" ;putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color 2 (OFF, only bold/underlined)" ;putsnot $ni "Ok, set! $pubc(char)country now will be displayed with No Colors, only bold and underlined :o)" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color (Error: Not enough flags..)" ;putsnot $ni "Sorry, but you dont have the correct flags for that command.. :o/" ;return 0 }
    }
    if {$attr == "3"} {
      if {([matchattr $h $pubc(setflag)]) || ([matchattr $h |$pubc(setflag) $ch])} { set pubc(colors) "3" ;putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color 3 (OFF)" ;putsnot $ni "Ok, set! $pubc(char)country will not use Any Control Codes whatsoever! :o)" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color (Error: Not enough flags..)" ;putsnot $ni "Sorry, but you dont have the correct flags for that command.. :o/" ;return 0 }
    } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry color (Error: Invalid attribute! (Used: $attr))" ;putsnot $ni "Error: Illegal attribute! Valid Attributes is: 1 2 or 3!" ;return 0 }
  }
  if {($var == "send") || ($var == "sendto")} {
    if {$attr == ""} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry sendto (Info - Currently: $pubc(msg) ($pubc(msgdesc)))" ;putsnot $ni "Usage: $pubc(char)pubcountry sendto <1/2/3>" ;putsnot $ni "Currently: $pubc(msg) ($pubc(msgdesc))" ;return 0 }
    if {$attr == "1"} {
      if {([matchattr $h $pubc(setflag)]) || ([matchattr $h |$pubc(setflag) $ch])} { set pubc(msg) "1" ;putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry sendto 1 (channel)" ;putsnot $ni "Ok, set! Displaying $pubc(char)country resoult in current channel :o)" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry sendto (Error: Not enough flags..)" ;putsnot $ni "Sorry, but you dont have the correct flags for that command.. :o/" ;return 0 }
    }
    if {$attr == "2"} {
      if {([matchattr $h $pubc(setflag)]) || ([matchattr $h |$pubc(setflag) $ch])} { set pubc(msg) "2" ;putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry sendto 2 (notice to nick - Not Version Info)" ;putsnot $ni "Ok, set! Displaying $pubc(char)country resoult as notice to nick (Not Version Info) :o)" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry sendto (Error: Not enough flags..)" ;putsnot $ni "Sorry, but you dont have the correct flags for that command.. :o/" ;return 0 }
    }
    if {$attr == "3"} {
      if {([matchattr $h $pubc(setflag)]) || ([matchattr $h |$pubc(setflag) $ch])} { set pubc(msg) "3" ;putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry sendto 3 (notice to nick - Even Version Info)" ;putsnot $ni "Ok, set! Displaying $pubc(char)country resoult as notice to nick (Even version info) :o)" ;return 0 } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry sendto (Error: Not enough flags..)" ;putsnot $ni "Sorry, but you dont have the correct flags for that command.. :o/" ;return 0 }
    } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry (Error: Invalid attribute! (Used: $attr))" ;putsnot $ni "Error: Illegal attribute! Valid Attributes is: 1 2 or 3!" ;return 0 }
  } else { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)PubCountry (Error: Invalid Option! (Used: $var))" ;putsnot $ni "Error: Illegal Option! Valid Options are: color, sendto, add, rem!" ;return 0 }
  return 0
}
#
#
#
## --==> The Actual DCC script for .coountry <code>
#
proc dcc.country {h i t} {
  global botnick pubc
  set country "urk"
  set what [string tolower [lindex $t 0] 0 end]
  if {[string index $what 0] == "."} { set what [string trimleft $what .] }
  if {[string index $what 0] == "-"} { set what [string trimleft $what -] }
  if {[string index $what 0] == "#"} {
    set what [lindex $t 0]
    if {![validchan $what]} { putlog "#$h# Country $what INFO (Error: Not a valid channel)" ;putidx $i "Usage: .country <channel> INFO" ;putidx $i "Oops! $what is not a Valid channel! (where I am)" ;putidx $i "To see Status, you have to use a valid channel! (where I am)" ;return 0 }
    set pubc(act) [channel get $what pub-country]
    if {$pubc(act) == "1"} { set pubc(actxt) "ON - Activated" }
    if {$pubc(act) == "0"} { set pubc(actxt) "OFF - Deactivated" }
    putlog "#$h# Country $what INFO ($pubc(actxt))"
    putidx $i "$pubc(char)country is $pubc(actxt) on $what :o)"
    return 0
  }
  if {[string index $what 0] == "!"} {
    set what [lindex $t 0]
    if {![validchan $what]} { putlog "#$h# Country $what INFO (Error: Not a valid channel)" ;putidx $i "Usage: .country <channel> INFO" ;putidx $i "Oops! $what is not a Valid channel! (where I am)" ;putidx $i "To see Status, you have to use a valid channel! (where I am)" ;return 0 }
    set pubc(act) [channel get $what pub-country]
    if {$pubc(act) == "1"} { set pubc(actxt) "ON - Activated" }
    if {$pubc(act) == "0"} { set pubc(actxt) "OFF - Deactivated" }
    putlog "#$h# Country $what INFO ($pubc(actxt))"
    putidx $i "$pubc(char)country is $pubc(actxt) on $what :o)"
    return 0
  }
  if {($pubc(ver) != "0.1e")} { return 0 }
  if {($what == "color") || ($what == "colors")} { set text [lrange $t 0 end] ;dcco.country $h $i "$text" ;return 0 }
  if {($what == "send") || ($what == "sendto")} { set text [lrange $t 0 end] ;dcco.country $h $i "$text" ;return 0 }
  if {($what == "add") || ($what == "active") || ($what == "activate")} { set text [lrange $t 0 end] ;dcco.country $h $i "$text" ;return 0 }
  if {($what == "rem") || ($what == "del") || ($what == "remove") || ($what == "deactive") || ($what == "deactivate")} { set text [lrange $t 0 end] ;dcco.country $h $i "$text" ;return 0 }
  if {($what == "") || ($what == "help") || ($what == "hjelp")} { set text [lrange $t 0 end] ;dcco.country $h $i "$text" ;return 0 }
  if {($what == "ver") || ($what == "version")} {
    if {$pubc(colors) == "1"} { putidx $i "$pubc(verl)" }
    if {$pubc(colors) == "2"} { putidx $i "$pubc(verlb)" }
    if {$pubc(colors) == "3"} { putidx $i "$pubc(verln)" }
    putlog "#$h# Country version.. ($pubc(ver))"
    return 0
  }
  switch -exact $what {
  ad { putlog "#$h# Country $what (Andorra)" ;putidx $i "Country: AD = Andorra" ;set country "1" ;return 0 }
  ae { putlog "#$h# Country $what (United Arab Emirates)" ;putidx $i "Country: AE = United Arab Emirates" ;set country "1" ;return 0 }
  ac { putlog "#$h# Country $what (Ascension Island)" ;putidx $i "Country: AC = Ascension Island" ;set country "1" ;return 0 }
  af { putlog "#$h# Country $what (Afghanistan)" ;putidx $i "Country: AF = Afghanistan" ;set country "1" ;return 0 }
  ag { putlog "#$h# Country $what (Antigua and Barbuda)" ;putidx $i "Country: AG = Antigua and Barbuda" ;set country "1" ;return 0 }
  ai { putlog "#$h# Country $what (Anguilla)" ;putidx $i "Country: AI = Anguilla" ;set country "1" ;return 0 }
  al { putlog "#$h# Country $what (Albania)" ;putidx $i "Country: AL = Albania" ;set country "1" ;return 0 }
  am { putlog "#$h# Country $what (Armenia)" ;putidx $i "Country: AM = Armenia" ;set country "1" ;return 0 }
  an { putlog "#$h# Country $what (Netherlands Antilles)" ;putidx $i "Country: AN = Netherlands Antilles" ;set country "1" ;return 0 }
  ao { putlog "#$h# Country $what (Angola)" ;putidx $i "Country: AO = Angola" ;set country "1" ;return 0 }
  aq { putlog "#$h# Country $what (Antarctica)" ;putidx $i "Country: AQ = Antarctica" ;set country "1" ;return 0 }
  ar { putlog "#$h# Country $what (Argentina)" ;putidx $i "Country: AR = Argentina" ;set country "1" ;return 0 }
  arpa { putlog "#$h# Country $what (Old style Arpanet)" ;putidx $i "Country: ARPA = Old style Arpanet" ;set country "1" ;return 0 }
  as { putlog "#$h# Country $what (American Samoa)" ;putidx $i "Country: AS = American Samoa" ;set country "1" ;return 0 }
  at { putlog "#$h# Country $what (Austria)" ;putidx $i "Country: AT = Austria" ;set country "1" ;return 0 }
  au { putlog "#$h# Country $what (Australia)" ;putidx $i "Country: AU = Australia" ;set country "1" ;return 0 }
  aw { putlog "#$h# Country $what (Aruba)" ;putidx $i "Country: AW = Aruba" ;set country "1" ;return 0 }
  az { putlog "#$h# Country $what (Azerbaijan)" ;putidx $i "Country: AZ = Azerbaijan" ;set country "1" ;return 0 }
  ba { putlog "#$h# Country $what (Bosnia and Herzegovina)" ;putidx $i "Country: BA = Bosnia and Herzegovina" ;set country "1" ;return 0 }
  bb { putlog "#$h# Country $what (Barbados)" ;putidx $i "Country: BB = Barbados" ;set country "1" ;return 0 }
  bd { putlog "#$h# Country $what (Bangladesh)" ;putidx $i "Country: BD = Bangladesh" ;set country "1" ;return 0 }
  be { putlog "#$h# Country $what (Belgium)" ;putidx $i "Country: BE = Belgium" ;set country "1" ;return 0 }
  bf { putlog "#$h# Country $what (Burkina Faso)" ;putidx $i "Country: BF = Burkina Faso" ;set country "1" ;return 0 }
  bg { putlog "#$h# Country $what (Bulgaria)" ;putidx $i "Country: BG = Bulgaria" ;set country "1" ;return 0 }
  bh { putlog "#$h# Country $what (Bahrain)" ;putidx $i "Country: BH = Bahrain" ;set country "1" ;return 0 }
  bi { putlog "#$h# Country $what (Burundi)" ;putidx $i "Country: BI = Burundi" ;set country "1" ;return 0 }
  biz { putlog "#$h# Country $what (Business)" ;putidx $i "Country: BIZ = Business" ;set country "1" ;return 0 }
  bj { putlog "#$h# Country $what (Benin)" ;putidx $i "Country: BJ = Benin" ;set country "1" ;return 0 }
  bm { putlog "#$h# Country $what (Bermuda)" ;putidx $i "Country: BM = Bermuda" ;set country "1" ;return 0 }
  bn { putlog "#$h# Country $what (Brunei Darussalam)" ;putidx $i "Country: BN = Brunei Darussalam" ;set country "1" ;return 0 }
  bo { putlog "#$h# Country $what (Bolivia)" ;putidx $i "Country: BO = Bolivia" ;set country "1" ;return 0 }
  br { putlog "#$h# Country $what (Brazil)" ;putidx $i "Country: BR = Brazil" ;set country "1" ;return 0 }
  bs { putlog "#$h# Country $what (Bahamas)" ;putidx $i "Country: BS = Bahamas" ;set country "1" ;return 0 }
  bt { putlog "#$h# Country $what (Bhutan)" ;putidx $i "Country: BT = Bhutan" ;set country "1" ;return 0 }
  bv { putlog "#$h# Country $what (Bouvet Island)" ;putidx $i "Country: BV = Bouvet Island" ;set country "1" ;return 0 }
  bw { putlog "#$h# Country $what (Botswana)" ;putidx $i "Country: BW = Botswana" ;set country "1" ;return 0 }
  by { putlog "#$h# Country $what (Belarus)" ;putidx $i "Country: BY = Belarus" ;set country "1" ;return 0 }
  bz { putlog "#$h# Country $what (Belize)" ;putidx $i "Country: BZ = Belize" ;set country "1" ;return 0 }
  ca { putlog "#$h# Country $what (Canada)" ;putidx $i "Country: CA = Canada" ;set country "1" ;return 0 }
  cc { putlog "#$h# Country $what (Cocos (Keeling) Islands)" ;putidx $i "Country: CC = Cocos (Keeling) Islands" ;set country "1" ;return 0 }
  cf { putlog "#$h# Country $what (Central African Republic)" ;putidx $i "Country: CF = Central African Republic" ;set country "1" ;return 0 }
  cg { putlog "#$h# Country $what (Congo)" ;putidx $i "Country: CG = Congo" ;set country "1" ;return 0 }
  ch { putlog "#$h# Country $what (Switzerland)" ;putidx $i "Country: CH = Switzerland" ;set country "1" ;return 0 }
  ci { putlog "#$h# Country $what (Cote D'Ivoire (Ivory Coast))" ;putidx $i "Country: CI = Cote D'Ivoire (Ivory Coast)" ;set country "1" ;return 0 }
  ck { putlog "#$h# Country $what (Cook Islands)" ;putidx $i "Country: CK = Cook Islands" ;set country "1" ;return 0 }
  cl { putlog "#$h# Country $what (Chile)" ;putidx $i "Country: CL = Chile" ;set country "1" ;return 0 }
  cm { putlog "#$h# Country $what (Cameroon)" ;putidx $i "Country: CM = Cameroon" ;set country "1" ;return 0 }
  cn { putlog "#$h# Country $what (China)" ;putidx $i "Country: CN = China" ;set country "1" ;return 0 }
  co { putlog "#$h# Country $what (Colombia)" ;putidx $i "Country: CO = Colombia" ;set country "1" ;return 0 }
  com { putlog "#$h# Country $what (US Commercial)" ;putidx $i "Country: COM = US Commercial" ;set country "1" ;return 0 }
  cr { putlog "#$h# Country $what (Costa Rica)" ;putidx $i "Country: CR = Costa Rica" ;set country "1" ;return 0 }
  cs { putlog "#$h# Country $what (Czechoslovakia)" ;putidx $i "Country: CS = Czechoslovakia" ;set country "1" ;return 0 }
  cu { putlog "#$h# Country $what (Cuba)" ;putidx $i "Country: CU = Cuba" ;set country "1" ;return 0 }
  cv { putlog "#$h# Country $what (Cape Verde)" ;putidx $i "Country: CV = Cape Verde" ;set country "1" ;return 0 }
  cx { putlog "#$h# Country $what (Christmas Island)" ;putidx $i "Country: CX = Christmas Island" ;set country "1" ;return 0 }
  cy { putlog "#$h# Country $what (Cyprus)" ;putidx $i "Country: CY = Cyprus" ;set country "1" ;return 0 }
  cz { putlog "#$h# Country $what (Czech Republic)" ;putidx $i "Country: CZ = Czech Republic" ;set country "1" ;return 0 }
  de { putlog "#$h# Country $what (Germany)" ;putidx $i "Country: DE = Germany" ;set country "1" ;return 0 }
  dj { putlog "#$h# Country $what (Djibouti)" ;putidx $i "Country: DJ = Djibouti" ;set country "1" ;return 0 }
  dk { putlog "#$h# Country $what (Denmark)" ;putidx $i "Country: DK = Denmark" ;set country "1" ;return 0 }
  dm { putlog "#$h# Country $what (Dominica)" ;putidx $i "Country: DM = Dominica" ;set country "1" ;return 0 }
  do { putlog "#$h# Country $what (Dominican Republic)" ;putidx $i "Country: DO = Dominican Republic" ;set country "1" ;return 0 }
  dz { putlog "#$h# Country $what (Algeria)" ;putidx $i "Country: DZ = Algeria" ;set country "1" ;return 0 }
  ec { putlog "#$h# Country $what (Ecuador)" ;putidx $i "Country: EC = Ecuador" ;set country "1" ;return 0 }
  edu { putlog "#$h# Country $what (Educational)" ;putidx $i "Country: EDU = Educational" ;set country "1" ;return 0 }
  ee { putlog "#$h# Country $what (Estonia)" ;putidx $i "Country: EE = Estonia" ;set country "1" ;return 0 }
  eg { putlog "#$h# Country $what (Egypt)" ;putidx $i "Country: EG = Egypt" ;set country "1" ;return 0 }
  eh { putlog "#$h# Country $what (Western Sahara)" ;putidx $i "Country: EH = Western Sahara" ;set country "1" ;return 0 }
  er { putlog "#$h# Country $what (Eritrea)" ;putidx $i "Country: ER = Eritrea" ;set country "1" ;return 0 }
  es { putlog "#$h# Country $what (Spain)" ;putidx $i "Country: ES = Spain" ;set country "1" ;return 0 }
  et { putlog "#$h# Country $what (Ethiopia)" ;putidx $i "Country: ET = Ethiopia" ;set country "1" ;return 0 }
  fi { putlog "#$h# Country $what (Finland)" ;putidx $i "Country: FI = Finland" ;set country "1" ;return 0 }
  fj { putlog "#$h# Country $what (Fiji)" ;putidx $i "Country: FJ = Fiji" ;set country "1" ;return 0 }
  fk { putlog "#$h# Country $what (Falkland Islands (Malvinas))" ;putidx $i "Country: FK = Falkland Islands (Malvinas)" ;set country "1" ;return 0 }
  fm { putlog "#$h# Country $what (Micronesia)" ;putidx $i "Country: FM = Micronesia" ;set country "1" ;return 0 }
  fo { putlog "#$h# Country $what (Faroe Islands)" ;putidx $i "Country: FO = Faroe Islands" ;set country "1" ;return 0 }
  fr { putlog "#$h# Country $what (France)" ;putidx $i "Country: FR = France" ;set country "1" ;return 0 }
  fx { putlog "#$h# Country $what (France, Metropolitan)" ;putidx $i "Country: FX = France, Metropolitan" ;set country "1" ;return 0 }
  ga { putlog "#$h# Country $what (Gabon)" ;putidx $i "Country: GA = Gabon" ;set country "1" ;return 0 }
  gb { putlog "#$h# Country $what (Great Britain)" ;putidx $i "Country: GB = Great Britain" ;set country "1" ;return 0 }
  gd { putlog "#$h# Country $what (Grenada)" ;putidx $i "Country: GD = Grenada" ;set country "1" ;return 0 }
  ge { putlog "#$h# Country $what (Georgia)" ;putidx $i "Country: GE = Georgia" ;set country "1" ;return 0 }
  gf { putlog "#$h# Country $what (French Guiana)" ;putidx $i "Country: GF = French Guiana" ;set country "1" ;return 0 }
  gh { putlog "#$h# Country $what (Ghana)" ;putidx $i "Country: GH = Ghana" ;set country "1" ;return 0 }
  gi { putlog "#$h# Country $what (Gibraltar)" ;putidx $i "Country: GI = Gibraltar" ;set country "1" ;return 0 }
  gl { putlog "#$h# Country $what (Greenland)" ;putidx $i "Country: GL = Greenland" ;set country "1" ;return 0 }
  gm { putlog "#$h# Country $what (Gambia)" ;putidx $i "Country: GM = Gambia" ;set country "1" ;return 0 }
  gn { putlog "#$h# Country $what (Guinea)" ;putidx $i "Country: GN = Guinea" ;set country "1" ;return 0 }
  gov { putlog "#$h# Country $what (Government)" ;putidx $i "Country: GOV = Government" ;set country "1" ;return 0 }
  gp { putlog "#$h# Country $what (Guadeloupe)" ;putidx $i "Country: GP = Guadeloupe" ;set country "1" ;return 0 }
  gq { putlog "#$h# Country $what (Equatorial Guinea)" ;putidx $i "Country: GQ = Equatorial Guinea" ;set country "1" ;return 0 }
  gr { putlog "#$h# Country $what (Greece)" ;putidx $i "Country: GR = Greece" ;set country "1" ;return 0 }
  gs { putlog "#$h# Country $what (St. Georgia and St. Sandwich Isles)" ;putidx $i "Country: GS = St. Georgia and St. Sandwich Isles" ;set country "1" ;return 0 }
  gt { putlog "#$h# Country $what (Guatemala)" ;putidx $i "Country: GT = Guatemala" ;set country "1" ;return 0 }
  gu { putlog "#$h# Country $what (Guam)" ;putidx $i "Country: GU = Guam" ;set country "1" ;return 0 }
  gw { putlog "#$h# Country $what (Guinea-Bissau)" ;putidx $i "Country: GW = Guinea-Bissau" ;set country "1" ;return 0 }
  gy { putlog "#$h# Country $what (Guyana)" ;putidx $i "Country: GY = Guyana" ;set country "1" ;return 0 }
  hk { putlog "#$h# Country $what (Hong Kong)" ;putidx $i "Country: HK = Hong Kong" ;set country "1" ;return 0 }
  hm { putlog "#$h# Country $what (Heard and McDonald Islands)" ;putidx $i "Country: HM = Heard and McDonald Islands" ;set country "1" ;return 0 }
  hn { putlog "#$h# Country $what (Honduras)" ;putidx $i "Country: HN = Honduras" ;set country "1" ;return 0 }
  hr { putlog "#$h# Country $what (Croatia)" ;putidx $i "Country: HR = Croatia" ;set country "1" ;return 0 }
  ht { putlog "#$h# Country $what (Haiti)" ;putidx $i "Country: HT = Haiti" ;set country "1" ;return 0 }
  hu { putlog "#$h# Country $what (Hungary)" ;putidx $i "Country: HU = Hungary" ;set country "1" ;return 0 }
  id { putlog "#$h# Country $what (Indonesia)" ;putidx $i "Country: ID = Indonesia" ;set country "1" ;return 0 }
  ie { putlog "#$h# Country $what (Ireland)" ;putidx $i "Country: IE = Ireland" ;set country "1" ;return 0 }
  il { putlog "#$h# Country $what (Israel)" ;putidx $i "Country: IL = Israel" ;set country "1" ;return 0 }
  in { putlog "#$h# Country $what (India)" ;putidx $i "Country: IN = India" ;set country "1" ;return 0 }
  info { putlog "#$h# Country $what (Specified Domain for Information)" ;putidx $i "Country: INFO = Specified Domain for Information" ;set country "1" ;return 0 }
  int { putlog "#$h# Country $what (International)" ;putidx $i "Country: INT = International" ;set country "1" ;return 0 }
  io { putlog "#$h# Country $what (British Indian Ocean Territory)" ;putidx $i "Country: IO = British Indian Ocean Territory" ;set country "1" ;return 0 }
  iq { putlog "#$h# Country $what (Iraq)" ;putidx $i "Country: IQ = Iraq" ;set country "1" ;return 0 }
  ir { putlog "#$h# Country $what (Iran)" ;putidx $i "Country: IR = Iran" ;set country "1" ;return 0 }
  is { putlog "#$h# Country $what (Iceland)" ;putidx $i "Country: IS = Iceland" ;set country "1" ;return 0 }
  it { putlog "#$h# Country $what (Italy)" ;putidx $i "Country: IT = Italy" ;set country "1" ;return 0 }
  jm { putlog "#$h# Country $what (Jamaica)" ;putidx $i "Country: JM = Jamaica" ;set country "1" ;return 0 }
  jo { putlog "#$h# Country $what (Jordan)" ;putidx $i "Country: JO = Jordan" ;set country "1" ;return 0 }
  jp { putlog "#$h# Country $what (Japan)" ;putidx $i "Country: JP = Japan" ;set country "1" ;return 0 }
  ke { putlog "#$h# Country $what (Kenya)" ;putidx $i "Country: KE = Kenya" ;set country "1" ;return 0 }
  kg { putlog "#$h# Country $what (Kyrgyzstan)" ;putidx $i "Country: KG = Kyrgyzstan" ;set country "1" ;return 0 }
  kh { putlog "#$h# Country $what (Cambodia)" ;putidx $i "Country: KH = Cambodia" ;set country "1" ;return 0 }
  ki { putlog "#$h# Country $what (Kiribati)" ;putidx $i "Country: KI = Kiribati" ;set country "1" ;return 0 }
  kids { putlog "#$h# Country $what (Specified Domain for Kids)" ;putidx $i "Country: KIDS = Specified Domain for Kids" ;set country "1" ;return 0 }
  km { putlog "#$h# Country $what (Comoros)" ;putidx $i "Country: KM = Comoros" ;set country "1" ;return 0 }
  kn { putlog "#$h# Country $what (Saint Kitts and Nevis)" ;putidx $i "Country: KN = Saint Kitts and Nevis" ;set country "1" ;return 0 }
  kp { putlog "#$h# Country $what (North Korea)" ;putidx $i "Country: KP = North Korea" ;set country "1" ;return 0 }
  kr { putlog "#$h# Country $what (South Korea)" ;putidx $i "Country: KR = South Korea" ;set country "1" ;return 0 }
  kw { putlog "#$h# Country $what (Kuwait)" ;putidx $i "Country: KW = Kuwait" ;set country "1" ;return 0 }
  ky { putlog "#$h# Country $what (Cayman Islands)" ;putidx $i "Country: KY = Cayman Islands" ;set country "1" ;return 0 }
  kz { putlog "#$h# Country $what (Kazakhstan)" ;putidx $i "Country: KZ = Kazakhstan" ;set country "1" ;return 0 }
  la { putlog "#$h# Country $what (Laos)" ;putidx $i "Country: LA = Laos" ;set country "1" ;return 0 }
  lb { putlog "#$h# Country $what (Lebanon)" ;putidx $i "Country: LB = Lebanon" ;set country "1" ;return 0 }
  lc { putlog "#$h# Country $what (Saint Lucia)" ;putidx $i "Country: LC = Saint Lucia" ;set country "1" ;return 0 }
  li { putlog "#$h# Country $what (Liechtenstein)" ;putidx $i "Country: LI = Liechtenstein" ;set country "1" ;return 0 }
  lk { putlog "#$h# Country $what (Sri Lanka)" ;putidx $i "Country: LK = Sri Lanka" ;set country "1" ;return 0 }
  lr { putlog "#$h# Country $what (Liberia)" ;putidx $i "Country: LR = Liberia" ;set country "1" ;return 0 }
  ls { putlog "#$h# Country $what (Lesotho)" ;putidx $i "Country: LS = Lesotho" ;set country "1" ;return 0 }
  lt { putlog "#$h# Country $what (Lithuania)" ;putidx $i "Country: LT = Lithuania" ;set country "1" ;return 0 }
  lu { putlog "#$h# Country $what (Luxembourg)" ;putidx $i "Country: LU = Luxembourg" ;set country "1" ;return 0 }
  lv { putlog "#$h# Country $what (Latvia)" ;putidx $i "Country: LV = Latvia" ;set country "1" ;return 0 }
  ly { putlog "#$h# Country $what (Libya)" ;putidx $i "Country: LY = Libya" ;set country "1" ;return 0 }
  ma { putlog "#$h# Country $what (Morocco)" ;putidx $i "Country: MA = Morocco" ;set country "1" ;return 0 }
  mc { putlog "#$h# Country $what (Monaco)" ;putidx $i "Country: MC = Monaco" ;set country "1" ;return 0 }
  md { putlog "#$h# Country $what (Moldova)" ;putidx $i "Country: MD = Moldova" ;set country "1" ;return 0 }
  mg { putlog "#$h# Country $what (Madagascar)" ;putidx $i "Country: MG = Madagascar" ;set country "1" ;return 0 }
  mh { putlog "#$h# Country $what (Marshall Islands)" ;putidx $i "Country: MH = Marshall Islands" ;set country "1" ;return 0 }
  mil { putlog "#$h# Country $what (US Military)" ;putidx $i "Country: MIL = US Military" ;set country "1" ;return 0 }
  mk { putlog "#$h# Country $what (Macedonia)" ;putidx $i "Country: MK = Macedonia" ;set country "1" ;return 0 }
  ml { putlog "#$h# Country $what (Mali)" ;putidx $i "Country: ML = Mali" ;set country "1" ;return 0 }
  mm { putlog "#$h# Country $what (Myanmar)" ;putidx $i "Country: MM = Myanmar" ;set country "1" ;return 0 }
  mn { putlog "#$h# Country $what (Mongolia)" ;putidx $i "Country: MN = Mongolia" ;set country "1" ;return 0 }
  mo { putlog "#$h# Country $what (Macau)" ;putidx $i "Country: MO = Macau" ;set country "1" ;return 0 }
  mp { putlog "#$h# Country $what (Northern Mariana Islands)" ;putidx $i "Country: MP = Northern Mariana Islands" ;set country "1" ;return 0 }
  mq { putlog "#$h# Country $what (Martinique)" ;putidx $i "Country: MQ = Martinique" ;set country "1" ;return 0 }
  mr { putlog "#$h# Country $what (Mauritania)" ;putidx $i "Country: MR = Mauritania" ;set country "1" ;return 0 }
  ms { putlog "#$h# Country $what (Montserrat)" ;putidx $i "Country: MS = Montserrat" ;set country "1" ;return 0 }
  mt { putlog "#$h# Country $what (Malta)" ;putidx $i "Country: MT = Malta" ;set country "1" ;return 0 }
  mu { putlog "#$h# Country $what (Mauritius)" ;putidx $i "Country: MU = Mauritius" ;set country "1" ;return 0 }
  mv { putlog "#$h# Country $what (Maldives)" ;putidx $i "Country: MV = Maldives" ;set country "1" ;return 0 }
  mw { putlog "#$h# Country $what (Malawi)" ;putidx $i "Country: MW = Malawi" ;set country "1" ;return 0 }
  mx { putlog "#$h# Country $what (Mexico)" ;putidx $i "Country: MX = Mexico" ;set country "1" ;return 0 }
  my { putlog "#$h# Country $what (Malaysia)" ;putidx $i "Country: MY = Malaysia" ;putidx $i "m'sian lar kekeke :oD" ;set country "1" ;return 0 }
  mz { putlog "#$h# Country $what (Mozambique)" ;putidx $i "Country: MZ = Mozambique" ;set country "1" ;return 0 }
  na { putlog "#$h# Country $what (Namibia)" ;putidx $i "Country: NA = Namibia" ;set country "1" ;return 0 }
  name { putlog "#$h# Country $what (Specified Domain for Names)" ;putidx $i "Country: NAME = Specified Domain for Names" ;set country "1" ;return 0 }
  nato { putlog "#$h# Country $what (Nato field)" ;putidx $i "Country: NATO = Nato field" ;set country "1" ;return 0 }
  nc { putlog "#$h# Country $what (New Caledonia)" ;putidx $i "Country: NC = New Caledonia" ;set country "1" ;return 0 }
  ne { putlog "#$h# Country $what (Niger)" ;putidx $i "Country: NE = Niger" ;set country "1" ;return 0 }
  net { putlog "#$h# Country $what (Network)" ;putidx $i "Country: NET = Network" ;set country "1" ;return 0 }
  nf { putlog "#$h# Country $what (Norfolk Island)" ;putidx $i "Country: NF = Norfolk Island" ;set country "1" ;return 0 }
  ng { putlog "#$h# Country $what (Nigeria)" ;putidx $i "Country: NG = Nigeria" ;set country "1" ;return 0 }
  ni { putlog "#$h# Country $what (Nicaragua)" ;putidx $i "Country: NI = Nicaragua" ;set country "1" ;return 0 }
  nl { putlog "#$h# Country $what (Netherlands)" ;putidx $i "Country: NL = Netherlands" ;set country "1" ;return 0 }
  no { putlog "#$h# Country $what (Norway)" ;putidx $i "Country: NO = Norway" ;set country "1" ;return 0 }
  np { putlog "#$h# Country $what (Nepal)" ;putidx $i "Country: NP = Nepal" ;set country "1" ;return 0 }
  nr { putlog "#$h# Country $what (Nauru)" ;putidx $i "Country: NR = Nauru" ;set country "1" ;return 0 }
  nt { putlog "#$h# Country $what (Neutral Zone)" ;putidx $i "Country: NT = Neutral Zone" ;set country "1" ;return 0 }
  nu { putlog "#$h# Country $what (Niue)" ;putidx $i "Country: NU = Niue" ;set country "1" ;return 0 }
  nz { putlog "#$h# Country $what (New Zealand)" ;putidx $i "Country: NZ = New Zealand" ;set country "1" ;return 0 }
  om { putlog "#$h# Country $what (Oman)" ;putidx $i "Country: OM = Oman" ;set country "1" ;return 0 }
  org { putlog "#$h# Country $what (Non-Profit Organization)" ;putidx $i "Country: ORG = Non-Profit Organization" ;set country "1" ;return 0 }
  pa { putlog "#$h# Country $what (Panama)" ;putidx $i "Country: PA = Panama" ;set country "1" ;return 0 }
  pe { putlog "#$h# Country $what (Peru)" ;putidx $i "Country: PE = Peru" ;set country "1" ;return 0 }
  pf { putlog "#$h# Country $what (French Polynesia)" ;putidx $i "Country: PF = French Polynesia" ;set country "1" ;return 0 }
  pg { putlog "#$h# Country $what (Papua New Guinea)" ;putidx $i "Country: PG = Papua New Guinea" ;set country "1" ;return 0 }
  ph { putlog "#$h# Country $what (Philippines)" ;putidx $i "Country: PH = Philippines" ;set country "1" ;return 0 }
  pk { putlog "#$h# Country $what (Pakistan)" ;putidx $i "Country: PK = Pakistan" ;set country "1" ;return 0 }
  pl { putlog "#$h# Country $what (Poland)" ;putidx $i "Country: PL = Poland" ;set country "1" ;return 0 }
  pm { putlog "#$h# Country $what (St. Pierre and Miquelon)" ;putidx $i "Country: PM = St. Pierre and Miquelon" ;set country "1" ;return 0 }
  pn { putlog "#$h# Country $what (Pitcairn)" ;putidx $i "Country: PN = Pitcairn" ;set country "1" ;return 0 }
  pr { putlog "#$h# Country $what (Puerto Rico)" ;putidx $i "Country: PR = Puerto Rico" ;set country "1" ;return 0 }
  pt { putlog "#$h# Country $what (Portugal)" ;putidx $i "Country: PT = Portugal" ;set country "1" ;return 0 }
  pw { putlog "#$h# Country $what (Palau)" ;putidx $i "Country: PW = Palau" ;set country "1" ;return 0 }
  py { putlog "#$h# Country $what (Paraguay)" ;putidx $i "Country: PY = Paraguay" ;set country "1" ;return 0 }
  qa { putlog "#$h# Country $what (Qatar)" ;putidx $i "Country: QA = Qatar" ;set country "1" ;return 0 }
  re { putlog "#$h# Country $what (Reunion)" ;putidx $i "Country: RE = Reunion" ;set country "1" ;return 0 }
  ro { putlog "#$h# Country $what (Romania)" ;putidx $i "Country: RO = Romania" ;set country "1" ;return 0 }
  ru { putlog "#$h# Country $what (Russia)" ;putidx $i "Country: RU = Russia" ;set country "1" ;return 0 }
  rw { putlog "#$h# Country $what (Rwanda)" ;putidx $i "Country: RW = Rwanda" ;set country "1" ;return 0 }
  sa { putlog "#$h# Country $what (Saudi Arabia)" ;putidx $i "Country: SA = Saudi Arabia" ;set country "1" ;return 0 }
  sb { putlog "#$h# Country $what (Solomon Islands)" ;putidx $i "Country: SB = Solomon Islands" ;set country "1" ;return 0 }
  sc { putlog "#$h# Country $what (Seychelles)" ;putidx $i "Country: SC = Seychelles" ;set country "1" ;return 0 }
  sd { putlog "#$h# Country $what (Sudan)" ;putidx $i "Country: SD = Sudan" ;set country "1" ;return 0 }
  se { putlog "#$h# Country $what (Sweden)" ;putidx $i "Country: SE = Sweden" ;set country "1" ;return 0 }
  sg { putlog "#$h# Country $what (Singapore)" ;putidx $i "Country: SG = Singapore" ;set country "1" ;return 0 }
  sh { putlog "#$h# Country $what (St. Helena)" ;putidx $i "Country: SH = St. Helena" ;set country "1" ;return 0 }
  si { putlog "#$h# Country $what (Slovenia)" ;putidx $i "Country: SI = Slovenia" ;set country "1" ;return 0 }
  sj { putlog "#$h# Country $what (Svalbard and Jan Mayen Islands)" ;putidx $i "Country: SJ = Svalbard and Jan Mayen Islands" ;set country "1" ;return 0 }
  sk { putlog "#$h# Country $what (Slovak Republic)" ;putidx $i "Country: SK = Slovak Republic" ;set country "1" ;return 0 }
  sl { putlog "#$h# Country $what (Sierra Leone)" ;putidx $i "Country: SL = Sierra Leone" ;set country "1" ;return 0 }
  sm { putlog "#$h# Country $what (San Marino)" ;putidx $i "Country: SM = San Marino" ;set country "1" ;return 0 }
  sn { putlog "#$h# Country $what (Senegal)" ;putidx $i "Country: SN = Senegal" ;set country "1" ;return 0 }
  so { putlog "#$h# Country $what (Somalia)" ;putidx $i "Country: SO = Somalia" ;set country "1" ;return 0 }
  sr { putlog "#$h# Country $what (Suriname)" ;putidx $i "Country: SR = Suriname" ;set country "1" ;return 0 }
  st { putlog "#$h# Country $what (Sao Tome and Principe)" ;putidx $i "Country: ST = Sao Tome and Principe" ;set country "1" ;return 0 }
  su { putlog "#$h# Country $what (USSR)" ;putidx $i "Country: SU = USSR" ;set country "1" ;return 0 }
  sv { putlog "#$h# Country $what (El Salvador)" ;putidx $i "Country: SV = El Salvador" ;set country "1" ;return 0 }
  sy { putlog "#$h# Country $what (Syria)" ;putidx $i "Country: SY = Syria" ;set country "1" ;return 0 }
  sz { putlog "#$h# Country $what (Swaziland)" ;putidx $i "Country: SZ = Swaziland" ;set country "1" ;return 0 }
  tc { putlog "#$h# Country $what (Turks and Caicos Islands)" ;putidx $i "Country: TC = Turks and Caicos Islands" ;set country "1" ;return 0 }
  td { putlog "#$h# Country $what (Chad)" ;putidx $i "Country: TD = Chad" ;set country "1" ;return 0 }
  tf { putlog "#$h# Country $what (French Southern Territories)" ;putidx $i "Country: TF = French Southern Territories" ;set country "1" ;return 0 }
  tg { putlog "#$h# Country $what (Togo)" ;putidx $i "Country: TG = Togo" ;set country "1" ;return 0 }
  th { putlog "#$h# Country $what (Thailand)" ;putidx $i "Country: TH = Thailand" ;set country "1" ;return 0 }
  tj { putlog "#$h# Country $what (Tajikistan)" ;putidx $i "Country: TJ = Tajikistan" ;set country "1" ;return 0 }
  tk { putlog "#$h# Country $what (Tokelau)" ;putidx $i "Country: TK = Tokelau" ;set country "1" ;return 0 }
  tm { putlog "#$h# Country $what (Turkmenistan)" ;putidx $i "Country: TM = Turkmenistan" ;set country "1" ;return 0 }
  tn { putlog "#$h# Country $what (Tunisia)" ;putidx $i "Country: TN = Tunisia" ;set country "1" ;return 0 }
  to { putlog "#$h# Country $what (Tonga)" ;putidx $i "Country: TO = Tonga" ;set country "1" ;return 0 }
  tp { putlog "#$h# Country $what (East Timor)" ;putidx $i "Country: TP = East Timor" ;set country "1" ;return 0 }
  tr { putlog "#$h# Country $what (Turkey)" ;putidx $i "Country: TR = Turkey" ;set country "1" ;return 0 }
  tt { putlog "#$h# Country $what (Trinidad and Tobago)" ;putidx $i "Country: TT = Trinidad and Tobago" ;set country "1" ;return 0 }
  tv { putlog "#$h# Country $what (Tuvalu)" ;putidx $i "Country: TV = Tuvalu" ;set country "1" ;return 0 }
  tw { putlog "#$h# Country $what (Taiwan)" ;putidx $i "Country: TW = Taiwan" ;set country "1" ;return 0 }
  tz { putlog "#$h# Country $what (Tanzania)" ;putidx $i "Country: TZ = Tanzania" ;set country "1" ;return 0 }
  ua { putlog "#$h# Country $what (Ukraine)" ;putidx $i "Country: UA = Ukraine" ;set country "1" ;return 0 }
  ug { putlog "#$h# Country $what (Uganda)" ;putidx $i "Country: UG = Uganda" ;set country "1" ;return 0 }
  uk { putlog "#$h# Country $what (United Kingdom)" ;putidx $i "Country: UK = United Kingdom" ;set country "1" ;return 0 }
  um { putlog "#$h# Country $what (US Minor Outlying Islands)" ;putidx $i "Country: UM = US Minor Outlying Islands" ;set country "1" ;return 0 }
  urk { putlog "#$h# Country $what (UrkLand)" ;putidx $i "Country: URK = UrkLand" ;set country "1" ;return 0 }
  us { putlog "#$h# Country $what (United States)" ;putidx $i "Country: US = United States" ;set country "1" ;return 0 }
  uy { putlog "#$h# Country $what (Uruguay)" ;putidx $i "Country: UY = Uruguay" ;set country "1" ;return 0 }
  uz { putlog "#$h# Country $what (Uzbekistan)" ;putidx $i "Country: UZ = Uzbekistan" ;set country "1" ;return 0 }
  va { putlog "#$h# Country $what (Vatican City State)" ;putidx $i "Country: VA = Vatican City State" ;set country "1" ;return 0 }
  vc { putlog "#$h# Country $what (Saint Vincent and the Grenadines)" ;putidx $i "Country: VC = Saint Vincent and the Grenadines" ;set country "1" ;return 0 }
  ve { putlog "#$h# Country $what (Venezuela)" ;putidx $i "Country: VE = Venezuela" ;set country "1" ;return 0 }
  vg { putlog "#$h# Country $what (Virgin Islands (British))" ;putidx $i "Country: VG = Virgin Islands (British)" ;set country "1" ;return 0 }
  vi { putlog "#$h# Country $what (Virgin Islands (U.S.))" ;putidx $i "Country: VI = Virgin Islands (U.S.)" ;set country "1" ;return 0 }
  vn { putlog "#$h# Country $what (Viet Nam)" ;putidx $i "Country: VN = Viet Nam" ;set country "1" ;return 0 }
  vu { putlog "#$h# Country $what (Vanuatu)" ;putidx $i "Country: VU = Vanuatu" ;set country "1" ;return 0 }
  wf { putlog "#$h# Country $what (Wallis and Futuna Islands)" ;putidx $i "Country: WF = Wallis and Futuna Islands" ;set country "1" ;return 0 }
  ws { putlog "#$h# Country $what (Samoa)" ;putidx $i "Country: WS = Samoa" ;set country "1" ;return 0 }
  ye { putlog "#$h# Country $what (Yemen)" ;putidx $i "Country: YE = Yemen" ;set country "1" ;return 0 }
  yt { putlog "#$h# Country $what (Mayotte)" ;putidx $i "Country: YT = Mayotte" ;set country "1" ;return 0 }
  yu { putlog "#$h# Country $what (Yugoslavia)" ;putidx $i "Country: YU = Yugoslavia" ;set country "1" ;return 0 }
  za { putlog "#$h# Country $what (South Africa)" ;putidx $i "Country: ZA = South Africa" ;set country "1" ;return 0 }
  zm { putlog "#$h# Country $what (Zambia)" ;putidx $i "Country: ZM = Zambia" ;set country "1" ;return 0 }
  zr { putlog "#$h# Country $what (Zaire)" ;putidx $i "Country: ZR = Zaire" ;set country "1" ;return 0 }
  zw { putlog "#$h# Country $what (Zimbabwe)" ;putidx $i "Country: ZW = Zimbabwe" ;set country "1" ;return 0 }
  }
  if {$country == "urk" || $country == ""} { set country "Unknown Country Code" ;putidx $i "Country: $what = $country" ;putlog "#$h# Country $what ($country)" ;return 0 } else { return 0 }
  return 0
}
#
#
## --==> The Actual Public (channel) script for .coountry <code>
#
proc pub.country {ni u h ch t} {
  global botnick pubc
  if {[channel get $ch pub-country] == "0"} { return 0 }
  set country "urk"
  if {($pubc(ver) != "0.1e")} { return 0 }
  if {![validuser $h]} { set nk(fl) "?" }
  if {([matchattr $h n]) || ([matchattr $h n]) && ([matchattr $h |n $ch]) || ([matchattr $h |n $ch]) || (![matchattr $h n]) && ([matchattr $h |n $ch]) || ([matchattr $h n]) && (![matchattr $h |n $ch])} { set nk(fl) "*" } else {
    if {([matchattr $h m]) || ([matchattr $h m]) && ([matchattr $h |m $ch]) || ([matchattr $h |m $ch]) || (![matchattr $h m]) && ([matchattr $h |m $ch]) || ([matchattr $h m]) && (![matchattr $h |m $ch])} { set nk(fl) "¤" } else {
      if {([matchattr $h o]) || ([matchattr $h o]) && ([matchattr $h |o $ch]) || ([matchattr $h |o $ch]) || (![matchattr $h o]) && ([matchattr $h |o $ch]) || ([matchattr $h o]) && (![matchattr $h |o $ch])} { set nk(fl) "@" } else { set nk(fl) "+" }
    }
  }
  set what [string tolower [lindex $t 0] 0 end]
  if {[string index $what 0] == "."} { set what [string trimleft $what .] }
  if {[string index $what 0] == "-"} { set what [string trimleft $what -] }
  if {[string index $what 0] == "#"} {
    set what [lindex $t 0]
    if {![validchan $what]} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what INFO (Error: Not a valid channel)" ;putsnot $ni "Usage: .country <channel> INFO" ;putsnot $ni "Oops! $what is not a Valid channel! (where I am)" ;putsnot $ni "To see Status, you have to use a valid channel! (where I am)" ;return 0 }
    set pubc(act) [channel get $what pub-country]
    if {$pubc(act) == "1"} { set pubc(actxt) "ON - Activated" }
    if {$pubc(act) == "0"} { set pubc(actxt) "OFF - Deactivated" }
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what INFO ($pubc(actxt))"
    putsnot $ni "$pubc(char)country is $pubc(actxt) on $what :o)"
    return 0
  }
  if {[string index $what 0] == "!"} {
    set what [lindex $t 0]
    if {![validchan $what]} { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what INFO (Error: Not a valid channel)" ;putsnot $ni "Usage: .country <channel> INFO" ;putsnot $ni "Oops! $what is not a Valid channel! (where I am)" ;putsnot $ni "To see Status, you have to use a valid channel! (where I am)" ;return 0 }
    set pubc(act) [channel get $what pub-country]
    if {$pubc(act) == "1"} { set pubc(actxt) "ON - Activated" }
    if {$pubc(act) == "0"} { set pubc(actxt) "OFF - Deactivated" }
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what INFO ($pubc(actxt))"
    putsnot $ni "$pubc(char)country is $pubc(actxt) on $what :o)"
    return 0
  }
  if {$pubc(msg) == "1"} { set sto $ch }
  if {$pubc(msg) == "2"} { set sto [lindex [split $ni] 0] }
  if {$pubc(msg) == "3"} { set sto [lindex [split $ni] 0] }
  if {$pubc(colors) == "1"} { set pubc(disp) "\0032Country\003\037:\037" }
  if {$pubc(colors) == "2"} { set pubc(disp) "Country\037:\037" }
  if {$pubc(colors) == "3"} { set pubc(disp) "Country:" }
  if {($what == "ver") || ($what == "version")} {
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)country version.. ($pubc(ver))"
    if {$pubc(msg) == "3"} {
      if {$pubc(colors) == "1"} { putsto $sto "$pubc(verl)" }
      if {$pubc(colors) == "2"} { putsto $sto "$pubc(verlb)" }
      if {$pubc(colors) == "3"} { putsto $sto "$pubc(verln)" }
    } else {
      if {$pubc(colors) == "1"} { putchan $ch "$pubc(verl)" }
      if {$pubc(colors) == "2"} { putchan $ch "$pubc(verlb)" }
      if {$pubc(colors) == "3"} { putchan $ch "$pubc(verln)" }
    }
    return 0
  }
  if {($what == "") || ($what == "help") || ($what == "hjelp")} {
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)help Country"
    putsnot $ni "--=={  -=>      Help for: $pubc(char)Country     <=-  }==--"
    putsnot $ni "--=={      Usage: $pubc(char)country <country num>    }==--"
    putsnot $ni "--=={  Shows the country for <country num>  }==--"
    putsnot $ni "--=={  Ex: $pubc(char)country br (or: $pubc(char)country .br)   }==--"
    putsnot $ni "--=={  Shows: <$botnick> Country: BR = Brazil }==--"
    return 0
  }
  switch -exact $what {
  ad { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Andorra)" ;putsto $sto "$pubc(disp) AD = Andorra" ;set country "1" ;return 0 }
  ae { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (United Arab Emirates)" ;putsto $sto "$pubc(disp) AE = United Arab Emirates" ;set country "1" ;return 0 }
  ac { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Ascension Island)" ;putsto $sto "$pubc(disp) AC = Ascension Island" ;set country "1" ;return 0 }
  af { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Afghanistan)" ;putsto $sto "$pubc(disp) AF = Afghanistan" ;set country "1" ;return 0 }
  ag { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Antigua and Barbuda)" ;putsto $sto "$pubc(disp) AG = Antigua and Barbuda" ;set country "1" ;return 0 }
  ai { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Anguilla)" ;putsto $sto "$pubc(disp) AI = Anguilla" ;set country "1" ;return 0 }
  al { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Albania)" ;putsto $sto "$pubc(disp) AL = Albania" ;set country "1" ;return 0 }
  am { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Armenia)" ;putsto $sto "$pubc(disp) AM = Armenia" ;set country "1" ;return 0 }
  an { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Netherlands Antilles)" ;putsto $sto "$pubc(disp) AN = Netherlands Antilles" ;set country "1" ;return 0 }
  ao { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Angola)" ;putsto $sto "$pubc(disp) AO = Angola" ;set country "1" ;return 0 }
  aq { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Antarctica)" ;putsto $sto "$pubc(disp) AQ = Antarctica" ;set country "1" ;return 0 }
  ar { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Argentina)" ;putsto $sto "$pubc(disp) AR = Argentina" ;set country "1" ;return 0 }
  arpa { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Old style Arpanet)" ;putsto $sto "$pubc(disp) ARPA = Old style Arpanet" ;set country "1" ;return 0 }
  as { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (American Samoa)" ;putsto $sto "$pubc(disp) AS = American Samoa" ;set country "1" ;return 0 }
  at { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Austria)" ;putsto $sto "$pubc(disp) AT = Austria" ;set country "1" ;return 0 }
  au { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Australia)" ;putsto $sto "$pubc(disp) AU = Australia" ;set country "1" ;return 0 }
  aw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Aruba)" ;putsto $sto "$pubc(disp) AW = Aruba" ;set country "1" ;return 0 }
  az { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Azerbaijan)" ;putsto $sto "$pubc(disp) AZ = Azerbaijan" ;set country "1" ;return 0 }
  ba { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bosnia and Herzegovina)" ;putsto $sto "$pubc(disp) BA = Bosnia and Herzegovina" ;set country "1" ;return 0 }
  bb { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Barbados)" ;putsto $sto "$pubc(disp) BB = Barbados" ;set country "1" ;return 0 }
  bd { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bangladesh)" ;putsto $sto "$pubc(disp) BD = Bangladesh" ;set country "1" ;return 0 }
  be { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Belgium)" ;putsto $sto "$pubc(disp) BE = Belgium" ;set country "1" ;return 0 }
  bf { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Burkina Faso)" ;putsto $sto "$pubc(disp) BF = Burkina Faso" ;set country "1" ;return 0 }
  bg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bulgaria)" ;putsto $sto "$pubc(disp) BG = Bulgaria" ;set country "1" ;return 0 }
  bh { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bahrain)" ;putsto $sto "$pubc(disp) BH = Bahrain" ;set country "1" ;return 0 }
  bi { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Burundi)" ;putsto $sto "$pubc(disp) BI = Burundi" ;set country "1" ;return 0 }
  biz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Business)" ;putsto $sto "$pubc(disp) BIZ = Business" ;set country "1" ;return 0 }
  bj { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Benin)" ;putsto $sto "$pubc(disp) BJ = Benin" ;set country "1" ;return 0 }
  bm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bermuda)" ;putsto $sto "$pubc(disp) BM = Bermuda" ;set country "1" ;return 0 }
  bn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Brunei Darussalam)" ;putsto $sto "$pubc(disp) BN = Brunei Darussalam" ;set country "1" ;return 0 }
  bo { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bolivia)" ;putsto $sto "$pubc(disp) BO = Bolivia" ;set country "1" ;return 0 }
  br { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Brazil)" ;putsto $sto "$pubc(disp) BR = Brazil" ;set country "1" ;return 0 }
  bs { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bahamas)" ;putsto $sto "$pubc(disp) BS = Bahamas" ;set country "1" ;return 0 }
  bt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bhutan)" ;putsto $sto "$pubc(disp) BT = Bhutan" ;set country "1" ;return 0 }
  bv { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Bouvet Island)" ;putsto $sto "$pubc(disp) BV = Bouvet Island" ;set country "1" ;return 0 }
  bw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Botswana)" ;putsto $sto "$pubc(disp) BW = Botswana" ;set country "1" ;return 0 }
  by { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Belarus)" ;putsto $sto "$pubc(disp) BY = Belarus" ;set country "1" ;return 0 }
  bz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Belize)" ;putsto $sto "$pubc(disp) BZ = Belize" ;set country "1" ;return 0 }
  ca { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Canada)" ;putsto $sto "$pubc(disp) CA = Canada" ;set country "1" ;return 0 }
  cc { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cocos (Keeling) Islands)" ;putsto $sto "$pubc(disp) CC = Cocos (Keeling) Islands" ;set country "1" ;return 0 }
  cf { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Central African Republic)" ;putsto $sto "$pubc(disp) CF = Central African Republic" ;set country "1" ;return 0 }
  cg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Congo)" ;putsto $sto "$pubc(disp) CG = Congo" ;set country "1" ;return 0 }
  ch { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Switzerland)" ;putsto $sto "$pubc(disp) CH = Switzerland" ;set country "1" ;return 0 }
  ci { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cote D'Ivoire (Ivory Coast))" ;putsto $sto "$pubc(disp) CI = Cote D'Ivoire (Ivory Coast)" ;set country "1" ;return 0 }
  ck { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cook Islands)" ;putsto $sto "$pubc(disp) CK = Cook Islands" ;set country "1" ;return 0 }
  cl { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Chile)" ;putsto $sto "$pubc(disp) CL = Chile" ;set country "1" ;return 0 }
  cm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cameroon)" ;putsto $sto "$pubc(disp) CM = Cameroon" ;set country "1" ;return 0 }
  cn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (China)" ;putsto $sto "$pubc(disp) CN = China" ;set country "1" ;return 0 }
  co { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Colombia)" ;putsto $sto "$pubc(disp) CO = Colombia" ;set country "1" ;return 0 }
  com { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (US Commercial)" ;putsto $sto "$pubc(disp) COM = US Commercial" ;set country "1" ;return 0 }
  cr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Costa Rica)" ;putsto $sto "$pubc(disp) CR = Costa Rica" ;set country "1" ;return 0 }
  cs { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Czechoslovakia)" ;putsto $sto "$pubc(disp) CS = Czechoslovakia" ;set country "1" ;return 0 }
  cu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cuba)" ;putsto $sto "$pubc(disp) CU = Cuba" ;set country "1" ;return 0 }
  cv { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cape Verde)" ;putsto $sto "$pubc(disp) CV = Cape Verde" ;set country "1" ;return 0 }
  cx { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Christmas Island)" ;putsto $sto "$pubc(disp) CX = Christmas Island" ;set country "1" ;return 0 }
  cy { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cyprus)" ;putsto $sto "$pubc(disp) CY = Cyprus" ;set country "1" ;return 0 }
  cz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Czech Republic)" ;putsto $sto "$pubc(disp) CZ = Czech Republic" ;set country "1" ;return 0 }
  de { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Germany)" ;putsto $sto "$pubc(disp) DE = Germany" ;set country "1" ;return 0 }
  dj { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Djibouti)" ;putsto $sto "$pubc(disp) DJ = Djibouti" ;set country "1" ;return 0 }
  dk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Denmark)" ;putsto $sto "$pubc(disp) DK = Denmark" ;set country "1" ;return 0 }
  dm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Dominica)" ;putsto $sto "$pubc(disp) DM = Dominica" ;set country "1" ;return 0 }
  do { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Dominican Republic)" ;putsto $sto "$pubc(disp) DO = Dominican Republic" ;set country "1" ;return 0 }
  dz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Algeria)" ;putsto $sto "$pubc(disp) DZ = Algeria" ;set country "1" ;return 0 }
  ec { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Ecuador)" ;putsto $sto "$pubc(disp) EC = Ecuador" ;set country "1" ;return 0 }
  edu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Educational)" ;putsto $sto "$pubc(disp) EDU = Educational" ;set country "1" ;return 0 }
  ee { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Estonia)" ;putsto $sto "$pubc(disp) EE = Estonia" ;set country "1" ;return 0 }
  eg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Egypt)" ;putsto $sto "$pubc(disp) EG = Egypt" ;set country "1" ;return 0 }
  eh { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Western Sahara)" ;putsto $sto "$pubc(disp) EH = Western Sahara" ;set country "1" ;return 0 }
  er { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Eritrea)" ;putsto $sto "$pubc(disp) ER = Eritrea" ;set country "1" ;return 0 }
  es { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Spain)" ;putsto $sto "$pubc(disp) ES = Spain" ;set country "1" ;return 0 }
  et { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Ethiopia)" ;putsto $sto "$pubc(disp) ET = Ethiopia" ;set country "1" ;return 0 }
  fi { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Finland)" ;putsto $sto "$pubc(disp) FI = Finland" ;set country "1" ;return 0 }
  fj { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Fiji)" ;putsto $sto "$pubc(disp) FJ = Fiji" ;set country "1" ;return 0 }
  fk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Falkland Islands (Malvinas))" ;putsto $sto "$pubc(disp) FK = Falkland Islands (Malvinas)" ;set country "1" ;return 0 }
  fm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Micronesia)" ;putsto $sto "$pubc(disp) FM = Micronesia" ;set country "1" ;return 0 }
  fo { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Faroe Islands)" ;putsto $sto "$pubc(disp) FO = Faroe Islands" ;set country "1" ;return 0 }
  fr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (France)" ;putsto $sto "$pubc(disp) FR = France" ;set country "1" ;return 0 }
  fx { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (France, Metropolitan)" ;putsto $sto "$pubc(disp) FX = France, Metropolitan" ;set country "1" ;return 0 }
  ga { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Gabon)" ;putsto $sto "$pubc(disp) GA = Gabon" ;set country "1" ;return 0 }
  gb { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Great Britain)" ;putsto $sto "$pubc(disp) GB = Great Britain" ;set country "1" ;return 0 }
  gd { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Grenada)" ;putsto $sto "$pubc(disp) GD = Grenada" ;set country "1" ;return 0 }
  ge { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Georgia)" ;putsto $sto "$pubc(disp) GE = Georgia" ;set country "1" ;return 0 }
  gf { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (French Guiana)" ;putsto $sto "$pubc(disp) GF = French Guiana" ;set country "1" ;return 0 }
  gh { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Ghana)" ;putsto $sto "$pubc(disp) GH = Ghana" ;set country "1" ;return 0 }
  gi { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Gibraltar)" ;putsto $sto "$pubc(disp) GI = Gibraltar" ;set country "1" ;return 0 }
  gl { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Greenland)" ;putsto $sto "$pubc(disp) GL = Greenland" ;set country "1" ;return 0 }
  gm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Gambia)" ;putsto $sto "$pubc(disp) GM = Gambia" ;set country "1" ;return 0 }
  gn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Guinea)" ;putsto $sto "$pubc(disp) GN = Guinea" ;set country "1" ;return 0 }
  gov { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Government)" ;putsto $sto "$pubc(disp) GOV = Government" ;set country "1" ;return 0 }
  gp { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Guadeloupe)" ;putsto $sto "$pubc(disp) GP = Guadeloupe" ;set country "1" ;return 0 }
  gq { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Equatorial Guinea)" ;putsto $sto "$pubc(disp) GQ = Equatorial Guinea" ;set country "1" ;return 0 }
  gr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Greece)" ;putsto $sto "$pubc(disp) GR = Greece" ;set country "1" ;return 0 }
  gs { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (St. Georgia and St. Sandwich Isles)" ;putsto $sto "$pubc(disp) GS = St. Georgia and St. Sandwich Isles" ;set country "1" ;return 0 }
  gt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Guatemala)" ;putsto $sto "$pubc(disp) GT = Guatemala" ;set country "1" ;return 0 }
  gu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Guam)" ;putsto $sto "$pubc(disp) GU = Guam" ;set country "1" ;return 0 }
  gw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Guinea-Bissau)" ;putsto $sto "$pubc(disp) GW = Guinea-Bissau" ;set country "1" ;return 0 }
  gy { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Guyana)" ;putsto $sto "$pubc(disp) GY = Guyana" ;set country "1" ;return 0 }
  hk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Hong Kong)" ;putsto $sto "$pubc(disp) HK = Hong Kong" ;set country "1" ;return 0 }
  hm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Heard and McDonald Islands)" ;putsto $sto "$pubc(disp) HM = Heard and McDonald Islands" ;set country "1" ;return 0 }
  hn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Honduras)" ;putsto $sto "$pubc(disp) HN = Honduras" ;set country "1" ;return 0 }
  hr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Croatia)" ;putsto $sto "$pubc(disp) HR = Croatia" ;set country "1" ;return 0 }
  ht { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Haiti)" ;putsto $sto "$pubc(disp) HT = Haiti" ;set country "1" ;return 0 }
  hu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Hungary)" ;putsto $sto "$pubc(disp) HU = Hungary" ;set country "1" ;return 0 }
  id { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Indonesia)" ;putsto $sto "$pubc(disp) ID = Indonesia" ;set country "1" ;return 0 }
  ie { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Ireland)" ;putsto $sto "$pubc(disp) IE = Ireland" ;set country "1" ;return 0 }
  il { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Israel)" ;putsto $sto "$pubc(disp) IL = Israel" ;set country "1" ;return 0 }
  in { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (India)" ;putsto $sto "$pubc(disp) IN = India" ;set country "1" ;return 0 }
  info { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Specified Domain for Information)" ;putsto $sto "$pubc(disp) INFO = Specified Domain for Information" ;set country "1" ;return 0 }
  int { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (International)" ;putsto $sto "$pubc(disp) INT = International" ;set country "1" ;return 0 }
  io { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (British Indian Ocean Territory)" ;putsto $sto "$pubc(disp) IO = British Indian Ocean Territory" ;set country "1" ;return 0 }
  iq { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Iraq)" ;putsto $sto "$pubc(disp) IQ = Iraq" ;set country "1" ;return 0 }
  ir { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Iran)" ;putsto $sto "$pubc(disp) IR = Iran" ;set country "1" ;return 0 }
  is { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Iceland)" ;putsto $sto "$pubc(disp) IS = Iceland" ;set country "1" ;return 0 }
  it { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Italy)" ;putsto $sto "$pubc(disp) IT = Italy" ;set country "1" ;return 0 }
  jm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Jamaica)" ;putsto $sto "$pubc(disp) JM = Jamaica" ;set country "1" ;return 0 }
  jo { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Jordan)" ;putsto $sto "$pubc(disp) JO = Jordan" ;set country "1" ;return 0 }
  jp { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Japan)" ;putsto $sto "$pubc(disp) JP = Japan" ;set country "1" ;return 0 }
  ke { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Kenya)" ;putsto $sto "$pubc(disp) KE = Kenya" ;set country "1" ;return 0 }
  kg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Kyrgyzstan)" ;putsto $sto "$pubc(disp) KG = Kyrgyzstan" ;set country "1" ;return 0 }
  kh { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cambodia)" ;putsto $sto "$pubc(disp) KH = Cambodia" ;set country "1" ;return 0 }
  ki { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Kiribati)" ;putsto $sto "$pubc(disp) KI = Kiribati" ;set country "1" ;return 0 }
  kids { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Specified Domain for Kids)" ;putsto $sto "$pubc(disp) KIDS = Specified Domain for Kids" ;set country "1" ;return 0 }
  km { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Comoros)" ;putsto $sto "$pubc(disp) KM = Comoros" ;set country "1" ;return 0 }
  kn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Saint Kitts and Nevis)" ;putsto $sto "$pubc(disp) KN = Saint Kitts and Nevis" ;set country "1" ;return 0 }
  kp { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (North Korea)" ;putsto $sto "$pubc(disp) KP = North Korea" ;set country "1" ;return 0 }
  kr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (South Korea)" ;putsto $sto "$pubc(disp) KR = South Korea" ;set country "1" ;return 0 }
  kw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Kuwait)" ;putsto $sto "$pubc(disp) KW = Kuwait" ;set country "1" ;return 0 }
  ky { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Cayman Islands)" ;putsto $sto "$pubc(disp) KY = Cayman Islands" ;set country "1" ;return 0 }
  kz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Kazakhstan)" ;putsto $sto "$pubc(disp) KZ = Kazakhstan" ;set country "1" ;return 0 }
  la { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Laos)" ;putsto $sto "$pubc(disp) LA = Laos" ;set country "1" ;return 0 }
  lb { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Lebanon)" ;putsto $sto "$pubc(disp) LB = Lebanon" ;set country "1" ;return 0 }
  lc { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Saint Lucia)" ;putsto $sto "$pubc(disp) LC = Saint Lucia" ;set country "1" ;return 0 }
  li { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Liechtenstein)" ;putsto $sto "$pubc(disp) LI = Liechtenstein" ;set country "1" ;return 0 }
  lk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Sri Lanka)" ;putsto $sto "$pubc(disp) LK = Sri Lanka" ;set country "1" ;return 0 }
  lr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Liberia)" ;putsto $sto "$pubc(disp) LR = Liberia" ;set country "1" ;return 0 }
  ls { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Lesotho)" ;putsto $sto "$pubc(disp) LS = Lesotho" ;set country "1" ;return 0 }
  lt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Lithuania)" ;putsto $sto "$pubc(disp) LT = Lithuania" ;set country "1" ;return 0 }
  lu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Luxembourg)" ;putsto $sto "$pubc(disp) LU = Luxembourg" ;set country "1" ;return 0 }
  lv { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Latvia)" ;putsto $sto "$pubc(disp) LV = Latvia" ;set country "1" ;return 0 }
  ly { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Libya)" ;putsto $sto "$pubc(disp) LY = Libya" ;set country "1" ;return 0 }
  ma { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Morocco)" ;putsto $sto "$pubc(disp) MA = Morocco" ;set country "1" ;return 0 }
  mc { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Monaco)" ;putsto $sto "$pubc(disp) MC = Monaco" ;set country "1" ;return 0 }
  md { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Moldova)" ;putsto $sto "$pubc(disp) MD = Moldova" ;set country "1" ;return 0 }
  mg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Madagascar)" ;putsto $sto "$pubc(disp) MG = Madagascar" ;set country "1" ;return 0 }
  mh { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Marshall Islands)" ;putsto $sto "$pubc(disp) MH = Marshall Islands" ;set country "1" ;return 0 }
  mil { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (US Military)" ;putsto $sto "$pubc(disp) MIL = US Military" ;set country "1" ;return 0 }
  mk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Macedonia)" ;putsto $sto "$pubc(disp) MK = Macedonia" ;set country "1" ;return 0 }
  ml { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Mali)" ;putsto $sto "$pubc(disp) ML = Mali" ;set country "1" ;return 0 }
  mm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Myanmar)" ;putsto $sto "$pubc(disp) MM = Myanmar" ;set country "1" ;return 0 }
  mn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Mongolia)" ;putsto $sto "$pubc(disp) MN = Mongolia" ;set country "1" ;return 0 }
  mo { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Macau)" ;putsto $sto "$pubc(disp) MO = Macau" ;set country "1" ;return 0 }
  mp { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Northern Mariana Islands)" ;putsto $sto "$pubc(disp) MP = Northern Mariana Islands" ;set country "1" ;return 0 }
  mq { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Martinique)" ;putsto $sto "$pubc(disp) MQ = Martinique" ;set country "1" ;return 0 }
  mr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Mauritania)" ;putsto $sto "$pubc(disp) MR = Mauritania" ;set country "1" ;return 0 }
  ms { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Montserrat)" ;putsto $sto "$pubc(disp) MS = Montserrat" ;set country "1" ;return 0 }
  mt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Malta)" ;putsto $sto "$pubc(disp) MT = Malta" ;set country "1" ;return 0 }
  mu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Mauritius)" ;putsto $sto "$pubc(disp) MU = Mauritius" ;set country "1" ;return 0 }
  mv { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Maldives)" ;putsto $sto "$pubc(disp) MV = Maldives" ;set country "1" ;return 0 }
  mw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Malawi)" ;putsto $sto "$pubc(disp) MW = Malawi" ;set country "1" ;return 0 }
  mx { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Mexico)" ;putsto $sto "$pubc(disp) MX = Mexico" ;set country "1" ;return 0 }
  my { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Malaysia)" ;putsto $sto "$pubc(disp) MY = Malaysia" ;putsto $sto "m'sian lar kekeke :oD" ;set country "1" ;return 0 }
  mz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Mozambique)" ;putsto $sto "$pubc(disp) MZ = Mozambique" ;set country "1" ;return 0 }
  na { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Namibia)" ;putsto $sto "$pubc(disp) NA = Namibia" ;set country "1" ;return 0 }
  name { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Specified Domain for Names)" ;putsto $sto "$pubc(disp) NAME = Specified Domain for Names" ;set country "1" ;return 0 }
  nato { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Nato field)" ;putsto $sto "$pubc(disp) NATO = Nato field" ;set country "1" ;return 0 }
  nc { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (New Caledonia)" ;putsto $sto "$pubc(disp) NC = New Caledonia" ;set country "1" ;return 0 }
  ne { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Niger)" ;putsto $sto "$pubc(disp) NE = Niger" ;set country "1" ;return 0 }
  net { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Network)" ;putsto $sto "$pubc(disp) NET = Network" ;set country "1" ;return 0 }
  nf { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Norfolk Island)" ;putsto $sto "$pubc(disp) NF = Norfolk Island" ;set country "1" ;return 0 }
  ng { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Nigeria)" ;putsto $sto "$pubc(disp) NG = Nigeria" ;set country "1" ;return 0 }
  ni { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Nicaragua)" ;putsto $sto "$pubc(disp) NI = Nicaragua" ;set country "1" ;return 0 }
  nl { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Netherlands)" ;putsto $sto "$pubc(disp) NL = Netherlands" ;set country "1" ;return 0 }
  no { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Norway)" ;putsto $sto "$pubc(disp) NO = Norway" ;set country "1" ;return 0 }
  np { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Nepal)" ;putsto $sto "$pubc(disp) NP = Nepal" ;set country "1" ;return 0 }
  nr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Nauru)" ;putsto $sto "$pubc(disp) NR = Nauru" ;set country "1" ;return 0 }
  nt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Neutral Zone)" ;putsto $sto "$pubc(disp) NT = Neutral Zone" ;set country "1" ;return 0 }
  nu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Niue)" ;putsto $sto "$pubc(disp) NU = Niue" ;set country "1" ;return 0 }
  nz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (New Zealand)" ;putsto $sto "$pubc(disp) NZ = New Zealand" ;set country "1" ;return 0 }
  om { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Oman)" ;putsto $sto "$pubc(disp) OM = Oman" ;set country "1" ;return 0 }
  org { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Non-Profit Organization)" ;putsto $sto "$pubc(disp) ORG = Non-Profit Organization" ;set country "1" ;return 0 }
  pa { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Panama)" ;putsto $sto "$pubc(disp) PA = Panama" ;set country "1" ;return 0 }
  pe { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Peru)" ;putsto $sto "$pubc(disp) PE = Peru" ;set country "1" ;return 0 }
  pf { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (French Polynesia)" ;putsto $sto "$pubc(disp) PF = French Polynesia" ;set country "1" ;return 0 }
  pg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Papua New Guinea)" ;putsto $sto "$pubc(disp) PG = Papua New Guinea" ;set country "1" ;return 0 }
  ph { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Philippines)" ;putsto $sto "$pubc(disp) PH = Philippines" ;set country "1" ;return 0 }
  pk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Pakistan)" ;putsto $sto "$pubc(disp) PK = Pakistan" ;set country "1" ;return 0 }
  pl { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Poland)" ;putsto $sto "$pubc(disp) PL = Poland" ;set country "1" ;return 0 }
  pm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (St. Pierre and Miquelon)" ;putsto $sto "$pubc(disp) PM = St. Pierre and Miquelon" ;set country "1" ;return 0 }
  pn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Pitcairn)" ;putsto $sto "$pubc(disp) PN = Pitcairn" ;set country "1" ;return 0 }
  pr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Puerto Rico)" ;putsto $sto "$pubc(disp) PR = Puerto Rico" ;set country "1" ;return 0 }
  pt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Portugal)" ;putsto $sto "$pubc(disp) PT = Portugal" ;set country "1" ;return 0 }
  pw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Palau)" ;putsto $sto "$pubc(disp) PW = Palau" ;set country "1" ;return 0 }
  py { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Paraguay)" ;putsto $sto "$pubc(disp) PY = Paraguay" ;set country "1" ;return 0 }
  qa { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Qatar)" ;putsto $sto "$pubc(disp) QA = Qatar" ;set country "1" ;return 0 }
  re { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Reunion)" ;putsto $sto "$pubc(disp) RE = Reunion" ;set country "1" ;return 0 }
  ro { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Romania)" ;putsto $sto "$pubc(disp) RO = Romania" ;set country "1" ;return 0 }
  ru { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Russia)" ;putsto $sto "$pubc(disp) RU = Russia" ;set country "1" ;return 0 }
  rw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Rwanda)" ;putsto $sto "$pubc(disp) RW = Rwanda" ;set country "1" ;return 0 }
  sa { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Saudi Arabia)" ;putsto $sto "$pubc(disp) SA = Saudi Arabia" ;set country "1" ;return 0 }
  sb { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Solomon Islands)" ;putsto $sto "$pubc(disp) SB = Solomon Islands" ;set country "1" ;return 0 }
  sc { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Seychelles)" ;putsto $sto "$pubc(disp) SC = Seychelles" ;set country "1" ;return 0 }
  sd { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Sudan)" ;putsto $sto "$pubc(disp) SD = Sudan" ;set country "1" ;return 0 }
  se { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Sweden)" ;putsto $sto "$pubc(disp) SE = Sweden" ;set country "1" ;return 0 }
  sg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Singapore)" ;putsto $sto "$pubc(disp) SG = Singapore" ;set country "1" ;return 0 }
  sh { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (St. Helena)" ;putsto $sto "$pubc(disp) SH = St. Helena" ;set country "1" ;return 0 }
  si { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Slovenia)" ;putsto $sto "$pubc(disp) SI = Slovenia" ;set country "1" ;return 0 }
  sj { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Svalbard and Jan Mayen Islands)" ;putsto $sto "$pubc(disp) SJ = Svalbard and Jan Mayen Islands" ;set country "1" ;return 0 }
  sk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Slovak Republic)" ;putsto $sto "$pubc(disp) SK = Slovak Republic" ;set country "1" ;return 0 }
  sl { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Sierra Leone)" ;putsto $sto "$pubc(disp) SL = Sierra Leone" ;set country "1" ;return 0 }
  sm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (San Marino)" ;putsto $sto "$pubc(disp) SM = San Marino" ;set country "1" ;return 0 }
  sn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Senegal)" ;putsto $sto "$pubc(disp) SN = Senegal" ;set country "1" ;return 0 }
  so { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Somalia)" ;putsto $sto "$pubc(disp) SO = Somalia" ;set country "1" ;return 0 }
  sr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Suriname)" ;putsto $sto "$pubc(disp) SR = Suriname" ;set country "1" ;return 0 }
  st { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Sao Tome and Principe)" ;putsto $sto "$pubc(disp) ST = Sao Tome and Principe" ;set country "1" ;return 0 }
  su { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (USSR)" ;putsto $sto "$pubc(disp) SU = USSR" ;set country "1" ;return 0 }
  sv { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (El Salvador)" ;putsto $sto "$pubc(disp) SV = El Salvador" ;set country "1" ;return 0 }
  sy { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Syria)" ;putsto $sto "$pubc(disp) SY = Syria" ;set country "1" ;return 0 }
  sz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Swaziland)" ;putsto $sto "$pubc(disp) SZ = Swaziland" ;set country "1" ;return 0 }
  tc { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Turks and Caicos Islands)" ;putsto $sto "$pubc(disp) TC = Turks and Caicos Islands" ;set country "1" ;return 0 }
  td { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Chad)" ;putsto $sto "$pubc(disp) TD = Chad" ;set country "1" ;return 0 }
  tf { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (French Southern Territories)" ;putsto $sto "$pubc(disp) TF = French Southern Territories" ;set country "1" ;return 0 }
  tg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Togo)" ;putsto $sto "$pubc(disp) TG = Togo" ;set country "1" ;return 0 }
  th { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Thailand)" ;putsto $sto "$pubc(disp) TH = Thailand" ;set country "1" ;return 0 }
  tj { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Tajikistan)" ;putsto $sto "$pubc(disp) TJ = Tajikistan" ;set country "1" ;return 0 }
  tk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Tokelau)" ;putsto $sto "$pubc(disp) TK = Tokelau" ;set country "1" ;return 0 }
  tm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Turkmenistan)" ;putsto $sto "$pubc(disp) TM = Turkmenistan" ;set country "1" ;return 0 }
  tn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Tunisia)" ;putsto $sto "$pubc(disp) TN = Tunisia" ;set country "1" ;return 0 }
  to { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Tonga)" ;putsto $sto "$pubc(disp) TO = Tonga" ;set country "1" ;return 0 }
  tp { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (East Timor)" ;putsto $sto "$pubc(disp) TP = East Timor" ;set country "1" ;return 0 }
  tr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Turkey)" ;putsto $sto "$pubc(disp) TR = Turkey" ;set country "1" ;return 0 }
  tt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Trinidad and Tobago)" ;putsto $sto "$pubc(disp) TT = Trinidad and Tobago" ;set country "1" ;return 0 }
  tv { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Tuvalu)" ;putsto $sto "$pubc(disp) TV = Tuvalu" ;set country "1" ;return 0 }
  tw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Taiwan)" ;putsto $sto "$pubc(disp) TW = Taiwan" ;set country "1" ;return 0 }
  tz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Tanzania)" ;putsto $sto "$pubc(disp) TZ = Tanzania" ;set country "1" ;return 0 }
  ua { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Ukraine)" ;putsto $sto "$pubc(disp) UA = Ukraine" ;set country "1" ;return 0 }
  ug { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Uganda)" ;putsto $sto "$pubc(disp) UG = Uganda" ;set country "1" ;return 0 }
  uk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (United Kingdom)" ;putsto $sto "$pubc(disp) UK = United Kingdom" ;set country "1" ;return 0 }
  um { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (US Minor Outlying Islands)" ;putsto $sto "$pubc(disp) UM = US Minor Outlying Islands" ;set country "1" ;return 0 }
  urk { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (UrkLand)" ;putsto $sto "$pubc(disp) URK = UrkLand" ;set country "1" ;return 0 }
  us { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (United States)" ;putsto $sto "$pubc(disp) US = United States" ;set country "1" ;return 0 }
  uy { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Uruguay)" ;putsto $sto "$pubc(disp) UY = Uruguay" ;set country "1" ;return 0 }
  uz { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Uzbekistan)" ;putsto $sto "$pubc(disp) UZ = Uzbekistan" ;set country "1" ;return 0 }
  va { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Vatican City State)" ;putsto $sto "$pubc(disp) VA = Vatican City State" ;set country "1" ;return 0 }
  vc { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Saint Vincent and the Grenadines)" ;putsto $sto "$pubc(disp) VC = Saint Vincent and the Grenadines" ;set country "1" ;return 0 }
  ve { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Venezuela)" ;putsto $sto "$pubc(disp) VE = Venezuela" ;set country "1" ;return 0 }
  vg { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Virgin Islands (British))" ;putsto $sto "$pubc(disp) VG = Virgin Islands (British)" ;set country "1" ;return 0 }
  vi { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Virgin Islands (U.S.))" ;putsto $sto "$pubc(disp) VI = Virgin Islands (U.S.)" ;set country "1" ;return 0 }
  vn { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Viet Nam)" ;putsto $sto "$pubc(disp) VN = Viet Nam" ;set country "1" ;return 0 }
  vu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Vanuatu)" ;putsto $sto "$pubc(disp) VU = Vanuatu" ;set country "1" ;return 0 }
  wf { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Wallis and Futuna Islands)" ;putsto $sto "$pubc(disp) WF = Wallis and Futuna Islands" ;set country "1" ;return 0 }
  ws { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Samoa)" ;putsto $sto "$pubc(disp) WS = Samoa" ;set country "1" ;return 0 }
  ye { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Yemen)" ;putsto $sto "$pubc(disp) YE = Yemen" ;set country "1" ;return 0 }
  yt { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Mayotte)" ;putsto $sto "$pubc(disp) YT = Mayotte" ;set country "1" ;return 0 }
  yu { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Yugoslavia)" ;putsto $sto "$pubc(disp) YU = Yugoslavia" ;set country "1" ;return 0 }
  za { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (South Africa)" ;putsto $sto "$pubc(disp) ZA = South Africa" ;set country "1" ;return 0 }
  zm { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Zambia)" ;putsto $sto "$pubc(disp) ZM = Zambia" ;set country "1" ;return 0 }
  zr { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Zaire)" ;putsto $sto "$pubc(disp) ZR = Zaire" ;set country "1" ;return 0 }
  zw { putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what (Zimbabwe)" ;putsto $sto "$pubc(disp) ZW = Zimbabwe" ;set country "1" ;return 0 }
  }
  if {$country == "urk" || $country == ""} {
    if {($pubc(colors) == "1") || ($pubc(colors) == "2")} { set country "\037U\037nknown \037C\037ountry \037C\037ode" }
    if {$pubc(colors) == "3"} { set country "Unknown Country Code" }
    putlog "<<$nk(fl)$ni>> !$h! ($ch) $pubc(char)Country $what ($country)"
    putsto $sto "$pubc(disp) $what = $country"
    return 0
  } else { return 0 }
  return 0
}
#
if {$pubc(colors) == "1"} { putlog "$pubc(verl)" }
if {$pubc(colors) == "2"} { putlog "$pubc(verlb)" }
if {$pubc(colors) == "3"} { putlog "$pubc(verln)" }
#
################################
#
#