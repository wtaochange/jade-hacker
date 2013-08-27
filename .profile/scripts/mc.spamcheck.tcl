##
# Spam Check v2.5.2
#  by MC_8 - Carl M. Gregory <mc8@purehype.net>
#  This script will only run on eggdrop 1.6.13 or greater.
#
#    R.I.P. Mom, To always be remembered; Nancy Marie Gregory.
#
# My Website - http://mc.purehype.net/
# Have a bug?  http://mc.purehype.net/bugzilla/
##

##
# This script is more focused on catching Onjoin/Onpart spammers.  If you're
# looking for an anti spam script that will catch people saying, for instance,
# "JOIN #LAMER JOIN #LAMER JOIN #LAMER" or something to that effect in your 
# channel, I recommend mc.badwords.
#
# This script is probably a little overboard for newbies bot owners...
# basically the logic behind it is... no one should be /msg'n this bot.. so
# EVERYTHING will be considered spam.  Of course, you can specify what it to be
# ignored (like, HELP -- and other message commands already proposed by
# eggdrop).
#
# Bot will cycle the channel and listen for notices, DCC's, and messages.  Any
# detected on-join/ on-part will be processed for a warning/ kick/ ban.
#
# This script works best if you own 2 or more bots and they are linked and they
# are using the needops script.  Otherwise, someone is going to have to manually
# op the bot every time it cycles (unless your lame and use the +a flag).
##

##
# Commands
##
# spamcheck [channel]
#   Forces the bot to cycle.  If channel is specified it will cycle that
#   channel, otherwise it will cycle all channels.
#     Required access:  Global 'm'.
#     Command console:  Dcc and Msg
#
# chanset <#channel> <+/->mc.spamcheck
#   This enables (+) or disables (-) the script for the particular channel.
#     Command console:  Dcc
#
# chanset <#channel> <+/->mc.spamcycle
#   This enables (+) or disables (-) the ability of the script to cycle the
#   channel to help detect on-join spam.
#     Command console:  Dcc
##

##
# Settings
##
#

# What command words do you want to ignore?  The command word would be the first
# word the user would say, like "seen" or "help" or "op".  List all ignored
# words, separated by spaces.
set mc_sc(:config:ign:wrds) "addhost info who ident help voice whois pass op invite go key die jump memory save rehash reset status dent notes"

# What word strings do you want to listen for?  Seperate each string with a new
# line. Wildcards are accepted.  If you want it to listen to everything (like in
# previous versions), just have 1 line that states a * wildcard.
# To match an invite, it get's passed as;
#     "invite #channel"
# To match a DCC Send, it get's passed as;
#     "dccsend filename".
# I will give you 2 examples, the first (commented out) will contain 5 character
# strings to watch for ONLY.  The second example (un-commented) states to watch
# for anything and everything.
#set mc_sc(:config:act:wrds) {
# *http://*
# *www.*
# *sex*
# *join #*
# *go to #*
#}
set mc_sc(:config:act:wrds) {
 *
}

# [0=no/1=yes] Do you want to strip color/ bold/ underline/ reverse/ normal
# characters from text?  Useful only if you're listening for certain character
# strings and not just everything.
# Example: Some people get past the kick/ban by putting this color character
#          (invisible in mIRC) in between words.  Such as:  www.something.net
set mc_sc(:config:act:strip) 1

# How many mins between cycles do you want?  Set it to minimum:maximum, the
# script will randomly pick a number between them.
# Example: 5:10  == The script will pick a number between 5 and 10 and use that 
#                   for the cycle time, will pick another number next cycle
#                   point.
#          29:31 == Only 1 number between that, would cycle every 30 min's.
# This makes the bot a little less suspicious.  Set to 0:0 to turn off the
# cycling of the channels.
set mc_sc(:config:sc:cyclerate) 10:11

# Set a list of irc nicknames you would like the bot to cycle through when the
# bot performed a spam cycle.  Seperate each nickname with a space.  If the
# nickname has a [ or ], escape it (ie, \[ or \]).  Set this to "" to disable
# and just stick with the nick (and alt-nick) set in the configs file.
set mc_sc(:config:ircnicks) ""

# When the bot cycles the channel for spam, you can restrict it to only cycle if
# certain flagged users are opped in the channel (example, at least a +b| user,
# another bot).  Set valid flags here, flag syntax is <global>|<channel>.  Set
# to -|- for any user opped is 'ok'.
set mc_sc(:config:cycle_opped_flags) -|-

# If you don't want to cycle if the channel is at a certain mode, set it here.
# You can set as many as you like, separate each set with a space.  Set this to
# "" to disable.
# Example: "+i-nt +k +sm" == Will not cycle if the channel has a +i, and does
#                            NOT have a +n and a +t.  Or will not cycle if the
#                            channel has a +k.  Or will not cycle if the channel
#                            has a +s and +m.
set mc_sc(:config:nocycle:mode) "2Spam Check !"

# How long do you want to stay gone from the channel?  The bot will /part and
# wait x amount of seconds before /join'n.  (Only for eggdrop1.3.28 and
# greater).  Set to 0 for quick cycle.
set mc_sc(:config:joind) 0

# If the above method (mc_sc(:config:joind)) is 0, it will allow you to specify
# a part message.  What do you want for a part message?  Set to "" for no
# message.
# NOTE:  If you set a message, it's more obvious the bot is doing spam checking.
set mc_sc(:config:chan:cycle:message) "2Spam Check !"

# [1=yes/0=no] Do you want to exempt op'd users if they are found with an
# on-join?
set mc_sc(:config:exempt:op) 1

# [1=yes/0=no] Do you want to exempt voiced users if they are found with an
# on-join?
set mc_sc(:config:exempt:voice) 1

# What flags do you want to exempt if they are found with an on-join?  Set to ""
# if you want to disable this (no flags exemption).
# Flag format: <global flag>|<channel flag>
set mc_sc(:config:exempt:flags) "bf|f"

# How many warnings do you want to give before executing a kick/ban.
set mc_sc(:config:warnings) 1

# What do you want the warning message to say?   You can specify a different
# message depending on the method in which the user contacted the bot.
# Replacment text:
#   %filename -> Will be replaced with the name of the file the user was trying
#                to send -- naturally, this is only valid for dccsend.
#
# If you don't want to listen for one of these spam methods, set the one in
# particular to "".
# Example: If you only want the script to listen for dcc sends (for virus
#          senders) and nothing else, set everything (except for the dccsend
#          one) to "".
set mc_sc(:config:warn:message:dccsend) "Anti Spam, Don't dcc send me anything.  That includes %filename!"
set mc_sc(:config:warn:message:privmsg) "Anti Spam, Don't message me."
set mc_sc(:config:warn:message:notice) "Anti Spam, Don't notice me."
set mc_sc(:config:warn:message:invite) "Anti Spam, Don't invite me to your lame channel."

# [0=no/1=yes] Do you want to message the user the warning?
set mc_sc(:config:warn:msg) 1

# [0=no/1=yes] Do you want to kick the user upon warning?
set mc_sc(:config:warn:kick) 1

# How long do you want to ban on a warning?
#  -1 == don't ban
#   0 == server ban, not an actual ban entry in the bot
#   1 <= Any numbers above 0 are considered the number of min's the user is
#        banned in the bot's banlist.
# If you want the ban to be sticky, put a ! behind the number (ie: 3!).  If you
# want the ban to be global, rather than channel specific, # put a "@" in front
# of it (ie: @3!).
set mc_sc(:config:warn:ban) -1

# After exceeding warnings, do you want to ban the user?
#  -1 == don't ban
#   0 == server ban, not an actual ban entry in the bot
#   1 <= Any numbers above 0 are considered the number of mins the user is
#        banned in the bot's banlist.
# If you want the ban to be sticky, put a ! behind the number (ie: 3!).  If you
# want the ban to be global, rather than channel specific, put a "@" in front of
# it (ie: @3!).
set mc_sc(:config:exc:ban) 43200

# What do you want the ban message to say?  This is the message the user will
# get after exhausting all his/her warnings.  You can specify a different
# message depending on the method in which the user contacted the bot.
# Replacement text:
#   %filename -> Will be replaced with the name of the file the user was trying
#                to send -- naturally, this is only valid for dccsend.
set mc_sc(:config:exc:message:dccsend) "Anti Spam, Don't dcc send me anything.  That includes %filename!"
set mc_sc(:config:exc:message:privmsg) "Anti Spam, Don't message me."
set mc_sc(:config:exc:message:notice) "Anti Spam, Don't notice me."
set mc_sc(:config:exc:message:invite) "Anti Spam, Don't invite me to your lame channel."

# Set this to the ban mask type you want,
#      0 - *!user@host.domain
#      1 - *!*user@host.domain
#      2 - *!*@host.domain
#      3 - *!*user@*.domain
#      4 - *!*@*.domain
#      5 - nick!user@host.domain
#      6 - nick!*user@host.domain
#      7 - nick!*@host.domain
#      8 - nick!*user@*.domain
#      9 - nick!*@*.domain
#     You can also specify a type of 10 to 19 which correspond to masks 0 to 9.
#     But if the host.domain is a;
#       hostname = Instead of using a * wildcard to replace portions of the
#                  host.domain, it replaces the numbers in the host.domain with
#                  a '?' (question mark) wildcard.
#       ip       = It will mask as normal, with no '?' (question mark)
#                  replacements as does hostname.
set mc_sc(:config:bant) 2

