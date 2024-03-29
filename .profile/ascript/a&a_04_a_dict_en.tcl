# +-------------------------------------------------------------------------------------+
# |                                                                                     |
# |                         a&a (light) script v0.03.02 Alpha                           |
# |                                                                                     |
# +-------------------------------------------------------------------------------------+
# |                                                                                     |
# |             Creative Commons Copyright 2002-2005 by universalia aka aqwzsx          |
# |                               http://ascript.name                                   |
# |                                                                                     |
# +-------------------------------------------------------------------------------------+
# |                                                                                     |
# |        Project             @  http://ascript.name                                   |
# |        Forum               @  http://forum.ascript.name                             |
# |        Features request    @  http://features.ascript.name (category a&a)           |
# |        Support request     @  http://support.ascript.name (category a&a)            |
# |        Bugs report         @  http://bugs.ascript.name                              |
# |        CVS pserver         @  cvs.sourceforge.net:/cvsroot/scripting co -P a&a      |
# |        CVS Web repository  @  http://cvs.ascript.name (folder a&a)                  |
# |                                                                                     |
# +-------------------------------------------------------------------------------------+
# |                                                                                     |
# |                            #a&a @ Undernet/Quakenet IRC                             |
# |                                                                                     |
# +-------------------------------------------------------------------------------------+
############ English Dictionary ######################

