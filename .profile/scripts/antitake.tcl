#################################################################
# Meltdowns Anti-Overtake V0.9 (30-05-2004) 	                #
# -Quakenet-optimized-                                          #
#								#
# http://scripts.udp.at                                         #
#                                                               #
# Bans for overtakes 			                        #
#								#
# Triggers: 	+Kicking 3 ops in 30 secs                       #
#		+Deopping 5 ops in 20 secs			#
#		+Banning the bot, botowner or bot-channel-op	#
#		+Setting invite, key or limit < 90%		#
#								#
# +Unbans, invites, etc when bot cannot join the chan		#
#  (Q/X/L must be in the chan)					#
# +Removes overtakers  Q/X/L-flags				#
# +ops the bot with Q/X/L, when getting deopped			#
# +unbans all victims of the overtake				#
#								#
# Contact: meltdown@gmx.at | #meltdown on quakenet		#
#								#
# [! LEAVE THESE CREDITS INTACT. !] thx...			#
#								#
# If you have any problems on any sys...Pls drop me a line	#
# (Tested on: Eggdrop 1.6.15/Tcl 8.3/2.2.25)			#
#								#
#################################################################
#
# Installation: +Append the tcl in your bots config
# 		+type "!meltsat on" in your chan (you must be owner)
#
#################################################################
#
# Hints:
#
# I suggest to give Q and L at least +f, so the eggdrop wont ban them.(see overtake(allowed))
# Manual for lazy guys/newbs: 
#	Join the partyline
#	.+user service
# 	.+host service *!TheLBot@lightweight.quakenet.org
# 	.+host service *!TheQBot@CServe.quakenet.org
# 	.chattr service +f 
#
#################################################################
#
# New in 0.9
#
# Enhanced ban/removeuser-procedure (ie bot will give offender +k flag for 30 secs)
# 
# Changed from removing flags with CHANLEV to REMOVEUSER
#
# Fixed baaad bug, when someone deopped the bot before kicking (thx to superior for testing ;)
# Fixed deop setting (was set, even when it was 0:0)
#
#################################################################
#
# New in 0.8
#
# Added ignore for mode-changes made by servers
# Added option to send a DEOPALL, when the bot gets kicked
# Added Paranoid-option
# Increased netsplit-time to 2 hours
#
#################################################################
#
# New in 0.7
#
# Added overtake-detection, when the bot get kicked X times in 30 seconds
# Added a "Report-email"-feature (only working with sendmail)
#
# Changed from UNBANALL to INVITE on chans with L
#
# Fixed small bug, when people join and _quit_ within 15 secs
# Fixed small bug in whitelist ("can't unset "whitelist(#foo)": no such element in array")
# Fixed bug that bot triggers +o incorrectly, when getting kicked (possible eggi-bug)
# Fixed +b on some sys
# Fixed "needs" with special-character-chans 
#
# Removed t-flag from chanlev-delete
#
#################################################################
#
# New in 0.6
#
# Added Anti-Flood-Protection
#  => Floodbot-detection (misc detections by nick + host)
#  => join/part-ban 
#
# Removed some putlogs
#
#################################################################
#
# New in 0.5
#
# Added mass-deop-protection
# Added X-Support (for undernet)
# Added a few X/Q/L-checks
# Added a queue for chanmodes, when bot hasnt +o
#
# Enhanced kick-speed
# Enhanced +l - overtake-detection (setting below 90% of the users currently in the chan)
#
# Fixed b-flag-protection
# Fixed "deopall on kick-overtake"
# Fixed allowed-flags with +b
#
#################################################################
#
# New in 0.4 :
#
# Added chanmode-setting
# Added a putlog, when an overtaker got banned
# Minor changes
# FIXED ANOTHER STUPID FUCKING BUGS (looks like my QA-department sucks)
#
#################################################################
#
# New in 0.3 :
#
# Added misc settings
# Added "unban-vitcims after overtake"
# Fixed misc things :P no, they are too lame, so i dont mention them here :)
# Just say, i released the script to early :p
#
#################################################################
#
# Settings :
#