# [0=no/1=yes] If the bot isn't op'd, do you want it to ask the bot's in the
# botnet to punish the user?
# Information:  1) The receiving bot must have this script.  Sure the other bot
#                  yielding this script can have the cycle feature turned off,
#                  that way it'll look a little sneakier on how the receiving
#                  bot know's the spammer is spamming.
#               2) If you set this to 1, this also enables the ability to
#                  receive... as well as send out the relays.
set mc_sc(:config:relay) 1

# If the above (mc_sc(:config:relay)) is set to 1, then what do you want to set
# the key to? The key is the encryption base of the botnet message.  Both the
# sending bot and the receiving bot must have the same key.  This is to prevent
# some other bot on the botnet sending a fake relay request.
set mc_sc(:config:relay:key) "spamcheck"

# Let's say you run this script on a bot that doesn't op up, to better catch
# spammers, and you just relay found spam to linked bots.  Suppose there are no
# linked bot's that are opped.  In such a situation, the script can send a
# message to all the current ops about spam found.  Set this to the message you
# would like to tell the ops.  Set this to "" to disable this function.
# Replacment variables:
#   %nick    == Nick that is found spamming.
#   %method  == Type of spam, such as invite/ msg/ notice/ dcc send.
#   %message == The spam message.
# The first word should be on of NOTICE or PRIVMSG.  That will determin how the
# op will be contacted.
set mc_sc(:config:relay:noopbots) "PRIVMSG Found %nick %method spamming me: %message"

# [0=no/1=yes] If the bot detects spam, but the bot isn't op'd, do you want the
# bot to add the spammer to the global ban list?  Ban time goes off
# mc_sc(:config:exc:ban) setting.
set mc_sc(:config:ban:anyhow) 1

# [0=no/1=yes] Do you want to enable the 'spamcheck' /msg command?  Downside,
# someone could ghost close enough to match one of your uses that has access to
# such a command and be able to perform the command causing the bot to join/
# part flood.  I could put a password restriction on the /msg command, but no
# one has requested it so I will hold off untill then.
set mc_sc(:config:enable:msgcmd) 0


## SVS Client (Script Version Service) v4.0.2 ##
# Once a day, the SVS Client will connect to MC_8's SVS Server to determine if
# there is a newer version of this script available.  If a newer version is
# found, the script will be auto updated.

# [0=no/1=yes] Do you want to enable auto updating?
set mc_sc(:config:svs:enable) 1


##
# Done with configurations, do not edit past here unless you know TCL.
##

#Script:mc_sc

catch {unset temp}
set mc_sc(info:vars) ""
foreach {temp(name) temp(value)} [array get mc_sc :config:*] {
  lappend mc_sc(info:vars) [list $temp(name) $temp(value)]
}
set mc_sc(info:loc) [info script]
array set mc_sc [list \
  script                 "Spam Check" \
  version                "v2.5.2" \
  svs:script             "spamcheck" \
  svs:version            "002005002000" \
  svs:client_version     "v4.0.2" \
  svs:client_svs_version "004000002000" \
  svs:server             "mc.svs.purehype.net" \
  svs:port               "81" \
  svs:get                "/index.tcl"]
set mc_sc(svs:query)    "svs=$mc_sc(svs:script)&"
append mc_sc(svs:query) "version=$mc_sc(svs:version)&"
append mc_sc(svs:query) "svs_version=$mc_sc(svs:client_svs_version)"

if {![info exists numversion] || 
    ([string range $numversion 0 4] < "10613") ||
    (([string range $numversion 0 4] == "10613") &&
     ([string range $numversion 5 6] != "00"))} {
  set temp(tag) "$mc_sc(script) $mc_sc(version)"
  putloglev o * \
    "$temp(tag) by MC_8 will only work on eggdrop 1.6.13 or greater."
  putloglev o * "$temp(tag)  will not work with eggdrop $version."
  putloglev o * "$temp(tag)  not loaded."
  return 1
}

setudef flag mc.spamcycle; setudef flag mc.spamcheck

# Error system, v3.1
proc mc:sc:error {command error arg} {
  global mc_sc version lastbind errorInfo
  putlog "Error in script $mc_sc(script) $mc_sc(version)."
  putlog "    Error System: v3.0"
  putlog "       Last Bind: [expr {[info exists lastbind]?$lastbind:"-NULL-"}]"
  putlog "         Command: $command"
  putlog "       Arguments: $arg"
  putlog "       Error Msg: $error"
  putlog "    Egg. Version: [expr {[info exists version]?$version:"-NULL-"}]"
  putlog "     TCL Version: [info tclversion]"
  putlog "  TCL Patchlevel: [info patchlevel]"
  putlog "*** Please submit this bug so MC_8 can fix it.  Visit"
  putlog "*** http://mc.purehype.net:81/bugzilla/ to properly report the bug."
  putlog \
    "*** Please include ALL info. in the bug report, including the next(s)."
  error $errorInfo
}

proc mc:sc:errchk {command arg} {
  lappend ::lastCommand "$command $arg"
  set ::lastCommand\
    [lrange $::lastCommand [expr [llength $::lastCommand]-5] end]
  if {![catch {eval $command $arg} return]} {return $return}
  mc:sc:error $command $return $arg
  return 0
}
# ^

if {![string match *mc:sc:cycle* [timers]]} {
  scan $mc_sc(:config:sc:cyclerate) {%[^:]:%s} min max
  if {$min >= $max} {set cycletime $max} {
    while {[set cycletime [rand [expr $max+1]]] < $min} {}
  }; timer $cycletime mc:sc:cycle
}
catch {unset mc_sc(joind:active)}

bind dcc m| spamcheck mc:sc:dcc:command:spamcheck
proc mc:sc:dcc:command:spamcheck {hand idx arg} {
  return [mc:sc:errchk mc:sc:dcc:command:spamcheck_ [list $hand $idx $arg]]
}
proc mc:sc:dcc:command:spamcheck_ {hand idx arg} {
  global mc_sc
  set chan [lindex [split $arg] 0]
  if {[validchan $chan]} {
    if {![mc:sc:chanflag $chan mc.spamcheck] ||
        ![mc:sc:chanflag $chan mc.spamcycle]} {
      set temp(x) "mc.spamcheck and mc.spamcycle"
      putdcc $idx \
       "$mc_sc(script):  $chan doesn't have the $temp(x) channel flags enabled."
      return 0
    }
    putdcc $idx "$mc_sc(script): Cycling $chan..."
    mc:sc:cycle $chan
  } else {
    putdcc $idx "$mc_sc(script): Cycling [join [channels] ", "]..."
    mc:sc:cycle
  }; return 1
}

bind msg m| spamcheck mc:sc:msg:command:spamcheck
proc mc:sc:msg:command:spamcheck {nick uhost hand arg} {
  return [mc:sc:errchk mc:sc:msg:command:spamcheck_ \
    [list $nick $uhost $hand $arg]]
}
proc mc:sc:msg:command:spamcheck_ {nick uhost hand arg} {
  global mc_sc
  if {!$mc_sc(:config:enable:msgcmd)} {return 0}
  set chan [lindex [split $arg] 0]
  if {[validchan $chan]} {
    if {![mc:sc:chanflag $chan mc.spamcheck] ||
        ![mc:sc:chanflag $chan mc.spamcycle]} {
      set temp(x) "mc.spamcheck and mc.spamcycle channel flags"
      set temp() "$chan doesn't have the $temp(x) enabled"
      puthelp "PRIVMSG $nick :$mc_sc(script):  $temp()."
      return 0
    }
    puthelp "PRIVMSG $nick :$mc_sc(script): Cycling $chan..."
    mc:sc:cycle $chan
  } else {
    puthelp "PRIVMSG $nick :$mc_sc(script): Cycling [join [channels] ", "]..."
    mc:sc:cycle
  }; return 1
}

