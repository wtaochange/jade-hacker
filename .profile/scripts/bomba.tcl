###############################################################################
#  
#  Name:                                        Timebomb
#  Author:                                      Jotham Read
#  e-mail:                                      jotham.read@gmail.com
#
###############################################################################  
#
#  Translated to Romanian language:             [JoNi]
#  IRC:                                         [JoNi] #szilagysag @ Undernet
#  Eggdrop Version:     1.6.x
#  Description:                  GAME SCRIPT
#
#  This is a small TCL script for Eggdrop.  Timebomb is a game where one person
#  asks the Eggdrop bot to plant a timebomb in another users pants.  The target
#  user then needs to diffuse the bomb by cutting the correct wire, or be
#  kicked from the channel.
#
#  To start the game a user must type:
#    !bomba <nickname>
#  This will cause the target user to have a timebomb "stuffed in their pants"
#  once this occurs the user will have a number of seconds to diffuse the bomb.
#  Diffusing the bomb is done by typing:
#    !taie <color>
#  The wire colors you can choose from are displayed when the bomb is planted.
#  This script will not allow bots (Users who are +b), or the bot running the
#  script, to be timebombed.
#
#  I know it sounds very silly but it is a rather fun game.
#
################################################################################

bind  pub   -   !bomba  doTimebomb
bind  pub   -   !taie   doCutWire

###############################################################################
# Configuration
#

set gTimebombMinimumDuration 20
set gTimebombMaximumDuration 60
set gWireChoices "rosu portocaliu galben verde albastru indigo marodeschis negru alb gri maro roz albastrudeschis verdedeschis galbendeschis "
set gMaxWireCount 3

###############################################################################
# Internal Globals
#

set gTheScriptVersion "0.4"
set gTimebombActive 0
set gTimerId 0
set gTimebombTarget ""
set gTimebombChannel ""
set gCorrectWire ""
set gNumberNames "zero un doi trei patru cinci sase sapte opt noua zece unspe doispe"

###############################################################################
setudef flag timebomb

proc note {msg} {
  putlog "% $msg"
}

proc IRCKick {theNick theChannel theReason} {
  note "Kicking $theNick in $theChannel (Reason: $theReason)"
  putserv "KICK $theChannel $theNick :$theReason"
}

proc IRCPrivMSG {theTarget messageString} {
  putserv "PRIVMSG $theTarget :$messageString"
}

proc IRCAction {theTarget messageString} {
  putserv "PRIVMSG $theTarget :\001ACTION $messageString\001"
}

proc MakeEnglishList {theList} {
  set theListLength [llength $theList]
  set returnString [lindex $theList 0]
  for {set x 1} {$x < $theListLength} {incr x} {
    if { $x == [expr $theListLength - 1] } {
      set returnString "$returnString si [lindex $theList $x]"
    } else {
      set returnString "$returnString, [lindex $theList $x]"
    }
  }
  return $returnString
}

proc SelectWires {wireCount} {
  global gWireChoices
  set totalWireCount [llength $gWireChoices]
  set selectedWires ""
  for {set x 0} {$x < $wireCount} {incr x} {
    set currentWire [lindex $gWireChoices [expr int( rand() * $totalWireCount )]]
    if { [lsearch $selectedWires $currentWire] == -1 } {
      lappend selectedWires $currentWire
    } else {
      set x [expr $x - 1]
    }
  }
  return $selectedWires
}

proc DetonateTimebomb {destroyTimer kickMessage} {
  global gTimebombTarget gTimerId gTimebombChannel gTimebombActive
  if { $destroyTimer } {
    killutimer $gTimerId
  }
  set gTimerId 0
  set gTimebombActive 0
  IRCKick $gTimebombTarget $gTimebombChannel $kickMessage
}

