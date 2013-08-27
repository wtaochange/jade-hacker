### TCL script:
#     .next v1.06+mc1.0
#     by DaNioN <danion_danion@yahoo.com>
#     
#
### Description:
#     An replica of the next TCL script that I've seen been used on
#     #zt and #System channels @ Undernet.
#
### History:
#     I've forgot - version 1.2
#     o fixed the "kick problem";
#     o changed some texts, binds and commands ;
#     o switched from channel to msg for 3 commands;
#     o fixed the sleep and put commands;
#     o added the list msg command;
#
#     16/09/2002 - version 1.3
#     o fixed the quit problem;
#     o added/ removed/ changed some lines and checks;
#     o made customized notices for
#     next, welcome and helped events;
#     o switched to pub for the all commands;
#     o autovoice for friends/ helpers on join;
#
#     18/10/2002 - version 1.4
#     o fixed some problems when eggdrop was operating
#     with the list;
#     o un fragmented the script;
#
#     10/25/2002 - version 1.4+mc1.0
#     o Fixed many spelling mistakes;
#     o Format'd the script to 80 width;
#     o No longer have to restart when changing
#     next(flag);
#     o 'rehash' no longer resets the next list;
#     o Fixed the first time replacement issue.  Was
#     replacing with what was replaced the first time only;
#     o Script now supports multi channels, changeable on the fly via chanset;
#     o next(welcome) now supports !number! replacement
#     as well as multi line;
#     o next(next) now supports multi line;
#     o next(helped) now supports !nick! replacement as
#     well as multi line;
#     o Added 18 more ban types to next(ban);
#     o Added option 0 to next(time);
#     o Added duration, keeps track of how long people
#     have been waiting in the queue;
#     o Added !duration! replacment to next(next);
#
#     01/13/2003 - version 1.5+mc1.0
#     o Fixed some small problems with the *duration* thanks to ppslim;
#
#     03/03/2003 - version 1.6+mc1.0
#     o When a user from the list gets voiced or opped by somebody else
#     is removed from the list;
#
### Advices:
#     Use a channel limiter to prevent a botnet join/part flood;
#
### Notices:
#     Feel free to e-mail me if you have suggestions, bug reports, or just general feedback, etc.
#     You may modify this how your hart wishes as long is for your own usage.
#     If you would like to share it with others give me and the people who helped me some credit
#     for the "hard" work.. :P~
#
### Commands:
#
#     Where  Flag Command   Description
#     -----  ---- -------   -----------
#     PUB :   -   .next     Voices the first nick in the list.
#             -   .helped   Removes the "voice" and send a notice to leave the
#                           channel, after he/she had been helped.
#             -   .noidle   Kick/ban 1 minute "nick" for being idle/ away while
#                           in channel.
#             -   .skip     Removes "nick" from the list. very useful when is a
#                           friend, and/ or a bot who changed his host or
#                           something like this.
#             -   .put      Adds "nick" in to the list, if for some reason
#                           "nick" isn't there.
#             -   .list     You will receive an notice with the "nicks" that are
#                           in his voice list.
#
#     MSG : N/A
#
#     DCC :  n|n .chanset   Use .chanset to set the script active for the particular channel or not.
#                           Example: .chanset #abc123 +next
#                           .chanset #abc123 -next
#
### Instalation:
#     Edit and change the settings for your channel as it suits you better after that, .rehash your bot.
#
### Many thanks:
#     o ppslim for helping me out with some small problems;
#     o MC_8 for the More Tools quick procs, tips and sugestions;
#     o egghead for the tips and sugestions;
#     o slennox and forum.egghelp.org members for the posts and replyes.
#     o ShoX for poiting the remove on op/voice from others;
#
### End of my borring comments.. :o)

# Flag that you or the helpers will need to use the .next TCL script?
set next(flag) "o|o"

