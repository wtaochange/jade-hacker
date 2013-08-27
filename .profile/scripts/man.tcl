bind pub - !v pub_man
bind pub - !v pub_man
proc pub_man {nick uhots hand chan mode} {
if {[isvoice $nick $chan]} { return }
putserv "MODE $chan +v $nick"
putserv "NOTICE $nick $chan :Meritzi si un joint \00313$nick\003 :))))))))"
	}