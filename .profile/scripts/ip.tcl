##########################################################################
#         Public IP Info v0.4 by Hawkee - lowraider1@gmail.com           
#----------------------------------------------------------------------- 
# This script uses www.ip2location.com to check info for an ip adresses  
# It works with and without an ip2location.com account	                 
#								 	 	   
# See the ip2location setting bellow 	                               
#									          
# Changes from version 0.3:					                 
#		-rewriten the code using namespaces                                           
#             -added future support for maxmind.com (will be released in new version)				          
#		-added suport for trigger command customization (ipinfo_config(command))
#		-added suport for customizing the output message                    
#									          
#								                 
# Works on all channels, and it can be used by all users. Requires TCL   
# HTTP PACK								          
#								                 
# USAGE: !ip <ip address>							   
# 		          
# Email me with suggestions and bug reports at lowraider1@gmail.com 	   
#									          
#					grtz HWK @ undernet	                 
#########################################################################


set ip_config(provider) 	             "ip2location"; 		;# LEAVE AS IT IS!!! Which ip info provider to use. Values: ip2location, maxmind
set ip_config(ip2location_email) 	      "steaua20082009@yahoo.com"	;# ip2location account email address - leave empty for no account
set ip_config(ip2location_password) 	"H46F7BM5"			;# ip2location account password

set ip_config(command)			"!ip"			       ;# the command for calling the lookup
set ip_config(cachefile) 		       "ip.cache"		       ;# the cache file
set ip_config(cacherefresh) 		"7"				;# the time (in days) to refresh the info for an IP

set ip_config(message) 			"IP information for \00302%ip%\003: \002Country:\002 \00304%country%\003, \002City:\002 \00304%city%\003, \002ISP\002: \00302%isp%\003, \002Domain:\002 \00302%domain%\003"

# You can use the following strings to build your output message
####
# %ip% - the looked up ip
# %country% - country name
# %city% - city name
# %isp% - the isp name
# %domain% - domain holder



### dont bother editing
### will work in a future version
set ip_config(maxmind_email) "my@mail.com"		;# maxmind account email address - leave empty for no account
set ip_config(maxmind_password) "mypassword"		;# maxmind account password

package require http
namespace eval ip {


	variable config 
	array set config [array get ::ip_config]

	variable ip 0
	variable results [list]
	variable cache
	variable uselogin 1 ;#variable to stop hammered invalid logins

	variable version "0.4"


	::http::config -useragent "Mozilla/5.0 ; Gecko"


	namespace eval maxmind {
        ## to be continued ;)
        proc lookup {} {}
 	 proc fetch_info {ip} { }
	 proc login {} {}
	}

	
	namespace eval ip2location {
	 variable parent [namespace parent]
	 variable cookies [list]

        proc lookup {} {
		variable parent
		set data [fetch_info [set ${parent}::ip]]

		set rows [regexp -all -line -inline -- {<td>(.*)</td>} $data]
		lappend ${parent}::results [unixtime]

		if {[llength $rows] > 2}  {
			set f 0
			foreach {match content} $rows {
				if {[expr { $f%2 }]} { lappend ${parent}::results [${parent}::strip-html $content]; }
				incr f
    			}

			set ${parent}::cache([set ${parent}::config(provider)],[set ${parent}::ip]) [set ${parent}::results];
		} else { 
			${parent}::scream "FAILED - Invalid page response (maybe you ran out of credits)"

		}
	 }

	 proc fetch_info {ip} {

		variable parent
		variable cookies

		set headers [${parent}::make_headers $cookies]
   		set request [::http::geturl "http://www.ip2location.com/$ip" -timeout 3000 -headers $headers]
		set data [::http::data $request]
		::http::cleanup $request

		return $data
	 }

	 proc login {} {

		variable parent 
		variable cookies

		set query [::http::formatQuery emailAddress [set ${parent}::config(ip2location_email)] password [set ${parent}::config(ip2location_password)] rememberMe on]
		set submit [::http::geturl "http://ip2location.com/login" -timeout 3000 -query $query]

		if {[regexp {<div class="error">(Invalid(.*))</div>} [::http::data $submit]]} {

			${parent}::scream "LOGIN FAILED - Invalid account credentials (email or password)"
			return 0;
		}

		upvar \#0 $submit state

		set cookies [${parent}::get_cookies $state(meta)]

		::http::cleanup $submit
		${parent}::scream "LOGGED IN"

		return 1;

	 }
	}