# What should be the .noidle ban type to be?
#   0 - *!user@host.domain
#   1 - *!*user@host.domain
#   2 - *!*@host.domain
#   3 - *!*user@*.domain
#   4 - *!*@*.domain
#   5 - nick!user@host.domain
#   6 - nick!*user@host.domain
#   7 - nick!*@host.domain
#   8 - nick!*user@*.domain
#   9 - nick!*@*.domain
#
#     You can also specify a type of 10-19 which corresponds to types 0-9,
#     using this sub rule;  If host.domain is a(n)-
#     name - Instead of using a * wildcard to replace portions of the
#     host.domain, it replaces the numbers in the host.domain with a
#     '?' (question mark) wildcard.
#     ip   - It will mask as normal, with no '?' (question mark)
#     replacements as does hostname.
set next(ban) 2

# How long, in minutes, do you want the .noidle ban to last?  If you set this to
# 0, it will not be a ban in the bot, but rather a server ban.
set next(time) 1

# Custromize the messages and/ or notices.
set next(welcome) {
    10Bun Venit Te Rog Asteapta Deoarece Suntem Ocupati In Acest Moment. Vei Primii Voice Imediat Cum Terminam Cu Userii Curenti. Te Rog 4NU10 Da Mesaj La 4+/@10 Esti Al 4!number!10 La Rand !
}

set next(helped) {
     10Dupa Cum Vezi4 !nick!10 Ai Fost Ajutat . Te Rog Sa Parasesti4 !chan!10 . Dar Daca Mai Ai Intrebari, Te Rog Cycle (4 /hop10 ) In Canal !
}

set next(next) {
     10Bine Ai Venit Pe 4!chan!10 Dupa Cum Vezi Ai Asteptat4 !duration!10 Iti Multumim Ca Ai Asteptat Te Va Ajuta 4!nick!10 Spunei Problema Ta Intro4 SINGURA-LINIE10 Multumesc 
}

### ANY EDITING AND/OR MODIFICATIONS MADE BEYOND THIS IS YOUR OWN RISK! ###

# stuff
set next(script) ".next"
set next(version) "v1.0@2010"
set next(aurthors) "DaNioN"
catch {unset temp}
setudef flag next

# binds
bind join - * next:add
bind part - * next:del
bind sign - * next:del
bind nick - * next:nick
bind kick - * next:kick
bind mode - * next:mode

# commands
set temp(list) [list n voice h "" b "" s "" p "" l ""]
foreach "temp(1) temp(2)" $temp(list) {
	if {$temp(2) == ""} {set temp(2) $temp(1)}
	foreach temp(bind) [binds next:$temp(2)] {
		unbind pub [lindex $temp(bind) 1] [lindex $temp(bind) 2] next:$temp(2)
	}
	bind pub $next(flag) $temp(1) next:$temp(2)
}

# join
proc next:add {nick uhost handle chan} {
	global next
	if {![botisop $chan] || ![next:moretools:chanflag $chan next] || [isbotnick $nick]} { return 0 }
	if {[validuser $handle]} {
		pushmode $chan +v $nick
		return 1
	}
	set num [next:cmds add_list [list $nick $chan]]
	set temp(post) [next:moretools:replace -- $next(welcome) [list \
		!number! $num]]

	foreach temp(post) [split $temp(post) \n] {
		set temp(post) [string trim $temp(post) "\t "]
		if {$temp(post) == ""} {continue}
		putserv "NOTICE $nick :$temp(post)"
                
	}

	return 2
}

# part & sign
proc next:del {nick uhost handle chan {text ""}} {
	if {[isbotnick $nick] || ![next:moretools:chanflag $chan next]} {return -1}
	return [next:cmds remove_list [list $nick $chan]]
}

# nick
proc next:nick {nick uhost handle chan newnick} {
	if {[isbotnick $nick] || ![next:moretools:chanflag $chan next]} {return -1}
	return [next:cmds remove_list [list $nick $chan $newnick]]
}

# kick
proc next:kick {nick uhost handle chan vict reason} {
	if {[isbotnick $vict] || ![next:moretools:chanflag $chan next]} {return -1}
	return [next:cmds remove_list [list $vict $chan]]
}

