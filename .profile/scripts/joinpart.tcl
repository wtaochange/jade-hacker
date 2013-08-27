# ####
# INFO 
# ####
#
# joinpart.tcl v1.3 (Sep 10, 2005)
#
# ###########
# DESCRIPTION
# ###########
# 
# Channel Protection Script for Join/Part or Revolving Door Floods. 
# BAN the IP's, Optional Banmask, Multiple Lock modes to protect channel from any sort of abusive message, as seen in join/part flood that clones send their messages during parting.
#
# ########
# FEATURES
# ########
# 
# You can set channel lock modes, bansmask type, parting/revolving time period etc. depends on your channel situation,
# Set to invite only (+i) -OR- register only (+r on Undernet)/(+R on DALnet) -OR- Multiple modes (+mi/+mr) etc. to protect channel from continuous join/part and revolving door floods.
# By default, this script will ban those who part the channel after 3 seconds of joining with lock time of 8 seconds.
# you can change the settings as per your desire which is suitable for your channel.
#
# ############
# INSTALLATION
# ############
#
# * First unzip zipped file i.e. joinpart.zip file 
# * Put joinpart.tcl file in your eggdrop "/scripts" folder
# * Add a link at the bottom of your eggdrop's .CONF file
#
#   	   source scripts/joinpart.tcl
#
# * Save your bot's configuration
# * RESTART your bot -OR- do .rehash from the partyline (DCC) to load the tcl.
#
# #######
# UPDATES
# #######
# 
# v1.0 - 01/04/2005 - Initial Release.
# v1.1 - 16/05/2005 - Bug Fixed: "Tcl error [ban:jp]: no such channel record"
# v1.2 - 22/06/2005 - Added: putlog.
# v1.3 - 10/09/2005 - Following;
#					o BAN Style
#					o BAN Time
#
# #######
# CONTACT
# #######
#
# Any suggestions, comments, questions or bugs,
# feel free to email me at:
#
#			fyre_tcls@yahoo.com
#
# fyre @ #Eggdrop & #RO-TCL
# On Undernet IRC Network
#
# #########
# DOWNLOADS
# #########
#
# This script and other good scripts/tcls can be found on:
#
# * http://www.egghelp.org/
# * http://www.tclscript.com/
#
# -REGARDS-

########################
#- Channel Activation -#
########################

# DCC/Partyline :  n|n .chanset   Use .chanset to activate the protections for the particular channel or not.
#       Example : .chanset #mychan1 +joinpart
#                 .chanset #mychan2 -joinpart


#########################
#- Part/Revolving Time -#
#########################

# Set time period (in seconds) that how long did nick stay in channel before parting.
set jp(part) 8

###############
#- Lock Mode -#
###############

# Set channel modes which you want to be use for locking in join/part or revolving door floods,
# Leave blank "" if you dont like to set modes.
set jp(lock_modes) ""

##############
#- BAN Type -#
##############

# Set the banmask type to use in banning the join/part or revolving door floods.
# Currently BAN Type is set to 1 (*!*@some.domain.com),
# BAN Types are given below;
# 1 - *!*@some.domain.com 
# 2 - *!*@*.domain.com
# 3 - *!*ident@some.domain.com
# 4 - *!*ident@*.domain.com
# 5 - *!*ident*@some.domain.com
# 6 - *nick*!*@*.domain.com
# 7 - *nick*!*@some.domain.com
# 8 - nick!ident@some.domain.com
# 9 - nick!ident@*.host.com
set jpban_type 1

###############
#- Lock Time -#
###############

# Set time period (in seconds) that how much time it takes to do unlock after join/part flood.
set jp(unlock) 8

#####################
#- Kick/BAN Reason -#
#####################

# Set kick/ban reason here.
set jp(reason) "Banned: Asta este considerat flood"


###############
#- BAN Style -#
###############