#########
# user-protection
#
#

set overtake(allowed) "mf|o"
# Sets, which people are allowed to ban/kick/change chanmodes as much as they want
# Hint: Q should have one of these flags

set overtake(protect) "m|f"
# Sets, which people should be protected from bans (except allowed people :). (m=botmaster, f=friend on chan)

set overtake(bots) 1
# Protect bots with +b-flag ?
# If not, set to 0


########
# ban-settings
#

set overtake(service) ""
# Nickname of a service-bot, if you dont use Q/L on quakenet or X on undernet
# If you fill in a nick and set needs to 1 the bot will send invites, unban, etc
# to "this" bot. (ie /msg YOURBOTNICK invite #chan)

set overtake(bantype) 2
# 1:*!ident@subnet, 2:*!ident@IP, 3:*!*@domain, 4:nick!*@*

set overtake(needs) 1
# Set to 0 to use your own "needs" (need-op, need-invite,...)
# If you dont know what this is, set it to 1 :)

set overtake(chanmodes) "+nNCt-isk"
# Chanmodes which should be enforced on the chan. leave blank to use your own

set overtake(service-ban) 1
# Set to 1 to ban with Q/X too (offenders will be banned with NICK by Q and HOSTMASK by the eggdrop) 
# If you have Q or X in your chan, this setting is highly recommended

set overtake(deopall) 1
# Set to 1 to do a Q/L deopall on an kick-overtake
# Good, if overtaker use bots to kick all people

set overtake(botdeopall) 0
# Set to 1 to do a Q/L deopall on bot-kick

set overtake(revenge) 1
# Deop/kick-Revenge
# The Bot will kick people who are deopping/kicking it

set overtake(kickmessage) "Overtaker"
# Kickmessage


##########
# Enhanced Detection
#
#

set overtake(kickedbot) 2
# Set, when an overtake will be detected on X eggdrop-kicks in 30 seconds
# This will do a DEOPALL,too. Even if overtake(botdeopall) is set to 0


set overtake(deop) 5:20
# Mass-deop-protection
# This setting overrides the eggdrop-internal setting.
# (Here: 5 deops in 20 seconds - set to 0:0 to turn it off)

set overtake(paranoid) 0
# Bot will detect a DEOP or KICK on the eggdrop as overtake.
# Only for paranoid people ! ;)


########
# Proxy-bots-detection
#
# If you leave this setting to 1 the bot will check and ban suspicious nicks (ie: x1231) joining the chan
# and for similar nicks joining the chan (bot123, bot142, bot148, etc). 
#
# Hint: If you had these settings set to 1 and you want to disable it, you have to _restart_ the bot
# 

set overtake(flood) 1
# Set to 0 to dont check for flood-bots

set overtake(joinpart) 1
# Set to 0 to dont ban join/part-lamers

#########
#Notification:
#
# Important: Sending an email is only recommended, if you have more than 1 bot
#  	     protecting the chan. (Bot will react slow, if an overtaker uses bots)
#	     Its mainly for reporting people (To suspend theirs accounts or for g-lines)
#	     If youre not going to report people, this setting is useless.
#

set overtake(email) ""
# Fill in your email, if you want to receive an email on an overtake
# (with date, chan, nick, host of the overtaker, etc.)
# Else, leave this setting blank ("")

set overtake(sendmail) "/usr/bin/sendmail"
# As the mail-thingie works with sendmail only, you may want to
# change the path.


################################################################################
#
# End of Configuration
#
####

setudef flag antitake

set overtake(version) "0.9"

if {$overtake(flood)} { bind JOIN - * check_floodbots }
if {$overtake(joinpart)} { bind PART - * check_joinpart }
if {$overtake(flood)} { bind SPLT - * check_whitelist }