# mode
proc next:mode {nick uhost handle chan mode victim} {
	if {[isbotnick $victim] || ![next:moretools:chanflag $chan next]} {return -1}
	switch -- $mode {
	"+o" { return [next:cmds remove_list [list $victim $chan]] }
	"+v" { return [next:cmds remove_list [list $victim $chan]] }
  }
}

# next
proc next:voice {nick uhost handle chan arg} {
	global next
	if {![next:moretools:chanflag $chan next]} {return 0}

	set temp(list) [next:cmds get_list $chan]

	for {set temp(i) 0} {
		([set temp(voice) [lindex [lindex $temp(list) $temp(i)] 0]] != "") &&
		![onchan $temp(voice) $chan] &&
		[validuser [nick2hand $temp(voice) $chan]] &&
		![isop $temp(voice) $chan] &&
		![isvoice $temp(voice) $chan]} {incr temp(i)} {}

	set temp(list) [lrange $temp(list) $temp(i) end]
	next:cmds set_list [list $chan $temp(list)]

	if {$temp(voice) == ""} {
		putserv "NOTICE $nick :Vaii da orb esti ... nu vezi ca nu are nimeni nevoie de ajutor ?"
		return 1
	}

	if {![botisop $chan]} {
		putserv "NOTICE $nick :I cannot proceed, I'm not opped."
		return 1
	}

	set temp(duration) [expr [clock seconds] - [lindex [lindex $temp(list) 0] 1]]
	set temp(duration) [duration $temp(duration)]

	putserv "NOTICE $nick :$temp(voice) a asteptat dupa tine $temp(duration)."
	pushmode $chan +v $temp(voice)
	set temp(post) [next:moretools:replace -- $next(next) [list \
		!nick! $nick \
		!chan! $chan \
		!duration! $temp(duration)]]
	foreach temp(post) [split $temp(post) \n] {
		set temp(post) [string trim $temp(post) "\t "]
		if {$temp(post) == ""} {continue}
		putserv "PRIVMSG $chan :$temp(post)"
		return [next:cmds remove_list [list $temp(voice) $chan]]
	}
	return 1
}

# helped
proc next:h {nick uhost handle chan arg} {
	global next
	if {![next:moretools:chanflag $chan next]} {return 0}

	set helped [lindex [split $arg] 0]

	if {$helped == ""} {
		putserv "NOTICE $nick :\002Usage:\002 .helped <nick>"
	} elseif {[isbotnick $helped]} {
		putserv "NOTICE $nick :You helped me?  I think not."
	} elseif {![botisop $chan]} {
		putserv "NOTICE $nick :I'm not opped, cannot proceed."
	} elseif {![onchan $helped $chan]} {
		putserv "NOTICE $nick :Where do you see $helped?."
	} elseif {[validuser [nick2hand $helped]]} {
		putserv "NOTICE $nick :$helped is a valid user, will not proceed."
	} elseif {![isvoice $helped $chan]} {
		putserv "NOTICE $nick :$helped is not voiced, cannot proceed."
	} elseif {[isop $helped $chan]} {
		putserv "NOTICE $nick :$helped is an op, will not proceed."
	} else {
		pushmode $chan -v $helped

		set temp(post) [next:moretools:replace -- $next(helped) [list !nick! $nick \
                  !chan! $chan]]

		foreach temp(post) [split $temp(post) \n] {
			set temp(post) [string trim $temp(post) "\t "]
			if {$temp(post) == ""} {continue}
			putserv "NOTICE $helped :$temp(post)"
			return [next:cmds remove_list [list $helped $chan]]
		}
	}
	return 1
}