set say(lang.1.1)     "SET your output LANGUAGE to: ENGLISH"
set say(lang.1.2)     "RESET all channels' statistics"
set say(lang.1.3)     "RESET %b�%% statistics"
set say(lang.1.4)     "Authorization successful as %b�%%, last logged from %b�%% �"
set say(lang.1.5)     "FAILED: you are not authenticated, type: %b /msg � auth <password>"
set say(lang.1.6)     "FAILED: getting users now, try in a few minutes please"
set say(lang.1.7)     "FAILED: I do not know you, try: %b/msg � auth <pass> <user> "
set say(lang.1.8)     "FAILED: you have no password set, to set the password type: %b/msg � pass <pass>"
set say(lang.1.9)     "FAILED: you have specified an invalid hand, for any help apply on $settings(suppchan)"
set say(lang.1.10)    "FAILED: you have specified a wrong password, for any help apply on $settings(suppchan)"
set say(lang.1.11)    "REMOVED authentication"
set say(lang.1.12)    "FAILED: you have already a password set"
set say(lang.1.13)    "FAILED: you specified an invalid reason"
set say(lang.1.14)    "ADDED host: %b�%% to %b�%% hand: %r�%%. Curent hosts: %b�"
set say(lang.1.15)    "FAILED: specify a legal mask like %rnick!user@host%% example:%b *!*@xuser.users.undernet.org%% or %b*!user@*.AOL.com%% or %b*!user@211.163.141.1*"
set say(lang.1.16)    "CHANGED password to %b�%%, last pass change from %b�!�%% �"
set say(lang.1.17)    "�"
set say(lang.1.18)    "FAILED: you specified an invalid command/option - %B�%B"
set say(lang.1.19)    "FAILED: you specified no reason"
set say(lang.1.20)    "FAILED: you specified an invalid channel (%b�%%), for any help apply on $settings(suppchan)"
set say(lang.1.21)    "FAILED: you specified an inactive channel (%b�%%), for any help apply on $settings(suppchan)"
set say(lang.1.22)    "FAILED: there is already a hand %b�%%, which host do not corepond to curent nick"
set say(lang.1.23)    "FAILED: user %b�%% doesn't exist"
set say(lang.1.24)    "user %b�%% doesn't exist, autoadding to data-base"
set say(lang.1.25)    "FAILED: %b�%% is not on channels I monitor"
set say(lang.1.26)    "Successfully completed your user setup. Info regarding your account >>> user: %b�%%, password: %b�%%"
set say(lang.1.27)    "%b�%% BOTs connected & %b�%% BOTs"
set say(lang.1.28)    "No users on partyline"
set say(lang.1.29)    "BOTs"
set say(lang.1.30)    "PROTECTED USER"
set say(lang.1.31)    "I am a service BOT"
set say(lang.1.32)    "HEAVY PROTECTED USER"
set say(lang.1.33)    "PLEASE DO NOT DEOP"
set say(lang.1.34)    "PLEASE DO NOT BAN"
set say(lang.1.35)    "PLEASE DO NOT PUT ANY KEY HERE (only users with +o or +f flags can do it )"
set say(lang.1.36)    "PLEASE DO NOT PUT ANY INVITE HERE (only users with +o or +f flags can do it )"
set say(lang.1.37)    "PLEASE DO NOT PUT ANY LIMIT HERE (only users with +o or +f flags can do it )"
set say(lang.1.38)    "PLEASE DO NOT KICK"
set say(lang.1.39)    "Added user %b�%% with host %b�"
set say(lang.1.40)    "� flags for %b�%%, user %r�%% are %r�"
set say(lang.1.41)    "Your user name is %b�%% \& you have %b�%% flags on %b�"
set say(lang.1.42)    "To set up the %Bpassword%B, type %b/msg � pass <your new password>"
set say(lang.1.43)    "To %Bauthorise%B, type%b /msg � auth <your password>"
set say(lang.1.44)    "To see the commands, type on channel %b� commands"
set say(lang.1.45)    "FAILED: global user antihack option, your attempt was recorded & reported. For details apply on ${settings(suppchan)}."
set say(lang.1.46)    ""
set say(lang.1.47)    ""
set say(lang.1.48)    "You can give commands in 3 ways %b� op%%, %b$settings(cmdpfix)op%%, %b/msg � op �"
set say(lang.1.49)    "For more information or help, you are welcome on %B$settings(suppchan)%B & %B$settings(homepage)"
set say(lang.1.50)    "FAILED: hand already exists (%b�%%)"
set say(lang.1.51)    "FAILED: user %b�%% is already known as %r�"
set say(lang.1.52)    "Inviting %b�%% to %b�%%"
set say(lang.1.53)    "FAILED: %b�%% is already on %b�%%"
set say(lang.1.54)    "%B�%B topic locked to: %B�"
set say(lang.1.55)    "FAILED: %B�%B topic is locked already"
set say(lang.1.56)    "FAILED: it can be only one channel manager"
set say(lang.1.57)    "FAILED: flags %bn, X, L, S%% can be assigned only by a chan manager (local +N)"
set say(lang.1.58)    "FAILED: flag %bm, P, H%% can be assigned only by an chan owner (local +n)"
set say(lang.1.59)    "FAILED: %b�%% is not a valid hand"
set say(lang.1.60)    "eggdrop version: %b[lindex $version 0]%%, script version: %ba&a light $settings(version) @ http://ascript.name%%"
set say(lang.1.61)    "this is the first time you authorise; you can authorise from any host & nick, just use the advanced authorisation %b/msg � auth � �%%. For permanent authorisation use the command %buserset permident%%; permident will allow you to give commands from the specified host without any authorisation. $settings(suppchan) team wishes you a nice day & a pleasant chat"
set say(lang.1.62)    "Global %b�%% �"
set say(lang.1.63)    "FAILED: autoclean � disabled in config by default"
set say(lang.1.64)    "FAILED: flag %bN%% can be assigned only by a global master (global +m)"
set say(lang.1.65)    "Local %b�%% �"
set say(lang.1.66)    "can add flags himself"
set say(lang.1.67)    "ERASED %b�%% user(s)"
set say(lang.1.68)    "� AMDIN list is empty"
set say(lang.1.69)    "FAILED: you specified an invalid hand (%bmaximum $settings(user_max_length) characters length%%)"
set say(lang.1.70)    "current hosts for %b�%% hand: %r�%% are: %b�%%"
set say(lang.1.71)    "I am on the server: %b�"
set say(lang.1.72)    "GLOBAL"
set say(lang.1.73)    "REMOVED host: %b�%% from %b�%% hand: %r�%%. Curent hosts: %b�%%"
set say(lang.1.74)    "RESET hosts for %b�%% hand: %r�%% to host: %b�%%"
set say(lang.1.75)    "done permanent identification for %b�%% hand: %r�%% to mask: %b�%%"
set say(lang.1.76)    "nick: %b�%%, user: %r�%%, permident: %r�%%, antihack: %r�%%, reporting: %r�%%, invisible: %r�%%, notes: %r�%%, lang: %r�%%, output: %r�%%, mail: %r�%%, url: %r�%%, info-global: %r�%%."
set say(lang.1.77)    "%BBANNED%B on %B�%B at higher access, templeft, next rejoin in one hour."
set say(lang.1.78)    "list"
set say(lang.1.79)    "FAILED: global +N flag (manager) required"
set say(lang.1.80)    "FAILED: max channels limit reached"
set say(lang.1.81)    "%b�%% flag on � by �,"
set say(lang.1.82)    "� %b�%% by �,"
set say(lang.1.83)    "last login from: %b�%% on �."
set say(lang.1.84)    "last modifications:"
set say(lang.1.85)    "%rNONE%%"
set say(lang.1.86)    "� - �"
set say(lang.1.87)    "REMOVED %b�%% channel(s): � & %b�%% stats channel(s): �"
set say(lang.1.88)    "Flags for %b�%% hand: %r�%% are %bGlobal: %%�%%. %bLocal:%% �)"
set say(lang.1.89)    "set your %b�%% output to %b�%%"
set say(lang.1.90)    "FAILED: � is/are not on chan."
set say(lang.1.91)    "FAILED: � is/are not voiced."
set say(lang.1.92)    "FAILED: � is/are voiced already."
set say(lang.1.93)    "%b�%% � for more info visit %b$settings(homepage)%% or %b$settings(suppchan)%%"
set say(lang.1.94)    "nick: %b�%%, user: %r�%%, flags: %r�%%, permident: %r�%%, antihack: %r�%%, reporting: %r�%%, lang: %r�%%, output: %r�%%, hostmasks: %b�%%."
set say(lang.1.95)    "ADDED a new BOT BAN"
set say(lang.1.96)    "FAILED: I am not OPped on �"
set say(lang.1.97)    "FAILED: � is/are opped already"
set say(lang.1.98)    "hihihihihihi ^_^ I wish I were an IRC OP :P"
set say(lang.1.99)    "FAILED: � is/are not opped"
set say(lang.1.100)   "FAILED: $chanserv(nick) is on �, massdeop caution enabled, try to use %Bxdeop%B instead"
set say(lang.1.101)   "%b�%% �"
set say(lang.1.102)   "FAILED: available for chan manager ONLY (local +N)"
set say(lang.1.103)   "FAILED: I do not see �"
set say(lang.1.104)   "RESETED all modes on �"
set say(lang.1.105)   ""
set say(lang.1.106)   ""
set say(lang.1.107)   "FAILED: I do not see you anywhere on my chans, enter please one of my chans & authorise again"
set say(lang.1.108)   "FAILED: I don't know you, for any help apply on ${settings(suppchan)}."
set say(lang.1.109)   "REMOVED %b�%%, user %r�%% from %b�%%"
set say(lang.1.110)   "FAILED: %b�%%, user %r�%% has no access on �"
set say(lang.1.111)   "(by �) \[�\] �"
set say(lang.1.112)   "� \[by �/� for �\]"
set say(lang.1.113)   "REMOVED all %b�%% accesses"
set say(lang.1.114)   "FAILED: no such ban in  my  BanList or in chan BanList"
set say(lang.1.115)   "UNBANNED: � BotBAN \& � ChanBAN"
set say(lang.1.116)   "%B�%B topic unlocked."
set say(lang.1.117)   "FAILED: %B�%B topic was not locked"
set say(lang.1.118)   "Last topic: %b�"
set say(lang.1.119)   "Topic was last modified by %B�%B, topic options: %B�%B."
set say(lang.1.120)   "Topic is not locked, there is no info"
set say(lang.1.121)   "%B�%B topic is empty"
set say(lang.1.122)   "Leaving channel %b� ... "
set say(lang.1.123)   "Coming back %b� ..."
set say(lang.1.124)   "FAILED: the chan is already active (%b�%%)"
set say(lang.1.125)   "I am an %b%B$settings(suppchan)%B%% service BOT (advanced seen, statistics & protection). In order to execute 100 percent of my potentiality %BI must have OP status on channel%B (add me, please, to your bnc autoop %B/addautoop � :�%B) - otherwise, conforming to %b%B$settings(suppchan)%B%% rules & terms - I will part the chan in less than 24 hours $settings(homepage)."
set say(lang.1.126)   "%BSET %b�%% �"
set say(lang.1.127)   "FAILED: the chan is suspended (%b�%%), for any help apply on $settings(suppchan)"
set say(lang.1.128)   "<<%B�%B>> �!� %BPURGED %b�%%%B, reason: �"
set say(lang.1.129)   "FAILED: %b�%% is a static channel"
set say(lang.1.130)   "UPTIME: %b�%%; ON-LINE: %b�%%; SERVER: %b�%%;"
set say(lang.1.131)   "has � seconds lag"
set say(lang.1.132)   "FAILED: to remove chan bans (have no OP on �), only BOT bans will be removed"
set say(lang.1.133)   ""
set say(lang.1.134)   ""
set say(lang.1.135)   "FAILED: %b�%% is a locked channel"
set say(lang.1.136)   "RESET �."
set say(lang.1.137)   "FAILED: � service is not on �"
set say(lang.1.138)   "FAILED: � is on � already"
set say(lang.1.139)   "FAILED: unable to remove chan manager"
set say(lang.1.140)   "Saving channel, info and user files ..."
set say(lang.1.141)   "Backing up channel, info and user files ..."
set say(lang.1.142)   "Your user name is %b�%% \& you have GLOBAL %b�%% flags"
set say(lang.1.143)   "DISABLED the command %B�%B"
set say(lang.1.144)   "FAILED: this command can not be disabled or enabled"
set say(lang.1.145)   "CORECT USAGE: %b� help <command> %%or%b �help <command> %%or%b /msg � help <command>%%, to see all the commands type: %b�commands "
set say(lang.1.146)   "CORECT USAGE: %b� usage <command> %%or%b �usage <command> %%or%b /msg � usage <command>%%, to see all the commands type: %b�commands"
set say(lang.1.147)   "CORECT USAGE: %b� info <command> %%or%b �info <command> %%or%b /msg � info <command>%%, to see all the commands type: %b�commands "
set say(lang.1.148)   "FAILED: channel's � is not set up yet, use ${settings(cmdpfix)}chanset �"
set say(lang.1.149)   "YOU HAVE BEEN SUSPENDEED"
set say(lang.1.150)   "the command %B�%B disabled already"
set say(lang.1.151)   "the command %B�%B enabled already"
set say(lang.1.152)   "ENABLED the command %B�%B"
set say(lang.1.153)   "RELOADING all channels' statistics"
set say(lang.1.154)   "%bRehashed..."
set say(lang.1.155)   "Somebody with host: � tried to authorise with your user/hand: � & with password: �. Antihack option blocked this attempt automatically, if you want to disable antihack option - use !userset antihack off."
set say(lang.1.156)   "%bReloading..."
set say(lang.1.157)   "%bClearing user list"
set say(lang.1.158)   "%rU CAN NOT RENAME MY OWNER"
set say(lang.1.159)   "CHANGED hand %b�%% to %r�"
set say(lang.1.160)   "REMOVED %r�%%'s password, last pass change from host: %b�%%, hand: %b�%%, time: �"
set say(lang.1.161)   "CHANGING NICK to %b�"
set say(lang.1.162)   "�.%b �%% has now %b�"
set say(lang.1.163)   "ADDED BOT %b�%% with host %b�"
set say(lang.1.164)   "%BYou %rcan not �%% %b�%% hand: %b�%%, he is %b�%% & has higher access than yours"
set say(lang.1.165)   "BOT %b�%% doesn't exists in my user-file"
set say(lang.1.166)   "CONNECTING to %b�"
set say(lang.1.167)   "FAILED to connect %b�"
set say(lang.1.168)   "DISONNECTING %b�"
set say(lang.1.169)   ""
set say(lang.1.170)   "%b�%% is CONNECTED UP already"
set say(lang.1.171)   "%b�%% is NOT CONNECTED"
set say(lang.1.172)   "SET NEWPASS for %r�%% to %r�%%, last pass change from host: %b�%%, hand: %b�%%, time: �"
set say(lang.1.173)   "<<%B�%B>> �!� %BADDED %b�"
set say(lang.1.174)   "FAILED: channel %b�%% is already in my channels list"
set say(lang.1.175)   "%rUNABLE TO ERASE MY OWNER"
set say(lang.1.176)   "ERASED %b�%% with hand: %r�%%"
set say(lang.1.177)   "%b%B�%B%% free channels"
set say(lang.1.178)   "%b%B�%B%% ppl, %b%B�%B%% channels: �"
set say(lang.1.179)   "Access list for %b�%%, hand: %r�%% - %Bglobal flags:%B (�) - %Blocal flags:%B �."
set say(lang.1.180)   "FAILED to REMOVE host: %b�%% from %b�%% hand: %r�%%. Curent hosts: %b�%%"
set say(lang.1.181)   "%B�%B on �, by � user: %B�%B, reason: �"
set say(lang.1.182)   "%B�%B on %B�%B, by �, � user: �, flags: �"
set say(lang.1.183)   "Numbers of users on channels: %b�"
set say(lang.1.184)   "LOGGED already to �"
set say(lang.1.185)   "LOGGING to �"
set say(lang.1.186)   "%b�%% for %b�%% hand: %b�%% is: %r�%%"
set say(lang.1.187)   "I have � comamnds flood, info: ignoring �"
set say(lang.1.188)   "EXECUTING %b/msg �"
set say(lang.1.189)   "NOT LOGGED to $chanserv(nick) or $chanserv(nick) settings are erroneous (${chanserv(nick)} must have global +Wf flag & user on $chanserv(nick) must have language set to english), info: ignoring /msg $chanserv(nick) �"
set say(lang.1.190)   "FAILED: mass ban caution"
set say(lang.1.191)   "%B�%B on %B�%B, templeft, next rejoin in one hour."
set say(lang.1.192)   "%B�%B on %B�%B, by  �, flags: �"
set say(lang.1.193)   "I have a chan with %BNO ACCESS TO �%B, check channel(s): %B�%B"
set say(lang.1.194)   "I need %B�%B on %B�%B, templeft, next rejoin in one hour."
set say(lang.1.195)   "I have %B�%B on �, info: done clearmode through �"
set say(lang.1.196)   "I need %B�%B on �, info: done unban through �"
set say(lang.1.197)   "List of $chanserv(nick) accesses: %B�"
set say(lang.1.198)   "I have %B74 BAN type%B on �, info: trying unban through �"
set say(lang.1.199)   "is %r$settings(suppchan) MANAGER%%,"
set say(lang.1.200)   "is %r$settings(suppchan) ADMIN%%,"
set say(lang.1.201)   "is %r$settings(suppchan) MASTER%%,"
set say(lang.1.202)   "is %r$settings(suppchan) OP%%,"
set say(lang.1.203)   "is %r$settings(suppchan) BOT%%,"
set say(lang.1.204)   "is %r$settings(suppchan) HELPer%%,"
set say(lang.1.205)   "is %r� MANAGER%%,"
set say(lang.1.206)   "is %rSUSPENDED%%,"
set say(lang.1.207)   "is %rLOCKED%%,"
set say(lang.1.208)   "has %rNO PASSWORD SET%%,"
set say(lang.1.209)   "is %rAUTHENTICATED%%,"
set say(lang.1.210)   "is %rNOT AUTHENTICATED%%,"
set say(lang.1.211)   "MANAGERS:"
set say(lang.1.212)   "OWNERS:"
set say(lang.1.213)   "MASTERS:"
set say(lang.1.214)   "OPS:"
set say(lang.1.215)   "VOICE:"
set say(lang.1.216)   "DEOP:"
set say(lang.1.217)   "KickBan:"
set say(lang.1.218)   "HALFOP"
set say(lang.1.219)   "%B�%B on %B�%B, by �, flags: �, reason: �"
set say(lang.1.220)   "set � to"
set say(lang.1.221)   "modify hosts for"
set say(lang.1.222)   "�"
set say(lang.1.223)   "change password for"
set say(lang.1.224)   "delete"
set say(lang.1.225)   "rename"
set say(lang.1.226)   "totally %b%B�%B%% channels"
set say(lang.1.227)   "%r%B�%B%% abuse channels: �"
set say(lang.1.228)   "remove access for"
set say(lang.1.229)   "change flags for"
set say(lang.1.230)   ""
set say(lang.1.231)   ""
set say(lang.1.232)   ""
set say(lang.1.233)   ""
set say(lang.1.234)   ""
set say(lang.1.235)   ""
set say(lang.1.236)   ""
set say(lang.1.237)   ""
set say(lang.1.238)   "FAILED: no info available"
set say(lang.1.239)   ""
set say(lang.1.240)   "GLOBAL stats �: �"
set say(lang.1.241)   "%b�%% � on %B�%B by �"
set say(lang.1.242)   "%b�%% � on %B�%B by �, reason: %B�%B �"
set say(lang.1.243)   "%b�%% total stats time �"
set say(lang.1.244)   "%b�%% has � maximum users & average of � users, data of �"
set say(lang.1.245)   "%b�%% has � joins, � topics, � lines, � bytes, � max/average users, � bans, � kicks, � deops, � ops, � devoices, � voices, � banned, � deopped, � kicked >> per �, data of �"
set say(lang.1.246)   "%b�%% has � total �, or � � >> per �, data of �"
set say(lang.1.247)   "%b�%% has � total lines (� bytes), or � lines (� bytes) >> per �, data of �"
set say(lang.1.248)   "%b�%% channels: �"
set say(lang.1.249)   "ENABLED all commands"
set say(lang.1.250)   "DISABLED all commands"
set say(lang.1.251)   ""
set say(lang.1.252)   ""
set say(lang.1.253)   ""
set say(lang.1.254)   ""
set say(lang.1.255)   ""
set say(lang.1.256)   "You had probably takeover atempt on � by $chanserv(nick) user � with � access (tried to remuser), which had access from $chanserv(nick) user � (tried to suspend for 240 hours)."
set say(lang.1.257)   "You had probably takeover atempt on � by $chanserv(nick) user � with � access (tried to remuser), which had access from $chanserv(nick) user � (unable to suspend)."
set say(lang.1.258)   "You had probably takeover atempt on � by $chanserv(nick) user � with � access (unable to remuser), which had access from $chanserv(nick) user � (unable to suspend)."
set say(lang.1.259)   ""
set say(lang.1.260)   "%B� MASSDEOPPRO%B enabled on %B�%B; templeft, reset bitch & idle-deop"
set say(lang.1.261)   ""
set say(lang.1.262)   ""
set say(lang.1.263)   ""
set say(lang.1.264)   ""
set say(lang.1.265)   ""
set say(lang.1.266)   ""
set say(lang.1.267)   ""
set say(lang.1.268)   ""
set say(lang.1.269)   ""
set say(lang.1.270)   ""
set say(lang.1.271)   ""
set say(lang.1.272)   ""
set say(lang.1.273)   ""
set say(lang.1.274)   ""
set say(lang.1.275)   "FAILED: %b�%% mask is already in my ignore list."
set say(lang.1.276)   "added %b�%% mask to ignore list"
set say(lang.1.277)   "ignore list is empty."
set say(lang.1.278)   "%b�%% - by %b�%%, reason:  �."
set say(lang.1.279)   "FAILED: you specified nonexistent ignore %b�%%."
set say(lang.1.280)   "removed ignore for mask %b�%%"
set say(lang.1.281)   "FAILED: specify a legal URL mask like %rhttp://*?.??*%%, example: %bhttp://ascript.name%%."
set say(lang.1.282)   "FAILED: specify a legal MAIL mask like %r*?@?*.??*%%, example: %blala@lalala.la%%."
set say(lang.1.283)   ""
set say(lang.1.284)   ""
set say(lang.1.285)   "FAILED: � has novoice flag +q."
set say(lang.1.286)   "FAILED: � has autovoice flag +g."
set say(lang.1.287)   "FAILED: � has autoop flag +a."
set say(lang.1.288)   "FAILED: � has noop flag +d."
set say(lang.1.289)   ""
set say(lang.1.290)   ""
set say(lang.1.291)   ""
set say(lang.1.292)   ""
set say(lang.1.293)   ""
set say(lang.1.294)   ""
set say(lang.1.295)   ""
set say(lang.1.296)   "silence �"
set say(lang.1.297)   ""
set say(lang.1.298)   ""
set say(lang.1.299)   ""
set say(lang.1.300)   ""

