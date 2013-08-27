###############################
# ThanksFor v1.0.1
# made by Alien
###
# This simple script will make your bot
# automaticly say thanks when it get's voiced
# or opped. It ain't much but it's useful if
# you want your bot to act like real user.
###
# You can edit code how ever you want
# just leave me a little bit of credits.
###############################
### OK, so let's start


# here are some bindings
bind mode - * thanksfor:mode

# now the core :) procedure
# you can change colours or text, just edit
# "Thanks" part

proc thanksfor:mode { nick host hand chan mode target } {
global botnick
if {$target == $botnick} {
   if {$mode == "+v"} { 
	   puthelp "PRIVMSG $chan :4Thanks 4for 2VOICE \[4 $nick \]"
      }
   if {$mode == "+o"} { 
	   puthelp "PRIVMSG $chan :4Thanks 4for 2OP \[4 $nick \]"
      }
   }
}
# ok that should do it
# now just a little adv...

putlog "ALI: Loaded ThansFor1.0.1 made by Alien"