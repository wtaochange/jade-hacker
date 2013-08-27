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
############ ROUTINE BINDS ###########################

bind msgm -|- *             a:bind:msgm
bind pubm -|- *		    a:bind:pubm
bind pubm -|-  "% for*:*"   a:bind:for
bind pubm -|-  "% skip*:*"  a:bind:skip
bind ctcp -|- "ACTION"	    a:bind:act
bind pub  -|-  all          a:bind:botnick
bind notc -|-  *	    a:bind:notice

foreach cmdpfix $settings(cmdpfix) {
	bind pubm -|- "% ${cmdpfix}*" a:bind:cmdpfix
}

set settings(cmdpfix) [lindex [split $settings(cmdpfix)] 0]

############ EVENT BINDS #############################

bind evnt - connect-server  a:routine:preconnect
bind evnt - init-server     a:routine:connect
bind evnt - userfile-loaded a:routine:userfile

############ TIME BINDS ##############################

bind time - "* * * * *"     a:timed:01:minutes
bind time - "*0 * * * *"    a:timed:10:minutes
bind time - "00 * * * *"    a:timed:01:hours
bind time - "00 01 * * *"   a:timed:24:hours
bind time - "00 02 *2 * *"  a:timed:10:days
bind time - "00 03 03 * *"  a:timed:30:days

############ MODE BINDS ##############################

bind topc -|- * a:bind:topic

############ SIGN BINDS ##############################

bind nick -|- * a:bind:nick
bind sign -|- * a:bind:sign
bind part -|- * a:bind:parts
bind join -|- *	a:bind:joins

############ MIX BINDS ###############################

bind ctcr -|- ping pub:ping:SubRoutine

############ MSG UNBINDS #############################

unbind msg - ident   *msg:ident
unbind msg - addhost *msg:addhost
unbind msg - help    *msg:help
unbind msg - invite  *msg:invite
unbind msg - op      *msg:op
unbind msg - voice   *msg:voice
unbind msg - whois   *msg:whois
unbind msg - info    *msg:info
unbind msg - pass    *msg:pass

############ DCC UNBINDS #############################

unbind dcc   n|- die     *dcc:die
bind   dcc   N|- die     *dcc:die
unbind dcc   n|- +chan   *dcc:+chan
unbind dcc   n|- -chan   *dcc:-chan
unbind dcc   m|m adduser *dcc:adduser
unbind dcc   m|m deluser *dcc:deluser
unbind dcc   m|- rehash  *dcc:rehash
bind   dcc   N|- rehash  *dcc:rehash
unbind dcc   m|- restart *dcc:restart
bind   dcc   N|- restart *dcc:restart
unbind dcc  mt|m chattr  *dcc:chattr
bind   dcc   N|- chattr  *dcc:chattr
unbind dcc   n|n chanset *dcc:chanset
bind   dcc   N|- chanset *dcc:chanset

unbind dcc   n|- tcl	 *dcc:tcl
unbind dcc   n|- set	 *dcc:set
unbind dcc   n|- simul	 *dcc:simul

if {$settings(counterspy)} {

	unbind dcc  ot|o whois   *dcc:whois
	bind   dcc  vt|- whois   *dcc:whois
	unbind dcc  ot|o match   *dcc:match
	bind   dcc  vt|- match   *dcc:match
	unbind dcc   -|- bots    *dcc:bots
	bind   dcc   t|- bots    *dcc:bots
}

return binds