	proc cache_lookup {ip} {
		variable cache
		variable config
		variable results

		if {[info exists cache($config(provider),$ip)]} {
			if {[expr {(60*60*24)*$config(cacherefresh)}] < [expr {[unixtime] - [lindex $cache($config(provider),$ip) 0]}]} {
				scream "refreshing cache data for $ip"
				return 0;
			} else { set results $cache($config(provider),$ip); scream "info for $ip found in cache"}
		} else {return 0;}

		return 1;
	}

	proc cache_load {} {
		variable cache
		variable config

		if {[file exists $config(cachefile)]} {
			if {![catch {source $config(cachefile)} cacheerror]} {
				scream "cache file successfully loaded"
			} else {
				scream "cache file failed to load -: $cacheerror"
				scream "trying to fix cache file: reset" ; 
				cache_save
			}
		} else {

			cache_save
			scream "cache file written - first time use"
		}


	}

	proc cache_save {} {
		variable config
		variable cache


		set write [open $config(cachefile) w]
		puts $write	[list array set cache [array get cache]]
		close $write

	}

	# creates a list of cookies from metadata
	proc get_cookies {headers} {

		set c [list]
 		foreach {name value} $headers {
			if {$name eq "Set-Cookie"} {lappend c [lindex [split $value {;}] 0];}
 		}

		return $c
	}

	# creates the cookie headers for http requests
	#
	proc make_headers {clist} {

		return [list Cookie [join $clist {; }]]
	}


	proc make_msg {} {
		variable ip
		variable results
		variable config

		set location [split [lindex $results 1] ,]
		set country [string trim [lindex $location 0]]
		set city [string trim [join [lrange $location 1 end] ","]]

		set output [string map [list %ip% $ip %country% $country %city% $city %isp% [lindex $results 3] %domain% [lindex $results 5]] $config(message)]

		return $output;

	}

	proc init {} {

		variable ip
		variable config
		variable uselogin
		variable results

		set results [list]

		if {![login_status] && ([string length $config($config(provider)_email)] > 1) && $uselogin} {
			set uselogin [${config(provider)}::login]
		}
		if {![cache_lookup $ip]} {
			${config(provider)}::lookup;
			cache_save;
		}

	}


	proc get_results {} {

		variable results
		return [array get results]

	}

	# return the login status of the current provider
	# returns: 	0 - not logged in
	#		1 - logged in
	proc login_status {} {
		variable config

		if {[llength [set ${config(provider)}::cookies]] < 2}  { return 0; }
		return 1;
	}

	proc public_call {nick uhost hand chan args} {
		variable ip
		variable config
		variable results

		set input [string trimright [lindex $args 0] "."]

		if {![regexp {^(?:(?:[01]?\d?\d|2[0-4]\d|25[0-5])(\.|$)){4}$} $input]} {
			puthelp "privmsg $chan :$nick NO/Invalid IP pattern. USAGE: $config(command) 193.193.193.193"
			scream "$chan $nick - INVALID IP"
			return 1;
		}

		set ip $input
		init

		if {![llength $results]} {
			puthelp "privmsg $chan :$nick No information found for IP: \00302$ip\003 please redefine your IP"
			scream "$chan $nick - No results - SOMETHING MAY WENT WRONG"
			return 1
		}

		puthelp "privmsg $chan :$nick [make_msg]"
		scream "request: $nick on $chan"
	}

	# http://wiki.tcl.tk/6779
	proc strip-html-ignore {text {ignore {}}} {
          set c 0
          foreach i $ignore {if {[regexp $i $text]} {return $text}}
          return ""
	}

	proc strip-html {html {ignore {}}} {
          regsub -all -- {<[^>]*>} $html "\[strip-html-ignore \[list &\] [list $ignore]\]" html
          set html [subst $html]
          return $html
	}


	proc scream {msg} {putlog "IP INFO: $msg"}

	# init loads and binds
	cache_load
	bind pub -|- $config(command) ::ip::public_call
}


putlog "Public IP Info $::ip::version by HAWKEE Successfuly loaded"
