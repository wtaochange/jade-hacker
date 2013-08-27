#######################################################################
#
# StrictOp TCL
#
#Lasa numai pe cei cu access la eggdrop sa aibe OP
#
#Pentru activare/dezactivare !strictop on/off
#
#                                             BLaCkShaDoW ProductionS
#######################################################################



#Aici setezi mesaju care il va da prin notice in caz ca useru nu are 
#access la eggdrop

set strict(msg) "Nu ai access la eggdrop, deci nu poti avea OP!"

#######################################################################

bind mode -|- *+o* strictops
bind pub nm|MNnN !strictop pub:strictop
setudef flag strictop

proc strictops {nick host hand chan args} {
global strict
set oonick [lindex [split $args] 1]
set handle [nick2hand $oonick]
if {[channel get $chan strictop]} {
if {![matchattr $handle onm|onmMNASO $chan]} {
pushmode $chan -ooooo $oonick
puthelp "NOTICE $oonick :$strict(msg)"
}
}
}

proc pub:strictop {nick host hand chan arg} {
set what [lindex [split $arg] 0]
if {[string match -nocase $what "on"]} {
channel set $chan +strictop
puthelp "NOTICE $nick :Am activat strictop"
return 0
}
if {[string match -nocase $what "off"]} {
channel set $chan -strictop
puthelp "NOTICE $nick :AM dezactivat strictop"
return 0
}
}

putlog "StrictOp tcl by BLaCkShaDoW Loaded"