# noidle
proc next:b {nick uhost handle chan arg} {
	global botname next
	if {![next:moretools:chanflag $chan next]} {return 0}

	set nnick [lindex [split $arg] 0]

	if {$nnick == ""} {
		putserv "NOTICE $nick :\002Usage:\002 .noidle <nick>"
	} elseif {[isbotnick $nnick]} {
		putserv "NOTICE $nick :I cannot idle?  *pssh*"
	} elseif {![botisop $chan]} {
		putserv "NOTICE $nick :I'm not opped, cannot proceed."
	} elseif {![onchan $nnick $chan]} {
		putserv "NOTICE $nick :Where do you see $nnick?."
	} elseif {[validuser [nick2hand $nnick]]} {
		putserv "NOTICE $nick :$nnick is a valid user, will not proceed."
	} elseif {[isvoice $nnick $chan]} {
		putserv "NOTICE $nick :$nnick is voiced, try '.helped $nnick' first."
	} elseif {[isop $nnick $chan]} {
		putserv "NOTICE $nick :$nnick is an op, will not proceed."
	} elseif {[next:cmds is_in_list [list $nnick $chan]]} {
		putserv "NOTICE $nick :$nnick is awaiting help.. *pssh*"
	} else {
		set nuhost $nnick![getchanhost $nnick $chan]
		set banmask [next:moretools:maskhostbytype $nuhost $next(ban)]

		if {[string match $banmask $botname]} {
			putserv "NOTICE $nick :I can't ban $nnick because $banmask matches me."
			return 1
		}

		if {!$next(time)} {
			putserv "MODE $chan +b $banmask"
		} else {
			set temp(reason) \
				"Don't be idle in $chan channel please. \002$next(time)\002 minute ban."
			newchanban $chan $banmask $nick $temp(reason) $next(time)
		}
		return [next:cmds remove_list [list $nnick $chan]]
		putserv "KICK $chan $nnick :$temp(reason)"
	}
	return 1

}

# skip
proc next:s {nick uhost handle chan arg} {
	global next
	if {![next:moretools:chanflag $chan next]} {return 0}

	set skip [lindex [split $arg] 0]

	if {$skip == ""} {
		putserv "NOTICE $nick :\002Usage:\002 .skip <nick>"
	} elseif {![onchan $skip $chan]} {
		putserv "NOTICE $nick :$skip is not on channel."
	} elseif {![next:cmds is_in_list [list $skip $chan]]} {
		putserv "NOTICE $nick :$skip is not awaiting help."
	} else {
		next:cmds remove_list [list $skip $chan]
		putserv "NOTICE $nick :$skip has been removed from the help queue."
		return [next:cmds remove_list [list $skip $chan]]
	}
	return 1
}

# put
proc next:p {nick uhost handle chan arg} {
	global next
	if {![next:moretools:chanflag $chan next]} {return 0}

	set put [lindex [split $arg] 0]

	if {$put == ""} {
		putserv "NOTICE $nick :\002Usage:\002 .put <nick>"
	} elseif {[isbotnick $put]} {
		putserv "NOTICE $nick :I need help?  I think not."
	} elseif {![onchan $put $chan]} {
		putserv "NOTICE $nick :I don't see $put on the channel."
	} elseif {[isvoice $put $chan]} {
		putserv "NOTICE $nick :$put already has voice."
	} elseif {[isop $put $chan]} {
		putserv "NOTICE $nick :$put is an op."
	} elseif {[validuser [nick2hand $put $chan]]} {
		putserv "NOTICE $nick :$put is a valid user of the bot, not adding."
	} else {
		next:cmds add_list [list $put $chan]
		putserv "NOTICE $nick :$put has been added to the queue."
	}

	return 1
}

# list
proc next:l {nick uhost handle chan arg} {
	global next
	if {![next:moretools:chanflag $chan next]} {return 0}

	set temp(list) [next:cmds get_list $chan]

	set temp(post) ""
	foreach temp(entry) $temp(list) {
		set temp(duration) [duration [expr [clock seconds] - [lindex $temp(entry) 1]]]
		lappend temp(post) "[lindex $temp(entry) 0] ($temp(duration))"
	}

	set temp(post) [expr {($temp(post) == "")?
		"Currently empty.":
		[join $temp(post) ", "]}]

	putserv "NOTICE $nick :\002List\002: $temp(post)"

	return 1
}