############ Usage sentences #########################

set say(lang.1.501)   "USAGE: �deauth �"
set say(lang.1.502)   "USAGE: �newpass <\$old password> <\$new password> or /msg BOTnick newpass <\$old password> <\$new password> �"
set say(lang.1.503)   "USAGE: �whois <\$user> \[info/now\] �"
set say(lang.1.504)   "USAGE: �voice \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.505)   "USAGE: �devoice \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.506)   "USAGE: �output <lang|reply> \[ro|en|info\] \[\[chan|msg\] \[msg|chan|note\]\] �"
set say(lang.1.507)   "USAGE: �chaninfo �"
set say(lang.1.508)   "USAGE: �flags \[\$user\] �"
set say(lang.1.509)   "USAGE: �host <-add|-delete|-reset|-info> \[\$host\] \[\$hand\] \[-now\] �"
set say(lang.1.510)   "USAGE: �silence \[on|off\] �"
set say(lang.1.511)   ""
set say(lang.1.512)   ""
set say(lang.1.513)   ""
set say(lang.1.514)   ""
set say(lang.1.515)   ""
set say(lang.1.516)   "USAGE: �botnet <chat|whom|bots|link|unlink> \[\$nick|\$bot\] �"
set say(lang.1.517)   ""
set say(lang.1.518)   "USAGE: �auth <pass> \[\$user\] or /msg BOTnick auth <pass> \[\$user\] �"
set say(lang.1.519)   "USAGE: �pass <\$password> or /msg BOTnick pass <\$password> �"
set say(lang.1.520)   "USAGE: �help <\$command> �"
set say(lang.1.521)   "USAGE: �usage <\$command> �"
set say(lang.1.522)   "USAGE: �info <\$command> �"
set say(lang.1.523)   "USAGE: �commands �"
set say(lang.1.524)   "USAGE: �version �"
set say(lang.1.525)   ""
set say(lang.1.526)   ""
set say(lang.1.527)   ""
set say(lang.1.528)   ""
set say(lang.1.529)   "USAGE: �ignore \[-remove|-list|-add\] <\$host> \[\$time\] \[\$reason\] �"
set say(lang.1.530)   "USAGE: �time �"
set say(lang.1.531)   "USAGE: �admins \[global\] �"
set say(lang.1.532)   "USAGE: �uptime �"
set say(lang.1.533)   "USAGE: �server �"
set say(lang.1.534)   "USAGE: �ping \[\$nick\] �"
set say(lang.1.535)   ""
set say(lang.1.536)   "USAGE: �stats <channels|join|purge|templeave|time|joins|topics|traffic|users|bans|kicks|deops|ops|voices|devoices|banned|deopped|kicked|all> \[hour|day|week|month|year\] \[global|top\] \[min|max\] \[\$value\] �"
set say(lang.1.537)   "USAGE: �unban <\$ban|*>  \[*\$a*\] �"
set say(lang.1.538)   "USAGE: �ban <\$nick|\$host> \[\$time\] \[sticky\] \[global\] \[\$reason\] �"
set say(lang.1.539)   "USAGE: �kick <\$nick> \[\$reason\] �"
set say(lang.1.540)   "USAGE: �deop \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.541)   "USAGE: �op \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.542)   "USAGE: �chattr <\$user> <\$flag> \[now\] �"
set say(lang.1.543)   "USAGE: �adduser <\$nick> \[\$host\] �"
set say(lang.1.544)   "USAGE: �clearmode �"
set say(lang.1.545)   "USAGE: �say <\$text> �"
set say(lang.1.546)   "USAGE: �act <\$text> �"
set say(lang.1.547)   "USAGE: �invite \[\$nick\] �"
set say(lang.1.548)   "USAGE: �xinfo �"
set say(lang.1.549)   "USAGE: �topic <\$text|lock|unlock|info> �"
set say(lang.1.550)   "USAGE: �templeave <\$channel> <\$reason> \[\$comments\] �"
set say(lang.1.551)   "USAGE: �comeback <\$channel> \[-now\]�"
set say(lang.1.552)   ""
set say(lang.1.553)   "USAGE: �chanset <\$mode> \[\$options\] �"
set say(lang.1.554)   ""
set say(lang.1.555)   "USAGE: �purge <\$channel> <\$reason> \[\$comments\] �"
set say(lang.1.556)   "USAGE: �xop \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.557)   "USAGE: �xdeop \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.558)   "USAGE: �xkick <\$nick> �"
set say(lang.1.559)   "USAGE: �xban <\$nick|\$host> \[\$duration\] \[\$level\] \[\$reason\] �"
set say(lang.1.560)   "USAGE: �xunban <\$nick|\$host> �"
set say(lang.1.561)   "USAGE: �xvoice \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.562)   "USAGE: �xdevoice \[\$nick\] \[\$nick1\] \[\$nick2\] \[*\] \[*\$a*\] �"
set say(lang.1.563)   "USAGE: �xtopic <\$topic> �"
set say(lang.1.564)   "USAGE: �xclearmode �"
set say(lang.1.565)   "USAGE: �xadduser <\$user> \[\$level\] �"
set say(lang.1.566)   "USAGE: �xremuser <\$user> �"
set say(lang.1.567)   "USAGE: �modify <\$user> \[\$level\] �"
set say(lang.1.568)   "USAGE: �xautomode <\$user> <op|voice|none> �"
set say(lang.1.569)   "USAGE: �xsuspend <\$user> \[\$duration\] \[\$level\] �"
set say(lang.1.570)   "USAGE: �xunsuspend <\$user> �"
set say(lang.1.571)   "USAGE: �xsupport <yes|no> �"
set say(lang.1.572)   "USAGE: �xautotopic <on|off> �"
set say(lang.1.573)   "USAGE: �xdesc <\$text> �"
set say(lang.1.574)   "USAGE: �xurl <\$text> �"
set say(lang.1.575)   "USAGE: �jump <\$server> �"
set say(lang.1.576)   "USAGE: �save �"
set say(lang.1.577)   "USAGE: �backup �"
set say(lang.1.578)   "USAGE: �chattrgl <\$user> <\$flag> \[now\] �"
set say(lang.1.579)   "USAGE: �disable <\$command|all> \[global\] �"
set say(lang.1.580)   "USAGE: �enable <\$command|all> \[global\] �"
set say(lang.1.581)   "USAGE: �die \[\$comments\] �"
set say(lang.1.582)   "USAGE: �rehash �"
set say(lang.1.583)   "USAGE: �restart �"
set say(lang.1.584)   "USAGE: �reload �"
set say(lang.1.585)   "USAGE: �remuser \[\$user|-all\] �"
set say(lang.1.586)   "USAGE: �chhandle <\$current user> <\$desired user> �"
set say(lang.1.587)   ""
set say(lang.1.588)   "USAGE: �broadcast <\$msg> �"
set say(lang.1.589)   "USAGE: �nick \[nick|altnick\] <\$nick> �"
set say(lang.1.590)   "USAGE: �addbot <\$nick> \[$settings(suppchan)\] \[\$mask\] \[\$host:\$port\] �"
set say(lang.1.591)   ""
set say(lang.1.592)   "USAGE: �xlog �"
set say(lang.1.593)   "USAGE: �botattr <\$BOTname> <\$flags> �"
set say(lang.1.594)   "USAGE: �join <\$channel> �"
set say(lang.1.595)   "USAGE: �chpass <\$user> <\$new password|none|reset> \[now\] or /msg BOTnick chpass <\$user> <\$new password|none|reset> \[now\] �"
set say(lang.1.596)   "USAGE: �deluser <\$user> �"
set say(lang.1.597)   "USAGE: �status �"
set say(lang.1.598)   "USAGE: �channels \[free\] \[abuse\] \[number\] �"
set say(lang.1.599)   "USAGE: �access <\$user> �"
set say(lang.1.600)   "USAGE: �msg <\$nick> <\$text> �"
set say(lang.1.601)   "USAGE: �cycle \[\$secconds\] �"
set say(lang.1.602)   "USAGE: �list <ban|f|k|d|q|v|g|l|o|a|m|n|b|X|S|N|P|H|B|L> \[global\] �"
set say(lang.1.603)   ""
set say(lang.1.604)   "USAGE: �autocleanuserlist �"
set say(lang.1.605)   "USAGE: �newhandle <\$newuser> �"
set say(lang.1.606)   "USAGE: �autocleanchanlist �"
set say(lang.1.607)   "USAGE: �url \[\$nick\] �."
set say(lang.1.608)   "USAGE: �news \[\$nick\] �."
set say(lang.1.609)   "USAGE: �description \[\$nick\] �."
set say(lang.1.610)   "USAGE: �mail \[\$nick\] �."
set say(lang.1.611)   "USAGE: �faq \[\$nick\] �."
set say(lang.1.612)   "USAGE: �fuck \[\$nick|?\] �."
set say(lang.1.613)   "USAGE: �kiss \[\$nick|?\] �."
set say(lang.1.614)   "USAGE: �slap \[\$nick|?\] �."
set say(lang.1.615)   "USAGE: �rules \[\$nick|?\] �."
set say(lang.1.616)   "USAGE: �userset <reporting|antihack|permident|info|invisible|mail|url> \[-global\] <on|off|\$text> �"
set say(lang.1.617)   "USAGE: �userinfo <reporting|antihack|permident|info|invisible|mail|url|-all> \[-global\] \[\$user\] \[-now\] �"
set say(lang.1.618)   ""
set say(lang.1.619)   ""
set say(lang.1.620)   ""
set say(lang.1.621)   ""

