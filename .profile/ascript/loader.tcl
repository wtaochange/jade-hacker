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
############ Defining variables ######################

set temp(line) "**********************************"

# For debugging puporose only, you can set "action die" or "action putlog". If you are 
# playing with the script & making some major changes & don't want the bot to die every 
# time you make a mistake - feel free to "set action putlog". You will be only 
# warned about mistakes. Attention! If you have a warning - it means that BOT is not 
# fully functional or not functional at all. Only for advanced users.

set action die
set temp(dirname) [file dirname [info script]]

############ Checking Compatibility ##################

putlog $temp(line)

if {$numversion < 1061700} {

	die "Warning! You must have at least 1.6.17 eggdrop/windrop version. Download @ http://geteggdrop.com. BOT shutdowned."
}

if {![string equal $action die] && ![string equal $action putlog]} {

	die "Heh ;) Debugging ?! 1st debug your tcl knowledge & rtfm. Action cat set to 'die' or 'putlog' ONLY."
}

############ Checking config/settings/botnick files ##

if {![info exists temp(config_error)] || $temp(config_error)} {
	
	$action "Warning! eggdrop.conf file is missing or has errors. BOT shutdowned. Error: $temp(config_error_info)"
} {unset temp(config_error) temp(config_error_info)}

if {![info exists temp(settings_error)] || $temp(settings_error)} {

	$action "Warning! settings.conf file is missing or has errors. BOT shutdowned. Error: $temp(settings_error_info)"
} { unset temp(settings_error) temp(settings_error_info)}

if {![info exists owner] || ![info exists settings(suppchan)]  || ![info exists settings(homechan)] || [string equal -nocase $owner Edit_Me_Pls] ||  [string equal -nocase $settings(suppchan) "#Edit_Me_Pls"] || [string equal -nocase $settings(homechan) "#Edit_Me_Pls"] } {

	$action "Warning! settings.conf file MUST be edited."
}

if {![info exists nick] || ![info exists botnet-nick]  || ![info exists realname] || [string equal -nocase $nick Edit_Me_Pls]} {

	$action "Warning! botnick.conf file MUST be edited."
}

############ Script auto-loader ######################

putlog "*loading a&a light eggdrop script*"
putlog $temp(line)

set temp(errors) 0

foreach script [lsort [glob -directory $temp(dirname) a&a_*]] {

	if { [file readable $script] && [file isfile $script] && ![catch {source $script} state]} {
		if { [string equal $state skipped]} {continue}

		putlog "+ LOADED $state" 
		set temp:loaded($state) 1

	} else { incr temp(errors)

		putlog "- FAILED TO LOAD ${script}. Error: $state"
	}
}

putlog $temp(line)

############ Checking core files for errors ##########

if {![info exists temp:loaded(core)]} {
	
	$action "Warning! a&a_01_a_core.tcl core script file is missing or has errors & was NOT loaded. BOT shutdowned."
}

if {![info exists temp:loaded(binds)]} {
	
	$action "Warning! a&a_02_a_binds.tcl core script file is missing or has errors & was NOT loaded. BOT shutdowned."
}

if {![info exists "temp:loaded(en dictionary)"]} {
	
	$action "Warning! a&a_04_a_dict_en.tcl core script file is missing or has errors & was NOT loaded. BOT shutdowned."
}

############ Checking other files for errors #########

if {!$temp(errors)} {

	putlog "*a&a light loaded successfully :)*" } {
	putlog "*a&a light loaded with errors :( *"
}

putlog $temp(line)

############ Unset temp vars #########################

unset temp(dirname)
unset temp(errors)
unset temp(line)
unset temp:loaded