proc mc:sc:cycle {{chan ""}} {
  return [mc:sc:errchk mc:sc:cycle_ [list $chan]]
}
proc mc:sc:cycle_ {chan} {
  global mc_sc numversion botnick
  set return 0
  if {[validchan $chan]} {set channels $chan} \
  else {set channels [channels]}
  foreach chan [string tolower $channels] {
    if {![mc:sc:chanflag $chan mc.spamcheck] ||
        ![mc:sc:chanflag $chan mc.spamcycle]} {continue}
    set cache(chanlist) [chanlist $chan]
    if {[botisop $chan]} {
      set onlyop 1
      foreach user $cache(chanlist) {
        if {![isbotnick $user] && [isop $user $chan]} {set onlyop 0; break}
      }
      if {$onlyop} {
        putlog "$mc_sc(script):  Cannot cycle $chan, I am the only op."
        continue
      }
    }
    set i 0
    foreach user $cache(chanlist) {
      if {[isop $user $chan] && (($mc_sc(:config:cycle_opped_flags) == "-|-") ||
          ([matchattr [nick2hand $user $chan] $mc_sc(:config:cycle_opped_flags) $chan]))} {
        set i 1
        break
      }
    }
    if {!$i} {
      putlog "$mc_sc(script):  Cannot cycle $chan, no acceptable ops."
      continue
    }
    set channel_mode [lindex [split [getchanmode $chan]] 0]
    set pos_chan_mode "" ; set neg_chan_mode ""
    regexp -- {\+([a-zA-Z0-9]*)[^a-zA-Z0-9]?} $channel_mode temp(x) \
      pos_chan_mode
    regexp -- {\-([a-zA-Z0-9]*)[^a-zA-Z0-9]?} $channel_mode temp(x) \
      neg_chan_mode
    set continue 0
    foreach nocymode $mc_sc(:config:nocycle:mode) {
      set pos_mode "" ; set neg_mode ""
      regexp -- {\+([a-zA-Z0-9]*)[^a-zA-Z0-9]?} $nocymode temp(x) pos_mode
      regexp -- {\-([a-zA-Z0-9]*)[^a-zA-Z0-9]?} $nocymode temp(x) neg_mode
      set a 1
      foreach mode [split $pos_mode ""] {
        if {![string match *$mode* $pos_chan_mode]} {set a 0; break}
      }
      set b 1
      foreach mode [split $neg_mode ""] {
        if {![string match *$mode* $neg_chan_mode]} {set b 0; break}
      }
      set c 1
      foreach mode [split $neg_mode ""] {
        if {[string match *$mode* $pos_chan_mode]} {set c 0; break}
      }
      if {$a && $b && $c} {set continue 1; break}
    }
    if {$continue} {
      set temp(x) "'$channel_mode' and nocycle mode is '$nocymode'"
      putlog "$mc_sc(script): Cannot cycle $chan, channel mode is $temp(x)."
      continue
    }
    if {($numversion >= "1032800") && $mc_sc(:config:joind)} {
      if {![mc:sc:chanflag $chan inactive]} {
        channel set $chan +inactive
        utimer $mc_sc(:config:joind) [list channel set $chan -inactive]
        set temp(cmd) [list catch "unset mc_sc(joind:active)"]
       if {[lsearch -glob [utimers] *[mc:sc:filter -tcl $temp(cmd)]*] == "-1"} {
          utimer [expr $mc_sc(:config:joind)+[expr [llength [channels]]*5]] \
            $temp(cmd)
        }; set mc_sc(joind:active) 1
      }
    } else {
      if {$mc_sc(:config:chan:cycle:message) != ""} {
        putserv "PART $chan :$mc_sc(:config:chan:cycle:message)"
      } else {putserv "PART $chan"}
    }
  }
  scan $mc_sc(:config:sc:cyclerate) {%[^:]:%s} min max
  if {$min >= $max} {set cycletime $max} {
    while {[set cycletime [rand [expr $max+1]]] < $min} {}
  }; if {![string match *mc:sc:cycle* [timers]]} {timer $cycletime mc:sc:cycle}
}

bind raw - PART mc:sc:raw:part
proc mc:sc:raw:part {from key text} {
  return [mc:sc:errchk mc:sc:raw:part_ [list $from $key $text]]
}
proc mc:sc:raw:part_ {from key text} {
  global mc_sc nick altnick
  set nik [lindex [split $from !] 0]
  set uhost [join [lrange [split $from !] 1 end] !]
  set hand [finduser $from]
  set cache(stext) [split $text]
  set chan [lindex $cache(stext) 0]
  # This will compensate for undernet's ircu upgrade witch changes where : is to
  # be.  Should be, at the last argument -- old undernet ircu just put it on the
  # part message only (if no part message, should go in front of the channel
  # name.
  if {[llength $cache(stext)] == "1"} {regsub -- {^:?(.*)$} $chan \\1 chan}
  if {![isbotnick $nik] || ![validchan $chan] ||
      ($mc_sc(:config:ircnicks) == "") ||
      ![mc:sc:chanflag $chan mc.spamcheck] ||
      ![mc:sc:chanflag $chan mc.spamcycle]} {return 0}
  set array_name [list :: ignore part]
  if {[info exists mc_sc($array_name)]} {return 0}
  set mc_sc($array_name) [clock seconds]
  utimer [llength [channels]] [list unset mc_sc($array_name)]
  set temp(split_nicks) [split $mc_sc(:config:ircnicks)]
  set array_name [list :: last nick]
  if {![info exists mc_sc($array_name)]} {set mc_sc($array_name) -1}
  incr mc_sc($array_name)
  if {$mc_sc($array_name) >= [llength $temp(split_nicks)]} {
    set mc_sc($array_name) 0
  }
  set altnick $nick
  set nick [lindex $temp(split_nicks) $mc_sc($array_name)]
  return 0
}

bind raw - INVITE mc:sc:raw:invite
proc mc:sc:raw:invite {from key arg} {
  return [mc:sc:errchk mc:sc:raw:invite_ [list $from $key $arg]]
}
proc mc:sc:raw:invite_ {from key arg} {
  global mc_sc botnick
  if {$mc_sc(:config:warn:message:invite) == ""} {return 0}
  scan $from {%[^!]!%s} nick uhost
  set hand [finduser $from]
  set chan [lindex [split $arg] 1]
  regexp -- {^:(.*)$} $chan dummy chan
  if {$mc_sc(:config:act:strip)} {set chan [mc:sc:mirc_strip -all -- $chan]}
  set arg "invite $chan"
  set return 0
  foreach word [string tolower [split $mc_sc(:config:act:wrds) \n]] {
    set word [string trimleft $word " "]
    if {$word == ""} {continue}
    if {[string match $word [string tolower $arg]]} {
      set return 0; break
    }
  }
  if {$return} {return 0}
  mc:sc:message $nick $uhost $hand invite "" "!INVITE to $chan!"
  return 0
}

bind notc - * mc:sc:notc:message
proc mc:sc:notc:message {nick uhost hand arg {dest ""} {DCC_Check ""}} {
  set temp() [list $nick $uhost $hand $arg $dest $DCC_Check]
  return [mc:sc:errchk mc:sc:notc:message_ $temp()]
}
proc mc:sc:notc:message_ {nick uhost hand arg {dest ""} {DCC_Check ""}} {
  global mc_sc botnick
  if {$dest == ""} {set dest $botnick}
  if {![isbotnick $dest] || ($mc_sc(:config:warn:message:notice) == "")} {
    return 0
  }
  if {[string match "DCC *" $arg] && ($DCC_Check == "")} {
    utimer 5 [list mc:sc:notc:message $nick $uhost $hand $arg $dest DCC_Check]
    return 0
  }
  if {$mc_sc(:config:act:strip)} {set arg [mc:sc:mirc_strip -all -- $arg]}
  set return 1
  foreach word [string tolower [split $mc_sc(:config:act:wrds) \n]] {
    set word [string trimleft $word " "]
    if {$word == ""} {continue}
    if {[string match $word [string tolower $arg]]} {
      set return 0; break
    }
  }; if {$return} {return 0}
  scan $arg %s cmd
  set temp() [split [string tolower $mc_sc(:config:ign:wrds)]]
  if {[lsearch -exact $temp() [string tolower $cmd]] >= "0"} {
    return 0
  }; mc:sc:message $nick $uhost $hand notice "" "!NOTICE! $arg"
}

bind msgm - * mc:sc:msgm:message
proc mc:sc:msgm:message {nick uhost hand arg} {
  return [mc:sc:errchk mc:sc:msgm:message_ [list $nick $uhost $hand $arg]]
}
proc mc:sc:msgm:message_ {nick uhost hand arg} {
  global mc_sc
  if {$mc_sc(:config:warn:message:privmsg) == ""} {return 0}
  if {$mc_sc(:config:act:strip)} {set arg [mc:sc:mirc_strip -all -- $arg]}
  set return 1
  foreach word [string tolower [split $mc_sc(:config:act:wrds) \n]] {
    set word [string trimleft $word " "]
    if {$word == ""} {continue}
    if {[string match $word [string tolower $arg]]} {
      set return 0; break
    }
  }; if {$return} {return 0}
  scan $arg %s cmd
  set temp() [split [string tolower $mc_sc(:config:ign:wrds)]]
  if {[lsearch -exact $temp() [string tolower $cmd]] >= "0"} {
    return 0
  }; mc:sc:message $nick $uhost $hand privmsg "" "!PRIVMSG! $arg"
}

bind ctcp - "DCC" mc:sc:dcc:message
proc mc:sc:dcc:message {nick uhost hand dest keyword arg} {
  set temp() [list $nick $uhost $hand $dest $keyword $arg]
  return [mc:sc:errchk mc:sc:dcc:message_ $temp()]
}
proc mc:sc:dcc:message_ {nick uhost hand dest keyword arg} {
  global mc_sc botnick
  scan $arg {%s %s %s %s %s} cmd file ip port size
  if {($mc_sc(:config:warn:message:dccsend) == "") ||
      ($cmd != "SEND") ||
      ![isbotnick $dest]} {return 0}
  set arg "dccsend $file"
  foreach utimer [string tolower [utimers]] {
    set timer [lindex $utimer 1]
    set t_arg [lindex $timer 4]
    set t_dest [lindex $timer 5]
    set t_dcc_test [lindex $timer 6]
    set t_cmd [list mc:sc:notc:message $nick $uhost $hand $t_arg $t_dest \
      $t_dcc_test]
    if {$timer == [string tolower $t_cmd]} {
      killutimer [lindex $utimer 2]; break
    }
  }; if {$mc_sc(:config:act:strip)} {set arg [mc:sc:mirc_strip -all -- $arg]}
  set return 1
  foreach word [string tolower [split $mc_sc(:config:act:wrds) \n]] {
    set word [string trimleft $word " "]
    if {$word == ""} {continue}
    if {[string match $word [string tolower $arg]]} {
      set return 0; break
    }
  }
  if {$return} {return 0}
  mc:sc:message $nick $uhost $hand $arg "" "!DCCSEND $file!"
}