############ Help sentences ##########################

set say(lang.1.1001)  ""
set say(lang.1.1002)  "HELP: AUTHENTICATE you on BOT, if u have a different hostmask use advanced auth, adding username after password, to have a permanent authentication see permident �"
set say(lang.1.1003)  "HELP: REMOVE your AUTHENTICATION on BOT, for authentication see auth �"
set say(lang.1.1004)  "HELP: SETUP the password on BOT, password must contain numbers & letters, to change the password see newpass �"
set say(lang.1.1005)  "HELP: CHANGE your password on BOT, password should contain numbers & letters �"
set say(lang.1.1006)  "HELP: PARTY-LINE (BotNet) commands, which are available without logging to BotNet �"
set say(lang.1.1007)  "HELP: ASSIGN CHANNEL flags (give access on BOT), valid flags are %BqwpdkfgvoamnNHPLSX%B. It can be just one N (channels manager) per channel which can assign flags for other user on chan �"
set say(lang.1.1008)  "HELP: ASSIGN GLOBAL flags, valid flags are %BhwecubtxjpdkfgvoamnNHPBLSX%B �"
set say(lang.1.1009)  "HELP: ADD/DELETE/RESET HOST to user �"
set say(lang.1.1010)  "HELP: SET SILENCE *!*@* on/off"
set say(lang.1.1011)  ""
set say(lang.1.1012)  ""
set say(lang.1.1013)  ""
set say(lang.1.1014)  "HELP: DISPLAY BOT's version"
set say(lang.1.1015)  ""
set say(lang.1.1016)  "HELP: SHOW & EXPLAIN user's FLAGS  �"
set say(lang.1.1017)  "HELP: Displays the channels info �"
set say(lang.1.1018)  "HELP: SETUP how the BOT will reply to your message or channel commands & your language �"
set say(lang.1.1019)  "HELP: DEVOICE the specified user(s) �"
set say(lang.1.1020)  "HELP: Give VOICE to specified user(s) �"
set say(lang.1.1021)  "HELP: Shows user's flags and misc info �"
set say(lang.1.1022)  "HELP: UNBAN the user (specify the user-host to unban, not the nick) �"
set say(lang.1.1023)  "HELP: BAN the user �"
set say(lang.1.1024)  "HELP: KICK the user �"
set say(lang.1.1025)  "HELP: DEOP the specified user(s) �"
set say(lang.1.1026)  "HELP: Gives OP to specified user(s) �"
set say(lang.1.1027)  "HELP: AUTOADDs users & UPDATES there hostmask on channel �"
set say(lang.1.1028)  "HELP: Makes the BOT to inivite you on channel �"
set say(lang.1.1029)  "HELP: Makes the BOT to act on channel �"
set say(lang.1.1030)  "HELP: Makes the BOT to say on channel �"
set say(lang.1.1031)  "HELP: CLEAR modes on channel (-ilk) �"
set say(lang.1.1032)  "HELP: Adds user to BOT, u can specify a hostmask for user too, see usage �"
set say(lang.1.1033)  ""
set say(lang.1.1034)  "HELP: SETUP CHANNEL SETTINGS, valid settings you can find in chaninfo �"
set say(lang.1.1035)  ""
set say(lang.1.1036)  "HELP: SET the CHANNEL ACTIVE - the  BOT comes back to channel. To set the channel inactive see templeave �"
set say(lang.1.1037)  "HELP: SET the CHANNEL INACTIVE - the  BOT leaves the channel. To set the channel active see comeback �"
set say(lang.1.1038)  "HELP: The BOT PARTs the channel �"
set say(lang.1.1039)  "HELP: SET chanel's $chanserv(nick) URL �"
set say(lang.1.1040)  "HELP: SET chanel's $chanserv(nick) AUTOTOPIC on|off �"
set say(lang.1.1041)  "HELP: SUPPORT channel registration with BOT's username (feel free to use BOT's username as supporter) �"
set say(lang.1.1042)  "HELP: UNSUSPEND user's $chanserv(nick) ACCESS �"
set say(lang.1.1043)  "HELP: SUSPEND user's $chanserv(nick) ACCESS, default time value is in HOURS �"
set say(lang.1.1044)  "HELP: MODIFY channel's $chanserv(nick) user AUTO MODE �"
set say(lang.1.1045)  "HELP: MODIFY user's $chanserv(nick) ACCESS �"
set say(lang.1.1046)  "HELP: REMOVE user's $chanserv(nick) ACCESS �"
set say(lang.1.1047)  "HELP: GIVE $chanserv(nick) ACCESS to assigned user"
set say(lang.1.1048)  "HELP: CLEAR channel MODES, through $chanserv(nick) �"
set say(lang.1.1049)  "HELP: SET chanel's $chanserv(nick) TOPIC �"
set say(lang.1.1050)  "HELP: DEVOICE, through $chanserv(nick) service, the specified user(s) �"
set say(lang.1.1051)  "HELP: VOICE, through $chanserv(nick) service, the specified user(s) �"
set say(lang.1.1052)  "HELP: UNBAN through $chanserv(nick) service the specified user(s) �"
set say(lang.1.1053)  "HELP: BAN, through $chanserv(nick) service the specified user(s) �"
set say(lang.1.1054)  "HELP: KICK, through $chanserv(nick) service the specified user(s) �"
set say(lang.1.1055)  "HELP: DEOP, through $chanserv(nick) service the specified user(s) �"
set say(lang.1.1056)  "HELP: OP, through $chanserv(nick) service the specified user(s) �"
set say(lang.1.1057)  "HELP: SET chanel's $chanserv(nick) DESCRITPION �"
set say(lang.1.1058)  "HELP: DELETEs user from BOT's user file �"
set say(lang.1.1059)  "HELP: CHANGEs password on BOT for a specified user, password must contain numbers & letters �"
set say(lang.1.1060)  "HELP: Makes the BOT to join a channel �"
set say(lang.1.1061)  "HELP: DISABLES a given command, see also enable �"
set say(lang.1.1062)  "HELP: BACKUP BOT's user & chan files �"
set say(lang.1.1063)  "HELP: SHUTs DOWN the BOT �"
set say(lang.1.1064)  "HELP: RELOADs the BOT's config file �"
set say(lang.1.1065)  "HELP: RESTARTs the BOT �"
set say(lang.1.1066)  "HELP: RELOADs the BOT's user file �"
set say(lang.1.1067)  "HELP: Channel's full STATISTICS, it can be choosen an average stats time with a minimum/maximum limit to be highlighted, details see in usage stats �"
set say(lang.1.1068)  "HELP: CHANGEs user's hand on BOT �"
set say(lang.1.1069)  ""
set say(lang.1.1070)  "HELP: BROADCASTs your message on all the channels �"
set say(lang.1.1071)  "HELP: CHANGEs current BOT's nick to a given one �"
set say(lang.1.1072)  "HELP: Puts the TOPIC on the channel, u can lock or unlock the topic �"
set say(lang.1.1073)  "HELP: Shows BOT's status �"
set say(lang.1.1074)  "HELP: Shows BOT's channels current status �"
set say(lang.1.1075)  "HELP: Shows the user's flags on all BOT's channels �"
set say(lang.1.1076)  "HELP: REMOVEs specified hand's access, if option all is specified - everyone's access is removed except manager �"
set say(lang.1.1077)  "HELP: command EXPLICATION, DESCRIPTION �"
set say(lang.1.1078)  "HELP: command USAGE, EXAMPLE �"
set say(lang.1.1079)  "HELP: command USAGE & HELP at once �"
set say(lang.1.1080)  "HELP: SHOW all available commands, be sure you are authorised on BOT in order to see all the commands �"
set say(lang.1.1081)  "HELP: IGNORE somebody, as options you can see ignores' list or remove them �."
set say(lang.1.1082)  ""
set say(lang.1.1083)  "HELP: DISPLAY BOT's $chanserv(nick) accesses �"
set say(lang.1.1084)  "HELP: SETUP USER SETTINGS, to view the settings use !userinfo �."
set say(lang.1.1085)  "HELP: DISPLAY user's INFO (settings), to setup settings use !userset �."
set say(lang.1.1086)  "HELP: Shows current TIME �"
set say(lang.1.1087)  "HELP: Shows the list of local \& global ADMINS �"
set say(lang.1.1088)  "HELP: Makes the BOT to JUMP on desiried server �"
set say(lang.1.1089)  "HELP: Shows the BOT's IRC SERVER �"
set say(lang.1.1090)  "HELP: Shows the BOT's UPTIME & IRC server connection uptime�"
set say(lang.1.1091)  "HELP: PING you (to see if you are in lag vs. BOT) �"
set say(lang.1.1092)  ""
set say(lang.1.1093)  "HELP: Makes the BOT to MSG somebody �"
set say(lang.1.1094)  "HELP: SAVE BOT's user & chan files �"
set say(lang.1.1095)  "HELP: ENABLES a given command, see also disable �"
set say(lang.1.1096)  "HELP: AD a BOT with specified hostmask, IP:port, if $settings(suppchan) specified - default flags are added, see link, unlink, botattr �"
set say(lang.1.1097)  ""
set say(lang.1.1098)  "HELP: LOG the BOT to $chanserv(nick) service �"
set say(lang.1.1099)  "HELP: Assigns BOT global & local flags, valid bot flags are %Bspghalri%B �"
set say(lang.1.1100)  "HELP: The BOT CYCLEs the channel - leaves the channel for some time. You can specify the time to comeback �"
set say(lang.1.1101)  "HELP: Shows the local or global list of users with corresponding flag �"
set say(lang.1.1102)  ""
set say(lang.1.1103)  "HELP: ERASEs users from userlist, which were not seen for a given period of time (by default 30 days) �"
set say(lang.1.1104)  "HELP: CHANGE your user (hand) on BOT �"
set say(lang.1.1105)  "HELP: ERASE channels from chanlist, which BOT did not joinned for a given period of time (by default 30 days) �"
set say(lang.1.1106)  "HELP: DISPLAY channel's URL (see ${settings(cmdpfix)}chanset url YourText) �."
set say(lang.1.1107)  "HELP: DISPLAY channel's NEWS (see ${settings(cmdpfix)}chanset news YourText) �."
set say(lang.1.1108)  "HELP: DISPLAY channel's DESCRIPTION (see ${settings(cmdpfix)}chanset desc YourText) �."
set say(lang.1.1109)  "HELP: DISPLAY channel's MAIL (see ${settings(cmdpfix)}chanset mail YourText) �."
set say(lang.1.1110)  "HELP: DISPLAY channel's FAQ (see ${settings(cmdpfix)}chanset faq YourText) �."
set say(lang.1.1111)  "HELP: Act channel's FUCK (see ${settings(cmdpfix)}chanset fuck YourText) �."
set say(lang.1.1112)  "HELP: Act channel's KISS (see ${settings(cmdpfix)}chanset kiss YourText) �."
set say(lang.1.1113)  "HELP: Act channel's SLAP (see ${settings(cmdpfix)}chanset slap YourText) �."
set say(lang.1.1114)  "HELP: DISPLAY channel's RULES (see ${settings(cmdpfix)}chanset rules YourText) �."
set say(lang.1.1115)  "HELP: "
set say(lang.1.1116)  "HELP: "
set say(lang.1.1117)  "HELP: "
set say(lang.1.1118)  "HELP: "
set say(lang.1.1119)  "HELP: "
set say(lang.1.1120)  "HELP: "
set say(lang.1.1121)  "HELP: "

return "en dictionary"