# next:cmds
proc next:cmds {command {arg ""}} {
	global next
	switch -- $command {

		"add_list" {
			next:moretools:unlist $arg nick channel
			set channel [string tolower $channel]

			lappend next(:list:$channel) [list $nick [clock seconds]] 
			return [llength $next(:list:$channel)]
		}

		"set_list" {
			next:moretools:unlist $arg channel set_to
			set channel [string tolower $channel]

			return [set next(:list:$channel) $set_to]
		}

		"remove_list" {
			next:moretools:unlist $arg nick channel {newnick ""}
			set channel [string tolower $channel]
			set nick [string tolower $nick]

			if {![info exists next(:list:$channel)]} {
				return 0
			}

			set temp(list) ""
			foreach temp(entry) [string tolower [next:cmds get_list $channel]] {
				if {[string tolower [lindex $temp(entry) 0]] == $nick} {
					if {$newnick != ""} {
						lappend temp(list) [list $newnick [lindex $temp(entry) 1]]
					}
				} else {
					lappend temp(list) $temp(entry)
				}
			}

			return [next:cmds set_list [list $channel $temp(list)]]
		}

		"get_list" {
			set channel [string tolower $arg]
			return [expr {![info exists next(:list:$channel)]?
				"":
				$next(:list:$channel)}]
		}

		"is_in_list" {
			next:moretools:unlist $arg nick channel
			set channel [string tolower $channel]
			set nick [string tolower $nick]

			foreach temp(entry) [string tolower [next:cmds get_list $channel]] {
				if {[string tolower [lindex $temp(entry) 0]] == $nick} {
					return 1
				}
			}

			return 0
		}

	}
}


## More Tools quick procs.
## -- http://mc.purehype.net:81/script_info.tcl?script=moretools

# badargs <args> <min_llength> <max_llength|end> <argNames>
#     version:
#       v1.0
proc next:moretools:badargs {{args ""}} {
	if {[llength $args] < 4} {
		set temp() {"next:moretools:badargs args min_llength max_llength argNames"}
		error {wrong # args: should be $temp()}
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

	if {($llength < $check_min) || (($llength != "end") &&
	    ($llength > $check_max))} {
		if {[info level] == "1"} {return 1}
		error "wrong # args: should be \"[lindex [info level -1] 0] $check_names\""
	}; return 0
}

# 2list <text>
#     version:
#       v1.0
proc next:moretools:2list {{args ""}} {
	next:moretools:badargs $args 1 1 "text"
	next:moretools:unlist $args text

	return [expr {([catch {llength $text}])?[split $text]:$text}]
}

# unlist <argsList> [varName1] [varName2] ... [varNameN]
#     version:
#       v1.0
proc next:moretools:unlist {{args ""}} {
	next:moretools:badargs $args 1 end "argsList ?varName varName ...?"
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

# replace [switches] <text> <substitutions>
#     version:
#       v1.3
proc next:moretools:replace {{args ""}} {
	next:moretools:badargs $args 2 4 "?switches? text substitutions"
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
	next:moretools:badargs [lrange $args $i end] 2 2 \
		"?switches? text substitutions"

	# Check to see if $substitutions is in list format, if not make it so.
	set substitutions [next:moretools:2list $substitutions]

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
	}; return [subst $text]
}

# chanflag <channel> <flag>
#     version:
#       v3.1
proc next:moretools:chanflag {{args ""}} {
	next:moretools:badargs $args 2 2 "channel flag"
	next:moretools:unlist $args channel flag

	if {![validchan $channel]} {error "no such channel record"}

	# Try the 'channel' commands' 'get' option first, it's faster since it is
	# written in C by the eggdrop development team.
	if {![catch {channel get $channel $flag} output]} {return $output}

	set temp(chaninfo) [string tolower [channel info $channel]]
	if {[lsearch -exact $temp(chaninfo) +[string tolower $flag]] >= "0"} {
		return 1
	}; return 0
}

# maskhostbytype <nick!ident@host.domain> [type]
#     version:
#       v2.1
proc next:moretools:maskhostbytype {{args ""}} {
	next:moretools:badargs $args 1 2 "nick!ident@host.domain ?type?"
	next:moretools:unlist $args nuhost type

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

## End of More Tools quick procs.

putlog "$next(script) $next(version) by $next(aurthors) loaded." 