proc mc:sc:message {nick uhost hand method channels message} {
  return [mc:sc:errchk mc:sc:message_ \
    [list $nick $uhost $hand $method $channels $message]]
}
proc mc:sc:message_ {nick uhost hand method channels message} {
  global mc_sc botnick
  if {[isbotnick $nick]} {return 0}
  set temp(split_uhost) [split $uhost @]
  set ident [join [lrange $temp(split_uhost) 0 \
    [expr [llength $temp(split_uhost)]-2]] @]
  set host [lindex $temp(split_uhost) end]
  set cache(channels) [channels]
  set cache(lchannels) [string tolower $cache(channels)]
  if {$channels == ""} {
    set cache(cmd) [list catch "unset mc_sc(ignore:$nick)"]
    if {[info exists mc_sc(ignore:$nick)]} {
      if {[lsearch -glob [utimers] *[mc:sc:filter -tcl $cache(cmd)]*] == "-1"} {
        utimer 5 $cache(cmd)
      }; return 0
    }; set mc_sc(ignore:$nick) 1
    utimer 5 $cache(cmd)
    if {[info exists mc_sc(joind:active)]} {
      utimer [expr $mc_sc(:config:joind)+2] \
        [list mc:sc:message $nick $uhost $hand $method $channels $message]
      set cache(cmd) [list catch "unset mc_sc(joind:active)"]
      if {[lsearch -glob [utimers] *[mc:sc:filter -tcl $cache(cmd)]*] == "-1"} {
        utimer $mc_sc(:config:joind) $cache(cmd)
      }; return 0
    }
    foreach chan $cache(lchannels) {
      if {[onchan $nick $chan]} {lappend channels $chan}
    }
    if {$channels == ""} {
      set found ""
      foreach chan $cache(lchannels) {
        append found " [mc:sc:findnicks *!*@$host $chan]"
      }
      if {$found == ""} {set channels $cache(lchannels)} \
      else {
        foreach user $found {
          utimer 5 [list mc:sc:message $user [getchanhost $user] \
            [nick2hand $user] $method $channels $message]
        }; return 0
      }
    }
  } elseif {![onchan $nick $channels]} {return 0}
  foreach channel $channels {
    if {([mc:sc:chanflag $channel inactive]) ||
        (![mc:sc:chanflag $channel mc.spamcheck]) ||
        (([isop $nick $channel]) && ($mc_sc(:config:exempt:op))) ||
        (([isvoice $nick $channel]) && ($mc_sc(:config:exempt:voice))) ||
        (($mc_sc(:config:exempt:flags) != "") &&
        ([matchattr $hand $mc_sc(:config:exempt:flags) $channel]))} {continue}
    if {![botonchan $channel]} {
      utimer [expr $mc_sc(:config:joind)+2] [list mc:sc:message $nick $uhost \
        $hand $method $channel $message]
      continue
    }
    if {$mc_sc(:config:warnings)} {
      set array_name [list :: warn $host $channel]
      if {![info exists mc_sc($array_name)]} {set mc_sc($array_name) -1}
      incr mc_sc($array_name)
      if {$mc_sc($array_name) > $mc_sc(:config:warnings)} {set give_warn 0} \
      else {set give_warn 1}
    } else {set give_warn 0}
    mc:sc:punish $nick $uhost $hand $channel $give_warn $method $message
  }
}

proc mc:sc:punish {nick uhost hand chan warn method message} {
  return [mc:sc:errchk mc:sc:punish_ \
    [list $nick $uhost $hand $chan $warn $method $message]]
}
proc mc:sc:punish_ {nick uhost hand chan warn method message} {
  global mc_sc botnick {botnet-nick}
  if {![mc:sc:chanflag $chan mc.spamcheck]} {return 0}
  set cache(botisop) [botisop $chan]
  set x_done ""
  
  set filename [join [lrange [split $method] 1 end]]
  set method [lindex [split $method] 0]
  set banmask [mc:sc:maskhostbytype $nick!$uhost $mc_sc(:config:bant)]

  if {!$cache(botisop) && $mc_sc(:config:relay)} {
    set temp(list) [list $mc_sc(:config:relay:key) $nick $uhost $hand $chan \
      $warn "$method $filename"]
    if {[validchan $chan]} {
      set found 0
      foreach user [userlist +b|] {
        if {[isop [hand2nick $user] $chan] && [islinked $user]} {
          putbot $user "spamcheck [encrypt \
            "$mc_sc(:config:relay:key)+${botnet-nick}" $temp(list)]"
          set found 1
        }
      }
      if {$found} {lappend x_done "relayed (not opped)"} \
      elseif {($mc_sc(:config:relay:noopbots) != "") && ($message != "")} {
        # $message will only be equal to "" when punishing from a relay.
        set split [split $mc_sc(:config:relay:noopbots)]
        set to [lindex $split 0]
        set msg [join [lrange $split 1 end]]
        set temp(x) [list %filename $filename]
        set msg [mc:sc:replace -- $msg \
          [list %nick $nick %method $method %message $message]]
        foreach user [chanlist $chan] {
          if {![isop $user $chan]} {continue}
          putserv "$to $chan :$msg"
        }
        lappend x_done "$to'd ops (not opped)"
      }
    } else {
      set found 0
      set chan_list [list]
      set bot_list [list]
      foreach channel [channels] {
        
        foreach user [chanlist $channel] {
          if {$user == $nick} {
          
            set found2 0
            foreach user [userlist +b|] {
              if {[isop [hand2nick $user] $channel] && [islinked $user]} {
                lappend bot_list $user
                set found2 1
              }
            }
            if {!$found2} {
              lappend chan_list $channel
              if {![botisop $channel]} {set found 1}
            }
            
          }
        }
        
      }
      
      if {$found} {
        foreach user $bot_list {
          putbot $user "spamcheck [encrypt \
              "$mc_sc(:config:relay:key)+${botnet-nick}" $temp(list)]"
        }
        lappend x_done "relayed (not opped)"
      } elseif {($mc_sc(:config:relay:noopbots) != "") && ($message != "")} {
        # $message will only be equal to "" when punishing from a relay.
        set split [split $mc_sc(:config:relay:noopbots)]
        set to [lindex $split 0]
        set msg [join [lrange $split 1 end]]
        set temp(x) [list %filename $filename]
        set msg [mc:sc:replace -- $msg \
          [list %nick $nick %method $method %message $message]]
        foreach user [chanlist $channel] {
          if {![isop $user $channel]} {continue}
          putserv "$to $channel :$msg"
        }
        lappend x_done "$to'd ops (not opped)"
      }
       
    }
  }
  
  if {!$cache(botisop) && $mc_sc(:config:ban:anyhow) &&
      ![isban $banmask $chan] &&
      ([string trim $mc_sc(:config:exc:ban) @!] > "0")} {
    set temp(x) [list %filename $filename]
    set comment [mc:sc:replace -- $mc_sc(:config:exc:message:$method) $temp(x)]
    if {[string match *! $mc_sc(:config:exc:ban)]} {set options sticky} \
    else {set options none}
    set time [string trim $mc_sc(:config:exc:ban)@!]
    newban $banmask ${botnet-nick} $comment $time $options
    lappend x_done "banned (global) (ban list - [duration $time])"
  } else {
    if {$warn} {
      set temp(x) [list %filename $filename]
      set comment [mc:sc:replace -- \
        $mc_sc(:config:warn:message:$method) $temp(x)]
      if {$mc_sc(:config:warn:msg) && ($comment != "")} {
        puthelp "PRIVMSG $nick :$comment"
        lappend x_done "warn messaged"
      }
      set global [string match @* $mc_sc(:config:warn:ban)]
      if {[string match *! $mc_sc(:config:warn:ban)]} {set opt sticky} \
      else {set opt none}
      set time [string trimleft $mc_sc(:config:warn:ban) @!]
      if {$mc_sc(:config:warn:kick)} {
        if {$comment != ""} {set x " :$comment"} else {set x ""}
        putserv "KICK $chan $nick$x"
        lappend x_done "warn kicked"
      }
    } else {
      set temp(x) [list %filename $filename]
      set comment [mc:sc:replace -- \
        $mc_sc(:config:exc:message:$method) $temp(x)]
      set global [string match @* $mc_sc(:config:exc:ban)]
      if {[string match *! $mc_sc(:config:exc:ban)]} {set opt "sticky"} \
      else {set opt "none"}
      set time [string trimleft $mc_sc(:config:exc:ban) @!]
      if {$comment != ""} {set x " :$comment"} else {set x ""}
      putserv "KICK $chan $nick$x"
      lappend x_done "kicked"
    }
    if {$global} {set channels [string tolower [channels]]} \
    else {set channels [list [string tolower $chan]]}
    foreach channel $channels {
      if {![mc:sc:chanflag $channel mc.spamcheck]} {continue}
      if {($time >= "0") && ![ischanban $banmask $channel]} {
        pushmode $channel +b $banmask
        lappend x_done "banned ($channel) (server)"
      }
      if {($time >= "1") && ![isban $banmask $channel]} {
        newchanban $channel $banmask ${botnet-nick} $comment $time $opt
        lappend x_done "banned ($chan) (ban list - [duration $time])"
      }
    }
  }
  set temp() "Detected $nick ($uhost) spamming $chan"
  putlog "$mc_sc(script): $temp() ([join $x_done ", "])."
  return 1
}

