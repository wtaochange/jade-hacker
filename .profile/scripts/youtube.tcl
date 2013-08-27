### YouTube Searching script. v0.1
### Made by Mookie		
### Contact me at Efnet for more information or suggestions
### V0.3 Fixed + added spam protection

package require http

### Settings ###

set youtube(timeout) "600000"		;# Youtube geturl timeout. (better leave this default)
set youtube(results) "5"		;# Results to display
set youtube(trigger) "!youtube"		;# Search trigger
set youtube(spam) "10"			;# Spam protection in seconds

#########################################################
## Don't edit below unless you know what you're doing. ##
#########################################################


bind pub - $::youtube(trigger) youtube

proc youtube {nick uhost hand chan arg} {
	if {[info exists ::checks($nick)] && ([clock seconds] - $::checks($nick)) < $::youtube(spam)} { sendmsg $chan "Fk off spammer.."; return }
	set ::checks($nick) [clock seconds]
	if {$arg == ""} { putmsg $nick "Please use: $::youtube(trigger) KEYWORD"; return }
	set form [http::formatQuery search_query $arg search search]
	set tok [http::geturl http://www.youtube.com/results?search_type=&$form -timeout $::youtube(timeout)]
	set data [http::data $tok]
	http::cleanup $tok
	set a "0"
	while {[regexp -- {<a id="video-short-title.*?" href="(.*?)"  title="(.*?)" rel="nofollow">(.*)$} $data -> number title data]} {
		if {$a == $::youtube(results)} { break }
		sendmsg $chan "\[Title: $title Link:http://youtube.com$number\]"
		incr a
	}
	if {![info exists title]} { sendmsg $chan "\002Error:\002 Nothing found for '$arg'" }
}
proc "sendmsg" { target message } {
	sputraw "PRIVMSG [string tolower $target] :$message"
}
proc "sputraw" { text } {
	set text [string trim $text]
	putdccraw 0 [string length $text\n] $text\n
}
