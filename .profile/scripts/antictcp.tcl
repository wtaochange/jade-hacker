# nochanctcps.tcl v1.04 [1 August 2000] 
# Copyright (C) 1999-2000 Teemu Hjelt <temex@iki.fi>
#
# Latest version can be found from http://www.iki.fi/temex/eggdrop/
# 
# If you have any suggestions, questions or you want to report 
# bugs, please feel free to send me email to temex@iki.fi
#
# This script makes the bot punish    
# people who request ctcps from a channel.
#
# Tested on eggdrop1.4.4 with TCL 7.6
#
# Version history:
# v1.00 - The very first version!
# v1.01 - Fixed little problem in ncc_punish command.
# v1.02 - Now this script uses bind raw instead of bind 
#         ctcp because bind raw is stackable.
# v1.03 - Fixed a little bug that allowed the bot to kick users
#         who used actions. (Found by Ghosty)
# v1.04 - The user can now also be given a warning when (s)he uses
#         channel ctcps. Now the bot can lock/close the channel
#         after too many channel ctcps. (Suggested by Expert)

### Settings ###

## List of channel where the bot should punish people who use channel ctcps.
# Note: Set this to "" to enable punishing on all channels.
set ncc_chans ""

## List of ctcps that are not allowed.
# Note: Set this to "" to react on all ctcps.
set ncc_ctcps ""

## [0/1] Do you want the bot to react also on actions (which are in fact ctcps)?
set ncc_noactions 0

## After how many channel ctcps close the channel?
# Set this to 0:0 to disable.
set ncc_lockchan 1:40

## Lock channel for how many minutes?
set ncc_locktime 5

## Set these modes when locking the channel.
set ncc_lockmodes "m"

## What is the reason for the punishment?
set ncc_reason "Don't use channel ctcps!"

## [0/1] Kick the user?
set ncc_kick 1

## [0/1] Give the user a warning?
set ncc_givewarning 1

## Give what kind of warning?
# Note: You can use %chan to indicate the name of the 
# channel and %nick to indicate the nick of the user.
set ncc_warning "Channel ctcps are forbidden on %chan, so please don't use them."

## [0/1] Ban the user?
set ncc_ban 1

## Ban for how long time (min)?
set ncc_bantime 10

## [0/1] Ignore the user?
set ncc_ignore 0

## Ignore for how long time (min)?
set ncc_ignoretime 10

## People with the following global flags can request channel ctcps. 
set ncc_globflags "m n o"

## People with the following channel flags can request channel ctcps.
set ncc_chanflags "m n o"

###### You don't need to edit below this ######

### Misc Things ###
	
set ncc_ver "1.04"
set ncc_lockchan [split $ncc_lockchan :]

### Bindings ###

bind raw - PRIVMSG raw:ncc_checkctcp

### Procs ###

setudef flag anti-ctcp

proc raw:ncc_checkctcp {from keyword arg} {
global botnick ncc_chans ncc_noactions ncc_ctcps ncc_lockchan ncc_globflags ncc_chanflags
set nick [string range $from 0 [expr [string first "!" $from] -1]]
set chan [lindex [split $arg] 0]
set type [string trim [string trim [lindex $arg 1] :] \001]
	if {([string match "\001*\001" [string trim [lrange $arg 1 end] :]]) && ([string tolower $nick] != [string tolower $botnick])} {
		foreach globflag $ncc_globflags { if {[matchattr [nick2hand $nick] $globflag]} { return 0 } }
		foreach chanflag $ncc_chanflags { if {[matchattr [nick2hand $nick] |$chanflag $chan]} { return 0 } }
		if {($ncc_chans == "") || ([lsearch -exact [split [string tolower $ncc_chans]] [string tolower $chan]] != -1)} {
			if {($ncc_ctcps == "") || ([lsearch -exact [split [string tolower $ncc_ctcps]] [string tolower $type]] != -1)} { 
				if {($ncc_noactions) || ((!$ncc_noactions) && ([string tolower $type] != "action"))} {
					if {([lindex $ncc_lockchan 0] != 0) && ([lindex $ncc_lockchan 1] != 0)} { 
						ncc_lockchan $chan 
					}
					ncc_punish $nick $from $chan
					return 1
				}
			}
		}
	}
}

proc ncc_punish {nick uhost chan} {
global botnick ncc_chans ncc_reason ncc_kick ncc_givewarning ncc_warning ncc_ban ncc_bantime ncc_ignore ncc_ignoretime
set hostmask "*!*[string range $uhost [string first "@" $uhost] end]"
set dowhat ""
      if { [channel get $chan anti-ctcp] } {
	if {[string tolower $nick] != [string tolower $botnick]} {
		if {$ncc_givewarning} { 
			lappend dowhat "giving warning"
			set warning $ncc_warning
			regsub -all -- "%chan" $warning $chan warning
			regsub -all -- "%nick" $warning $nick warning
			putserv "NOTICE $nick :$warning" 
		}
		if {($ncc_ignore) && (![isignore $hostmask])} { 
			lappend dowhat "ignoring"
			newignore $hostmask $botnick $ncc_reason $ncc_ignoretime 
		}
		if {($ncc_ban) && (![isban $hostmask $chan]) && ([onchan $nick $chan])} {
			lappend dowhat "banning"
			newchanban $chan $hostmask $botnick $ncc_reason $ncc_bantime 
		}
		if {($ncc_kick) && ([botisop $chan]) && ([onchan $nick $chan])} {
			lappend dowhat "kicking"
			putserv "KICK $chan $nick :$ncc_reason" 
		}
		if {$dowhat != ""} {
			set dowhat "-- [join $dowhat " & "]"
		}
		putlog "nochanctcps: $nick ($uhost) requested channel ctcp from $chan $dowhat"
	}
}
}
proc ncc_lockchan {chan} {
global ncc_lockchan ncc_lockmodes ncc_locktime ncc_ctcpcount ncc_locked
	if {![info exists ncc_ctcpcount([string tolower $chan])]} { set ncc_ctcpcount([string tolower $chan]) 0 }
	if {![info exists ncc_locked([string tolower $chan])]} { set ncc_locked([string tolower $chan]) 0 }
	if {(!$ncc_locked([string tolower $chan])) && ([botisop $chan]) && (![ncc_modesexist $ncc_lockmodes $chan])} {
		incr ncc_ctcpcount([string tolower $chan])
		utimer [lindex $ncc_lockchan 1] "incr ncc_ctcpcount([string tolower $chan]) -1"
		if {$ncc_ctcpcount([string tolower $chan]) > [lindex $ncc_lockchan 0]} {
			set ncc_locked([string tolower $chan]) 1
			timer $ncc_locktime "ncc_unlockchan [string tolower $chan]" 
						putlog "nochanctcps: $chan locked due to too many channel ctcps."
		}
	}
}

proc ncc_unlockchan {chan} {
global ncc_lockmodes ncc_locked
	set ncc_locked([string tolower $chan]) 0
	if {([botisop $chan]) && ([ncc_modesexist $ncc_lockmodes $chan])} {
		putserv "MODE $chan -$ncc_lockmodes"
		putlog "nochanctcps: $chan unlocked."
	}
}

proc ncc_modesexist {modes chan} {
	foreach mode [split $modes {}] {
		if {![string match "*$mode*" [lindex [getchanmode $chan] 0]]} {
			return 0
		}
	}
	return 1
}

### End ###

putlog "TCL loaded: nochanctcps.tcl v$ncc_ver by Sup <temex@iki.fi>"