bind bot - spamcheck mc:sc:bot:relay
proc mc:sc:bot:relay {from command arg} {
  return [mc:sc:errchk mc:sc:bot:relay_ [list $from $command $arg]]
}
proc mc:sc:bot:relay_ {from command arg} {
  global mc_sc botnick
  set arg [decrypt "$mc_sc(:config:relay:key)+$from" $arg]
  set key [lindex $arg 0]
  if {$key != $mc_sc(:config:relay:key)} {return 0}
  set nick [lindex $arg 1]; set uhost [lindex $arg 2]; set hand [lindex $arg 3]
  set chan [lindex $arg 4]; set warn [lindex $arg 5]; set method [lindex $arg 6]
  if {!$mc_sc(:config:relay) || ![validchan $chan] ||
      ![mc:sc:chanflag $chan mc.spamcheck]} {return 0}
  set array_name [list :: relayblock [string tolower $nick] \
    [string tolower $chan]]
  set cache(cmd) [list unset mc_sc($array_name)]
  if {[info exists mc_sc($array_name)]} {
    if {[lsearch -glob [utimers] *[mc:sc:filter -tcl $cache(cmd)]*] == "-1"} {
      utimer 10 $cache(cmd)
    }; return 0
  }
  set mc_sc($array_name) [clock seconds]
  utimer 10 $cache(cmd)
  putlog \
    "$mc_sc(script):  Spam detection relay from $from regarding $nick @ $chan."
  mc:sc:punish $nick $uhost $hand $chan $warn $method ""
}

bind evnt - prerestart mc:sc:evnt:prestart
proc mc:sc:evnt:prestart {type} {
  return [mc:sc:errchk mc:sc:evnt:prestart_ [list $type]]
}
proc mc:sc:evnt:prestart_ {type} {
  set i 0
  foreach timer [utimers] {
    if {[string match "*channel set * -inactive*" $timer]} {
      catch [lindex $timer 1]
      killutimer [lindex $timer 2]
      set i 1
    }
  }; if {$i} {savechannels}
}

## More Tools quick procs.
## -- http://mc.purehype.net/script_info.tcl?script=moretools

# badargs <args> <min_llength> <max_llength|end> <argNames>
#     version:
#       v1.0
proc mc:sc:badargs {{args ""}} {
  if {[llength $args] < 4} {
    error {
   wrong # args: should be "mc:sc:badargs args min_llength max_llength argNames"
    }
  }

  set index 0
  foreach varName [list args min max names] {
    set check_$varName [lindex $args $index]
    incr index
  }

  if {[regexp -- {([^0-9])} $check_min -> bad]} {
    error "bad number \"$bad\" in: $check_min"
  }
  if {[regexp -- {([^0-9])} $check_max -> bad] && ($check_max != "end")} {
    error "bad number \"$bad\" in: $check_max"
  }

  # Make sure $check_args is in list format, if not then make it so.
  # Were not going to use 2list here, don't want to evoke a 'too many nested
  # calls to Tcl_EvalObj' error since '2list' uses on this proc.
  if {[catch {llength $check_args} llength]} {
    set check_args [split $check_args]
    set llength $check_args
  }

  if {($llength < $check_min) ||
      (($llength != "end") && ($llength > $check_max))} {
    if {[info level] == "1"} {return 1}
    error "wrong # args: should be \"[lindex [info level -1] 0] $check_names\""
  }; return 0
}

# unlist <argsList> [varName1] [varName2] ... [varNameN]
#     version:
#       v1.0
proc mc:sc:unlist {{args ""}} {
  mc:sc:badargs $args 1 end "argsList ?varName varName ...?"
  set argList [lindex $args 0]
  set argList [expr {([catch {llength $argList}])?[split $argList]:$argList}]
  set argNames [lrange $args 1 end]
  if {![llength $argNames]} {
    return [expr {(![catch {llength $argList}])?
      [join $argList]:$argList}]
  }
  for {set index 0} {$index < [llength $argNames]} {incr index 1} {
    set argName     [lindex $argNames $index]
    set argListItem [lindex $argList  $index]

    set argName_ [expr {([catch {llength $argName}])?[split $argName]:$argName}]
    set setTo   [lindex $argName_ 1]
    set argName [lindex $argName_ 0]

    if {$argName == ""} {continue}

    upvar 1 $argName var

    if {[expr $index+1] > [llength $argList]} {
      if {[llength $argName_] == "2"} {set var $setTo}
    } else {
      if {$argName == "args"} {
        set var [lrange $argList $index end]
        incr index [expr [llength $var]-1]
      } else {set var $argListItem}
    }
  }; return $index
}

# 2list <text>
#     version:
#       v1.0
proc mc:sc:2list {{args ""}} {
  mc:sc:badargs $args 1 1 "text"
  mc:sc:unlist $args text

  return [expr {([catch {llength $text}])?[split $text]:$text}]
}

# maskhostbytype <nick!ident@host.domain> [type]
#     version:
#       v2.1
proc mc:sc:maskhostbytype {{args ""}} {
  mc:sc:badargs $args 1 2 "nick!ident@host.domain ?type?"
  mc:sc:unlist $args nuhost type

  set type [expr {($type == "")?5:$type}]
  if {![regexp -- {^1?[0-9]$} $type]} {
    set valid "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 {or 19}"
    error "bad type \"$type\": must be [join $valid ", "]"
  }

  # Define the maximum length the ircd allows for an ident.  Standard is 9,
  # however I made it to a variable incase someone wants to change it up.
  set ident_max-length 9

  # Define the maximum length the ircd allows for a hostname/ ip.  Standard is
  # 63, however I made it to a variable incase someone wants to change it up.
  set host_max-length 63

  if {![regexp -- {^(.*[^!])!((.*)@(.*))$} $nuhost -> nick uhost ident host]} {
    error "invalid nick!ident@host.domain: $nuhost"
  }

  set maskhost 1
  if {[string length $type] == "2"} {
    # Type must be 10-19.
    if {[info tclversion] < "8.1"} {
      set re_syntax_1 {([12][0-9][0-9]|[1-9][0-9]|[1-9])}
      set re_syntax_2 {([12][0-9][0-9]|[1-9][0-9]|[0-9])}
    } else {
      set re_syntax_1 {([12]\d{2}|[1-9][0-9]|[1-9])}
      set re_syntax_2 {([12]\d{2}|[1-9][0-9]|[0-9])}
    }
    set re_syntax ^$re_syntax_1\\.$re_syntax_2\\.$re_syntax_2\\.$re_syntax_2\$

    if {![regexp -- $re_syntax $host]} {
      regsub -all -- {[0-9]} $host ? host
      set maskhost 0
    }; set type [string index $type 1]
  }

  # Previous version used regexp instead of these string matches.  String match
  # in this case is ~3 microseconds faster.
  if {[string match {[0-4]} $type]} {set nick *}
  if {[string match {[2479]} $type]} {set ident *}
  if {[string match {[1368]} $type]} {regsub -- {^~?(.*)$} $ident *\\1 ident}
  if {[string match {[3489]} $type] && $maskhost} {
    set host [lindex [split [maskhost $host] @] end]
  }

  if {[set length [string length $ident]] > ${ident_max-length}} {
    set ident *[string range $ident [expr $length-${ident_max-length}] end]
  }
  if {[set length [string length $host]] > ${host_max-length}} {
    set host *[string range $host [expr $length-${host_max-length}] end]
  }

  return $nick!$ident@$host
}

# replace [switches] <text> <substitutions>
#     version:
#       v1.3
proc mc:sc:replace {{args ""}} {
  mc:sc:badargs $args 2 4 "?switches? text substitutions"
  set switches ""
  for {set i 0} {[string match -* [set arg [lindex $args $i]]]} {incr i} {
    if {![regexp -- {^-(nocase|-)$} $arg -> switch]} {
      error "bad switch \"$arg\": must be -nocase, or --"
    }
    if {$switch == "-"} {
      incr i
      break
    }; lappend switches $switch
  }
  set nocase [expr {([lsearch -exact $switches "nocase"] >= "0") ? 1 : 0}]
  set text [lindex $args $i]
  set substitutions [lindex $args [expr $i+1]]
  mc:sc:badargs [lrange $args $i end] 2 2 "?switches? text substitutions"

  # Check to see if $substitutions is in list format, if not make it so.
  set substitutions [mc:sc:2list $substitutions]

  if {[info tclversion] >= "8.1"} {
    return [expr {($nocase)?
      [string map -nocase $substitutions $text]:
      [string map $substitutions $text]}]
  }

  set re_syntax {([][\\\*\+\?\{\}\,\(\)\:\.\^\$\=\!\|])}
  foreach {a b} $substitutions {
    regsub -all -- $re_syntax $a {\\\1} a
    if {$nocase} {regsub -all -nocase -- $a $text $b text} \
    else {regsub -all -- $a $text $b text}
  }; return $text
}

# findnicks <nick!ident@host.domain> [channel]
#     version:
#       v2.0
proc mc:sc:findnicks {{args ""}} {
  mc:sc:badargs $args 1 2 "nick!ident@host.domain ?channel?"
  mc:sc:unlist $args hostmask channel

  set hostmask [string tolower $hostmask]

  if {$channel == ""} {set channels [channels]} \
  elseif {![validchan $channel]} {error "no such channel record"} \
  else {set channels [list $channel]}
  set origional_channel $channel

  set list ""
  foreach channel $channels {
    foreach user [chanlist $channel] {
      set nuhost [string tolower $user![getchanhost $user $channel]]
      if {[string match $hostmask $nuhost]} {
        lappend list $user[expr {($origional_channel != "")?"":"@$channel"}]
      }
    }
  }; return $list
}

