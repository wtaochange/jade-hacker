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
############ Command Binds ###########################

a:command -add status   pub:status    1073 597 s
a:command -add channels pub:channels  1074 598 s

############ Command Procs ###########################

proc pub:status {hand chan args x mix} {
	global server botname version botnick uptime settings {server-online}
	
	set bots 1
	set ppl  0
	 
	foreach w [bots] {if {[check:B:gl $w]} {incr bots}}
	foreach w [channels] { incr ppl [llength [chanlist $w]]}

	a:tell $x 17 "Users: %b[countusers]%%, on partyline: %b[llength [whom 0]]%%, channels: %b[llength [channels]]%%, ppl: %b$ppl%%, BOTS: %b[expr [llength [bots]]+1] ($bots $settings(suppchan))%%"
	a:tell $x 17 "Time: %b[ctime [unixtime]] GMT%%, uptime: %b[duration [expr [unixtime] - $uptime ]]%%, ON-LINE: %b[duration [expr [unixtime] - ${server-online}]]%%, OS: %b[unames]%%, version: %b[lindex $version 0]%%"
	a:tell $x 17 "Server: %b$server%%, host: %b$botname%%"
	a:tell $x 17 "Owners: %b[userlist n]%%"
	return "..."
}

proc pub:channels {hand chan args x mix} {
	global settings

	set option  [lindex $args 0]
	set chans   ""
	set numb    [llength [channels]]
	set ppl 0

	if { [regexp -nocase -- {^(free|f|-f)$} $option]} {if {$numb < $settings(max_chans)} {a:tell $x 177 [expr $settings(max_chans) - $numb] }} elseif {
	     [regexp -nocase -- {^(number|n|-n)$} $option]} {a:tell $x 226 $numb } else {

		foreach c [channels] { set out $c

			set out [a:validate -secret $c [lindex $x 2]]
			set abuse  0
			set status ""

			incr ppl [llength [chanlist $c]]
			
			if { [channel get $c suspended]} {set abuse 1; set modes "%rSUSPENDED%%"   } elseif {
			     [channel get $c inactive] } {set abuse 1; set modes "%rINACTIVE%%"    } elseif {
			    ![botonchan $c]}		 {set abuse 1; set modes "%rNOT ON CHAN%%" } else   {
			    
				    set numbr "[llength [chanlist $c]]"
				    set modes "($numbr)"
				    
				    if { $numbr < $settings(chan_min_userss)} {set abuse 1; set modes "%r$modes%%"}
				    if { [botisop $c]} {set status @} else    {set abuse 1; set status %r} 
			}

			if { [regexp -nocase -- {^(abuse|a|\-a)$} $option]} { 
				if {$abuse} { lappend chans "${status}${out}%% $modes,"}} else { 
				lappend chans "${status}${out}[iif $abuse %%] $modes," 
			}
		}
		if { [llength $chans] > 0} {
			if { [regexp -nocase -- {^(abuse|a|\-a)$} $option]} { 
				a:tell $x 227 "[llength $chans] [string trimright [join $chans] ","]"} else {
				a:tell $x 178 "$ppl $numb [string trimright [join $chans] ","]"
			}
		}
	}
	
	return "$option"
}

return "global s commands"