bind mode - * proc_change 
bind mode - "% +o" do_cqueue
bind join - * do_cqueue_kick
bind kick - * proc_kick
bind flud - deop meltsat_flood
bind PUB m|m !meltsat activate_at_script
bind raw - "319" get_whois
bind raw - "330" get_authnick


proc proc_kick { nick uhost hand chan target reason} {
global violator overtake
#
# Exit, if one of the requirements met
#
	if {$nick == $::botnick} { return 0 }
	if {$nick == ""} { return 0 }
	if {$overtake(bots) == 1} { if {[matchattr $hand b]} { return 0 } }
	if {[matchattr $hand $overtake(allowed) $chan]} { return 0 }
	if {[string last +antitake [channel info $chan]] == -1 } { return 0 }

#
# If the bot gets kicked
#

	if {$target == $::botnick} { 
		putquick "JOIN $chan"
		set_cqueue $chan "KICK $chan $nick :Dont kick me, buddy."
		if {$overtake(botdeopall) == 1} { putquick "PRIVMSG [qlcheck $chan] :DEOPALL $chan" }
		if {$overtake(paranoid) == 1} 	{ 
                                                  rflags_kick $nick $chan $uhost [getchanhost $target $chan]
			 			  if {$overtake(botdeopall) == 0} { putquick "PRIVMSG [qlcheck $chan] :DEOPALL $chan" }
		}

#
# Does the overtake-routine, when the bot got kicked overtake(kickedbot) times in 60 seconds
#
		if {$overtake(kickedbot) != 0} {
				if {![info exists overtake(kc_bot,$chan)]} {
					set overtake(kc_bot,$chan) 1
					utimer 60 [list unset overtake(kc_bot,$chan)]
				} else {
					incr overtake(kc_bot,$chan)
				}
                                if {$overtake(kc_bot,$chan) >= $overtake(kickedbot)} {

					if {$overtake(botdeopall) == 0} { 		# Dont send multiple DEOPALL
	                                	putquick "PRIVMSG [qlcheck $chan] :DEOPALL $chan"
					}
                                        rflags_kick $nick $chan $uhost [getchanhost $target $chan]
                                }
		}
	}

#
# If the kicked client was an operator
#
	if {[wasop $target $chan]} {
		if {![info exists violator($nick)]} { 
                        set violator($nick) 1
                        utimer 30 [list unset violator($nick)]
		} else { 
                        incr violator($nick)
		}
		if {$violator($nick) >= 3} { 
			if {$overtake(deopall)} {putserv "PRIVMSG [qlcheck $chan] :DEOPALL $chan"}
			rflags_kick $nick $chan $uhost [getchanhost $target $chan] 
		}
	}
}

proc proc_change { nick uhost hand chan mode victim } {
global overtake deopcounter timerkill
	if {$mode == "-o" } {
                if {$victim == $::botnick} {
			if {[qlcheck $chan] != ""} { 
				putquick "PRIVMSG [qlcheck $chan] :op $chan" 
			}
		}
	}
#
# Exit, if one of the requirements met
#

        if {[string last +antitake [channel info $chan]] == -1 } { return 0 }
	if {[matchattr $hand $overtake(allowed) $chan]} { return 0 }
	if {$overtake(bots) == 1} { if {[matchattr $hand b]} { return 0 } }
	if {$nick == $::botnick} { return 0 }
	if {$nick == ""} { return 0 }
	if {$mode == "+b"} {

#Q-net-bug
		if {$victim == "!*@*"} { set victim "*!*@*" }
#
		if {[string match $victim $::botname]} {rflags_kick $nick $chan $uhost $victim ; return }
		foreach i [chanlist $chan] {
			if {[string match $victim "$i\![getchanhost $i]"]} {
				if {[matchattr [nick2hand $i] $overtake(protect) $chan]} {
					rflags_kick $nick $chan $uhost $victim
				}
			}
		}
	}
        if {$mode == "-o" } {
                if {$victim == $::botnick} {
                        if {$overtake(paranoid) == 1} { rflags_kick $nick $chan $uhost $victim
							putquick "PRIVMSG [qlcheck $chan] :DEOPALL $chan"
                        }
                        if {$overtake(revenge)} {
                                if {![matchattr $hand $overtake(allowed) $chan]} {
                                        set_cqueue $chan "KICK $chan $nick :Dont deop me, buddy."
                                }
                        }
                }
        }

	if {$mode == "+i"} { 
		rflags_kick $nick $chan $uhost 0 
		putserv "MODE $chan -i"
	}

	if {$mode == "+k"} { 
		rflags_kick $nick $chan $uhost 0
		putserv "MODE $chan -k $victim"
	}

	if {$mode == "+l"} { 
		if {$victim < [expr [llength [chanlist $chan]]*0.9]} { 
			rflags_kick $nick $chan $uhost 0 
			putserv "MODE $chan +l [expr [llength [chanlist $chan]]+ 10]"
		}
	}
		
}
proc meltsat_flood {nick uhost hand type chan} {
global overtake
#
# Flood-deop-procedure
#

#
# Exit, if one of the requirements met
#

        if {[string last +antitake [channel info $chan]] == -1 } { return 1 }
        if {[matchattr $hand $overtake(allowed) $chan]} { return 1 }
	if {$overtake(bots) == 1} { if {[matchattr $hand b]} { return 1 } }
	if {$nick == $::botnick} { return 1 }

	rflags_kick $nick $chan $uhost unknown
	return 1	
}