# chanflag <channel> <flag>
#     version:
#       v3.1
proc mc:sc:chanflag {{args ""}} {
  mc:sc:badargs $args 2 2 "channel flag"
  mc:sc:unlist $args channel flag

  if {![validchan $channel]} {error "no such channel record"}

  # Try the 'channel' commands' 'get' option first, it's faster since it is
  # written in C by the eggdrop development team.
  if {![catch {channel get $channel $flag} output]} {return $output}

  set temp(chaninfo) [string tolower [channel info $channel]]
  if {[lsearch -exact $temp(chaninfo) +[string tolower $flag]] >= "0"} {
    return 1
  }; return 0
}


# mirc_strip [switches] <text>
#     version:
#       v1.0
proc mc:sc:mirc_strip {{args ""}} {
  mc:sc:badargs $args 1 7 "?switches? text"
  set switches ""
  for {set i 0} {[string match -* [set arg [lindex $args $i]]]} {incr i} {
    if {![regexp -- {^-(all|bold|color|reverse|underline|-)$} $arg -> switch]} {
      set valid "-all -bold -color -reverse -underline {or --}"
      error "bad switch \"$arg\": must be [join $valid ", "]"
    }
    if {$switch == "-"} {
      incr i
      break
    }; lappend switches $switch
  }
  if {$switches == ""} {set switches all}
  set arg [lindex $args $i]
  mc:sc:badargs [lrange $args $i end] 1 1 "?switches? text"

  set all [expr {([lsearch -exact $switches all] >= 0) ? 1 : 0}]
  set list ""
  if {$all} {
    set list [list \002 "" \017 "" \026 "" \037 ""]
  } else {
    if {[lsearch -exact $switches bold] >= 0} {lappend list [list \002 ""]}
    if {[lsearch -exact $switches plain] >= 0} {lappend list [list \017 ""]}
    if {[lsearch -exact $switches reverse] >= 0} {lappend list [list \026 ""]}
    if {[lsearch -exact $switches underline] >= 0} {lappend list [list \037 ""]}
  }
  if {$all || ([lsearch -exact $switches color] >= 0)} {
    regsub -all -- "\003(\[0-9\]\[0-9\]?(,\[0-9\]\[0-9\]?)?)?" $arg "" arg
  }
  set arg [mc:sc:replace -- $arg [join $list]]

  return $arg
}

