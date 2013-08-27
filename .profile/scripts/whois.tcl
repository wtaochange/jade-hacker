#########################################################################
#  Public IP Information Checker by Scorpyonul - cosmindany@yahoo.com   #
#-----------------------------------------------------------------------#
# This script uses www.ip2location.com to check for info on ip adresses #
# i'm not quite sure if the login method i made work 100 %, but it 	#
# seemd to work for me. I have spotted a bug by now, i will review it 	#
# in a future version.							#
#	You can use it in 2 modes: THE FREE ONE or THE Account one	#
#									#
# The free one works for 20 IP lookups per day, because this is the 	#
# maximum number of lookups, ip2location.com offers for unregistered 	#
# users - per ip -. Set ip2loc(account) (default) to use this.		#
#									#
# The Account one works for 200 lookups per day if you have a 		#
# ip2location.com account. The login method for this mode is not 	#
# guaranteed to work. But you can try. You must set ip2loc(account) to 	#
# 1 and you must set ip2loc(mail) & ip2loc(pass) with your ip2location  #
# account details.							#
# Thats all about the important info.					#
#									#
# Works on all channels, and it can be used by all users. Requires TCL	#
# HTTP PACK								#
#									#
# USAGE: !ip <IP>							#
# 					HAVE PHUN			#
#		Email me with suggestions and bug reports		#
#									#
#						grtz HWK @ undernet	#
#########################################################################


bind pub -|- !ip ipinfo

set ver "0.1"

set ip2loc(account) "0"
set ip2loc(mail) "your ip2location.com account email adress"
set ip2loc(pass) "your ip2location.com account password"

package require http

#DO NOT EDIT BELOW FUCKER!#

proc ipinfo {nick uhost hand chan args} {
global ip2loc

set ip [lindex $args 0]

	::http::config -useragent "Mozilla/5.0 ; Gecko"

if {![info exists authed] && $ip2loc(account) == "1"} {
set auth [::http::formatQuery txtEmailAddress $ip2loc(mail) txtPassword $ip2loc(pass) chkRememberMe on]
::http::geturl "http://www.ip2location.com/login.aspx" -timeout 2000 -query $auth -type mime-type
puthelp "privmsg $chan :Authentificating to website"
set authed "1"
putlog "IP INFO - Logging in to website"
} 
if {![string match -nocase *.*.*.* $ip]} {puthelp "privmsg $chan :$nick NO/Invalid IP pattern. USAGE: !ipinfo 193.193.193.193" ; putlog "IP INFO $chan $nick - INVALID IP PATTERN"; return 0}


	set que [::http::formatQuery ipaddresses $ip]
   	set http_req [::http::geturl "http://www.ip2location.com/demo.aspx" -timeout 2000 -query $que]



	set data [::http::data $http_req]
	::http::cleanup $http_req

	regexp {<span id="dgLookup__ctl2_lblICountry">([^<]+)</span></TD>} $data x country
	if {![info exists country] || [string equal $country -]} {puthelp "privmsg $chan :$nick No information found for IP: \00302$ip\003 please redefine your IP"; putlog "IP INFO $chan $nick - No results" ; return 0}
	regexp {<span id="dgLookup__ctl2_lblICity">([^<]+)</span></TD>} $data x city
	regexp {<span id="dgLookup__ctl2_lblIISP">([^<]+)</span></TD>} $data x isp
	regexp {<span id="dgLookup__ctl2_lblIDomain">([^<]+)</span></TD>} $data x domain

	puthelp "privmsg $chan :$nick IP information for \00302$ip\003: \002Country:\002 \00304$country\003, \002City:\002 \00304$city\003, \002ISP\002: \00302$isp\003, \002Domain:\002 \00302$domain\003"
	putlog "IP INFO $chan $nick"

}

putlog "Ip Information Script $ver by Scorpyonul Successfuly loaded"