proc rflags_kick {nick chan uhost victim} {
global overtake rfonce
#
# Common procedure, when an overtaker is detected
#
        set overtakerhost [ot:getbanmask $nick $uhost]
        set service [qlcheck $chan]

	if {([onchan Q $chan]) && ($overtake(service-ban) == 1)} { putquick "PRIVMSG Q :ban $chan $nick" }
	if {![botisop $chan]} { set_cqueue $chan "KICK $chan $nick :$overtake(kickmessage)" }
        catch { putkick $chan $nick "$overtake(kickmessage)" } err
#Q-net-bug
     		if {$victim == "!*@*"} { set victim "*!*@*" }
#
	if {[botisop $chan]} {
		pushmode $chan +b $overtakerhost
		pushmode $chan -b $victim
		flushmode $chan
	}
	if {![info exists rfonce($nick)]} {
	        if {$service != ""} {
       		         putquick "PRIVMSG $service :removeuser $chan $nick"
       		         putserv "NOTICE $nick :Removed flags. If this was a mistake, contact the channelowner"
       		}

	        adduser $nick $nick!*@*
	        chattr [nick2hand $nick] |+k $chan
 	        utimer 30 [list deluser [nick2hand $nick]]

		putserv "WHOIS $nick"
		putlog "Overtaker detected ! $nick ($overtakerhost) at [clock format [unixtime] -format %D-%r]"
		if {$overtake(email) != ""} { utimer 10 [list send_report $nick $chan $uhost] }

		ot:unban $chan $overtakerhost

		set rfonce($nick) 1
		utimer 30 [list unset rfonce($nick)]
	}
}

proc send_report { nick chan uhost } {
global overtake
#
# "Report-mail"-procedure
#

                set mailme [open "|$overtake(sendmail) -t" w]
                puts $mailme "To: $overtake(email)"
                puts $mailme "From: $::botnick\@$chan"
                puts $mailme "Subject: Overtake detected in $chan !"
                puts $mailme "Overtake detected:\n"
                puts $mailme "Nick: $nick"
                puts $mailme "Host: $uhost"
                puts $mailme "Channel: $chan"
                puts $mailme "Time: [clock format [unixtime] -format %D-%r]\n"
                puts $mailme "WHOIS: $overtake(whois)"
                if {[info exists overtake(auth)]} {
                        puts $mailme "AUTH: $overtake(auth)"
                        unset overtake(auth)
                }
                close $mailme
                unset overtake(whois)

}