# filter [switch] <text>
#     version:
#       v3.0
proc mc:sc:filter {{args ""}} {
  mc:sc:badargs $args 1 2 "?switch? text"

  set switches ""
  set valid [join "-regexp -tcl {or --}" ", "]
  for {set i 0} {[string match -* [set arg [lindex $args $i]]]} {
    incr i; break
  } {
    if {![regexp -- {^-(regexp|tcl|-)$} $arg -> switch]} {
      error "bad switch \"$arg\": must be $valid"
    }
    if {$switch == "-"} {
      incr i
      break
    }; lappend switches $switch
  }
  set switch [expr {($switches == "")?"tcl":[lindex $switches 0]}]
  set text [lindex $args $i]

  switch -- $switch {
    tcl {set re_syntax {([][\\\{\}\"])}}
    regexp {set re_syntax {([][\\*+?{},():.^$=!|])}}
    default {error "bad switch \"$switch\":  must be $valid"}
  }
  regsub -all -- $re_syntax $text {\\\1} text

  return $text
}

## End of More Tools quick procs.


## SVS insert (post code)
if {![info exists mc_sc(:config:svs:enable)] ||
    ![string match {[01]} $mc_sc(:config:svs:enable)]} {
  set mc_sc(:config:svs:enable) 0
}

bind time - "00 00 *" mc:sc:do_svs
proc mc:sc:do_svs {{args ""}} {
  global mc_sc
  set query $mc_sc(svs:query)
  if {$args == ""} {append query "&log=0"}
  set index [connect $mc_sc(svs:server) $mc_sc(svs:port)]
  putdcc $index "GET $mc_sc(svs:get)?$query HTTP/1.0\n"
  putdcc $index "Host: $mc_sc(svs:server):$mc_sc(svs:port)\n\n"
  control $index mc:sc:svs_talk
}

proc mc:sc:svs_talk {index text} {
  global mc_sc
  set header [list svs header $index]
  set memory [list svs memory $index]
  if {$text == ""} {
    catch {unset mc_sc($header)}
    catch {unset mc_sc($memory)}
    return 1
  }
  set text [split $text]
  set rfc [lindex $text 0]
  set text [join [lrange $text 1 end]]
  if {![info exist mc_sc($header)]} {
    if {$rfc == "002"} {
      # Done with http header and useless information.
      if {!$mc_sc(:config:svs:enable)} {
        catch {unset mc_sc($header)}
        catch {unset mc_sc($memory)}
        return 1
      }
      set mc_sc($header) 1
    }
    return 0
  }
  switch -- $rfc {

    001 {return 0}
    002 {return 0}
    003 {return 0}

    010 {
      if {$text != $mc_sc(svs:script)} {
        set temp(1) "wanted $mc_sc(svs:script), got $temp(text:0)"
        putloglev d * "$mc_sc(script): SVS Error: $temp(1)"
        catch {unset mc_sc($header)}
        catch {unset mc_sc($memory)}
        return 1
      }
      return 0
    }

    011 {return 0}
    012 {return 0}
    013 {return 0}
    014 {return 0}
    017 {return 0}

    004 {
      if {[info exists mc_sc($memory)]} {
        set file $mc_sc(info:loc)~new
        set temp(vars) $mc_sc(info:vars)
        set io [open $file w]
        for {set i 0} {$i <= [llength $mc_sc($memory)]} {incr i} {
          set line [lindex $mc_sc($memory) $i]
          set regexp {^[; ]*set mc_sc\((:config:[^)]*)\) *(.?)}
          if {[regexp -- $regexp $line -> name type]} {
            set continue 0
            foreach item $temp(vars) {
              set item_name [lindex $item 0]
              set item_value [lindex $item 1]
              if {$name != $item_name} {continue}
              set index [lsearch -exact $temp(vars) $item]
              set temp(vars) [lreplace $temp(vars) $index $index]
              puts $io [list set mc_sc($name) $item_value]
              if {$type == "\{"} {
                while {1} {
                  if {[regexp -- {\}(?:;* *(.*))?} $line -> extra]} {
                    if {$extra != ""} {
                      puts $io $extra
                    }
                    break
                  }
                  incr i
                  set line [lindex $mc_sc($memory) $i]
                }
                puts $io ""
              } elseif {$type == "\""} {
                regsub -- {"} $line "" line
                while {1} {
                  if {[regexp -- {[^\\]"(?:;* *(.*))?} $line -> extra] ||
                      [regexp -- {^"(?:;* *(.*))?} $line -> extra]} {
                    if {$extra != ""} {
                      puts $io $extra
                    }
                    break
                  }
                  incr i
                  set line [lindex $mc_sc($memory) $i]
                }
                puts $io ""
              }
              set continue 1
              break
            }
            if {$continue} {continue}
          }
          puts $io $line
        }
        close $io
        set file $mc_sc(info:loc)
        putloglev o * "$mc_sc(script): Auto update testing new script..."
        if {[catch {uplevel "source $file~new"} error]} {
          file delete -force -- $file~new
          putloglev o * "$mc_sc(script): Auto update failed: $error"
          putloglev o * "$mc_sc(script): Auto update loading previous script."
          uplevel "source $file"
        } else {
          file rename -force -- $file~new $file
          putloglev o * "$mc_sc(script): Auto update test good, reloading."
          uplevel "source $file"
        }
      }

      catch {unset mc_sc($header)}
      catch {unset mc_sc($memory)}
      return 1
    }

    200 {
      set temp(host) [lindex $text 1]
      set temp(port) [lindex $text 2]
      set temp(get)  [lindex $text 3]
      set temp(cache) "$temp(host) at $temp(port)"
      putloglev d * \
        "$mc_sc(script): SVS is being redirected to $temp(cache)."
      utimer 5 [list mc:sc:do_svs_ $temp(host) $temp(port) $temp(get)]
      catch {unset mc_sc($header)}
      catch {unset mc_sc($memory)}
      return 1
    }

    300 {
      lappend mc_sc($memory) $text
      return 0
    }

  }
}
catch {unset index}
if {![info exists mc_loaded]} {set mc_loaded(scripts) ""}
set index [lsearch -exact $mc_loaded(scripts) mc_sc]
lreplace mc_loaded(scripts) $index $index mc_sc
## ^


putlog "$mc_sc(script) $mc_sc(version) by MC_8 loaded."

##
# History  ( <Fixed by> - [Found by] - <Information> )
##
# v2.5.2 (07.23.03)
#  MC_8 -      - Upgraded SVS client.  v4.0.1 -> v4.0.2
#  MC_8 - Zotz - "%filename doesn't function in kick/ban messages", when
#                relay'd.
#                Bugzilla Bug 318 
#  MC_8 -      - Upgraded ECS (Error Catching System).  v3.0 -> v3.1
#
# v2.5.1 (07.02.03)
#  MC_8 - Wolfgang - Fixed 'can't read "channel": no such variable'.
#                    Bugzilla Bug 292
#
# v2.5 (06.09.03)
#  MC_8 -            - Upgraded SVS client.  v3.0.1 -> v4.0.1
#  MC_8 - Jennifer / - Fixed 'couldn't compile regular expression pattern:
#         Tache        nested *?+'.  Upgraded `maskhostbytype`.  v2.0 -> v2.1
#                      Bugzilla Bug 219
#  MC_8 - Jay        - Added `relay:noopbots`.
#                      Bugzilla Bug 283
#  MC_8 -            - Script no longer relaying spam to other bots when spam is
#                      a private message and the bot is opped in all channels
#                      that spammer is in.
#  MC_8 -            - Script no longer sending relays to all bots, only those
#                      flagged as bot (+b) in the userfile.
#  MC_8 -            - Re-arranged the wording from the dcc command 'spamcheck'
#                      output.
#
# v2.4 (09.22.02)
#  MC_8 -        - Fixed 'wrong # args: should be "mc:sc:filter ?switch? text"'.
#  MC_8 -        - Fixed 78 spelling errors.
#  MC_8 -        - Added `2list` tcl command.  none -> v1.0
#  MC_8 -        - Added `unlist` tcl command.  none -> v1.0
#  MC_8 -        - Added `badargs` tcl command.  none -> v1.0
#  MC_8 -        - Upgraded `filt` tcl command, renamed to `filter`.
#                  v2.0 -> v3.0
#  MC_8 -        - Removed `inter:strip:all` tcl command and replaced with
#                  `mirc_strip`.  v1.1 -> v1.0
#  MC_8 -        - Upgraded `chanflag` tcl command.  v2.1 -> v3.1
#  MC_8 -        - Upgraded `findchanuser` tcl command, renamed to `findnicks`.
#                  old -> v2.0
#  MC_8 -        - Upgraded `replace` tcl command.  v1.1 -> v1.3
#  MC_8 -        - Upgraded `masktype` tcl command, renamed to `maskhostbytype`.
#                  v1.3 -> v2.0
#  MC_8 -        - Upgraded Error Catching System.  v2.1 -> v3.0
#  MC_8 -        - Upgraded SVS Client.  v2.2 -> v3.0.1
#  MC_8 - Victor - Fixed SVS reporting the wrong version.
#                  Bugzilla number: 112
#
# v2.3 (07.02.02)
#  MC_8    -        - Upgraded error system.  v2.0 -> v2.1
#  MC_8    -        - Upgraded masktype proc.  v1.2 -> v1.3
#  MC_8    -        - Upgraded SVS.  v2.0 -> v2.2
#  MC_8    - Jay    - Upgraded the error system.  old -> v2.0
#  MC_8    -        - Moved the history to the bottom -- too large.
#  MC_8    - Porto  - Script now compatible with ircu2.10.x's raw PART format.
#                     Symptoms:  Wouldn't change irc nicknames (if setup in
#                     configs of this script).
#  MC_8    -        - 'ircnicks' wasn't resetting back to the first after going
#                     to end of list.
#  MC_8    - sapox  - Fixed '[mc:sc:msgm:message]: missing close-bracket'.
#  Vanja   -        - Made allot of grammar and spelling adjustments.  MC_8 
#                     can't spell.
#  MC_8    -        - Found a problem with eggdrop1.6.11+logfiledoc (possibly
#                     previous versions have the same issue), bot doesn't hit
#                     the part binds -- having this script use the raw bind for
#                     all part bind proc calls.
#  MC_8    -        - Removed unused 'existchanban' proc.
#  MC_8    -        - Upgraded 'masktype' proc, fixed some minor errors.
#                       o If ident@host == test@me@192.168.0.1, it would set
#                         ident to 'test' and host to 'me@192.168.0.1'.
#                       o Types *1,3,6,8 is support to remove the ident's first
#                         ~. It was removing all continues (from left) ~'s.
#                       o A little more efficient, by cache'n some commands.
#                     v1.1 -> v1.2
#  MC_8    -        - Script would stop cycling channels if 'nocycle:mode' found
#                     a restriction in a channel, should skip that 1 channel and
#                     continue with the rest -- fixed.
#  MC_8    -        - Added 'enable:msgcmd' variable.
#  MC_8    -        - Added channel option to spamcheck command.
#  MC_8    -        - Format'd the entire script to a 89 character string length
#                     limit per line.  This will help the newbies that open the
#                     script in pico which word wraps it and in turn sometimes
#                     messes up the script due to it (that's a 7.5" ruler stop).
#  MC_8    -        - 'ign:wrds' now supports special charactered words
#                     (containing: []").
#  MC_8    -        - Rewrote various tidbits of the scripts' timer calls to be
#                     more efficient in how it checks the active timers.
#  MC_8    -        - Adjusted the 'not cycle if valid flagged user isn't opped'
#                     ideal proposed by Vanja in the last version, I forgot to
#                     specify that the flagged user must be opped -- it was
#                     checking if a certain flagged user was in the channel at
#                     all.
#  MC_8    -        - Adjusted the 'mc_sc(ircnicks)' feature proposed in the
#                     last version by Porto.  I predicted that if an irc
#                     nickname was already taken, it would revert to alt nick,
#                     in turn every time it went to go set a new irc nick upon
#                     cycle it would keep trying that same nick instead of
#                     trying the next in the list.
#  MC_8    - sapox  - Fixed 'can't unset "mc_sc(joind:active)": no such element
#                     in array'.
#  MC_8    - Yaniv  - Upgraded 'strip:all' proc, now supports 'normal' character
#                     (oct 017).  old -> v1.1
#  MC_8    - Vanja  - Added ability to 'not cycle if valid flagged user isn't
#                     opped'.
#  MC_8    - Porto  - Added ability to cycle through pre-set irc nicks upon spam
#                     cycle.
#  MC_8    - ryan  /- Documentation said to use a prefix of mc. on the channel
#            shezze   modes, but the script wasn't -- adjusted the script to
#                     follow the documentation.  It is now properly
#                     mc.(spamcheck|spamcycle) as it should be.
#  MC_8    -        - Removed the older version of the duplicate 'chanflagison'.
#  MC_8    - Phil   - Fixed '[mc:sc:bot:relay]: bad index "something": must be
#                     integer or end?-integer?' (TCL 8.3 and 8.2) also
#                     '[mc:sc:bot:relay]: wrong # args: should be "string
#                     tolower string"' (TCL 8.0).
#  MC_8    - shezze - Bot wasn't processing spam.
#  MC_8    -        - Rewrote botnet communication, better encryption.
#  MC_8    -        - Fixed invalid command filt.
#  MC_8    -        - Fixed, 'can't unset "mc_sc(relayblock:???: #???)": no such
#                     element
#                     in array'.  Bugzilla bug: 69
#  MC_8    -        - Added putlog reporting upon finding spam.
#  MC_8    -        - Upgraded 'filt' proc.  v1.0 -> v2.0
#  MC_8    -        - Spam relay would perform a punishment on the receiving bot
#                     eve if the channel flag was set to -spamcheck.  Fixed.
#  MC_8    -        - Updated the 'replace' proc.  v1.0 -> v1.1
#  MC_8    -        - Update the 'chanflagison' proc. v1.0 -> v2.0
#  MC_8    -        - Fixed error in masktype proc; if type is 10-19 and the
#                     host is an ip and it has a 255 in any of the 4 atoms- it
#                     would be treated as a host rather than an ip.
#                     v1.0 -> v1.1
#  SkAtErS -        - Fixed 'wrong # args: extra words after "else" clause in
#                     "if" command'.
#
# v2.2.1 (11.19.01)
#  MC_8 - IngentinG - Fixed 'TCL error [mc:sc:bot:relay]: can't read "filename":
#                     no such variable'.
#  MC_8 -           - Added a new error handling idea.
#  MC_8 - Erik      - TCL error [mc:sc:dcc:message]: variable is not assigned by
#                     any conversion specifiers
#  MC_8 - Erik      - Fixed 'TCL error [mc:sc:dcc:command:spamcheck]: can't read
#                     "mc_sc(script)": no such variable'.  Error in DCC and MSG
#                     command 'spamcheck'.
#  MC_8 - Erik      - Fixed 'TCL error [mc:sc:msg:command:spamcheck]: can't read
#                     "pos_mod": no such variable'.
#  MC_8 -           - Upgraded from SVS v1.3 to v2.0.
#  MC_8 - Plexus    - Fixed 'TCL error [mc:sc:msgm:message]: can't read
#                     "mc_sc(exec:ban)": no such element in array'.
#
# v2.2 (10.30.01)
#  MC_8 -                - Rewrote explanation of ban masking types.
#  MC_8 -                - Rewrote the ban masking proc again, much smaller now.
#  MC_8 -                - Ban types 10-19 were not masking the host.domain
#                          correctly if it was an ip address.
#  MC_8 -                - Ban type 3, 4, 8 and 9 wasn't masking the host
#                          correctly.
#  MC_8 - Sharren Kandou - Ban types 10-19 were giving tcl errors.  'TCL error
#                          [mc:bw:pubm]: syntax error in expression "[regexp --
#                          {^1[0-9]$} $type] &&', fixed.
#  MC_8 - Kitt           - Add new config's file option: 'nocycle:mode'
#  MC_8 - Sharren        - Script was acting screwy with special characters in
#                          the spammers nick.  Fixed.
#  MC_8 -                - Removed 'glob_ban' option, it's not needed since I
#                          added the auto search for feature (read next history
#                          entry), an also integrated it into 'ban:anyhow'.
#  MC_8 -                - If the spammer is not in a channel the bot is in, the
#                          script will search the channels it's on for a
#                          matching ip/ hostname.
#  MC_8 -                - Script was hackable, all a spammer had to do was
#                          NOTICE users with "DCC " at the beginning of the spam
#                          message an the bot would of just ignored the user.
#                          Fixed.
#                            o KatzEye reported something similar, but not
#                              exactly this.
#  MC_8 -                - Reworte filt proc, it's smaller and more efficient.
#  MC_8 -                - Rewrote the ban masking proc, it's quicker.
#  MC_8 -                - Removed the findip/ sindex/ srange proc.
#  MC_8 -                - Made minor changes to the SVS client section to give
#                          proper error if an invalid user is specified to
#                          receive a notification of a newer version.
#  MC_8 -                - Revamped the coding (a lot of minor stuff, too much
#                          to write here).
#
# v2.1 (08.27.01)
#  MC_8    -              - Found problems with DCC and MESSAGE cases when
#                           checking the mc_sc(act:wrds).  If act:wrds was set
#                           to more than 1 thing, DCC and MESSAGE would require
#                           that all match, it should be if any match.
#  MC_8    - Alchera      - Fixed issues with string index not recognizing the
#                           "e" or "end", quickly fixed with [expr [string
#                           length $var]-1] instead of "e".
#  MC_8    -              - Cleaned up relay message, if another bot is going to
#                           relay more than 1 channel, it is only necessary to
#                           say "Spam Check:  Bot relay from <bot> regarding
#                           <nick>." only once.
#  MC_8    - Alchera      - Fixed issues with relays regarding channels the bot
#                           isn't in giving off invalid channel errors.
#                           '[mc:sc:bot:relay]: illegal channel...'.
#  Alchera -              - Identified and fixed string range issues with
#                           abbreviations of "e" as "end".
#  MC_8    - KatzEye      - Fixed '[mc:sc:msgm:message]: wrong # args: should be
#                           "string match pattern string"'.
#  MC_8    - KatzEye      - Added ability to do global bans, as opposed to
#                           channel specific.
#  MC_8    -              - Fixed, '[mc:sc:msgm:message]: can't read "filename":
#                           no such variable'.
#  MC_8    -              - Fixed, 'invalid command name "mc:sc:replace"'.
#  MC_8    -              - Fixed, 'invalid command name "masktype"'.
#  MC_8    -              - Fixed, 'invalid command name "????"'.
#  MC_8    - KatzEye      - Added set mc_sc(ban:anyhow).
#  MC_8    - KatzEye      - Added ability to do sticky bans.
#  MC_8    - JuanPerez    - Fixed, '[mc:sc:msgm:message]: can't read "1": no
#                           such variable'.
#  MC_8    - Shezze       - Added mc_sc(glob_ban) option, for those spammers
#                           that relay join information to another client that
#                           spams. This method of spamming is harder to stop, if
#                           the user cloned himself and the bantype is setup
#                           correct enough, then it will get him.  But if the
#                           user is smart enough to use another host (via BNC or
#                           whatever), this script won' do much good considering
#                           there is no way to find the spammer.
#  MC_8    - Jan Naustdal - Added ability to listen to any combination of the
#                           spam methods (DCC Send/MSG/Notice/Invite). The
#                           upside is you can set the bot to only listen for
#                           (ie.) dcc send virus senders, turning off protection
#                           for MSG, Notice, and Invites...
#  MC_8    - Sheeze       - Was evaluating itself for spam checks, this isn't
#                           cool i the spamcheck bot runs an auto greet that is
#                           built poorly in which it greets itself on join.
#                           Fixed.
#  MC_8    - Shezze       - Added ability to only watch for certain word
#                           strings, instead of just considering everything a
#                           spam message.
#  MC_8    -              - Added INVITE as a form of spam.
#  MC_8    - KrE80R Kr    - Fixed '[mc:sc:bot:relay]: can't read
#                           "mc_sc(exc:message:)": no such element in array'.
#  MC_8    - Abraham      - Veriables spamcheck and spamcycle now implemented
#                           into channel flags.  No more setting what channel(s)
#                           to cycle and not cycle in this script.  It is now
#                           all done via DC (ie: .chanset #channel -spamcycle
#                           +spamcheck).  See settings descriptions below.
#  MC_8    - KrE80r Kr    - Added ability to exclude certain command words from
#                           being considered a spam /msg, /notice.  Example from
#                           KrE80r Kr, /msg bot seen TesT ,, don't want the bot
#                           to consider that spam.
#  MC_8    - Abraham      - Adding options for min. & max. cycle time, the bot
#                           will pick a random number between them two to do the
#                           next cycle therefore making it not look as
#                           "suspicious/ artificial".
#  MC_8    - KrE80r Kr    - Fixed '[mc:sc:msgm:message]: can't read
#                           "botnet-nick": no such variable'.
#
# v2.0 (01.03.01)
#  MC_8 - SPECiAL-K - Beta tested, msg/ notice/ dcc send/ dcc notice all check
#                     out ok.  Releasing to public.
#  MC_8 -           - Added SVS v1.0.
#  MC_8 - Marek     - Removed DCC Chat as punishable spam -- who spams with a
#                     dcc chat?
#  MC_8 - Marek     - Bot should ban before kick.
#  MC_8 - Marek     - Added %filename replacement for message replacement for
#                     dcc send.
#  MC_8 - Marek     - Added ability to set different message depending on the
#                     method in which the user contacted the bot.  (dcc send
#                     /msg/ notice)
#  MC_8 -           - Tested with eggdrop v1.4.4:  If you see this dcc message
#                     "Server says I'm not on channel: #..." it is an eggdrop
#                     problem, so please don't report it as if this script were
#                     crazy :)  Why an eggdrop problem? -- Upon doing the
#                     -/+inactive features to get the bot to delay a rejoin,
#                     when doing a -inactive on mass channels, and it's
#                     lagged...  The script will say -inactive and send the
#                     PART... If eggdrop see's its still in that channel after
#                     waiting ??seconds then it will send yet another PART thus
#                     causing ircd to give an error RAW 442.  You cannot part a
#                     channel your not on.
#  MC_8 - Marek     - Fixed, bot was never performing punishments.   Problem...
#                     it was stuck thinking the bot still wasn't in the channel
#                     yet.
#  MC_8 -           - Fixed, 'invalid command name "mc:sc:maskhostbytype"'.
#  MC_8 -           - Fixed, 'extra characters after close-brace'.
#  MC_8 - Marek     - Added option to have a part message.
#  MC_8 - Marek     - Fixed, '[mc:sc:message]: can't read "mc_sc(joind:active)":
#                     no such element in array'.
#  MC_8 -           - Recoded all procs, started it from scratch for a better
#                     coding structure.
#
# v1.4 (11.11.00) *unreleased -- moved to v2.0*
#  MC_8 - GilGolan    - Made it possible to set mc_sc(auto:check) to 0 to turn
#                       off the channel cycling.
#  MC_8 - GilGolan    - Added a relay feature.  If the bot isn't op'd it will
#                       send an message over the botnet, if another bot that has
#                       this script has the same key and is linked up... AND
#                       that bot is op'd, i will preform the punishment.
#  MC_8 - Scott Spaay - Added coding to auto kick the user upon issuing a ban.
#                       Normally the bot would do that if enforcebans is turned
#                       on.. but if it's not, no worry... the script has it
#                       covered.
#  MC_8 - Scott Spaay - Added warning feature, along with that... many more
#                       variables.
#  MC_8 - AAshearer   - Fixed, '[joinpart]: invalid command name "hand2nick"'.
#  MC_8 -             - Fixed, 'invalid command name "findip"'.
#  MC_8 -             - Fixed, 'missing close-bracket' caused by special
#                       charactered nicks doing auto spams.
#
# v1.3 (04.08.00)
#  MC_8 -               - Added banmasking feature.
#  MC_8 - pimpin        - Added option to enable/ disable it's notice ops that
#                         the bot is about to cycle.
#  MC_8 - anonymous     - Added option to wait x seconds before rejoining.
#                         (eggdrop1.3.28 + only)
#  MC_8 - Somak Goswami - Fixed '[joinpart]:  invalid command name "option"'.
#
# v1.2 (02.27.00)
#  MC_8 - - Fixed, '[checkspam:pre]: can't read "uhost": no such variable'.
#
# v1.1 (02.26.00)
#  MC_8 -        - Added setting, listen time.  How long it listens for
#                  on-joins.
#  MC_8 -        - Added MSG checkspam trigger.
#  MC_8 -        - Fixed, 'invalid command name "mc_sc"' during timed spam
#                  check.
#  MC_8 - Matt   - Auto Spam checks, settable times.
#  MC_8 - Matt   - Only recognizes 1 pub !spamcheck request per 40 sec.
#  MC_8 -        - Added some fail safes in the coding. (1, doesn't cycle if the
#                  bot is the ONLY op) (2, if the bot is not op'd, it can't
#                  possibly ban the spammer, nor can it notice @#channel ... if
#                  the bot is not opped upon this situation, it sends it's
#                  information to the dcc console o).
#  MC_8 -        - Made it do more than just 1 channel.
#  MC_8 -        - Added option to exempt opped users.
#  MC_8 -        - Added option to exempt voiced users.
#  MC_8 -        - Added option to exempt flags.
#  MC_8 - LuNito - Gave it a 5 second delay before processing the on-join spam.
#                  This is to help the bot op up before processing, if the bot
#                  isn't op'd, it can't auto-ban for on-join.
#  MC_8 - LuNito - Added hand2nick support for bot's 1.3.26 and older.
#  MC_8 - LuNito - Made Auto Spam check time easier to work, I removed the bind
#                  time and make it a "timer" function instead.
#
# v1.0 (02.25.98)
#  Torr - Inital Release.
##