proc DiffuseTimebomb {wireCut} {
  global gTimerId gTimebombActive gTimebombTarget gTimebombChannel
  killutimer $gTimerId
  set gTimerId 0
  set gTimebombActive 0
  IRCPrivMSG $gTimebombChannel "$gTimebombTarget a taiat cablu $wireCut .  Cu asta a dezactivat bomba!"
}

proc StartTimeBomb {theStarter theNick theChannel} {
  global gTimebombActive gTimebombTarget gTimerId gTimebombChannel gNumberNames gCorrectWire
  global gMaxWireCount gTimebombMinimumDuration gTimebombMaximumDuration
  if { [channel get $theChannel timebomb] } {
  if { $gTimebombActive == 1 } {
    note "Bomba nu s-a pornit $theStarter -na(e)k(Motiv: bomba deja este activat)"
    if { $theChannel != $gTimebombChannel } {
      IRCPrivMSG $theChannel "Nu am nici  o bomba ce, sa pot imparti cu tine. :-("
    } else {
      IRCAction $theChannel "arata pe umflatura care se afla in pantaloni lui $gTimebombTarget !"
    }
  } else {
    set timerDuration [expr $gTimebombMinimumDuration + [expr int(rand() * ($gTimebombMaximumDuration - $gTimebombMinimumDuration))]]
    set gTimebombTarget $theNick
    set gTimebombChannel $theChannel
    set numberOfWires [expr 1 + int(rand() * ( $gMaxWireCount - 0 ))]
    set listOfWires [SelectWires $numberOfWires]
    set gCorrectWire [lindex $listOfWires [expr int( rand() * $numberOfWires )]]
    set wireListAsEnglish [MakeEnglishList $listOfWires]
    set wireCountAsEnglish [lindex $gNumberNames $numberOfWires]
    IRCAction $theChannel "baga bomba in pantaloni lui $gTimebombTarget . Pe monitor se vede: \[\002$timerDuration\002\] secunde."
    if { $numberOfWires == 1 } {
      IRCPrivMSG $theChannel "Dezactiveaza bomba, taiand cablul corect. Exista $wireCountAsEnglish cablu(ri). $wireListAsEnglish."
    } else {
      IRCPrivMSG $theChannel "Dezactiveaza bomba, taiand cablul corect. Exista $wireCountAsEnglish cablu(ri). $wireListAsEnglish."
    }
    note "Bomba a fost pornit de catre $theStarter (Bomba, care a fost predat la $theNick se va exploda peste $timerDuration secunde)"
    set gTimebombActive 1
    set gTimerId [utimer $timerDuration "DetonateTimebomb 0 {\002*BUMM*\002}"]
  }
}
}
###############################################################################
# Eggdrop command binds
#

proc doCutWire {nick uhost hand chan arg} {
  global gTimebombActive gCorrectWire gTimebombTarget
  if { $gTimebombActive == 1 } {
    if { [string tolower $nick] == [string tolower $gTimebombTarget] } {
      if { [llength $arg] == 1 } {
        if { [string tolower $arg] == [string tolower $gCorrectWire] } {
          DiffuseTimebomb $gCorrectWire
        } else {
          DetonateTimebomb 1 "\002Sper ca ai asigurare...*BUMM*\002"
        }
      }
    }
  }
}

proc doTimebomb {nick uhost hand chan arg} {
  global botnick
  set theNick $nick
  if { [llength $arg] == 1 } {
    set theNick [lindex [split $arg] 0]
  }
  if { [string tolower $theNick] == [string tolower $botnick] } {
    set theNick $nick
    IRCKick $theNick $chan "Asta nu o sa-ti permit!"
    return
  }
  if { [validuser $theNick] == 1 } {
    if { [matchattr $theNick "+b"] == 1 } {
      set theNick $nick
      IRCKick $theNick $chan "Hmm...iesti cam tare neobraznic!"
      return
    }
  }
  StartTimeBomb $nick $theNick $chan
}

###############################################################################

putlog "Script loaded: Time Bomb - Translated to Romanian language by JoNi"