proc qlcheck {chan} {
global overtake
#
# Returns, which bot is on the channel
# If overtake(service) is set, the value of it will be returned
#

	if {$overtake(service) != ""} { return $overtake(service) }
        if {[onchan Q $chan]} {
          set service "Q"
        } elseif {[onchan L $chan]} {
          set service "L"
	} elseif {[onchan X $chan]} {
	  set service "X"
        } else {
          set service "";
        }
return $service
}

proc ot:getbanmask {nick uhost} {
#
# Switches the banmask set by overtake(bantype)
#

global overtake
 set account [string range $uhost 0 [expr [string last @ $uhost] -1]]
 set domain [string range $uhost [expr [string last @ $uhost] +1] end]
 set sitemask "*!*[string trimleft [maskhost $uhost] *!]"
 switch $overtake(bantype) {
  1 {set sitemask "*!*[string trimleft [maskhost $uhost] *!]"}
  2 {set sitemask "*!*$uhost"}
  3 {set sitemask "*!*@$domain"}
  4 {set sitemask "$nick!*@*"}
                        }
regsub -all -- {~} $sitemask "" sitemask
return $sitemask
}

proc activate_at_script {nick uhost hand chan args} {
global overtake
#
# Channel-activation-procedure (!meltsat on|off)
#


        switch $args {
                  on {	if {([qlcheck $chan] != "") && ($overtake(needs) == 1)} {
				channel set $chan need-op [list putquick "PRIVMSG [qlcheck $chan] :op $chan" -next]
				channel set $chan need-invite [list putquick "PRIVMSG [qlcheck $chan] :invite $chan" -next]
				channel set $chan need-key [list putquick "PRIVMSG [qlcheck $chan] :invite $chan" -next]
				if {([qlcheck $chan] == "Q") || ([qlcheck $chan] == "X")} {
					channel set $chan need-limit [list putquick "PRIVMSG [qlcheck $chan] :invite $chan" -next]
		                        channel set $chan need-unban [list putquick "PRIVMSG [qlcheck $chan] :invite $chan" -next]
				}
				if {[qlcheck $chan] == "L"} {
					channel set $chan need-limit [list putquick "PRIVMSG L :clearchan $chan" -next]
					channel set $chan need-unban [list putquick "PRIVMSG L :invite $chan" -next]
				}
			}
			channel set $chan +antitake
			if {$overtake(chanmodes) != ""} { channel set $chan chanmode $overtake(chanmodes) }
			if {$overtake(deop) != "0:0"} { channel set $chan flood-deop "$overtake(deop)" }
			putserv "PRIVMSG $chan :MeltsAT activated"}
                  off {	
                        channel set $chan -antitake
			if {([qlcheck $chan] != "") && ($overtake(needs) == 1)} {
                        channel set $chan need-op ""
                        channel set $chan need-invite ""
			channel set $chan need-key ""
			channel set $chan need-limit ""
			channel set $chan need-unban ""
			}
			putserv "PRIVMSG $chan :MeltsAT deactivated"}
                  default {
                                if {[lsearch -exact [channel info $chan] +antitake] > -1} {
                                         putserv "PRIVMSG $chan :MeltsAT is currently ACTIVATED."
                                } else { putserv "PRIVMSG $chan :MeltsAT is currently DEACTIVATED."
                                }
                  }
        }
}


proc ot:unban { chan badhost } {
#
# Unbans all masks in a channel except the "badhost" form the overtaker
#

set x 0
foreach i [chanbans $chan] { 
	if {![string match "*$badhost*" $i]} { 
		incr x
		pushmode $chan -b [lindex $i 0]
		if {$x >=6} { flushmode $chan ; set x 0 }
	}
} 	
	flushmode $chan
}

proc do_cqueue { nick uhost hand chan mode victim } {
#
# Execute the queue, when the bot gets kicked
# lookup set_cqueue

global ot_queue
        if {$victim == $::botnick} {
                set x 0
                while {[info exists ot_queue($chan,$x)]} {
                        putquick "$ot_queue($chan,$x)"
                        unset ot_queue($chan,$x)
                        incr x
                }
        }
}