# Set the punishment style/method you want to use to ban flooders.
# Select BAN Style from the following;
# 1 - Server Ban  (set ban on the channel)
# 2 - Channel Ban (set ban in bot's internal banlist on specific channel)
# 3 - Global Ban  (set ban in bot's internal banlist for every channel)
set jp(style) "2"

##############
#- BAN Time -#
##############

# Leave blank "" if you select style 1 in "BAN Style",
# If you select "BAN Style" 2 or 3 above, then set ban time in minutes, 0 for permanent ban.
set jp(btime) "5"


########################################################
#- Don't edit below unless you know what you're doing -#
########################################################

setudef flag joinpart
bind part - * ban:jp

proc ban:jp {nick uhost hand chan arg} {
  global jp botnick jpchan
  if {[isbotnick $nick] || ![botisop $chan] || ![channel get $chan joinpart]} {
    return
  }
  if {![info exists jpchan($chan)]} {
    set jpchan($chan) 0
  }
  if {($chan == $botnick) || [matchattr $hand b] || [matchattr $hand fom|fom $chan]} {
    return
  }
  if {[getchanjoin $nick $chan] >= [expr {[clock seconds]-$jp(part)}]} {
    if {$jp(style) == "1"} { 
	set banmask [jp:banmask $uhost $nick]
      putquick "MODE $chan +$jp(lock_modes)b $banmask" 
      putserv "KICK $chan $nick :$jp(reason)"
      putlog "JoinPart: Flood Attempt on $chan ($banmask) banned on the channel"
      utimer $jp(unlock) [list putquick "MODE $chan -$jp(lock_modes)"]
    }
    if {$jp(style) == "2"} {
	set banmask [jp:banmask $uhost $nick]
      putquick "MODE $chan +$jp(lock_modes)b $banmask" 
      putserv "KICK $chan $nick :$jp(reason)"
      putlog "JoinPart: Flood Attempt on $chan ($banmask) added in the channel banlist"
      newchanban "$chan" "$banmask" "JoinPart" "$jp(reason)" "$jp(btime)"
      utimer $jp(unlock) [list putquick "MODE $chan -$jp(lock_modes)"]
    }
    if {$jp(style) == "3"} {
 	set banmask [jp:banmask $uhost $nick]
      putquick "MODE $chan +$jp(lock_modes)b $banmask" 
      putserv "KICK $chan $nick :$jp(reason)"
      putlog "JoinPart: Flood Attempt on $chan ($banmask) added in the global banlist"
      newban "$banmask" "JoinPart" "$jp(reason)" "$jp(btime)"
      utimer $jp(unlock) [list putquick "MODE $chan -$jp(lock_modes)"]
    }
  } 
}

proc jp:banmask {uhost nick} {
 global jpban_type
  switch -- $jpban_type {
   1 { set banmask "*!*@[lindex [split $uhost @] 1]" }
   2 { set banmask "*!*@[lindex [split [maskhost $uhost] "@"] 1]" }
   3 { set banmask "*!*$uhost" }
   4 { set banmask "*!*[lindex [split [maskhost $uhost] "!"] 1]" }
   5 { set banmask "*!*[lindex [split $uhost "@"] 0]*@[lindex [split $uhost "@"] 1]" }
   6 { set banmask "*$nick*!*@[lindex [split [maskhost $uhost] "@"] 1]" }
   7 { set banmask "*$nick*!*@[lindex [split $uhost "@"] 1]" }
   8 { set banmask "$nick![lindex [split $uhost "@"] 0]@[lindex [split $uhost @] 1]" }
   9 { set banmask "$nick![lindex [split $uhost "@"] 0]@[lindex [split [maskhost $uhost] "@"] 1]" }
   default { set banmask "*!*@[lindex [split $uhost @] 1]" }
   return $banmask
  }
}

#############################################################
putlog "LOADED: Part/Revolving Door Flood Protection by fyre"
#############################################################