proc set_cqueue { chan command } {
#
# Sets the queue for commands, when the bot got kicked.
# It stores $command in $ot_queue, which will be executed, as soon as the bot rejoins

global ot_queue
        set x 0
        while {[info exists ot_queue($chan,$x)]} {
               incr x
        }
        set ot_queue($chan,$x) "$command"
}
proc do_cqueue_kick { nick uhost hand chan } {
	if {$nick == $::botnick} { 
		utimer 0.1 [list do_cqueue 0 0 0 $chan 0 $::botnick]
	}
}

proc check_floodbots { n u h c } {

#
# Flood-bots-detection-script
#


global flood_nicks flood_hosts flood_chans joinpart overtake whitelist

        if {[string last +antitake [channel info $c]] == -1 } { return 0 }
	if {[matchattr $h b]} { return 0 }
        if {[isbotnick $n]} { return 0 }
        if {[matchattr $h $overtake(allowed) $c]} { return 0 }
	if {[info exists whitelist($c)]} { if {[lsearch -exact $whitelist($c) $n] == -1 } { return 0 } } 
# "Deletes" Numbers from the nick.
        regsub -all {[0-9]*} $n "" sub_nick

# If the nickname is smaller than 2 characters after deleting numbers
        if {[string length $sub_nick] < 2} {
                putlog "Suspicious nick detected ($n in $c)"
                putquick "MODE $c +b $n!*@*"
                putquick "KICK $c $n :Possible Flood-Bot. Try a smarter nickname"
        }
# Check, if there are similar nicks after deleting numbers
        lappend flood_nicks($c,$sub_nick) $n
        if {[llength $flood_nicks($c,$sub_nick)] > 2} {
                putquick "MODE $c +b $sub_nick*!*@*"
                foreach x $flood_nicks($c,$sub_nick) {
                        putquick "KICK $c $x :Possible Flood-Bot"
                }
        }
# Check, if more than 2 clients are joining the chan with the same host in 15 seconds

        if {[llength $flood_nicks($c,$sub_nick)] == 1} {utimer 15 [list unset flood_nicks($c,$sub_nick)]}

        set host [lindex [split $u "@"] 1]
        lappend flood_hosts($c,$host) $n
        if {[llength $flood_hosts($c,$host)] > 2} {
                putquick "MODE $c +b *!*@$host"
                putlog "CLONES detected from $host in $c - nicks: ($flood_hosts($c,$host))"
                foreach x $flood_hosts($c,$host) {
                        putquick "KICK $c $x :Possible Flood-Bot"
                }
        }
        if {[llength $flood_hosts($c,$host)] == 1} {utimer 15 [list unset flood_hosts($c,$host)]}
	if {![info exists joinpart($c,$n)]} {
	        set joinpart($c,$n) 1
        	utimer 15 [list unset joinpart($c,$n)]
	}
}

proc check_joinpart { n u h c m } {
#
# Ban, when clients are joining and parting the chan within 10 seconds
#

global joinpart
        if {[info exists joinpart($c,$n)]} {
                putquick "MODE $c +b *!*@[lindex [split $u "@"] 1]"
		timer 10 [list putserv "MODE $c -b *!*@[lindex [split $u "@"] 1]"]
        }
}

proc check_whitelist { n u h c } {
#
# Whitelist nicks within a Netsplit for 2 hours
#
global overtake whitelist
        if {[string last +antitake [channel info $c]] == -1 } { return 0 }
        if {[matchattr $h $overtake(allowed) $c]} { return 0 }
	if {![info exists whitelist($c)]} { timer 120 [list unset whitelist($c)] }
	lappend whitelist($c) $n
}

proc get_whois {from key text} {
global overtake
	set overtake(whois) [lrange [split $text] 1 end]
}

proc get_authnick {from key text} {
global overtake
        set overtake(auth) [lindex [split $text] 2]
}


putlog "Melts Anti-Overtake $overtake(version) loaded..."

