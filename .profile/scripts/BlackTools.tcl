###########################################################################
#                      ® Celebru ProductionS ®                        #
#                                                                         # 
#                               Presents                                  # 
                                                                     
####   #        ####    #####   #   #  #####  #####    ####   #      #####                  
#   #  #       #    #   #       #  #     #   #     #  #    #  #      # 
#   #  #       #    #   #       # #      #   #     #  #    #  #      #
## #   #       ######   #       ##       #   #     #  #    #  #      #####
#   #  #       #    #   #       # #      #   #     #  #    #  #          #
#   #  #       #    #   #       #  #     #   #     #  #    #  #          #
####   #####   #    #   #####   #   #    #    #####    ####   #####  #####
                  
#                                                                         # 
#                                                                         #
#                          #####   #####                                  #
#                              #       #                                  #         
#                              #       #                                  #
#                          ####    ####                                   #
#                          #       #                                      #
#                          #       #                                      #       
#                          ##### # #####                                  # 
#                                                                         #  
#                                                                         #
#                   THE    NEXT    GENERATION    TCL                      #
#                                                                         #
#            - #RootHeko @ UNDERNET - http://ilegale.com/ -                #  
###########################################################################
#Script ce contine numeroase protectii & comenzi & module pentru a va     #
#face viata mai usoara in ceea ce priveste eggdropii.                     #
###########################################################################
#                                                                         #
#       Multumesc din suflet pentru tot ajutorul acordat, fara de care    #
# acest script nu ar fi ajuns unde este acum.                             #
#                                                                         #  
#                      Celebru @ #RootHelp Admin                       #
#                                                                         #
#       Desigur multumesc si tuturor userilor care s-au implicat cu idei, #
#pareri ce au dus la perfectionarea acestui script.                       #                                                                                                                                                                                    
#                                                                         #
#      Celebru @ #RootHelp                       HangMan @ #RootHelp      #                    
#                                                                         #                                
#      Cacique @ #RootHelp                       bandyt @ #RpptHelp       #
#                                                                         #
###########################################################################
#               Aici setati cu ce sa inceapa comenzile.               
# Puteti pune de ex: "!" si veti folosii comenzile cu ! ; !h          
# Daca vreti puteti lasa "" si veti folosii comenzile fara caracter de
# inceput.
# NEW ! Acum puteti specifica cate caractere vreti voi :)
#
set black(cmdchar) ". - ! ` |"                           
#
###########################################################################

###########################################################################
#
#Daca arhiva dumneavoastra de eggdrop are nick-ul(handle) de 9 setati
#aici 1 pentru ca script-ul sa poata scurta userele de 12 caractere pana
#la 9 caractere ca sa le puteti adauga in memorie.Daca nu setati 0.
#
set black(maxhand) "0"
#
###########################################################################

#######################################################################
#                                                                     #
#             Comanda de aflare a comenzilor este de  - h -           #
#                                                                     #
#######################################################################

#---------------------------------------------------------------------#

#######################################################################
# Seteaza aici numele la chanserv
#
set black(chanserv) "X"
#
#######################################################################

#---------------------------------------------------------------------#

#######################################################################
#                                                                     #
#---------------------------------------------------------------------#
#                                                                     #
#######################################################################  
#               ---> Modul de logare la chanserv <---                 #

#Daca vrei ca eggdrop-ul sa se logheze la conectarea la server seteaza
#aici "1" daca nu seteaza "0"

set black(logonconect) "1" 
                                                                     
#Aici setezi user-ul la chanserv (daca ai setat mai sus 1)                               
set black(username) ""                      
                                                                     
#Aici setezi parola la user pentru chanserv                          
set black(password) ""


#Aici setezi hostu chanserv-ului pentru logare (daca ai setat mai sus 1)  
set black(host) "X@channels.undernet.org"

                                                                     
#Aici pune ce mod sa isi pun egg-ul la logare (daca nu vrei sa isi    
#puna nimic lasa ""                                                   
                                                                     
set black(xmod) "+wix"                                                    
                                                                     
#######################################################################
#                                                                     #
#---------------------------------------------------------------------#
#                                                                     #
#######################################################################

#---------------------------------------------------------------------#


########################################################################
#Seteaza aici 1 daca vrei ca la reason`ul fiecarui ban sa apara si cine 
#i-a aplicat banul. E valabil si pentru topic .Daca nu vrei sa apara seteaza 0.
#
set black(hand) "1"
#
#######################################################################

#---------------------------------------------------------------------#

########################################################################
#Seteaza aici 1 daca vrei ca la reason`ul fiecarui ban sa apara si 
#numarul banului ( numaratoarea ). Daca nu seteaza 0
#
set black(count) "1"
#
#######################################################################


################################# add #################################
#
#                   Comanda de adaugare al unui user
#         add <nivel> <user> (nivele : manager,admin,senior,op voice)
#
#######################################################################

#Aici setezi host-ul standard pe care botu il va adauga pentru fiecare
#user la comanda .add <niveL> <user>.Puteti configura pentru reteaua
#dumneavoastra

set black(hostadd) "*!*@%user%.users.undernet.org"



#######################################################################
#
#
#                           Protectii
#
#
#
#######################################################################

#Daca vreti ca cei cu op sa fie exceptati de la toate protectiile setati
#aici "1" daca nu setati "0"

set black(vprotect) "1"


#Daca vreti ca cei cu voice sa fie exceptati de la toate protectiile setati
#aici "1" daca nu setati "0"

set black(oprotect) "1"

#######################################################################
#
#                         Protectia Antipub
#
#
#
#######################################################################


#Aici setezi motiv-ul banului la reclama

set black(antipubreason) "14Scuze dar sunt reguli pe %chan% in privinta RECLAMEI !"

#Aici setezi durata banului de reclama in minute (in lista botului)

set black(antipubbantime) "10"

#Aici setezi cuvintele la care botul sa baneze (la reclama)

set black(antipubword) {
"*#*"
 "*www.*"
 "http://*"
 "*.ro"
 "*.com"
 "*/server*"
}

#Aici pui ce mod vrei ca bot-ul sa puna pe canal in caz de reclama

set black(antipubmode) "m"

#Aici pui cate secunde sa tina modul pe canal :P

set black(antipubsecunde) "5"

#######################################################################
#
#                         Protectia AntiNotice
#
#
#
#######################################################################

#Aici setezi motiv-ul banului la NOTICE

set black(antinoticereason) "14Scuze dar sunt reguli pe %chan% in privinta NOTICE-ULUI !"

#Aici setezi durata banului in minute (in lista botului)

set black(antinoticebantime) "10"

#Aici pui ce mod vrei ca bot-ul sa puna pe canal in caz de NOTICE

set black(antinoticemode) "mr"

#Aici pui cate secunde sa tina modul pe canal :P

set black(antinoticesecunde) "7"

#######################################################################
#
#                         Protectia AntiCTCP
#
#
#
#######################################################################

#Aici setezi motiv-ul banului la CTCP

set black(antictcpreason) "14Scuze dar sunt reguli pe %chan% in privinta CTCP-ULUI !"

#Aici setezi durata banului in minute (in lista botului)

set black(antictcpbantime) "10"

#Aici pui ce mod vrei ca bot-ul sa puna pe canal in caz de CTCP

set black(antictcpmode) "mr"

#Aici pui cate secunde sa tina modul pe canal :P

set black(antictcpsecunde) "8"

#######################################################################
#
#                        Protectia AntiBadWord
#
#
#
#######################################################################

#Aici setezi motiv-ul banului la BadWord

set black(antibadwordreason) "14Scuze dar sunt reguli pe %chan% in privinta LIMBAJULUI !"

#Aici setezi durata banului in minute (in lista botului)

set black(antibadwordbantime) "10"

#Aici setezi cuvintele la care botul sa baneze (la badword)

set black(antibadword) {
"*pula*"
 "*pizda*"
 "*muie*"
 "*sugi"
 "mwie"
 "*pwla*"
 "belesti"
 "sloboz"
 "*muisti*"
 "*fut*"
 "*fwt*"
 "tarfa"


}

#######################################################################
#
#                        Protectia AntiLongText
#
#
#
#######################################################################

#Aici scrii motivul la kick pt text lung

set black(longmsg) "14Scuze dar sunt reguli pe %chan% in privinta textului lung !"

#Aici setezi cate caractere sunt acceptate intr-un mesaj

set black(longchar) "200"

#Aici setezi durata de ban in memoria botului (minute)

set black(longbantime) "10"

#Aici setezi ce mod sa puna pe canal

set black(longmode) "mr"

#Aici setezi cat sa tina modul pe canal (secunde)

set black(longtimemode) "10"

#######################################################################
#
#                       Protectia AntiBAdQuitPart
#
#
#
#######################################################################

#Aici setezi motivul de ban pentru part/quit cu caractere interzise

set black(badquitpartreason) "14Scuze dar sunt reguli pe %chan% in privinta utilizarii caracterelor interzise la part/quit !"

#Aici setezi durata de ban in memoria botului (minute)

set black(badquitparttime) "10"

#Aici setezi cuvintele la care sa baneze (la part sau quit)

set black(badquitpartwords) {
"*www.*"
"*http://*"
"*#*"

}

#Aici setezi "1" daca vrei ca botul sa baneze si pentru part/quit cu 
#culori , bold , underline daca nu seteaza "0"

set black(badquitpartcolour) "1"

#######################################################################
#
#                       Protectia AntiJoinPart
#
#
#
#######################################################################

#Aici setezi motivul de ban pentru join/part

set black(joinpartmsg) "14Scuze dar sunt reguli pe %chan% in privinta Join/Part !"

#Aici setezi durata de ban in memoria botului (minute)

set black(joinpartbantime) "10"

#Aici setezi perioada (in secunde) cat "nick" a stat pe canal inainte sa dea part

set black(joinparttime) "2"

#Aici setezi ce mod sa puna pe canal

set black(joinpartmode) "mr"

#Aici setezi cat sa tina modul pe canal (secunde)

set black(joinparttimemode) "10"

#######################################################################
#
#                       Protectia AntiSpam
#
#
#
#######################################################################

#Aici setezi motivul de ban

set black(antispamreason) "14Scuze dar sunt reguli pe %chan% in privinta SPAM-ULUI !!"

#Aici setezi durata de ban in minute (memoria botului)

set black(spamban) "10"

#Aici setezi cuvintele la care botul sa baneze (la spam)

set black(spamword) {
"*#*"
 "*www.*"
 "*http://*"
}

#Aici setezi timpu in care sa faca cycle pe canal (max 60 minute)

set black(spamcycle) "30"

#Setezi aici 1 daca vrei ca botul sa dea mesaj pe prv la cei care intra 
#Pentru ai verifica de spam daca nu seteaza 0

set black(spamreq) "1"

#Daca ai setat mai sus 1 te rog seteaza mesaju de privat

set black(spamsg) "14Hai salut :))) cf??? esti spammer ??? %nick% ???"

#Aici setezi mesaju care il va lasa la cycle botu

set black(spammsgcycle) "left all channels"

#######################################################################
#
#                       Protectia AntiRepeat
#
#
#
#######################################################################

#Aici setezi motiv-ul kickului / banului

set black(antirepeatmsg) "14Scuze dar sunt reguli pe %chan% in privinta repetatului !"

#Aici setezi la cate repetari in cate secunde botu sa actioneze

set black(repeats) "3:5"

#Seteaza aici "1" daca vrei ca bot-ul sa primeasca la prima abatere kick
#iar la cea de-a doua abatere ban sau pune "0" si va primii direct ban la prima abatere.

set black(antirepeattype) "1"

#Aici setezi durata banului in minute (in lista botului)

set black(antirepeatbantime) "10"

#######################################################################
# 
#                          Protectia Anticolor
# 
#
#
#######################################################################

#Aici setezi motivul de kick pentru Anticulori

set black(anticolormsg) "14Scuze dar sunt reguli pe %chan% in privinta culorilor !"

#Seteaza aici "1" daca vrei ca bot-ul sa primeasca la prima abatere kick
#iar la cea de-a doua abatere ban sau pune "0" si va primii direct ban la prima abatere.

set black(anticolortype) "1"

#Aici setezi durata banului in minute (in lista botului)

set black(anticolorbantime) "10"

#######################################################################
# 
#                          Protectia AntiBold
# 
#
#
#######################################################################

#Aici setezi motivul de kick pentru Antibold

set black(antiboldmsg) "14Scuze dar sunt reguli pe %chan% in privinta folosirii caracterelor tip BOLD !"

#Seteaza aici "1" daca vrei ca bot-ul sa primeasca la prima abatere kick
#iar la cea de-a doua abatere ban sau pune "0" si va primii direct ban la prima abatere.

set black(antiboldtype) "1"

#Aici setezi durata banului in minute (in lista botului)

set black(antiboldbantime) "10"

#######################################################################
# 
#                          Protectia AntiUnderline
# 
#
#
#######################################################################

#Aici setezi motivul de kick pentru Antiunderline

set black(antiunderlinemsg) "14Scuze dar sunt reguli pe %chan% in privinta folosirii caracterelor tip UNDERLINE !"

#Seteaza aici "1" daca vrei ca bot-ul sa primeasca la prima abatere kick
#iar la cea de-a doua abatere ban sau pune "0" si va primii direct ban la prima abatere.

set black(antiunderlinetype) "1"

#Aici setezi durata banului in minute (in lista botului)

set black(antiunderlinebantime) "10"

#######################################################################
# 
#                          Protectia AntiCaps
# 
#
#
#######################################################################

#Aici setezi motiv-ul kickului / banului

set black(anticapsmsg) "14Scuze dar sunt reguli pe %chan% in privinta CAPS-LOCK-ului !"

#Seteaza aici "1" daca vrei ca bot-ul sa primeasca la prima abatere kick
#iar la cea de-a doua abatere ban sau pune "0" si va primii direct ban la prima abatere.

set black(anticapstype) "1"

#Seteaza aici la cate caractere de tip CAPS intr-un mesaj botul sa baneze.

set black(anticapscount) "40"

#Aici setezi durata banului in minute (in lista botului)

set black(anticapsbantime) "10"

#######################################################################
# 
#                          Protectia BadFullName
# 
#
#
#######################################################################

#Aici setezi motivul de ban

set black(badfreason) "14Scuze dar sunt reguli pe %chan% in privinta REALNAME-ULUI !"

#Aici setezi durata de ban la bot ( in minute )

set black(badfbantime) "60"

#Aici setezi cuvintele interzise in REALNAME

set black(badfwords) {
"*www.*"
"*#*"
"*http://*"

}

#######################################################################
# 
#                          Protectia BadNick
# 
#
#
#######################################################################

#Aici setezi motivul de ban

set black(badnickreason) "14Scuze dar sunt reguli pe %chan% in privinta NICK-ULUI !"

#Aici setezi durata de ban la bot ( in minute )

set black(badnickbantime) "10"

#Aici setezi cuvintele interzise in NICK

set black(badnickwords) {

"*pula*"
"*muie *"
"pwla*"
"pizda*"
"laba*"

}


#######################################################################
# 
#                          Protectia BadIdent
# 
#
#
#######################################################################

#Aici setezi motivul de ban

set black(badidentreason) "14Scuze dar sunt reguli pe %chan% in privinta IDENT-ULUI !"

#Aici setezi durata de ban la bot ( in minute )

set black(badidentbantime) "10"

#Aici setezi cuvintele interzise in NICK

set black(badidentwords) {

"*pula*"
"*muie *"
"pwla*"
"pizda*"
"laba*"

}


#######################################################################
# 
#                          Protectia AntiJoinFlood
# 
#
#######################################################################

#Aici setezi ce moduri sa puna in cazul unui join-flood.

set black(modes) "mir"


#Aici setezi in cat timp sa scoate modurile dupa canal ( secunde )

set black(nomodetime) "10"


#Daca vrei ca la un join-flood eggdropu sa dea un NOTICE la cei cu OP
#seteaza aici "1" daca nu seteaza "0"

set black(fjoinhow) "1"


#Daca ai setat mai sus "1" seteaza aici te rog mesajul care va fii trimis 
#prin notice

set black(jfloodmsg) "HAHAHA Fac Astia Flood Sunteti Kiori ???"


#######################################################################
# 
#                          Protectia AntiChanFlood

# 
#
#######################################################################

#Aici setezi motiv-ul kickului / banului

set black(antifloodchanmsg) "14Scuze dar sunt reguli pe %chan% in privinta flood-ului!"

#Seteaza aici "1" daca vrei ca bot-ul sa primeasca la prima abatere kick
#iar la cea de-a doua abatere ban sau pune "0" si va primii direct ban la prima abatere.

set black(antifloodchantype) "1"

#Aici setezi durata banului in minute (in lista botului)

set black(antifloodchanbantime) "10"

#######################################################################
# 
#                                Module
# 
#
#######################################################################



#######################################################################
# 
#                                XtoolS
#                               
#
#Aceste utilitati daca sunt activate, face ca bot-ul sa isi dea op , 
#unban , invite la X in caz ca are nevoie :)
#######################################################################


#######################################################################
# 
#                            Topic refresh
#
#
#
#######################################################################

# Aici setezi numarul de minute in care se improspateze topicul

set black(topic_time) "60"

#Aici setezi topicul care va fii temporar inaintea schimbarii prealabile

set black(topics) "Smecherim Topicul..."


########################################################################
#
#                                 Count
#
#
#                  count <on> / <off> / <display> / <reset>
#
#######################################################################

#Seteaza aici 1 daca vrei ca mesaju sa fie prin NOTICE sau 0 daca vrei ca mesajul sa fie prin PRIVMSG

set black(counthow) "1"

#Aici setezi mesajul pe care userii il vor primii

set black(countmsg) "Esti numaru %num% care intri pe %chan% credeam ca esti number one :)))"


#######################################################################
# 
#                               BadChan
#
#              badchan | <on> | <off> | add | del | | list |
#
#######################################################################

#Aici setezi motivul de ban in caz ca il gaseste pe user pe un canal interzis

set black(badchanreason) "Sari de aici ca esti pe canale interzise :)))"

#Aici setezi durata banului la bot (in minute)

set black(badcbantime) "360"

#Daca vrei ca user-ul sa primeasca un mesaj atunci cand este banat seteaza
#aici "1" daca nu seteaza "0"

set black(badcwhyreason) "1"

#Daca ai setat mai sus "1" seteaza aici mesajul

set black(badcmsg) "Am dat ban pe %chan% ca esti pe un canal interzis...Canalu este : %bchan%"

########################################################################
#
#                                 Anunt
#
#
#                  Anunt <on> | <off> | <add> | <list> | <del>
#
#######################################################################

#Aici setezi timpul in care sa dea un anunturile aleatorii (max 60 min)

set black(anunttime) "45"

#Seteaza aici 0 daca vrei ca anuntul sa fie facut prin PRIVMSG (mesaj)
#sau pune 1 daca vrei ca mesajul sa fie prin ACTION (/me)

set black(anunthow) "1"

########################################################################
#
#                             AutoBroadcast
#
#
#                  bt <on> | <off> | <add> | <list> | <del>
#
#######################################################################


#Aici setezi intervalul de afisare al mesajelor.

set black(bttime) "2"

#Daca vrei ca mesajele sa fie date prin PRIVMSG pe canal seteaza aici "0" .Dar daca
#vrei ca mesajele sa fie date prin /ame seteaza "1"

set black(bthow) "1"


#######################################################################
#
#
#                                 Limit
#
#                   limit <on> | <set> <number> | <off>
#
#######################################################################


#######################################################################
#
#
#                                 Topic                                 
#   
# topic <save> | <add> <topic> | <list> | <set> <number> | <del> <number>                  
#
#######################################################################


#######################################################################
# 
#                               CloneScan
#
#          Folositi si comanda de scanare manual : clonescan
#
#######################################################################

#Seteaza aici numarul maxim de clone pentru fiecare host

set black(maxclone) "2"

#seteaza aici "1" daca vrei ca eggdrop-ul in caz ca gaseste clone sa le 
#baneze, sau seteaza "0" iar eggdrop-ul va trimite un Notice la Opi cu detalii
#despre acele clone

set black(what) "1"

#Daca ai setat mai sus "1" seteaza aici motivul de ban

set black(reason) "Multe clone pe host-ul %host% . Pentru alte informatii contactati @."

#Daca ai setat mai sus "1" seteaza aici durata ban-ului (minute)

set black(clonebtime) "60"

#######################################################################
# 
#                               AntiBoTidle
#
#                    Nu lasa eggdrop-ul sa faca idle
#
#######################################################################

#Aici setati obiectul inexistent

set black(noobject) "blacky:P"

#Aici setezi idle-maxim

set black(noidlemax) "10"

#######################################################################
# 
#                           
#                                Seen
#
#                         seen <host> / <nick>
#
#######################################################################

#Aici setezi protectia anti-flood (cautari : secunde)

set black(seenflood) "4:5"

#Seteaza aici "1" daca vrei ca raspunsurile la seen sa fie date prin
#NOTICE sau "0" pentru ca raspunsurile sa fie date pe canal

set black(seenmet) "1"


########################################################################
#
#                                 Greet
#
#
#                  greet <on> | <off> | <add> | <list> | <del>
#
#######################################################################

#Seteaza aici 1 daca vrei ca greetu sa fie data prin NOTICE sau cu 0 daca 
#vrei sa fie dat prin Mesaj.

set black(howgreet) "1"


########################################################################
#
#                                 Leave
#
#
#                  leave <on> | <off> | <add> | <list> | <del>
#
#######################################################################

#Seteaza aici 1 daca vrei ca mesaju de leave sa fie data prin NOTICE sau cu 0 daca 
#vrei sa fie dat prin Mesaj.

set black(howleave) "1"


########################################################################
#
#                                 idle
#
#                
#  idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> (adaugi exceptii)              
#
#######################################################################

#Aici setezi intervalu in care verifica de idle (max 60)

set black(idleinterval) "60"

#Aici setezi idle maxim pentru operatori (@)

set black(idleopmax) "60"

#Aici setezi idle maxim pentru cei cu voice (+)

set black(idlevoicemax) "60"

#Seteaza aici "1" daca vrei ca dupa ce primesc deop la idle operatorii
#sa primeasca voice. Daca nu seteaza "0"

set black(idletmp) "1"

#Seteaza aici "1" daca vrei ca userul care primeste deop/devoice sa primeasca
#un mesaj. Daca nu seteaza "0"

set black(idlemsg) "1"

#Daca aici setat la black(idlemsg) 1 atunci seteaza aici mesajul pentru cei
#care primesc deop

set black(idleopmsg) "Mai latra si u pe %chan% ca ai facut idle"

#Daca aici setat la black(idlemsg) 1 atunci seteaza aici mesajul pentru cei
#care primesc devoice

set black(idlevoicemsg) "Mai latra si tu pe %chan% ca ai facut idle"


########################################################################
#
#                               AbuseReport
#
#                
#                   report <abused> | <deoped> | <users>
#
#######################################################################

#Aici setezi care sa fie limita de useri in care botu va arata canalul ca
#fiind unu cu probleme

set black(reportminusers) "10"

########################################################################
#
#                                Private
#
#                
#          private <on> | <off> | <add> <user> | <list> | del <nume>
#
#######################################################################

#Aici setezi motivul la ban

set black(privatereason) "Bine ai venit :)))"

#Aici setezi ban-time (in minute)

set black(privatebantime) "10"


#######################################################################
# 
#                           
#                               Comenzi
#
#
#######################################################################


#######################################################################
#
#                              dr <nick> / <host>
#
#######################################################################

#Aici setam motivul banului pentru dr

set black(dreason) "Ai prea multi purici si noi nu acceptam asha ceva sa nu luam si noi...pentru puricare spanzurate sa faci un bine tarii...te sustinem :)))"

#Aici setezi durata banului la bot (in minute)

set black(drtime) "10"

#######################################################################
#
#                              bot <nick> / <host>
#
#######################################################################

#Aici setam motivul banului

set black(botreason) "BOT Detectat ! Daca gresesc contacteaza-i pe cei cu OP...Daca nu gresesc suge-ma"

#Aici setezi durata banului la bot (in minute)

set black(bottime) "10"


########################################################################
#       
#                              b <nick> / <host>
#
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(dfreason) "Dute tare vino lent :)))"


#Aici setam durata banului la bot (in minute)

set black(btime) "20"

########################################################################
#
#                              b3 <nick> / <host>
#
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(df3reason) "Dute tare vino lent :)))"

#Aici setam durata banului la bot (in minute)

set black(b3time) "30"


########################################################################
#
#                              b6 <nick> / <host>
#
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(df6reason) "Dute tare vino lent :)))"

#Aici setam durata banului la bot (in minute)

set black(b6time) "60"


########################################################################
#
#                             b9 <nick> / <host>
#
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(df9reason) "Dute tare vino lent :)))"

#Aici setam durata banului la bot (in minute)

set black(b9time) "90"

########################################################################
#                             
#                             b12 <nick> / <host>
#
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(df12reason) "Dute tare vino lent :)))"

#Aici setam durata banului la bot (in ore)

set black(b12time) "12"


#######################################################################
#
#                   n <nick> (pentru nickuri interzise)
#
#######################################################################

#Aici setati motivul de ban la n

set black(nreason) "Nick-ul tau este considerat ca fiind unul cu sechele :))) te rog schimba-l si revino !"

#Aici setati durata de ban in memoria bot-ului (in minute)

set black(ntime) "10"

######################################################################
#
#                 id <nick> (pentru cei cu identuri interzise)
#
######################################################################

#Aici setati motivul de ban la .id

set black(idreason) "Identul tau este considerat ca fiind unul cu sechele :))) te rog schimba-l si revino !"

#Aici setati durata de ban in memoria bot-ului (in minute)

set black(idtime) "10"


######################################################################
#
#                   black <host> / <nick> <reason>
#
######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(dfblackreason) "Iesi in gura mati :)))"


#######################################################################
#
#              d <nr zile> <host> / <nick> <reason>
#                                  
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(dfdreason) "Hai sa vorbim pe status :)))))" 

########################################################################
#                            w <nick>
#
#######################################################################

#Aici setezi motiv-ul kick-ului 

set black(wreason) "Verifica comportamentu bea o gura de apa...ce dracu nu ne mai intelegem :)))"

#Daca vrei ca cei cu access sa fie exceptati, si sa nu poate fii 
#aplicata comanda w asupra lor seteaza aici 1 daca nu seteaza 0

set black(waccess) "1"

#Aici setezi mesajul pe care bot-ul o sa il dea la executarea comenzii

set black(wmessage) "Urmatoru e direct ban :)) sa nu zici ca is rau."

######################################################################
#
#                   spam <nick> / <host> (pentru spammeri)
#
######################################################################

#Aici setezi motiv-ul de ban

set black(spamreason) "Ai fost prins(a) facand spam !"


#Aici setezi durata banului in memoria bot-ului

set black(spamtime) "20"


######################################################################
#
#                          k <nick> <reason>
#
######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(dfkreason) "Kick your ass :X"

#Daca vrei ca cei cu access sa fie exceptati, si sa nu poate fii #aplicata comanda k asupra lor seteaza aici 1 daca nu seteaza 0

set black(kaccess) "1"



#######################################################################
#
#                    bw <nick> / <host> ( bad word)
#
#######################################################################

#Aici setam motivul banului pentru .dr

set black(bwreason) "Nu ai voie sa folosesti asemenea limbaj !"

#Aici setezi durata banului la bot (in minute)

set black(bwtime) "30"

#######################################################################
#
#              d <nr zile> <host> / <nick> <reason>
#                                  
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(dfdreason) "Go fuck yourself..." 

########################################################################
#
#              stick <nick> / <host> <timp zile> <motiv>
#
########################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(dfstickreason) "Ia un stick sa ma sugi de pula un pic :)))"

#######################################################################
#
#              gb <nick> / <host> <time> <reason> (ban global)
#                                  
#######################################################################

#Aici setezi reason-ul default la ban in caz ca nu se specifica unu.

set black(dfgbreason) "Mandrestete ca ai si ban global :))) !"

#######################################################################
#                             t <topic>                            
#
########################################################################

########################################################################
#                             status                            
#
########################################################################


########################################################################
#                       i <nick1> <nick2>                            
#
########################################################################

#Aici setezi mesajul pe care il vor primii cei invitati

set black(imessage) "Sari pe %chan% da %nick% o bere :x"

########################################################################
#                             addinfo <text>                           
#
########################################################################


########################################################################
#                             o <nick1> <nick2>..                           
#
########################################################################


########################################################################
#                             v <nick1> <nick2>..                           
#
########################################################################


########################################################################
#                           l <secunde> ( va pune un mod )                              
#
########################################################################

#Aici setezi ce mod sa puna

set black(lmode) "m"

########################################################################
#                           ul (scoate modurile de pe canal)                             
#
########################################################################

#Aici setezi modurile

set black(ulmodes) "mir"

########################################################################
#                          say <text>                            
#
########################################################################


########################################################################
#                          act <text>                            
#
########################################################################


########################################################################
#                          broadcast <text>                            
#
########################################################################


########################################################################
#                           check <nick>                         
#
########################################################################

#Aici setezi mesajul pe care il va primii <nick>

set black(checkmsg) "Jos culcat mort la pamant :))) hahaha te-am speriat ??? :))) inseamna ca ai droguri :)))"

########################################################################
#                            version                         
#
########################################################################


########################################################################
#                            cycle                         
#
########################################################################

#Aici setezi motivul pentru cycle

set black(cyclereason) "Ce tupeu ai :)))"

########################################################################
#                           silence on / off                       
#
########################################################################


########################################################################
#                             rehash                      
#
########################################################################


########################################################################
#                             restart                     
#
########################################################################


########################################################################
#                              save                     
#
########################################################################


########################################################################
#                             jump                     
#
########################################################################


########################################################################
#                          addchan <chan>                    
#
########################################################################


########################################################################
#                          delchan <chan>                    
#
########################################################################


########################################################################
#                          suspend <chan>                    
#
########################################################################


########################################################################
#                        unsuspend <chan>                    
#
########################################################################


########################################################################
#                        op <chan> <nick>         
#
########################################################################


########################################################################
#                        deop <chan> <nick>             
#
########################################################################


########################################################################
#                        voice <chan> <nick>     
#
########################################################################


########################################################################
#                       devoice <chan> <nick>  
#
########################################################################


########################################################################
#                         invite <chan>  
#
########################################################################


########################################################################
#                        mode +mode (ex .mode +m)
#
########################################################################


########################################################################
#                        msg <nick> <text>
#
########################################################################


########################################################################
#                          activ <user> 
#
########################################################################


########################################################################
#                            restart 
#
########################################################################


########################################################################
#                            rehash 
#
########################################################################


########################################################################
#                             save 
#
########################################################################


########################################################################
#                             die 
#
########################################################################


########################################################################
#                       nick <newnick> 
#
########################################################################


########################################################################
#                       addchan <chan> 
#
########################################################################


########################################################################
#                       delchan <chan> 
#
########################################################################


########################################################################
#                       suspend <chan> 
#
########################################################################

########################################################################
#                       unsuspend <chan> 
#
########################################################################


########################################################################
#                       op <chan> 
#
########################################################################


########################################################################
#                       deop <chan> 
#
########################################################################


########################################################################
#                       voice <chan> 
#
########################################################################


########################################################################
#                       devoice <chan> 
#
########################################################################


########################################################################
#                       invite <chan> 
#
########################################################################


########################################################################
#                        delacc <user> 
#
########################################################################


########################################################################
#                        del <user> 
#
########################################################################


########################################################################
#                        addhost <user> <host>
#
########################################################################


########################################################################
#                        delhost <user> <host>
#
########################################################################


########################################################################
#                        chuser <user> <newuser>
#
########################################################################


########################################################################
#                        userlist <level>
#
########################################################################


########################################################################
#                          info <user>
#
########################################################################


########################################################################
#                          s <user>
#
########################################################################


########################################################################
#                          us <user>
#
########################################################################


########################################################################
#                          time
#
########################################################################


########################################################################
#                          ping
#
########################################################################


########################################################################
#                      top <command>
#
########################################################################


########################################################################
#                      vers <nick>
#
########################################################################


########################################################################
#                      whois <nick>
#
########################################################################


########################################################################
#                  clear <banlist> | <userlist>
#
########################################################################


########################################################################
#                      addbot <name> <host>
#
########################################################################


########################################################################
#                      autovoice <on>/<off>
#
########################################################################


########################################################################
#                      autoop <on>/<off>
#
########################################################################


########################################################################
#                       addop <user>
#
########################################################################


########################################################################
#                       delop <user>
#
########################################################################


########################################################################
#                       addvoice <user>
#
########################################################################


########################################################################
#                       delvoice <user>
#
########################################################################


########################################################################
#                       cc <channel>
#
########################################################################


########################################################################
#                       addmyhost <host>
#
########################################################################

########################################################################
#                       delmyhost <host>
#
########################################################################

#Mesaje Tip Default

set black(nomodif) "Are grade mai multe decat tine :)))"
set black(noop) "Nu am op in cucu meu :)))"
set black(noban) "Shhh lasa-l ca are ACCESS ."
set black(suspend) "Esti suspendat, nu poti folosii aceasta comanda ."
set black(exceptflags) "nm|HAMOVSo"
set black(nomem) "N-am cacatu asta de USER ."
set black(noaccess) "N-are Acces da-l in pula noastra ."


setudef flag antipub
setudef flag antinotice
setudef flag antictcp
setudef flag antilongtext
setudef flag antibadword
setudef flag antijoinpart
setudef flag antispam
setudef flag antirepeat
setudef flag badquitpart
setudef flag anticolor
setudef flag antibold
setudef flag antiunderline
setudef flag anticaps
setudef flag badfullname
setudef flag badnick
setudef flag badident
setudef flag antijoinflood
setudef flag antichanflood
setudef flag xtools
setudef flag topicrefresh
setudef flag count
setudef flag antibadchan
setudef flag anunt
setudef flag limit
setudef flag refresh
setudef flag clonescan
setudef flag seen
setudef flag antidle
setudef flag antividle
setudef flag antididle
setudef flag autoop
setudef flag autovoice
setudef flag leave
setudef flag chanreport
setudef flag topwords
setudef flag xban
setudef flag protectop
setudef flag protectvoice
setudef flag dontop
setudef flag dontdeop
setudef flag private

setudef int countnumber
setudef int kickcount
setudef int xbantime
setudef int xbanlevel
setudef int blacklimit
setudef str backchan


#Motive / Bantime

#Protectii

setudef str antipub-reason
setudef int antipub-bantime
setudef str antinotice-reason
setudef int antinotice-bantime
setudef str antictcp-reason
setudef int antictcp-bantime
setudef str antibadword-reason
setudef int antibadword-bantime
setudef str antilongtext-reason
setudef int antilongtext-bantime
setudef str antibadquitpart-reason
setudef int antibadquitpart-bantime
setudef str antijoinpart-reason
setudef int antijoinpart-bantime
setudef str antispam-reason
setudef int antispam-bantime
setudef str antispam-message
setudef str antirepeat-reason
setudef int antirepeat-bantime
setudef str anticolor-reason
setudef int anticolor-bantime
setudef str antibold-reason
setudef int antibold-bantime
setudef str antiunderline-reason
setudef int antiunderline-bantime
setudef str anticaps-reason
setudef int anticaps-bantime
setudef str badfullname-reason
setudef int badfullname-bantime
setudef str badnick-reason
setudef int badnick-bantime
setudef str badident-reason
setudef int badident-bantime
setudef str antichanflood-reason
setudef int antichanflood-bantime
setudef str joinflood
setudef str chanflood
setudef int private-bantime
setudef str private-reason


#comenzi

setudef str dr-reason
setudef int dr-bantime
setudef str n-reason
setudef int n-bantime
setudef int b-bantime
setudef str id-reason
setudef int id-bantime
setudef str w-reason
setudef str spam-reason
setudef int spam-bantime
setudef str bw-reason
setudef int bw-bantime
setudef int bot-bantime
setudef str bot-reason

#module

setudef str badchan-reason
setudef int badchan-bantime
setudef str count-message


if {$black(logonconect) == "1"} {
bind evnt - init-server loginpublic
}

bind pubm - * topwordspublic
bind pubm - * antipub:protect
bind ctcp - ACTION antipub:protect:me
bind notc - * antinotice:protect
bind ctcp - * antictcp:protect

bind pubm - * antibadword:protect
bind ctcp - ACTION antibadword:protect:me
bind pubm - * antilongtext:protect
bind ctcp - ACTION antilongtext:protect:me
bind part - * antipubpart:protect
bind sign - * antipubsign:protect
bind part - * anticolorpart:protect
bind sign - * anticolorquit:protect
bind part - * antijoinpart:protect
bind join - * antispam:protect:msg
bind msgm - * antispam:protect
bind time - * antispam:protect:cycle
bind time - "30 * * * *" clonescanner
bind time - * limit:timer
bind pubm - * antirepeat:protect
bind pubm - * antifloodchan:protect
bind ctcp - version blackreply
bind ctcp - ACTION antirepeat:protect:me
bind ctcp - ACTION antifloodchan:protect:me
bind pubm - * anticolor:protect
bind ctcp - ACTION anticolor:protect:me
bind pubm - * antibold:protect
bind ctcp - ACTION antibold:protect:me
bind pubm - * antiunderline:protect
bind ctcp - ACTION antiunderline:protect:me
bind pubm - * anticaps:protect
bind ctcp - ACTION anticaps:protect:me
bind join - * badfullname:protect:join
bind join - * badnick:protect:join
bind join - * badident:protect:join
bind nick - * badnick:protect:change
bind mode - "*+b*" protectpublic
bind join - * joinflood:protect
bind mode - "*+b*" rebanpublic
bind need - * toolspublic
bind join - * countpublic:join
bind join - * badchanpublic:join
bind join - * limitpublic:join
bind part - * limitpublic:exit
bind kick - * limitpublic:kick
bind sign - * limitpublic:exit
bind splt - * limitpublic:exit
bind join - * seen:join
bind part - * seen:part
bind sign - * seen:sign
bind kick - * seen:kick
bind splt - * seen:split
bind nick - * seen:changenick
bind join - * greetpublic:join
bind part - * leavepublic:part
bind time - * idlewhoispublic
bind evnt - init-server setaway
bind join - * autovonjoin
bind join - * autoponjoin
bind join - * addopjoin
bind join - * addvoicejoin
bind join - * private:module
bind ctcr mn|MOSAV PING pingpublic
bind ctcr - VERSION ctcpvers
bind mode - *+o* dontoppublic
bind mode - *-o* dontdeoppublic



bind pubm nm|MmvVNnoOSA * comand:pubme
foreach black(char) $black(cmdchar) {
bind pub nm|MAS $black(char)clonescan scannerpublic
bind pub nm|MASO $black(char)r refreshpublic
bind pub nm|OASM $black(char)u upublic
bind pub nm|OASM $black(char)cb cbpublic
bind pub nm|M $black(char)count countpublic
bind pub nm|M $black(char)badchan badchanpublic
bind pub nm|M $black(char)anunt anuntpublic
bind pub nm|M $black(char)limit limitpublic
bind pub nm|M $black(char)topic topicpublic
bind pub nm|M $black(char)refresh refresh:start
bind pub nm|M $black(char)xtools xtools:start
bind pub -|- $black(char)seen seenpublic
bind pub nm|M $black(char)greet greetpublic
bind pub nm|M $black(char)leave leavepublic
bind pub nm|M $black(char)idle antidlepublic
bind pub nm|OSMA $black(char)dr drpublic
bind pub nm|OSMA $black(char)bot botpublic
bind pub nm|OSMA $black(char)b bpublic
bind pub nm|SMA $black(char)b3 b3public
bind pub nm|SMA $black(char)b6 b6public
bind pub nm|SMA $black(char)b9 b9public
bind pub nm|SMA $black(char)b12 b12public
bind pub nm|OSMA $black(char)n npublic
bind pub nm|OSMA $black(char)id idpublic
bind pub nm|SMA $black(char)black blackpublic
bind pub nm|SMA $black(char)bl blackpublic
bind pub nm|VOSMA $black(char)w wpublic
bind pub nm|OSMA $black(char)spam spampublic
bind pub nm|VOSMA $black(char)k kpublic
bind pub nm|OSMA $black(char)bw bwpublic
bind pub nm|OSMA $black(char)ub ubpublic
bind pub nm|VOSMA $black(char)sb sbpublic
bind pub nm|SMA $black(char)d dpublic
bind pub nm|SMA $black(char)stick stickpublic
bind pub nm|- $black(char)gb gbpublic
bind pub nm|VOSMA $black(char)t tpublic
bind pub nm|M $black(char)show showpublic
bind pub nm|- $black(char)status statuspublic
bind pub nm|- $black(char)chat chatpublic
bind pub nm|- $black(char)uptime uptimepublic
bind pub nm|VOSMA $black(char)i ipublic
bind pub nm|VOSMA $black(char)addinfo addinfopublic
bind pub nm|VOSMA $black(char)v vpublic
bind pub nm|VOSMA $black(char)o opublic
bind pub nm|VOSMA $black(char)l lpublic
bind pub nm|VOSMA $black(char)ul ulpublic
bind pub nm|SMA $black(char)say saypublic
bind pub nm|SMA $black(char)act actpublic
bind pub nm|- $black(char)broadcast broadcastpublic
bind pub nm|OSMA $black(char)check checkpublic
bind pub nm|VOSMA $black(char)version versionpublic
bind pub nm|OSMA $black(char)cycle cyclepublic
bind pub nm|- $black(char)away awaypublic
bind pub nm|M $black(char)private privatepublic
bind pub nm|OSMA $black(char)mode modepublic
bind pub nm|M $black(char)set setpublic
bind pub nm|- $black(char)report reportpublic
bind pub nm|- $black(char)silence silencepublic
bind pub nm|- $black(char)msg msgpublic
bind pub nm|MA $black(char)add publicadd
bind pub nm|MA $black(char)adduser adduserpublic
bind pub nm|MA $black(char)delacc delaccpublic
bind pub nm|- $black(char)del delpublic
bind pub nm|- $black(char)ignore ignorepublic
bind pub nm|- $black(char)botidle botidlepublic
bind pub nm|M $black(char)addhost addhostpublic
bind pub nm|M $black(char)delhost delhostpuplic
bind pub nm|M $black(char)chuser chuserpublic
bind pub nm|MASOV $black(char)userlist publicuserlist
bind pub nm|MASOV $black(char)info infopublic
bind pub nm|MA $black(char)s spublic
bind pub nm|MA $black(char)us uspublic
bind pub nm|MAOSV $black(char)ping pings
bind pub nm|MASOV $black(char)time timepublic
bind pub nm|MAOSV $black(char)vers verspublic
bind pub nm|MAOSV $black(char)whois whoispublic
bind pub nm|MAOS $black(char)gag gagpublic
bind pub nm|M $black(char)reset resetpublic
bind pub nm|M $black(char)clear clearpublic
bind pub nm|- $black(char)addbot addbotpublic
bind pub nm|M $black(char)autoop autooppublic
bind pub nm|M $black(char)autovoice autovoicepublic
bind pub nm|M $black(char)addop addoppublic
bind pub nm|M $black(char)addvoice addvoicepublic
bind pub nm|M $black(char)delop deloppublic
bind pub nm|M $black(char)delvoice delvoicepublic
bind pub nm|- $black(char)addmyhost addmyhostpublic
bind pub nm|- $black(char)delmyhost delmyhostpublic
bind pub nm|VOSAM $black(char)activ activpublic
bind pub nm|- $black(char)addmyhost addmyhostpublic
bind pub nm|- $black(char)delmyhost delmyhostpublic
bind pub nm|MASOV $black(char)h hpublic
bind pub nm|MASO $black(char)cc ccpublic
bind pub nm|MAOSV $black(char)top toppublic
bind pub nm|M $black(char)secure securepublic
bind pub nm|- $black(char)bt broadcastpublic:module
bind pub nm|- $black(char)login publiclogin:Cmd
}
bind msg nm|- addchan addchanpublic
bind msg nm|- delchan delchanpublic
bind msg nm|- suspend suspendpublic
bind msg nm|- unsuspend unsuspendpublic
bind msg nm|- nick nickpublic
bind msg nm|- rehash rehashme
bind msg nm|- restart restartme
bind msg nm|- save saveme
bind msg nm|- jump jumpme
bind msg nm|- die dieme
bind msg nm|OSAM op oppublic
bind msg nm|OSAM deop deoppublic
bind msg nm|OSAM voice voicepublic
bind msg nm|OSAM devoice devoicepublic
bind msg nm|OSAM invite invitepublic


##########################################################################
#
#
#         Dont try to modify if you dont know what are you doing !
#
#
#########################################################################


set black(name) "BlackToolS"
set black(author) "Celebru"
set black(vers) "2.4"
set black(site) "http://ilegale.com/"
set sdir "$username.status.txt"
set wdir "$username.away.txt"
set seendir "$username.Seen.db"



if {![info exists anuntpublic:show_running]} { 
timer $black(anunttime) anuntpublic:show
set anuntpublic:show_running 1
}

if {![info exists times_topic_running]} { 
timer $black(topic_time) times_topic
set times_topic_running 1
}


if {![file exists $seendir]} {
set file [open $seendir w]
close $file
}

if {![file exists $sdir]} {
set file [open $sdir w]
close $file
}

if {![file exists $wdir]} {
set file [open $wdir w]
close $file
}

if {![info exists antibotidle:module_running]} {
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
if {$data != ""} {
foreach line $data {
set type [lindex [split $line] 0]
set stats [lindex [split $line] 1]
if {($type == "antibotidle:module") && ($stats == "ON")} {
timer $black(noidlemax) antibotidle:module
}
}
}
set antibotidle:module_running 1
}

if {![info exists broadcastpublic:show_running]} {
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
if {$data != ""} {
foreach line $data {
set type [lindex [split $line] 0]
set stats [lindex [split $line] 1]
if {($type == "broadcastpublic:show") && ($stats == "ON")} {
timer $black(bttime) broadcastpublic:show
}
}
}
set broadcastpublic:show_running 1
}

proc blacktools:banner:1 {banmask botnick chan reason mode timer bantime} {
global black
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
if {$getxtime == "0"} { set getxtime "1" }
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "MODE $chan +$mode" -next ;utimer $timer [list putquick "MODE $chan -$mode"]
putquick "PRIVMSG $black(chanserv) :ban $chan $banmask $getxtime $getxlevel $reason"
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
puthelp "PRIVMSG $backchan :Am adaugat ban pe $chan pe hostul $banmask cu motivul :$reason .Acesta va expira in $bantime minute."
} else {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
putquick "MODE $chan +$mode" -next ;utimer $timer [list putquick "MODE $chan -$mode"]
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
puthelp "PRIVMSG $backchan :Am adaugat ban pe $chan pe hostul $banmask cu motivul :$reason .Acesta va expira in $bantime minute."
}
utimer 5 [list unset black($chan:anounce)]
}

proc blacktools:banner:2 {banmask botnick chan reason bantime} {
global black
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "PRIVMSG $black(chanserv) :ban $chan $banmask $getxtime $getxlevel $reason"
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}

if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}

if {[info exists black($chan:anounce)]} {
return 0
}

set black($chan:anounce) 1
puthelp "PRIVMSG $backchan :Am adaugat ban pe $chan pe hostul $banmask cu motivul :$reason .Acesta va expira in $bantime minute."

} else {

set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}

if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
puthelp "PRIVMSG $backchan :Am adaugat ban pe $chan pe hostul $banmask cu motivul :$reason .Acesta va expira in $bantime minute."
}
utimer 5 [list unset black($chan:anounce)]
}


proc blacktools:banner:3 {mask hand chan reason bantime type} {
global black botnick
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA $type $counts
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $reason"
utimer 1 [list newchanban $chan $mask $hand $reason $bantime]
putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
puthelp "PRIVMSG $backchan :Am adaugat ban pe $chan dat de $hand pe hostul $mask cu motivul :$reason .Acesta va expira in $bantime minute."
} else {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA $type $counts
if {$black(count) == "1"} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
newchanban $chan $mask $hand $reason $bantime
putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
puthelp "PRIVMSG $backchan :Am adaugat ban pe $chan pe hostul $mask cu motivul :$reason .Acesta va expira in $bantime minute."
}
}

################################ antipub ###########################


proc antipub:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

proc antipub:protect {nick host hand chan arg} {
global black botnick
set text [antipub:filter $arg]
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antipub-reason]
if {$getreason == ""} { set getreason $black(antipubreason) }
set getbantime [channel get $chan antipub-bantime]
if {$getbantime == "0"} { set getbantime $black(antipubbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 } 
if { [channel get $chan antipub] } {
foreach antipub [string tolower $black(antipubword)] {
if {[string match -nocase $antipub $arg]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antipubmode) $black(antipubsecunde) $getbantime
}
}
}
}

proc antipub:protect:me {nick host hand chan keyword arg} {
global black
antipub:protect $nick $host $hand $chan $arg
}


############################### antinotice #############################

proc antinotice:protect {nick host hand arg chan} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antinotice-reason]
if {$getreason == ""} { set getreason $black(antinoticereason) }
set getbantime [channel get $chan antinotice-bantime]
if {$getbantime == "0"} { set getbantime $black(antinoticebantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask *!*@[lindex [split $host @] 1]
set reason "$protectreason"
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {$chan == $botnick} { return 0 }
if { [channel get $chan antinotice] } {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antinoticemode) $black(antinoticesecunde) $getbantime
}
}

############################## antictcp ################################


proc antictcp:protect {nick host hand chan keyword arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antictcp-reason]
if {$getreason == ""} { set getreason $black(antictcpreason) }
set getbantime [channel get $chan antictcp-bantime]
if {$getbantime == "0"} { set getbantime $black(antictcpbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {[string equal -nocase "action" $keyword] || [string equal -nocase "chat" $keyword]} {return 0}
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if { [channel get $chan antictcp] } {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antictcpmode) $black(antictcpsecunde) $getbantime
}
}

############################## antibadword ################################

proc antibadword:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}


proc antibadword:protect {nick host hand chan arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibadword-reason]
if {$getreason == ""} { set getreason $black(antibadwordreason) }
set getbantime [channel get $chan antibadword-bantime]
if {$getbantime == "0"} { set getbantime $black(antibadwordbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set text [antibadword:filter $arg]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if { [channel get $chan antibadword] } {
foreach antibadword [string tolower $black(antibadword)] {
if {[string match -nocase $antibadword $text]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc antibadword:protect:me {nick host hand chan keyword arg} {
global black
antibadword:protect $nick $host $hand $chan $arg
}

############################## AntiLongText ################################

proc antilongtext:protect {nick uhost hand chan arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antilongtext-reason]
if {$getreason == ""} { set getreason $black(longmsg) }
set getbantime [channel get $chan antilongtext-bantime]
if {$getbantime == "0"} { set getbantime $black(longbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $uhost @] 1]"
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 } 
if {[string length $arg] >= $black(longchar)} {
if {[channel get $chan antilongtext]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(longmode) $black(longtimemode) $getbantime
}
}
}

proc antilongtext:protect:me {nick host hand chan keyword arg} {
global black
antilongtext:protect $nick $host $hand $chan $arg
}

############################ AntiBAdQuitPart ##############################

set black(badcolors) {

"*\x03*"
"*\037*"
"*\002*"

}

proc antipubpart:protect {nick host hand chan arg} {
global botnick black
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibadquitpart-reason]
if {$getreason == ""} { set getreason $black(badquitpartreason) }
set getbantime [channel get $chan antibadquitpart-bantime]
if {$getbantime == "0"} { set getbantime $black(badquitparttime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[channel get $chan badquitpart]} {
foreach word $black(badquitpartwords) {
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {[string match -nocase $word $arg]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc antipubsign:protect {nick host hand chan arg} {
antipubpart:protect $nick $host $hand $chan $arg
}


proc anticolorpart:protect {nick host hand chan arg} {
global botnick black
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibadquitpart-reason]
if {$getreason == ""} { set getreason $black(badquitpartreason) }
set getbantime [channel get $chan antibadquitpart-bantime]
if {$getbantime == "0"} { set getbantime $black(badquitparttime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[channel get $chan badquitpart]} {
foreach color $black(badcolors) {
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {($black(badquitpartcolour) == "1") && [string match -nocase $color $arg]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc anticolorquit:protect {nick host hand chan arg} {
anticolorpart:protect $nick $host $hand $chan $arg
}

########################### AntiJoinPart #############################

proc antijoinpart:protect {nick host hand chan arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antijoinpart-reason]
if {$getreason == ""} { set getreason $black(joinpartmsg) }
set getbantime [channel get $chan antijoinpart-bantime]
if {$getbantime == "0"} { set getbantime $black(joinpartbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {$chan == $botnick} { return 0 }
if {[channel get $chan antijoinpart]} {
if {[getchanjoin $nick $chan] >= [expr {[clock seconds]-$black(joinparttime)}]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(joinpartmode) $black(joinparttimemode) $getbantime
}
}
}

proc spam:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

############################# AntiSpam ##############################

proc antispam:protect {nick uhost hand arg} {
global botnick black
set text [spam:filter $arg]
set handle [nick2hand $nick]
foreach spammer [string tolower $black(spamword)] { 
if {[string match -nocase $spammer $arg]} {
foreach chans [channels] {
if {![validchan $chans]} { return 0 }
set getreason [channel get $chans antispam-reason]
if {$getreason == ""} { set getreason $black(antispamreason) }
set getbantime [channel get $chans antispam-bantime]
if {$getbantime == "0"} { set getbantime $black(spamban) }
if {[onchan $nick $chans]} {
if {[channel get $chans antispam]} {
if {![botisop $chans]} { return 0 }
if {[isbotnick $nick]} { return 0 }
set banmask *!*@[lindex [split $uhost @] 1]
set replace(%chan%) $chans
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chans]} { return 0 }
if {[isvoice $nick $chans] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chans] && ($black(oprotect) == "1")} { return 0 }
blacktools:banner:2 $banmask $botnick $chans $reason $getbantime
}
}
}
}
}
}
proc antispam:protect:msg {nick host hand chan } {
global black
if {![validchan $chan]} { return 0 }
if {[channel get $chan antispam]} {
if {[isbotnick $nick]} { return 0 }
if {$black(spamreq) == "1"} {
set getreason [channel get $chan antispam-message]
if {$getreason == ""} { set getreason $black(spamsg) }
set replace(%nick%) $nick
set replace(%chan%) $chan
set spamsg [string map [array get replace] $getreason]
puthelp "PRIVMSG $nick :$spamsg"
} 
}
}


proc antispam:protect:cycle {min hour day mon year} {
global black
if {([scan $min %d]+([scan $hour %d]*60)) % $black(spamcycle) == 0} { 
foreach chan [channels] {
if { [channel get $chan antispam]} {
putserv "PART $chan :$black(spammsgcycle)"; putserv "JOIN $chan"
}
}
}
}

############################## AntiRepeat ###############################

proc antirepeat:protect {nick host hand chan arg} {
global black botnick count
set arg [join [split $arg]]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antirepeat-reason]
if {$getreason == ""} { set getreason $black(antirepeatmsg) }
set getbantime [channel get $chan antirepeat-bantime]
if {$getbantime == "0"} { set getbantime $black(antirepeatbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set number [scan $black(repeats) %\[^:\]]
set time [scan $black(repeats) %*\[^:\]:%s]
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
foreach tmr [utimers] {
if {[string match "*count(repeat:$host:$chan:$arg)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {[channel get $chan antirepeat]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }

if {![info exists count(repeat:$host:$chan:$arg)]} { 
set count(repeat:$host:$chan:$arg) 0 
}

if {![info exists count(repeat:$host:$chan)]} { 
set count(repeat:$host:$chan) 0 
}

incr count(repeat:$host:$chan:$arg)
utimer $time [list unset count(repeat:$host:$chan:$arg)]

if {$count(repeat:$host:$chan:$arg) >= $number} {
if {$black(antirepeattype) == "0"} { set count(repeat:$host:$chan) 2 } 
incr count(repeat:$host:$chan)
if {$count(repeat:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(repeat:$host:$chan) >= 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(repeat:$host:$chan)
}
}
}
}


proc antirepeat:protect:me {nick host hand chan keyword arg} {
antirepeat:protect $nick $host $hand $chan $arg
}


############################# AntiColor ################################

proc anticolor:protect {nick host hand chan arg} {
global black botnick count
set arg [join [split $arg]]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan anticolor-reason]
if {$getreason == ""} { set getreason $black(anticolormsg) }
set getbantime [channel get $chan anticolor-bantime]
if {$getbantime == "0"} { set getbantime $black(anticolorbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan anticolor]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {![info exists count(color:$host:$chan)]} { 
set count(color:$host:$chan) 0 
}
if {[string match *\x03* $arg]} {
incr count(color:$host:$chan)
if {$black(anticolortype) == "0" } { set count(color:$host:$chan) 2 }
if {$count(color:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(color:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(color:$host:$chan)
}
}
}
}

proc anticolor:protect:me {nick host hand chan keyword arg} {
anticolor:protect $nick $host $hand $chan $arg
}

############################# AntiBold ################################

proc antibold:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibold-reason]
if {$getreason == ""} { set getreason $black(antiboldmsg) }
set getbantime [channel get $chan antibold-bantime]
if {$getbantime == "0"} { set getbantime $black(antiboldbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan antibold]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {![info exists count(bold:$host:$chan)]} { 
set count(bold:$host:$chan) 0 
}
if {[string match *\002* $arg]} {
incr count(bold:$host:$chan)
if {$black(antiboldtype) == "0" } { set count(bold:$host:$chan) 2 }
if {$count(bold:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(bold:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(bold:$host:$chan)
}
}
}
}

proc antibold:protect:me {nick host hand chan keyword arg} {
antibold:protect $nick $host $hand $chan $arg
}

############################ AntiUnderline ###############################

proc antiunderline:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antiunderline-reason]
if {$getreason == ""} { set getreason $black(antiunderlinemsg) }
set getbantime [channel get $chan antiunderline-bantime]
if {$getbantime == "0"} { set getbantime $black(antiunderlinebantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan antiunderline]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {![info exists count(underline:$host:$chan)]} { 
set count(underline:$host:$chan) 0 
}
if {[string match *\037* $arg]} {
incr count(underline:$host:$chan)
if {$black(antiunderlinetype) == "0" } { set count(underline:$host:$chan) 2 }
if {$count(underline:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(underline:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(underline:$host:$chan)
}
}
}
}

proc antiunderline:protect:me {nick host hand chan keyword arg} {
antiunderline:protect $nick $host $hand $chan $arg
}

############################## AntiCaps #################################

proc anticaps:protect {nick host hand chan arg} {
global black botnick count
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan anticaps-reason]
if {$getreason == ""} { set getreason $black(anticapsmsg) }
set getbantime [channel get $chan anticaps-bantime]
if {$getbantime == "0"} { set getbantime $black(anticapsbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {![info exists count(caps:$host:$chan)]} { 
set count(caps:$host:$chan) 0 
}
if {[channel get $chan anticaps]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }

set caps($nick:$host) 0
  foreach word [split $arg {}] {
    if [string match \[A-Z\] $word] {
      incr caps($nick:$host)
    }

}

  if {$caps($nick:$host) == 0} {
  return 0
}
  if {[string length $arg] < 20} {return 0}
  set capchar [string length $arg]
  set number $caps($nick:$host)/$capchar
  if {[expr 100 * $caps($nick:$host) / $capchar] > $black(anticapscount)} {
incr count(caps:$host:$chan)
if {$black(anticapstype) == "0" } { set count(caps:$host:$chan) 2 }
if {$count(caps:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(caps:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(caps:$host:$chan)
}
}
}
}

proc anticaps:protect:me {nick host hand chan keyword arg} {
anticaps:protect $nick $host $hand $chan $arg
}

################################ BadIdent #################################

proc badident:protect:join {nick host hand chan} {
global black botnick
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan badident-reason]
if {$getreason == ""} { set getreason $black(badidentreason) }
set getbantime [channel get $chan badident-bantime]
if {$getbantime == "0"} { set getbantime $black(badidentbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set ident "[string trimleft [string tolower [lindex [split $host "@"] 0]] "~"]"
set banmask "*!*$ident@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badident]} {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $hand $black(exceptflags) $chan]} { return 0 }
foreach bit $black(badidentwords) {
if {[string match -nocase $bit $ident]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}


############################## BadFullname ###############################

proc badfullname:protect:join {nick host hand chan} {
global botnick black
set ::cchan $chan
set ::nnick $nick
set ::hhost $host
set handle [nick2hand $nick]
if { [channel get $chan badfullname] } {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[onchan $nick $chan]} {
putquick "WHOIS $nick $nick"
bind RAW - 311 badfullname:protect
}
}
}

proc badfullname:protect { from keyword arguments } {
global botnick black
set chan $::cchan
set nick $::nnick
set host $::hhost
set getreason [channel get $chan badfullname-reason]
if {$getreason == ""} { set getreason $black(badfreason) }
set getbantime [channel get $chan badfullname-bantime]
if {$getbantime == "0"} { set getbantime $black(badfbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set fullname [string range [join [lrange $arguments 5 end]] 1 end]
if {[onchan $nick $chan]} {
set banmask *!*@[lindex [split [getchanhost $nick $chan] "@"] 1] 
}
  foreach realname $black(badfwords) {
if {[string match -nocase $realname $fullname]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
unbind RAW - 311 badfullname:protect
}

################################ BadNick #################################

proc badnick:protect:join {nick host hand chan} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan badnick-reason]
if {$getreason == ""} { set getreason $black(badnickreason) }
set getbantime [channel get $chan badnick-bantime]
if {$getbantime == "0"} { set getbantime $black(badnickbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask "$nick*!*@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badnick]} {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $nick]]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc badnick:protect:change {nick host hand chan newnick} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan badnick-reason]
if {$getreason == ""} { set getreason $black(badnickreason) }
set getbantime [channel get $chan badnick-bantime]
if {$getbantime == "0"} { set getbantime $black(badnickbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask "$newnick*!*@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badnick]} {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $newnick]]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}



########################### AntiJoinFlood ################################

proc joinflood:protect {nick host hand chan} {
global black count
if {[channel get $chan antijoinflood]} {
set getset [channel get $chan joinflood]
if {$getset == ""} { set getset "4 5" }
set number [lindex [split $getset] 0]
set time [lindex [split $getset] 1]
set replace(%chan%) $chan
set message [string map [array get replace] $black(jfloodmsg)]
foreach tmr [utimers] {
if {[string match "*count(joinflood:$chan)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {![info exists count(joinflood:$chan)]} { 
set count(joinflood:$chan) 0 
}

incr count(joinflood:$chan)
utimer $time [list unset count(joinflood:$chan)]

if {$count(joinflood:$chan) >= "$number"} {
if {![botisop $chan]} { return 0 }
putquick "MODE $chan +$black(modes)" ; utimer $black(nomodetime) [list putquick "MODE $chan -$black(modes)"]
if {$black(fjoinhow) == "1"} {
puthelp "NOTICE @$chan :$message"
}
}
}
}


########################## Modul Logare ###############################

proc loginpublic {my} {
     global botnick black
        putquick "PRIVMSG $black(host) :login $black(username) $black(password)"   
        putquick "MODE $botnick :$black(xmod)"
        
}


proc publiclogin:Cmd {nick host hand chan arg} {
global botnick black
putquick "PRIVMSG $black(host) :login $black(username) $black(password)"
putquick "MODE $botnick :$black(xmod)"
puthelp "NOTICE $nick :Ma loghez la $black(chanserv) .."
}

########################### Protectii Useri ################################

proc protectpublic {nick host hand chan args} {
global black
set bans [lindex $args 1]
if {![botisop $chan]} { return 0 }
if {$bans == "*!*@*"} { putquick "MODE $chan -b $bans"
return 0
}
set list [userlist $black(exceptflags) $chan]
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $bans $host]} {
putquick "MODE $chan -b $bans"
if {[onchan $black(chanserv) $chan]} {
putquick "PRIVMSG $black(chanserv) :unban $chan $bans"
}
}
}
}
}

############################## AntiChanFlood ###############################

proc antifloodchan:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antichanflood-reason]
if {$getreason == ""} { set getreason $black(antifloodchanmsg) }
set getbantime [channel get $chan antichanflood-bantime]
if {$getbantime == "0"} { set getbantime $black(antifloodchanbantime) }
set replace(%chan%) $chan
set getset [channel get $chan chanflood]
if {$getset == ""} { set getset "4 5" }
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set number [lindex [split $getset] 0]
set time [lindex [split $getset] 1]
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
foreach tmr [utimers] {
if {[string match "*count(repeat:$host:$chan:flood)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {[channel get $chan antichanflood]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }

if {![info exists count(repeat:$host:$chan:flood)]} { 
set count(repeat:$host:$chan:flood) 0 
}

if {![info exists count(repeat:$host:$chan)]} { 
set count(repeat:$host:$chan) 0 
}

incr count(repeat:$host:$chan:flood)
utimer $time [list unset count(repeat:$host:$chan:flood)]

if {$count(repeat:$host:$chan:flood) >= $number} {
if {$black(antifloodchantype) == "0"} { set count(repeat:$host:$chan) 2 } 
incr count(repeat:$host:$chan)
if {$count(repeat:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(repeat:$host:$chan) >= 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(repeat:$host:$chan)
}
}
}
}

proc antifloodchan:protect:me {nick host hand chan keyword arg} {
antirepeat:protect $nick $host $hand $chan $arg
}

################################# reban ################################

proc rebanpublic {nick host hand chan args} {
global black
if {[channel get $chan xban]} {
set bans [string tolower [lindex [split $args] 1]]
set getxtime [channel get $chan xbantime]
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100" } 
if {$getxtime == "0"} { set getxtime "1" }
foreach ban [banlist $chan] {
set reason "[lindex $ban 1]"
if {$bans == "*!*@*"} { return 0 }
if {[string match $bans [string tolower [lindex $ban 0]]]} {
putquick "PRIVMSG $black(chanserv) :ban $chan $bans $getxtime $getxlevel $reason"
}
}
}
}

################################# XTOOLS ################################

proc toolspublic {chan type} {
global botnick black
if {![channel get $chan xtools]} {
return 1
}
if {$type == "op"} {
if  {![onchan "$black(chanserv)" $chan] && ![botisop $chan]} {
return 1
}
putquick "PRIVMSG $black(chanserv) :unban $chan $botnick"
putquick "PRIVMSG $black(chanserv) :op $chan $botnick" -next
return 1
}
if {$type == "unban"} {
putquick "PRIVMSG $black(chanserv) :unban $chan $botnick" -next
return 1
}
if {$type == "invite" || $type == "limit"} {
putquick "PRIVMSG $black(chanserv) :invite $chan $botnick" -next
return 1
}
}


################################# Clone Scan ###################################


proc scannerpublic {nick uhost hand chan arg} {
global black count
array set clones [list]
putquick "PRIVMSG $chan :Scanez.."
foreach user [chanlist $chan] {
set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
if {![string match "*.undernet.org*" $host]} {
if {!($black(maxclone) >= "2")} { return 0 }
if {![info exists c($host:$chan)]} {
set c($host:$chan) 0
}
set c($host:$chan) [expr $c($host:$chan) +1]
lappend clones($user) $host
if {$c($host:$chan) >= $black(maxclone)} {
foreach clon [lsort -unique [array names clones]] {
set hosts [string tolower [lindex [split [getchanhost $clon $chan] @] 1]]
if {$host == $hosts} {
lappend clona($host) [join $clon " , "]
} 
}
putserv "NOTICE $nick :Am gasit $c($host:$chan) clone pe $chan de la host $host. Nick-urile sunt [lsort -unique $clona($host)]" 
}
}
puthelp "NOTICE $nick :Sfarsit clone.." 
} 
}

proc clonescanner {minute hour day month year} {
global black botnick
foreach chan [channels] {
set replace(%chan%) $chan
if {[channel get $chan clonescan]} {
putlog "Scanez de clone pe $chan.."
foreach user [chanlist $chan] {
set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
set replace(%host%) $host
if {![info exists c($host:$chan)]} {
set c($host:$chan) 0
}
array set clones [list]
if {![string match "*.undernet.org*" $host]} {
if {!($black(maxclone) >= "2")} { return 0 }
set c($host:$chan) [expr $c($host:$chan) +1]
lappend clones($user) $host
if {$c($host:$chan) >= $black(maxclone)} {
foreach clon [array names clones] {
set hosts [string tolower [lindex [split [getchanhost $clon $chan] @] 1]]
if {$host == $hosts} {
lappend clona($host) [join $clon " , "]
} 
}
if {$black(what) == "0"} {
putserv "NOTICE @$chan :ATENTIE :Am gasit $c($host:$chan) clone pe $chan de la host $host. Nick-urile sunt : [lsort -unique $clona($host)]"
}
if {$black(what) == "1"} {
set banmask *!*@[lindex [split $host @] 1]
set reason [string map [array get replace] $black(reason)]
blacktools:banner:2 $banmask $botnick $chan $reason $black(clonebtime)
}
}
}
}
}
}
}

proc clonescan:start {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {[string match -nocase "$why" "on"]} {
channel set $chan +clonescan
puthelp "NOTICE $nick :Am activat Clone Scan."
}
if {[string match -nocase "$why" "off"]} {
channel set $chan -clonescan
puthelp "NOTICE $nick :Am dezactivat Clone Scan."
}
}


############################# Topic refresh #########################

proc refreshpublic {nick host hand chan arg} {
global botnick black
set thetopic [topic $chan]
puthelp "TOPIC $chan :$black(topics)"
puthelp "TOPIC $chan :$thetopic"
}


proc times_topic {} {
 global black
foreach chan [channels] {
if { [channel get $chan topicrefresh] } {
set thetopic [topic $chan]
   puthelp "TOPIC $chan :$black(topics)"
   puthelp "TOPIC $chan :$thetopic"

}
}
timer $black(topic_time) times_topic
 return 1
}


proc refresh:start {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :use $char(p)refresh <on>/<off>"
return 0
}
if {[string match -nocase "$why" "on"]} {
channel set $chan +topicrefresh
puthelp "NOTICE $nick :Am activat Topic Refresh."
}
if {[string match -nocase "$why" "off"]} {
channel set $chan -topicrefresh
puthelp "NOTICE $nick :Am dezactivat Topic Refresh."
}
}

################################ count ####################################

proc countpublic {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$why == ""} { puthelp "NOTICE $nick :Foloseste $char(p)count on | off | display | reset"
return 0
}

if { [channel get $chan count] } { set countstats "on" } else { set countstats "off"}
if {($countstats == "on") && ($why == "on")} { puthelp "NOTICE $nick :Count pentru $chan este deja activat"
return 0
}
if {($countstats == "off") && ($why == "off")} { puthelp "NOTICE $nick :Count pentru $chan este deja dezactivat"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|display|reset)} $why tmp counter]) && (![regexp -nocase -- {\S#} $why])} {
    switch $counter {

on {
channel set $chan +count
puthelp "NOTICE $nick :Am activat count pe $chan ."
}

off {
channel set $chan -count
puthelp "NOTICE $nick :Am dezactivat count pe $chan ."
}

display {
set stats [channel get $chan countnumber]
puthelp "PRIVMSG $chan :Numaratoarea pentru $chan este de $stats vizitator(i)"
}

reset {
channel set $chan countnumber 0
puthelp "NOTICE $nick :Am resetat count pentru $chan"

}
} 
} else { puthelp "NOTICE $nick :Foloseste $char(p)count on / off / display / reset"
return 0
} 
}


proc countpublic:join {nick host hand chan} {
global black
if {[isbotnick $nick]} { return 0}
if {[channel get $chan count]} {
set stats [channel get $chan countnumber]
set counting [expr $stats +1]
channel set $chan countnumber $counting
set replace(%num%) $counting
set replace(%chan%) $chan
set countmes [channel get $chan count-message]
if {$countmes == ""} { set countmes "$black(countmsg)" }
set countmessage [string map [array get replace] $countmes]
putquick "NOTICE $nick :$countmessage"
}
}


############################### Private ##########################

proc privatepublic {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set user [lindex [split $arg] 1]
set host [lindex [split $arg] 2]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set flags "-|f"
if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
return 0
}


if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $why tmp privat]) && (![regexp -nocase -- {\S#} $why])} {
    switch $privat {
on {
     channel set $chan +private
puthelp "NOTICE $nick :Am activat modulul privat pe $chan"
}

off {
     channel set $chan -private
puthelp "NOTICE $nick :Am dezactivat modulul privat pe $chan"
}

add {
if {$user == ""} { puthelp "NOTICE $nick :Use !private add <name> <host>"
return 0
}
if {$host == ""} { puthelp "NOTICE $nick :Use !private add <name> <host>"
return 0
}

if {[validuser $user]} { 
chattr $user $flags $chan
puthelp "NOTICE $nick :$user este deja in baza mea de date..il adaug ca exceptie"
return 0
}
adduser $user $host
chattr $user $flags $chan
puthelp "NOTICE $nick :Am adaugat $user cu $host ca exceptie la private"
}


del {
if {$user == ""} { puthelp "NOTICE $nick :Use !private del <name>"
return 0
}

if {[validuser $user]} {
chattr $user -|-f $chan
puthelp "NOTICE $nick :AM sters $user din lista de exceptii"
} else { puthelp "NOTICE $nick :$user nu este baza de date de exceptii."
return 0
}
}

list {
set list [userlist $flags $chan]
puthelp "NOTICE $nick :Users Exceptati de la privat : $list"
}

}
}
}



proc private:module {nick host hand chan} {
global black botnick
set getreason [channel get $chan private-reason]
if {$getreason == " "} { set getreason $black(privatereason) }
set getbantime [channel get $chan private-bantime]
if {$getbantime == "0"} { set getbantime $black(privatebantime) }
set handle [nick2hand $nick]
set mask "*!*@[lindex [split $host @] 1]"
if {[channel get $chan private]} {
if {[matchattr $handle nm|oMASOVf $chan]} { 
return 0 
}
newchanban $chan $mask $botnick $getreason $getbantime
}
}


############################### XTOOLS ###########################

proc xtools:start {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :use $char(p)xtools <on>/<off>"
return 0
}
if {[string match -nocase "$why" "on"]} {
channel set $chan +xtools
puthelp "NOTICE $nick :Am activat xtools."
}
if {[string match -nocase "$why" "off"]} {
channel set $chan -xtools
puthelp "NOTICE $nick :Am dezactivat xtools."
}
}


############################### BadChan ###########################

proc badchanpublic {nick host hand chan arg} {
global black
set flag "antibadchan"
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set dir "logs/badchan($chan).txt"
set why [lindex [split $arg] 0]
set bdchan [join [lindex [split $arg] 1]]
if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)badchan <on> | <off> | <add> <#chan> | <list> | <del> <numar>"
return 0
}
if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $why tmp bc]) && (![regexp -nocase -- {\S#} $why])} {
    switch $bc {
on {
channel set $chan +$flag
puthelp "NOTICE $nick : Ai activat BadChan.Pentru a adauga un canal in lista foloseste $char(p)badchan add <#chan>. Pentru a vedea lista foloseste $char(p)badchan <list>"
}
off {
channel set $chan -$flag
puthelp "NOTICE $nick :Am dezactivat BlackChan."

}

add {
if {$bdchan == ""} { puthelp "NOTICE $nick :Use $char(p)badchan add <#chan>"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $bdchan
close $file
puthelp "NOTICE $nick :Adaug in lista canalul: $bdchan"
puthelp "NOTICE $nick :Salvez baza de date.."
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/badchan($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt canale in BlackList."
return 0
}
foreach cc $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista canalelor din BlackList este :"
puthelp "NOTICE $nick :$i. $cc"
}
}

del {
if {$bdchan == ""} { puthelp "NOTICE $nick :Use $char(p)badchan del <numar>. Pentru a vedea lista cu canalele si numerele foloseste $char(p)badchan list"
return 0
}
if {![regexp {^[0-9]} $bdchan]} {
puthelp "NOTICE $nick :Use $char(p)badchan del <numar>. Pentru a vedea lista cu canalele si numerele foloseste $char(p)badchan list"
return 0
}

set dir "logs/badchan($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"] 
set i [expr $bdchan - 1]
set delete [lreplace $lines $i $i]
set file [open $dir "w"]
puts $file [join $delete "\n"]
close $file
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}
puthelp "NOTICE $nick :Am sters din lista canalul cu numarul : $bdchan"
puthelp "NOTICE $nick :Te rog verifica cu comanda : $char(p)badchan <list>"
}


}
}
}



proc badchanpublic:join {nick host hand chan} {
global black
set handle [nick2hand $nick]
set ::ccchan $chan
if {![validchan $chan]} {
return 0
}
if {[matchattr $handle nm|MASoOVv $chan]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {[channel get $chan antibadchan]} {
if {[onchan $nick $chan]} {
utimer 5 [list putquick "WHOIS $nick $nick"]
bind RAW - 319 badchanpublic:ban
}
}
}

proc badchanpublic:ban {from keyword arguments } {
global botnick black
set chan $::ccchan
set arguments [join $arguments]
set nick [string tolower [lindex $arguments 1]] 
set replace(%chan%) $chan
set replace(%nick%) $nick
set handle [nick2hand $nick]
set args [join $arguments]
set getreason [channel get $chan badchan-reason]
if {$getreason == ""} { set getreason $black(badchanreason) }
set getbantime [channel get $chan badchan-bantime]
if {$getbantime == "0"} { set getbantime $black(badcbantime) }
if {[channel get $chan antibadchan]} {
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set channels [string tolower [lrange $args 2 end]]
set banmask *!*@[lindex [split [getchanhost $nick $chan] "@"] 1]
set dir "logs/badchan($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set bchan [split $w "\n"]
if {$w == ""} { return 0 }
foreach badchan $bchan {
set replace(%bchan%) $badchan
set protectmsg [string map [array get replace] $black(badcmsg)]
foreach c $channels {
set ch [string trimleft $c ":@+"]
if {[string match -nocase $badchan $ch]} {
blacktools:banner:2 $banmask $botnick $chan $getreason $getbantime
}
}
}
}
}


################################# Antitake ##################################


proc dontdeoppublic {nick host hand chan args} {
global black botnick
set dnick [lindex $args 1]
set handle [nick2hand $nick]
if {[channel get $chan dontdeop] } {
if {[string match -nocase $nick $botnick]} {
return 0
}
if {![matchattr $handle $black(exceptflags) $chan]} {
putquick "MODE $chan -o $nick"
putquick "MODE $chan +o $dnick"
puthelp "NOTICE $nick :Nu poti da DEOP deoarece nu te aflii in baza mea de date de access."
}
}
}
 
proc dontoppublic {nick host hand chan args} {
global black botnick
set onick [lindex $args 1]
set handle [nick2hand $nick]
if {[channel get $chan dontop]} {
if {[string match -nocase $nick $botnick]} { 
return 0
}
if {[string match -nocase $onick $botnick]} {
return 0
}
if {![matchattr $handle $black(exceptflags) $chan]} {
putquick "MODE $chan -o $nick"
putquick "MODE $chan -o $onick"
puthelp "NOTICE $nick :Nu poti da OP deoarece nu te aflii in baza mea de date de access."
}
}
}


################################# Anunt ###################################


proc anuntpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set dir "logs/anunt($chan).txt"
set who [lindex [split $arg] 0]
set message [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {[channel get $chan anunt]} { set status "on" } else { set status "off" }
if {$who == ""} { puthelp "NOTICE $nick :Use $char(p)anunt <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +anunt
puthelp "NOTICE $nick :Ai activat modulul de anunt .Pentru a adauga un anunt foloseste $char(p)anunt add <anuntul tau>. Poti adauga cate vrei."
}

off {
channel set $chan -anunt
puthelp "NOTICE $nick :Am dezactivat modulul de anunt."
}

add {
if {$message == ""} { puthelp "NOTICE $nick :Use $char(p)anunt add <anuntul tau>"
return 0
}
if {$status == "off" } { puthelp "NOTICE $nick :Intai activeaza modulul de anunt cu comanda $char(p)anunt on"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $message
close $file
puthelp "NOTICE $nick :Am adaugat urmatorul anunt pentru $chan:"
puthelp "NOTICE $nick :$message"
}

list {
if {$status == "off" } { puthelp "NOTICE $nick :Intai trebuie sa activezi modulul de anunt cu comanda $char(p)anunt on"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/anunt($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt anunturi pentru $chan"
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de anunturi pentru $chan este:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$message == ""} { puthelp "NOTICE $nick :Use $char(p)anunt del <numar>. Pentru a lista anunturile si numerelor lor foloseste type $char(p)anunt list"
return 0
}
if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)anunt del <numar>. Pentru a lista anunturile si numerelor lor foloseste type $char(p)anunt list"
return 0
}

if {$status == "off" } { puthelp "NOTICE $nick :Intai trebuie sa activezi modulul de anunt cu comanda $char(p)anunt on"
return 0
}
set dir "logs/anunt($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters anuntul cu numarul :$number pentru $chan."
puthelp "NOTICE $nick :Verifica daca este corect cu comanda $char(p)anunt list"
}

}
}
}

proc anuntpublic:show {} {
global black 
foreach chan [channels] {
if {[validchan $chan]} {
set dir "logs/anunt($chan).txt"
if {[channel get $chan anunt]} {
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
if {![validchan $chan]} { return 0 }
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} { return 0 }
set lines [split $data "\n"]
set numlines [llength $lines]
set random [rand $numlines]
set randomline [lindex $lines $random]
if {$black(anunthow) == "1"} {
puthelp "PRIVMSG $chan :\001ACTION $randomline\001"
} else { 
puthelp "PRIVMSG $chan :$randomline"
}
}
}
}
timer $black(anunttime) anuntpublic:show
return 1
}

############################### AutoBroadcast ############################

proc broadcastpublic:module {nick host hand chan arg} {
global black sdir
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set dir "logs/broadcast.txt"
set lin 0
set who [lindex [split $arg] 0]
set message [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {$who == ""} { puthelp "NOTICE $nick :Use $char(p)bt <on> | <off> | <add> <mesaj> | <list> | <del> <number>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {


on {
set type "broadcastpublic:show ON"
foreach tmr [timers] {
if {[string match "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
puthelp "NOTICE $nick :AutoBroadcast este activat deja."
return 0
}
}
puthelp "NOTICE $nick :Am activat modulul de AutoBroadcast"
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
timer $black(bttime) broadcastpublic:show
}

off {
puthelp "NOTICE $nick :Am dezactivat modulul de AutoBroadcast"
set type "broadcastpublic:show OFF"
foreach tmr [timers] {
if {[string match -nocase "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
killtimer [lindex $tmr 2]
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
}

add {
if {$message == ""} { puthelp "NOTICE $nick :Use $char(p)bt add <reclama ta>"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set file [open $dir a]
puts $file $message
close $file
puthelp "NOTICE $nick :Ai adaugat un broadcast in baza de date."
puthelp "NOTICE $nick :$message"
}

list {
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set dir "logs/broadcast.txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt broadcast-uri in lista..."
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de broadcast-uri este urmatoarea:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$message == ""} { puthelp "NOTICE $nick :Use $char(p)bt del <numar>. Pentru a lista broadcast-urile tasteaza $char(p)bt list"
return 0
}

if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)bt del <numar>. Pentru a lista broadcast-urile tasteaza $char(p)bt list"
return 0
}

set dir "logs/broadcast.txt"
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters broadcast-ul cu numarul :$number"
puthelp "NOTICE $nick :Te rog verifica tastand $bt(char)bt list"
}

}
}
}


proc broadcastpublic:show {} {
global black
set dir "logs/broadcast.txt"
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
foreach chan [channels] {
if {[isdynamic $chan]} {
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set numlines [llength $lines]
set random [rand $numlines]
set randomline [lindex $lines $random]
if {$black(bthow) == "1"} {
puthelp "PRIVMSG $chan :\001ACTION 1(BROADCAST) $randomline\001"
} else { 
puthelp "PRIVMSG $chan :1(BROADCAST) $randomline"
}
}
}
timer $black(bttime) broadcastpublic:show
return 1
}



################################# Limit ###################################


proc limitpublic {nick host hand chan arg} {
global black 
set why [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set lm [lindex [split $arg] 1]
set usersnum [llength [chanlist $chan]]
set setnum [channel get $chan blacklimit]
if {$why == ""} { puthelp "NOTICE $nick :Use : $char(p)limit <on> | <set> <number> | <off>"
return 0
}
if {([regexp -nocase -- {(#[0-9]+|on|off|set|on|off)} $why tmp lmt]) && (![regexp -nocase -- {\S#} $why])} {
    switch $lmt {

on {
channel set $chan +limit
puthelp "NOTICE $nick :AM activat modulul de limit.Pentru a seta limita aplica comanda $char(p)limit set <numar>."
putserv "MODE $chan +l [expr $usersnum + 10]"
puthelp "NOTICE $nick :Am setat limita ca default +10."
}
off {
channel set $chan -limit
puthelp "NOTICE $nick :Am dezactivat modulul de limit."
putquick "MODE $chan -l"
}

set {
if {$lm == ""} { puthelp "NOTICE $nick :Use $char(p)limit set <number>"
return 0
}
if {![regexp {^[0-9]} $lm]} {
puthelp "NOTICE $nick :Use $char(p)limit set <number>"
return 0
}
if {$lm < 2} { puthelp "NOTICE $nick :Nu poti seta limita mai mica de 2."
channel set $chan blacklimit 2
putserv "MODE $chan +l [expr $usersnum + $lm]"
puthelp "NOTICE $nick :Setez limita de 2."
return 0
}
if {$lm > 500} { puthelp "NOTICE $nick :Nu poti seta limita mai mare de 500."
return 0
}

channel set $chan blacklimit $lm
puthelp "NOTICE $nick :Am setat limita la $lm"
putserv "MODE $chan +l [expr $usersnum + $lm]"
}

}
}
}


proc limitpublic:join {nick host hand chan} {
set usersnum [llength [chanlist $chan]]
set setnum [channel get $chan blacklimit]
if {$setnum == "0"} { channel set $chan blacklimit 10 }
if {![botisop $chan]} { return 0 }
if {[channel get $chan limit]} {
set chanmode [getchanmode $chan]
if {[string match "*l*" "$chanmode"]} {
set lim [lindex $chanmode 1]
} else { set lim "0" }
if {$usersnum > $lim} { set dif [expr $usersnum - $lim] } else { set dif [expr $lim - $usersnum] }
if {($usersnum >= $lim) || ($dif == "1")} { 
utimer 3 [list putserv "MODE $chan +l [expr $usersnum + $setnum]"]
}
}
}


proc limitpublic:kick {nick host hand chan args} {
if {![validchan $chan]} { return 0 }
set setnum [channel get $chan blacklimit]
if {$setnum == "0"} { channel set $chan blacklimit 10 }
if {[isbotnick $nick]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[channel get $chan limit]} {
set chanmode [getchanmode $chan]
if {[string match "*l*" "$chanmode"]} {
set lim [lindex $chanmode 1]
} else { set lim "0" }
set usersnum [llength [chanlist $chan]]
if {$usersnum > $lim} { set dif [expr $usersnum - $lim] } else { set dif [expr $lim - $usersnum] }
if {"$dif" >= "$setnum"} {
utimer 3 [list putserv "MODE $chan +l [expr $usersnum + $setnum - 1]"]
}
}
}

proc limitpublic:exit {nick host hand chan args} {
if {![validchan $chan]} { return 0 }
set setnum [channel get $chan blacklimit]
if {$setnum == "0"} { channel set $chan blacklimit 10 }
if {[isbotnick $nick]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[channel get $chan limit]} {
foreach user [chanlist $chan] {
if {"$nick" != "$user"} {
set chanmode [getchanmode $chan]
if {[string match "*l*" "$chanmode"]} {
set lim [lindex $chanmode 1]
} else { set lim "0" }
set usersnum [llength [chanlist $chan]]
if {$usersnum > $lim} { set dif [expr $usersnum - $lim] } else { set dif [expr $lim - $usersnum] }
if {"$dif" >= "$setnum"} {
utimer 3 [list putserv "MODE $chan +l [expr $usersnum + $setnum - 1]"]
}
}
}
}
}

proc limit:timer {min hour day mon year} {
global black
if {([scan $min %d]+([scan $hour %d]*60)) % 10 == 0} { 
foreach chan [channels] {
if { [channel get $chan limit]} {
set usersnum [llength [chanlist $chan]]
set setnum [channel get $chan blacklimit]
if {$setnum == "0"} { channel set $chan blacklimit 10 }
if {![botisop $chan]} { return 0 }
if {[channel get $chan limit]} {
set chanmode [getchanmode $chan]
if {[string match "*l*" "$chanmode"]} {
set lim [lindex $chanmode 1]
} else { set lim "0" }
if {$usersnum > $lim} { set dif [expr $usersnum - $lim] } else { set dif [expr $lim - $usersnum] }
if {($usersnum >= $lim) || ($dif == "1")} { 
putserv "MODE $chan +l [expr $usersnum + $setnum]"
}
}
}
}
}
}


################################# Topic ###################################

proc topicpublic {nick host hand chan arg} {
global black
set nop [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set dir "logs/topic($chan).txt"
set tp [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {$arg == ""} { puthelp "NOTICE $nick :use $char(p)topic save | list | add | del | set |" 
return 0
}

 if {([regexp -nocase -- {(#[0-9]+|save|list|add|del|set)} $nop tmp topc]) && (![regexp -nocase -- {\S#} $nop])} {
    switch $topc {


 save {
set t [join [topic $chan]]
if {$t == ""} { puthelp "NOTICE $nick :Nu pot salva topic-ul deoarece este gol"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $t
close $file
puthelp "NOTICE $nick :Am salvat topic-ul curent..."
}

add {
if {$tp == ""} { puthelp "NOTICE $nick :Use $char(p)topic add <topic>"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $tp
close $file
puthelp "NOTICE $nick :Am salvat topic-ul..."
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt topic-uri $chan"
return 0
}
foreach ts $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de TOPIC pentru $chan este:"
puthelp "NOTICE $nick :$i. $ts"
}
}

del {
if {$number == ""} { puthelp "NOTICE $nick :Use $char(p)topic del <numar> ( il iei din lista )"
return 0
}
if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)topic del <numar> ( il iei din lista )"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}
puthelp "NOTICE $nick :Am sters topic-ul cu numarul $number din lista de pe $chan"
}

set {
if {$number == ""} { puthelp "NOTICE $nick :Use $char(p)topic set <numar> ( il iei din lista )"
return 0
}
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set num [expr $number - 1]
set line [lindex $lines $num]
putquick "TOPIC $chan :Setting topic.."
puthelp "TOPIC $chan :$line"
puthelp "NOTICE $nick :Am pus topic-ul cu numarul $number pe $chan"
}

}
}
}

################################# Seen ###################################


proc seen:save:2 {nick chan host who reason} {
global seendir
set lin 0
set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set userentry [lindex  [split $line] 2]
set chanentry [lindex [split $line] 1]
if {(([lsearch -exact [string tolower $userentry] [string tolower $nick]] == 0) || [string match -nocase $userentry $nick]) && [string match -nocase $chanentry $chan]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $seendir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $seendir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $seendir "w"]
close $files
}
set file [open $seendir "a"]
puts $file "$who"
close $file
}

proc seen:save:1 {nick chan host who} {
global seendir
set lin 0
set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set userentry [lindex  [split $line] 2]
set chanentry [lindex [split $line] 1]
if {(([lsearch -exact [string tolower $userentry] [string tolower $nick]] == 0) || [string match -nocase $userentry $nick]) && [string match -nocase $chanentry $chan]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $seendir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $seendir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $seendir "w"]
close $files
}
set file [open $seendir "a"]
puts $file "$who"
close $file
}


proc seen:join {nick host hand chan} {
global seendir botnick
if {![channel get $chan seen]} {
return 0
}
if {[isbotnick $nick]} { return 0 }
set time [unixtime]
set host "*!$host"
set who "JOIN $chan $nick $host $time"
seen:save:1 $nick $chan $host $who
}


proc seen:part {nick host hand chan arg} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "No Reason" }
set host "*!$host"
if {[isbotnick $nick]} { return 0 }
set who "PART $chan $nick $host $time $reason"
seen:save:2 $nick $chan $host $who $reason
}

proc seen:sign {nick host hand chan arg} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set host "*!$host"
set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "No Reason" }
if {[isbotnick $nick]} { return 0 }
set who "SIGN $chan $nick $host $time $reason"
seen:save:2 $nick $chan $host $who $reason
}


proc seen:kick {nick host hand chan kicked reason} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set lin 0
set time [unixtime]
set hosted [getchanhost $kicked $chan]
set hosted "*!$hosted"
set reason [join [lrange [split $reason] 1 end]]
if {$reason == ""} { set reason "No Reason" }
if {[isbotnick $kicked]} { return 0 }
set who "KICK $chan $kicked $hosted $time $reason"
set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set userentry [lindex [split $line] 2]
set chanentry [lindex [split $line] 1]
if {(([lsearch -exact [string tolower $kicked] [string tolower $userentry]] == 0) || [string match -nocase $kicked $userentry]) && [string match -nocase $chanentry $chan]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $seendir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $seendir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $seendir "w"]
close $files
}
set file [open $seendir "a"]
puts $file "$who"
close $file
}


proc seen:split {nick host hand chan args} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set host "*!$host"
set reason [join [lrange [split $args] 0 end]]
if {[isbotnick $nick]} { return 0 }
set who "SPLIT $chan $nick $host $time $reason"
seen:save:2 $nick $chan $host $who $reason
}


proc seen:changenick {nick host hand chan newnick} {
global seendir botnick
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set host "*!$host"
if {[isbotnick $nick]} { return 0 }
set who "NICKCHANGE $chan $nick $host $time $newnick"
seen:save:2 $nick $chan $host $who $newnick
}

proc seenpublic {nick uhost hand chan arg} {
global seendir black count botnick
if {![channel get $chan seen]} {
return 0
}
set what [lindex [split $arg] 0]
set number [scan $black(seenflood) %\[^:\]]
set timer [scan $black(seenflood) %*\[^:\]:%s]
foreach tmr [utimers] {
if {[string match "*count(flood:$uhost:$chan)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {![info exists count(flood:$uhost:$chan)]} { 
set count(flood:$uhost:$chan) 0 
}
incr count(flood:$uhost:$chan)
utimer $timer [list unset count(flood:$uhost:$chan)]

if {$count(flood:$uhost:$chan) == "$number"} {
puthelp "NOTICE $nick :Asteapta 1 minut pentru a putea cauta."
return 0
}


if {[string match -nocase $what $nick]} { puthelp "NOTICE $nick :$nick uite-te in oglinda"
return 0
}
if {[onchan $what $chan]} { puthelp "NOTICE $nick :$what este pe canal deja"
return 0
}

set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set userentry [lindex [split $line] 2]
set chanentry [lindex [split $line] 1]
set qhost [lindex [split $line] 3]
set tm [lindex [split $line] 4]
set reason [lrange [split $line] 5 end]
if {$reason == ""} { set reason "No Reason" }
set totalyear [expr [unixtime] - $tm]

	if {$totalyear >= 31536000} {
		set yearsfull [expr $totalyear/31536000]
		set years [expr int($yearsfull)]
		set yearssub [expr 31536000*$years]
		set totalday [expr $totalyear - $yearssub]
	}
	if {$totalyear < 31536000} {
		set totalday $totalyear
		set years 0
	}
	if {$totalday >= 86400} {
		set daysfull [expr $totalday/86400]
		set days [expr int($daysfull)]
		set dayssub [expr 86400*$days]
		set totalhour [expr $totalday - $dayssub]
	}
	if {$totalday < 86400} {
		set totalhour $totalday
		set days 0
	}
	if {$totalhour >= 3600} {
		set hoursfull [expr $totalhour/3600]
		set hours [expr int($hoursfull)]
		set hourssub [expr 3600*$hours]
		set totalmin [expr $totalhour - $hourssub]
	}
	if {$totalhour < 3600} {
		set totalmin $totalhour
		set hours 0
	}
	if {$totalmin >= 60} {
		set minsfull [expr $totalmin/60]
		set mins [expr int($minsfull)]
	}
	if {$totalmin < 60} {
		set mins 0
	}
	if {$years < 1} {set yearstext ""} elseif {$years == 1} {set yearstext "$years an, "} {set yearstext "$years ani, "}

	if {$days < 1} {set daystext ""} elseif {$days == 1} {set daystext "$days zi, "} {set daystext "$days zile, "}

	if {$hours < 1} {set hourstext ""} elseif {$hours == 1} {set hourstext "$hours ore, "} {set hourstext "$hours ore, "}

	if {$mins < 1} {set minstext ""} elseif {$mins == 1} {set minstext "$mins minut"} {set minstext "$mins minute"}

	set output $yearstext$daystext$hourstext$minstext

if {$totalyear < 60} {
set output "$totalyear secunde"
}


if {(([lsearch -exact [string tolower $what] [string tolower $userentry]] == 0) || [string match -nocase $what $userentry]) && [string match -nocase $chanentry $chan]} {
lappend entry $userentry
set counts [llength $entry]
if {$counts >= 10} {
puthelp "NOTICE $nick :Prea multe rezultate obtinute.Reincearca"
return 0
}
set seenfound 1

if {[lindex [split $line] 0] == "PART"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) iesind acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "SIGN"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) iesind de pe IRC acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "JOIN"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) intrand acum $output."
}
if {[lindex [split $line] 0] == "SPLIT"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) iesind in *.net *.split acum $output."
}
if {[lindex [split $line] 0] == "KICK"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) primind KICK acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "NICKCHANGE"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) schimbandu-si nick-ul in $reason acum $output"
}
}
if {$what == "*!*@*"} { return 0 }
if {[string match -nocase $what $qhost] && [string match -nocase $chanentry $chan]} {
lappend entry $userentry
set counts [llength $entry]
if {$counts >= 15} {
puthelp "NOTICE $nick :Prea multe rezultate obtinute.Reincearca."
return 0
}
set seenfound 1
if {[lindex [split $line] 0] == "PART"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) iesind acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "SIGN"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) iesind de pe IRC acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "JOIN"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) intrand acum $output."
}
if {[lindex [split $line] 0] == "SPLIT"} {
set reply "Am gasit ($counst) rezultate [join $entry ","] ($qhost) a fost vazut(a) iesind in *.net *.split acum $output."
}
if {[lindex [split $line] 0] == "KICK"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) primind KICK acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "NICKCHANGE"} {
set reply "Am gasit ($counts) rezultate [join $entry ","] ($qhost) a fost vazut(a) schimbandu-si nick-ul in $reason acum $output"
}
}
if {$black(seenmet) == "1"} {
set method "NOTICE"
set onwho "$nick"
} else { 
set method "PRIVMSG"
set onwho "$chan"
}
}
if {[info exists reply]} {
puthelp "$method $onwho :$reply"
}

if {![info exists seenfound]} {
puthelp "$method $onwho :Nu l-am vazut pe $what."
}
}

############################### Greet #####################################


proc greetpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set dir "logs/greet($chan).txt"
set who [lindex [split $arg] 0]
set greet [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {$who == ""} { puthelp "NOTICE $nick :Use $char(p)greet <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +greet
puthelp "NOTICE $nick :Ai activat modulul de greet .Pentru a adauga un greet foloseste $char(p)greet add <mesaj>. Poti adauga cate vrei."
}

off {
channel set $chan -greet
puthelp "NOTICE $nick :Am dezactivat modulul de greet."
}

add {
if {$greet == ""} { puthelp "NOTICE $nick :Use $char(p)greet add <mesaj>"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $greet
close $file
puthelp "NOTICE $nick :Am adaugat urmatorul greet pentru $chan:"
puthelp "NOTICE $nick :$greet"
}

list {

if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set dir "logs/greet($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt greet-uri pentru $chan"
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de greet pentru $chan este:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$greet == ""} { puthelp "NOTICE $nick :Use $char(p)greet del <numar>. Pentru a lista greet-urile si numerelor lor foloseste type $char(p)greet list"
return 0
}

if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)greet del <numar>. Pentru a lista greet-urile si numerelor lor foloseste type $char(p)greet list"
return 0
}

set dir "logs/greet($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters greet-ul cu numarul :$number pentru $chan."
puthelp "NOTICE $nick :Verifica daca este corect cu comanda $char(p)greet list"
}

}
}
}


proc greetpublic:join {nick host hand chan} {
global black
set dir "logs/greet($chan).txt"
if {![validchan $chan]} { return 0 }
if {[channel get $chan greet]} {
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
if {[isbotnick $nick]} { return 0 }
set replace(%nick%) $nick
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} { return 0 }
set lines [split $data "\n"]
set numlines [llength $lines]
set random [rand $numlines]
set randomline [lindex $lines $random]
set message [string map [array get replace] $randomline]
if {$black(howgreet) == "1"} {
puthelp "NOTICE $nick :$message"
} else { puthelp "PRIVMSG $nick :$message" }
}
}

################################ Leave ###################################


proc leavepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set dir "logs/leave($chan).txt"
set who [lindex [split $arg] 0]
set leave [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {$who == ""} { puthelp "NOTICE $nick :Use $char(p)leave <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +leave
puthelp "NOTICE $nick :Ai activat modulul de leave .Pentru a adauga un leave foloseste $char(p)leave add <mesaj>. Poti adauga cate vrei."
}

off {
channel set $chan -leave
puthelp "NOTICE $nick :Am dezactivat modulul de leave."
}

add {
if {$leave == ""} { puthelp "NOTICE $nick :Use $char(p)leave add <mesaj>"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $leave
close $file
puthelp "NOTICE $nick :Am adaugat urmatorul leave pentru $chan:"
puthelp "NOTICE $nick :$leave"
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/leave($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt leave-uri pentru $chan"
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de leave pentru $chan este:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$leave == ""} { puthelp "NOTICE $nick :Use $char(p)leave del <numar>. Pentru a lista leave-urile si numerelor lor foloseste type $char(p)leave list"
return 0
}

if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)leave del <numar>. Pentru a lista leave-urile si numerelor lor foloseste type $char(p)leave list"
return 0
}

set dir "logs/leave($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters leave-ul cu numarul :$number pentru $chan."
puthelp "NOTICE $nick :Verifica daca este corect cu comanda $char(p)leave list"
}

}
}
}

proc leavepublic:part {nick host hand chan args} {
global black
set dir "logs/leave($chan).txt"
if {![validchan $chan]} { return 0 }
if {[channel get $chan leave]} {
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
if {[isbotnick $nick]} { return 0 }
set replace(%nick%) $nick
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} { return 0 }
set lines [split $data "\n"]
set numlines [llength $lines]
set random [rand $numlines]
set randomline [lindex $lines $random]
set message [string map [array get replace] $randomline]
if {$black(howleave) == "1"} {
puthelp "NOTICE $nick :$message"
} else { puthelp "PRIVMSG $nick :$message" }
}
}

################################ Idle ###################################


proc antidlepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set flag "-|H"
set why [lindex [split $arg] 0]
set type [lindex [split $arg] 1]
set user [lindex [split $arg] 1]
set host [lindex [split $arg] 2]
if {$arg == ""} { puthelp "NOTICE $nick :Use $char(p)idle <on>/<off> (activezi modulul) | $char(p)idle op <on>/<off> (activezi idle-deop) | $char(p)idle voice <on>/<off> (activezi idle-devoice) | $char(p)idle add <nick> (adaugi exceptie)" 
return 0
}

if {([regexp -nocase -- {(#[0-9]+|op|voice|add|on|off)} $why tmp idler]) && (![regexp -nocase -- {\S#} $why])} {
    switch $idler {
on {
 channel set $chan +antidle
puthelp "NOTICE $nick :Am activat modulul de anti-idle, pentru a putea functiona activeaza una din optiuni : $char(p)idle op <on>/<off> (idle-deop) | $char(p)idle voice <on/<off> (idle-devoice)"
}
off {

 channel set $chan -antidle
puthelp "NOTICE $nick :I dezactivat modulul de anti-idle"
}

op {
 if {$type == ""} { puthelp "NOTICE $nick :Use $char(p)idle op <on>/<off>"
return 0
}
if {$type == "on"} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}
channel set $chan +antididle
puthelp "NOTICE $nick :Am activat idle-deop pe $chan"
}

if {$type == "off"} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}
channel set $chan -antididle
puthelp "NOTICE $nick :Am dezactivat idle-deop pe $chan"
}
}

voice {
 if {$type == ""} { puthelp "NOTICE $nick :Use $char(p)idle voice <on>/<off>"
return 0
}

if {$type == "on"} {

if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}
channel set $chan +antividle
puthelp "NOTICE $nick :Am activat idle-devoice pe $chan"
}

if {$type == "off"} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}

channel set $chan -antividle
puthelp "NOTICE $nick :Am dezactivat idle-devoice pe $chan"
}
}

add {

if {$user == ""} { puthelp "NOTICE $nick :Use $char(p)idle add <nick>"
return 0
}
if {![onchan $user $chan]} { puthelp "NOTICE $nick :$user nu este pe canal."
return 0
}

if {[validuser $user]} { 
chattr $user $flag $chan
puthelp "NOTICE $nick :$user este deja in baza mea de date il adaug doar ca exceptie.."
} else {
set hosts [getchanhost $user $chan]
set uhost "*!*@[lindex [split $hosts @] 1]"
adduser $user $uhost
chattr $user $flag $chan
puthelp "NOTICE $nick :Am adaugat ca exceptie pe $user cu host $uhost."
}
}

}
}
}



proc idlewhoispublic {min hour day mon year} {
global black botnick
if {([scan $min %d]+([scan $hour %d]*60)) % $black(idleinterval) == 0} {
foreach chan [channels] {
if {[channel get $chan antidle]} {
foreach user [chanlist $chan] { 
set user [split $user]
set handle [nick2hand $user]
if {[isop $user $chan] || [isvoice $user $chan]} { 
if {$user != $botnick} { putserv "WHOIS $user $user" }
} 
} 
} 
}
}

bind raw - 317 idleprocespublic
}

proc idleprocespublic {nick int arg} {
global black
set nick [string tolower [lindex $arg 1]]
set handle [nick2hand $nick]
set idler [string tolower [lindex $arg 2]]
set minutesidle [expr $idler / 60]
foreach chan [channels] {
set replace(%chan%) $chan
set idlevoicetime $black(idlevoicemax)
set idleoptime  $black(idleopmax)
set idleopmessage [string map [array get replace] $black(idleopmsg)]
set idlevoicemessage [string map [array get replace] $black(idlevoicemsg)]
set idleopmsg "$idleopmessage : Idle maxim : $idleoptime minute :Idle-ul tau : $minutesidle minute"
set idlevoicemsg "$idlevoicemessage : Idle maxim : $idlevoicetime minute :Idle-ul tau : $minutesidle minute"
if {[channel get $chan antividle]} {
if {[isvoice $nick $chan] && ![matchattr $handle -|H $chan]} {
if {$minutesidle > $idlevoicetime} {
putserv "MODE $chan -v $nick"
if {$black(idlemsg) == "1"} {
puthelp "PRIVMSG $nick :$idlevoicemsg"
}
}
}
}
if {[channel get $chan antididle]} {
if {[isop $nick $chan] && ![matchattr $handle -|H $chan]} {
if {$minutesidle > $idleoptime} {
putserv "MODE $chan -o $nick"
if {$black(idlemsg) == "1"} {
puthelp "PRIVMSG $nick :$idleopmsg"
}
}
}
}

}
}


######################################### AntiBotIdle #############################


proc botidlepublic {nick host hand chan arg} {
global black botnick sdir
set what [lindex [split $arg] 0]
set lin 0
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$what == ""} { puthelp "NOTICE $nick :Use $char(p)botidle <on> | <off> ."
return 0
}

switch -exact -- [string tolower $what] {
on {
set type "antibotidle:module ON"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
puthelp "NOTICE $nick :AntiBotIdle este activat deja."
return 0
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
puthelp "NOTICE $nick :Am activat modulul de AntiBotIdle"
timer $black(noidlemax) antibotidle:module
}

off {
puthelp "NOTICE $nick :Am dezactivat modulul de AntiBotIdle"
set type "antibotidle:module OFF"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
killtimer [lindex $tmr 2]
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
}

}
}

proc antibotidle:module {} {
global black
putquick "PRIVMSG $black(noobject) :"
timer $black(noidlemax) antibotidle:module
return 1
}

proc drpublic {nick host hand chan arg} {
global botnick black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set drone [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set handle [nick2hand $drone]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan dr-reason]
if {$getreason == ""} {set getreason $black(dreason)}
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan dr-bantime]
if {$getbantime == "0"} { set getbantime $black(drtime) }
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $drone]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {[onchan $drone $chan]} {
set mask *!*@[lindex [split [getchanhost $drone $chan] "@"] 1] 
}
if {$drone == ""} {
putquick "NOTICE $nick :Use : $char(p)dr <nick> | <host>"
return 0
 }
blacktools:banner:3 $mask $hand $chan $reason $getbantime DR($chan)
}



proc botpublic {nick host hand chan arg} {
global botnick black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set bot [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set handle [nick2hand $bot]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan bot-reason]
if {$getreason == ""} {set getreason $black(botreason)}
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan bot-bantime]
if {$getbantime == "0"} { set getbantime $black(bottime) }
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $bot]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {[onchan $bot $chan]} {
set mask *!*@[lindex [split [getchanhost $bot $chan] "@"] 1] 
}
if {$bot == ""} {
putquick "NOTICE $nick :Use : $char(p)bot <nick> | <host>"
return 0
 }
blacktools:banner:3 $mask $hand $chan $reason $getbantime bot($chan)
}


proc bpublic {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 0]
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $bnick]} {
    		return 0
}

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
      	putquick "NOTICE $nick :Use :$char(p)b <nick> | <host>"
 return 0
    	} 
blacktools:banner:3 $mask $hand $chan $reason $black(btime) b($chan)
}



proc b3public {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 0]
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
      	putquick "NOTICE $nick :Use :$char(p)b3 <nick> | <host>"
 return 0
    	} 
blacktools:banner:3 $mask $hand $chan $reason $black(b3time) b($chan)
}



proc b6public {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 0]
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
      	putquick "NOTICE $nick :Use :$char(p)b6 <nick> | <host>"
 return 0
    	} 
blacktools:banner:3 $mask $hand $chan $reason $black(b6time) b($chan)
}




proc b9public {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 0]
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
      	putquick "NOTICE $nick :Use :$char(p)b9 <nick> | <host>"
 return 0
    	} 
blacktools:banner:3 $mask $hand $chan $reason $black(b9time) b($chan)
}



proc b12public {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 0]
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
      	putquick "NOTICE $nick :Use :$char(p)b12 <nick> | <host>"
 return 0
    	} 
blacktools:banner:3 $mask $hand $chan $reason $black(b12time) b($chan)
}

################################### n #################################

proc npublic {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set handle [nick2hand $bnick]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
set getreason [channel get $chan n-reason]
if {$getreason == ""} { set getreason $black(nreason) }
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan n-bantime]
if {$getbantime == "0"} { set getbantime $black(ntime) }

if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}

if {$bnick == ""} {
putquick "NOTICE $nick :Use :$char(p)n <nick>"
return 0
} 


if {[onchan $bnick $chan]} {
set mask "$bnick*!*@*"
} else {puthelp "NOTICE $nick :$bnick nu este pe $chan."
return 0
}
blacktools:banner:3 $mask $hand $chan $reason $getbantime n($chan)
}


################################## u ##################################

proc upublic {nick host hand chan arg} {
global black
set uhost [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]

foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $backchan $chan]} {
if {[matchattr $hand -|q $c]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$uhost == ""} { puthelp "NOTICE $nick :Use $char(p)u <host>"
return 0
}

if {$uhost == "*!*@*"} { 
return 0 
}
if {![botisop $c]} {
putquick "NOTICE $nick :Nu am op pe $c.Nu pot executa"
return 0
}
if {[ispermban $uhost $c] && [matchattr $hand -|O $c]} {
puthelp "NOTICE $nick :Nu poti scoate acest ban de pe $c.Necesita nivel Senior+"
return 0
}
killchanban $c $uhost
puthelp "PRIVMSG $c :$char(p)ub $uhost"
puthelp "NOTICE $nick :Am scos $uhost din lista de banuri a canalului $c"
if {[onchan "X" $c]} {
putquick "PRIVMSG $black(chanserv) :unban $c $uhost"
}

}
}
}

proc cbpublic {nick host hand chan arg} {
global black
set uhost [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $backchan $chan]} {
if {[matchattr $hand -|q $c]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$uhost == ""} { puthelp "NOTICE $nick :Use $char(p)cb <host>"
return 0
}

if {$uhost == "*!*@*"} { 
return 0 
}
 foreach ban [banlist $c] {
 set expire [ctime [lindex $ban 2]]
 set created [ctime [lindex $ban 3]]
    if {[string match $uhost [string tolower [lindex $ban 0]]]} {
      if {[lindex $ban 2] == 0} {
      if {[isbansticky [lindex $ban 0] $c]} {
         puthelp "NOTICE $nick : 4Ban Local pe $c : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent , sticky"
        } else {
          puthelp "NOTICE $nick : 4Ban Local pe $c : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent"
        }

      } else { 
      if {[isbansticky [lindex $ban 0] $c]} {          
           puthelp "NOTICE $nick : 4Ban Local pe $c : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire ,sticky"

        } else {
          puthelp "NOTICE $nick : 4Ban Local pe $c : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire"
          
       }
      }

      set foundban 1
 }
    }

  if {![info exists foundban]} {
    puthelp "NOTICE $nick : Nu am gasit nimic in lista mea."
 return 0
  }
}

}
}

################################## id #################################

proc idpublic {nick host hand chan arg} {
global botnick black
set idnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set handle [nick2hand $idnick]
set uhost [getchanhost $idnick $chan]
set ident "[string trimleft [string tolower [lindex [split $uhost "@"] 0]] "~"]"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
set getreason [channel get $chan id-reason]
if {$getreason == ""} { set getreason $black(idreason) }

if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason"
}

set getbantime [channel get $chan id-bantime]
if {$getbantime == "0"} { set getbantime $black(idtime) }

if {[isbotnick $idnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}

if {$idnick == ""} {
      	putquick "NOTICE $nick :Use :$char(p)id <nick>"
 return 0
    	} 


if {[onchan $idnick $chan]} {
    		set mask "*!*$ident@*"
	} else { puthelp "NOTICE $nick :$idnick nu este pe $chan."
return 0
}
blacktools:banner:3 $mask $hand $chan $getreason $getbantime id($chan)
}

############################### black #################################

proc blackpublic {nick host hand chan arg} {
global botnick black
set blnick [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $blnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "BlackListed: $black(dfblackreason)"
 } else { set reason1 "BlackListed: $reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $blnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $blnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $blnick $chan] "@"] 1] 
}
if {$blnick == ""} {
      	putquick "NOTICE $nick :Use :$char(p)black <nick> | <host> <reason>"
 return 0
    	} 
blacktools:banner:3 $mask $hand $chan $reason 0 Black($chan)
}

################################ w ####################################

proc wpublic {nick host hand chan arg} {
global botnick black
set wnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set handle [nick2hand $wnick]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}


if {[isbotnick $wnick]} {
      return 0
  }
if {[matchattr $handle $black(exceptflags) $chan] && ($black(waccess) == "1")} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
set getreason [channel get $chan w-reason]
if {$getreason == ""} { set getreason $black(wreason) }

if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason"
}

if {![botisop $chan]} {
    putquick "NOTICE $nick :$black(noop)"
    return 0
  }
if {$wnick == ""} {
puthelp "NOTICE $nick :Use : $char(p)w <nick>"
return 0
}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA w($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA w($chan) $counts
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $wnick :$reason"
puthelp "PRIVMSG $wnick :$black(wmessage)"
}

############################### spam ##################################

proc spampublic {nick host hand chan arg} {
global botnick black prefix
set spammer [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 0]
set handle [nick2hand $spammer]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan spam-reason]
if {$getreason == ""} { set getreason $black(spamreason) }
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan spam-bantime]
if {$getbantime == "0"} { set getbantime $black(spamtime) }

if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $spammer]} {
    		return 0
}
if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {[onchan $spammer $chan]} {
    		set mask *!*@[lindex [split [getchanhost $spammer $chan] "@"] 1] 
}
if {$spammer == ""} {
      	putquick "NOTICE $nick :Use : $char(p)spam <nick> | <host>"
return 0
    	}
blacktools:banner:3 $mask $hand $chan $reason $getbantime spam($chan)
}

################################### k #################################


proc kpublic {nick host hand chan arg} {
global botnick black
set knick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $knick]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[isbotnick $knick]} {
return 0
}

if {[matchattr $handle $black(exceptflags) $chan] && ($black(kaccess) == "1")} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

if {$reason == ""} {set reason1 "$black(dfkreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}

if {$knick == ""} {
puthelp "NOTICE $nick :Use :$char(p)k <nick>"
return 0
}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA k($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA k($chan) $counts
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $knick :$reason"
}

################################### gag ###############################


proc gagpublic {nick host hand chan arg} {
global black
set gagger [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set handle [nick2hand $gagger]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$gagger == ""} { puthelp "NOTICE $nick :Use $char(p)gag <nick>"
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

if {[isbotnick $gagger]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}

if {[onchan $gagger $chan]} {
    		set mask *!*@[lindex [split [getchanhost $gagger $chan] "@"] 1] 
} else { puthelp "NOTICE $nick :$gagger nu se afla pe $chan."
return 0
}
putquick "MODE $chan +b $mask"
puthelp "NOTICE $gagger :$gagger ai fost redus la tacere.Asteapta sa primesti unban pentru a putea vorbii."
}



################################## bw #################################

proc bwpublic {nick host hand chan arg} {
  	global botnick black
set abuser [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set handle [nick2hand $abuser]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan bw-reason]
if {$getreason == ""} { set getreason $black(bwreason) }

if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan bw-bantime]
if {$getbantime == "0"} { set getbantime $black(bwtime) }
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $abuser]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {[onchan $abuser $chan]} {
set mask *!*@[lindex [split [getchanhost $abuser $chan] "@"] 1] 
}
if {$abuser == ""} {
putquick "NOTICE $nick :Use : $char(p)bw <nick> | <host>"
return 0
}
blacktools:banner:3 $mask $hand $chan $reason $getbantime bw($chan) 
}

################################ ub ###################################

proc ubpublic {nick host hand chan arg} {
  global botnick black
set ban [lindex [split $arg] 0]
set why [lindex [split $arg] 1]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {($ban == "") && [matchattr $hand nm|- $chan]} {
 puthelp "NOTICE $nick :Use : $char(p)ub *!*@host / $char(p)ub *!*@host global (scoti un ban global)"
return 0
}

if {$ban == ""} {putquick "NOTICE $nick :Use : $char(p)ub *!*@host"
return 0
}

  
    if {$ban == "*!*@*"} { 
return 0 
}
    if {![botisop $chan]} {
    putquick "NOTICE $nick :$black(noop)"
    return 0
  }
 if {[ispermban $ban $chan] && [matchattr $hand -|O $chan]} {
puthelp "NOTICE $nick :Nu poti scoate acest ban.Necesita nivel Senior+"
return 0
}

if {($why == "global") && [matchattr $hand nm|- $chan]} {
killban $ban
puthelp "NOTICE $nick :Am scos $ban din lista globala de banuri"
return 0
}
 
  killchanban $chan $ban
if {[onchan "X" $chan]} {
putquick "PRIVMSG $black(chanserv) :unban $chan $ban"
}
  putquick "MODE $chan -b $ban"
puthelp "NOTICE $nick :Am scos $ban din lista de banuri a canalului $chan"
 if {[channel get $chan chanreport]} {
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
puthelp "PRIVMSG $backchan :$hand a scos ban-ul de pe $chan de pe hostul $ban."
}

}

################################ sb ###################################   

proc sbpublic {nick host hand chan arg} {
   global botnick black
set bhost [string tolower [lindex [split $arg] 0]]
set what [lindex [split $arg] 1]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {([lindex $arg 0] == "") && [matchattr $hand mn|- $chan]} {
    puthelp "NOTICE $nick :Use : $char(p)sb *!*@host / $char(p)sb *!*@Host global (pt verificare ban global)"
    return 0
  }

if {[lindex $arg 0] == ""} {
    puthelp "NOTICE $nick :Use : $char(p)sb *!*@host"
    return 0
  }
if {($what == "global") && [matchattr $hand mn|- $chan]} {
  foreach ban [banlist] {
 set expire [ctime [lindex $ban 2]]
 set created [ctime [lindex $ban 3]]"
    if {[string match $bhost [string tolower [lindex $ban 0]]]} {
      if {[lindex $ban 2] == 0} {
      if {[isbansticky [lindex $ban 0]]} {
         puthelp "NOTICE $nick : 4Ban Global : 1[lindex $ban 0] | 4Setat de : 12[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent , sticky"
        } else {
          puthelp "NOTICE $nick : 4Ban Global : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent"
        }

      } else { 
      if {[isbansticky [lindex $ban 0]]} {          
           puthelp "NOTICE $nick : 4Ban Global : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire ,sticky"

        } else {
          puthelp "NOTICE $nick : 4Ban Global : 12[lindex $ban 0] | 4Setat de : 12[lindex $ban 5] | 4Motiv : 12[lindex $ban 1] | 4Creat in data de : 12$created | 4Expira la : 12$expire"
          
        }
      }

      set foundban 1
 }
    }
  }

set bhost [string tolower [lindex $arg 0]]
  foreach ban [banlist $chan] {
 set expire [ctime [lindex $ban 2]]
 set created [ctime [lindex $ban 3]]
    if {[string match $bhost [string tolower [lindex $ban 0]]]} {
      if {[lindex $ban 2] == 0} {
      if {[isbansticky [lindex $ban 0] $chan]} {
         puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent , sticky"
        } else {
          puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent"
        }

      } else { 
      if {[isbansticky [lindex $ban 0] $chan]} {          
           puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire ,sticky"

        } else {
          puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire"
          
       }
      }

      set foundban 1
 }
    }

  if {![info exists foundban]} {
    puthelp "NOTICE $nick : Nu am gasit nimic in lista mea."
 return 0
  }
}


################################# d ###################################


proc dpublic {nick host hand chan arg} {
global botnick black
set days [lindex [split $arg] 0]
set dnick [lindex [split $arg] 1]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 2 end]]
set handle [nick2hand $dnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$dnick == ""} {
putquick "NOTICE $nick :Use :$char(p)d <nr zile> <nick> | <host> <reason>"
 return 0
 }

if {![regexp {^[0-9]} $days]} {
puthelp "NOTICE $nick :Use :$char(p)d <nr zile> <nick> | <host> <reason>"
 return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfdreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $dnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $dnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $dnick $chan] "@"] 1] 
}

blacktools:banner:3 $mask $hand $chan $reason [expr $days * 1440] d($chan)
}

############################### stick #################################

proc stickpublic {nick host hand chan arg} {
global botnick black
set snick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set mask [lindex [split $arg] 0]
set time [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 2 end]]
set handle [nick2hand $snick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}
if {[matchattr $handle nm|AMOVS $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

if {$reason == ""} {set reason1 "$black(dfstickreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $snick]} {
    		return 0
         }
if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}
if {[onchan $snick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $snick $chan] "@"] 1] 
}
if {$snick == ""} {
      	putquick "NOTICE $nick :Use : $char(p)stick <nick> / <host> <nr zile> <motiv>"
return 0
    	} 
if {$time == ""} {
putquick "NOTICE $nick :Use : $char(p)stick <nick> / <host> <nr zile> <motiv>"
return 0
    	} 
blacktools:banner:3 $mask $hand $chan $reason [expr $time * 1440] stick($chan)
}

################################ gb ###################################

proc gbpublic {nick host hand chan arg} {
global black
set gbnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set time [lindex [split $arg] 1]
set mask [lindex [split $arg] 0]
set reason [join [lrange [split $arg] 2 end]]
set handle [nick2hand $gbnick]
set list [userlist $black(exceptflags)]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}
if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "(GLOBAL) $black(dfgbreason)"
 } else { set reason1 "(GLOBAL) $reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $gbnick]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}
if {[onchan $gbnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $gbnick $chan] "@"] 1] 
}
if {$gbnick == ""} {
      	putquick "NOTICE $nick :Use : $char(p)gb <nick> / <host> <ore> <reason>"
return 0
    	}
if {$time == ""} {
puthelp "NOTICE $nick :Use : $char(p)gb <nick> / <host> <ore> <reason>"
return 0
}
newban $mask $hand $reason [expr $time * 60]
puthelp "NOTICE $nick :Am adaugat ban global pe host :$mask pe timp :$time ore" 
}

################################### t #################################


proc tpublic {nick host hand chan arg} {
global black
set topics [join [lrange [split $arg] 0 end]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {![botisop $chan]} {
    putquick "NOTICE $nick :$black(noop)"
    return 0
}
if {$topics == ""} {
puthelp "NOTICE $nick :Use : $char(p)t <topic>"
return 0
}

if {$black(hand) == "1"} {
set topics "($hand) $topics"
} else { set topics "$topics" 
}
putquick "TOPIC $chan :$topics"
}

############################## status #################################


proc statuspublic {nick host hand chan arg} {
global botnick server uptime {server-online}
regsub -all " " [channels] ", " chans
catch {exec uptime} shelluptime
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
if {$shelluptime == ""} { set shelluptime "Nu am putut obtine UPTIME-UL server-ului !"
}
puthelp "NOTICE $nick :Sunt pornit de : $up"
puthelp "NOTICE $nick :Sunt conectat la server-ul :$server de : $on"
puthelp "NOTICE $nick :Am urmatoarele canale in memorie: $chans"
puthelp "NOTICE $nick :Uptime-ul server-ului : $shelluptime"
}

############################## uptime #################################

proc uptimepublic {nick host hand chan arg} {
global botnick uptime {server-online} server
catch {exec uptime} shelluptime
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
if {$shelluptime == ""} { set shelluptime "Nu am putut obtine UPTIME-UL server-ului !"
}
puthelp "NOTICE $nick :Sunt pornit de : $up"
puthelp "NOTICE $nick :Sunt conectat la server-ul :$server de : $on"
puthelp "NOTICE $nick :Uptime-ul server-ului : $shelluptime"
}

################################# i ###################################

proc ipublic {nick host hand chan arg} {
global botnick black
set inick [join [lrange [split $arg] 0 end]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set replace(%nick%) $nick
set replace(%chan%) $chan
set imessage [string map [array get replace] $black(imessage)]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$inick == ""} {
putquick "NOTICE $nick :Use : $char(p)i <nick> <nick1> <nick2>"
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
foreach in $inick {
if {[onchan $in $chan]} {
puthelp "NOTICE $nick :$in se afla deja pe $chan."
return 0
}

set countz [getuser $hand XTRA i($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA i($chan) $counts
putquick "INVITE $in $chan"
puthelp "PRIVMSG $in :$imessage"
puthelp "NOTICE $nick :Il invit pe $in pe $chan"
}
}

############################### addinfo ###############################


proc addinfopublic {nick uhost hand chan arg} {
  	global botnick black
set info [join [lrange [split $arg] 0 end]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$info == ""} { 
 puthelp "NOTICE $nick : Use : $char(p)addinfo <newinfo> pentru oprire $char(p)addinfo off"
return 0
}
if {[string match -nocase "$info" "off"]} {
set infos ""
setuser $hand info $infos ; putquick "NOTICE $nick :Am setat info OFF"
return 0
}
 
setuser $hand info $info ; putquick "NOTICE $nick :Am setat info : $info pentru $hand" 
}


################################### v #################################


proc vpublic {nick uhost hand chan arg} {
global botnick black
if {![botisop $chan]} { puthelp "NOTICE $nick :$black(noop)"
 return 0
}
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
set arg [split $arg]
set nick [split $nick]
if {$arg == ""} {
set arg $nick
}

foreach voicenick $arg {
if {[isbotnick $voicenick]} { return 0 }
if {[isvoice $voicenick $chan]} {putquick "MODE $chan -v $voicenick"} else {putquick "MODE $chan +v $voicenick"}
}

}

################################## o ##################################

proc opublic {nick uhost hand chan arg} {
global botnick black
if {![botisop $chan]} { puthelp "NOTICE $nick :$black(noop)"
 return 0
}
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
set arg [split $arg]
set nick [split $nick]
if {$arg == ""} {
set arg $nick
}

foreach opnick $arg {
if {[isbotnick $opnick]} { return 0 }
if {[isop $opnick $chan]} {putquick "MODE $chan -o $opnick"} else {putquick "MODE $chan +o $opnick"}
}

}


################################# l ###################################

proc lpublic {nick host hand chan arg} {
global black
set times [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]        
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {![botisop $chan]} {
puthelp "NOTICE $nick :$black(noop)"
return 0
}
if {$times == ""} { puthelp "NOTICE $nick :Use $char(p)l <secunde> "
return 0
}
if {$times >= 300} {
puthelp "NOTICE $nick :Valoarea este prea mare.Te rog foloseste o valoare sub 300 secunde (5 minute)!"
return 0
}
putserv "MODE $chan +$black(lmode)" ;utimer $times [list putquick "MODE $chan -$black(lmode)"]
puthelp "NOTICE $nick : Am pus +$black(lmode) pe $chan timp de $times secunde" 
}

proc chatpublic {nick host hand chan arg} {
global botnick
*ctcp:CHAT $nick $host $hand $botnick CHAT $arg
puthelp "NOTICE $nick :Am trimis cererea de CHAT."
} 

################################ ul ###################################


proc ulpublic {nick host hand chan arg} {
global black
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {![botisop $chan]} {
puthelp "NOTICE $nick :$black(noop)"
return 0
}
putquick "MODE $chan -$black(ulmodes)"
puthelp "NOTICE $nick :Am scos modurile +$black(ulmodes) de pe $chan in caz ca sunt aplicate"
}

################################ say ##################################


proc saypublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$text == ""} { 
puthelp "NOTICE $nick :Use : $char(p)say <text>"
return 0
}
putquick "PRIVMSG $chan :$text"
}

################################ act ##################################

proc actpublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$text == ""} { 
puthelp "NOTICE $nick :Use : $char(p)act <text>"
return 0
}
putquick "PRIVMSG $chan :\001ACTION $text\001"
}

############################## broadcast ##############################

proc broadcastpublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$text == ""} { 
puthelp "NOTICE $nick :Use : $char(p)broadcast <text>"
return 0
}
foreach c [channels] {
putquick "PRIVMSG $c :(BROADCAST) $text"
}
}

############################### check #################################

proc checkpublic {nick host hand chan arg} {
 global black
set checked [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set handle [nick2hand $checked]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

if {[isbotnick $checked]} {
    		return 0
}
if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
  	}
 if {![onchan $checked $chan]} { puthelp "NOTICE $nick :$checked nu se afla pe canal."
return 0
}
if {[onchan $checked $chan]} {
    		set mask *!*@[lindex [split [getchanhost $checked $chan] "@"] 1] 
	}
if {$checked == ""} {
      	putquick "NOTICE $nick :Use : $char(p)check <nick>"
return 0
    	}
set countz [getuser $hand XTRA check($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA check($chan) $counts
putquick "PRIVMSG $checked :$black(checkmsg)"
}

############################## version ################################

proc versionpublic {nick host hand chan arg} {
global botnick black
puthelp "NOTICE $nick :1VERSIUNE SCRIPT : 4BlackToolS 2.2  1Created by 12BLaCkShaDoW . 1Pentru mai multe informatii ---=1 4WwW.TclScripts.Net 1or 4#TCL-HELP @ UNDERNET"
}

############################### cycle #################################

proc cyclepublic {nick host hand chan arg} {
global black
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
putquick "PART $chan :$black(cyclereason)"
utimer 5 [list putquick "JOIN $chan"]
}

################################ away #################################

proc awaypublic {nick host hand chan arg} {
global black wdir
set aw [join [lrange [split $arg] 0 end]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$aw == "" } {puthelp "NOTICE $nick :Use $char(p)away <text> / Pentru a sterge away scrie : $char(p)away off"
return 0
}
if {[string match -nocase "$aw" "off"]} { 
putquick "NOTICE $nick :Mi-am setat AWAY OFF"
putquick "AWAY :" 
set type [open $wdir w]
set none ""
puts $type "$none"
close $type

return 0
} else {
putquick "NOTICE $nick :Mi-am setat ca AWAY :$aw" ; putquick "AWAY :$aw"
set type [open $wdir w]
puts $type "$aw"
close $type
}
}

proc setaway {my} {
global wdir
if {[file exists $wdir] == 0} {
set file [open $wdir a]
close $file
}
set aways [open $wdir r]
set away "[gets $aways]"
catch {close $aways}
if {$away == ""} {
 return 0 
} else {
putserv "AWAY :"
putserv "AWAY :$away"
}
}

proc modepublic {nick host hand chan arg} {
global black
set modes [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$modes == ""} { puthelp "NOTICE $nick :Use : $char(p)mode +mode"
return 0
}
if {![regexp {^[+ -]} $modes]} {
puthelp "NOTICE $nick :Use : $char(p)mode +mode"

return 0
}
puthelp "NOTICE $nick :Am aplicat modurile $modes pe $chan !"
putserv "MODE $chan $modes"
}

################################# set #################################

proc setpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set flags [lindex [split $arg] 0]
set type [lrange [split $arg] 1 end]

if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$flags == "" } { puthelp "NOTICE $nick :Use : $char(p)set +flag | $char(p)set flag 0:0"
return 0
}
 if {$type == ""} {
set why [catch {channel set $chan $flags} error]
if {$why == "1"} { puthelp "NOTICE $nick :1Nu am putut seta 12$flags 1pe $chan."
return 0
} else {
channel set $chan $flags ; putquick "NOTICE $nick :1Am setat 12$flags 1pe $chan"
}
 
} else {
set why [catch {channel set $chan $flags $type} error]
if {!([matchattr $hand mn|- $chan]) && [string match -nocase "backchan" $flags]} {
return 0
}
if {$why == "1"} { puthelp "NOTICE $nick :1Nu am putut seta1 12$flags 4$type 1pe $chan."
return 0
} else {
 channel set $chan $flags $type ; putquick "NOTICE $nick :1Am setat1 4$flags 12$type 1pe $chan" 
}
}
}


proc ignorepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set what [lindex [split $arg] 0]
set mask [lindex [split $arg] 1]
set time [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
if {$what == ""} { puthelp "NOTICE $nick :Use $char(p)ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
return 0
}
switch -exact -- [string tolower $what] {

list {

if {[llength [ignorelist]] == "0"} { puthelp "NOTICE $nick :Nu sunt ignoruri date."
return 0
}
foreach ig [ignorelist] {
set hostig [lindex $ig 0]
set byig [lindex $ig 4]
set time [lindex $ig 2]
set reasig [lindex $ig 1]
if {$time != "0"} {
set bytime [duration [expr $time - [unixtime]]]
} else { set bytime "-"}
puthelp "NOTICE $nick :12$hostig 1de :12$byig1 1motiv :12$reasig 1timp :12$bytime" 
}
}

add {
if {$mask == ""} { puthelp "NOTICE $nick :Use $char(p)ignore add <mask> <time> <reason>"
return 0
}
if {[isignore $mask]} {
puthelp "NOTICE $nick :1Eroare.$mask are deja ignore."
return 0
}

if {![regexp {^[0-9]} $time]} {
set time "60"
}
if {$reason == ""} { set reason "No Reason" }
newignore $mask $hand $reason $time
puthelp "NOTICE $nick :Am adaugat ignore pe $mask cu motiv :$reason cu timp :$time"
}



delete {
if {$mask == ""} { puthelp "NOTICE $nick :Use $char(p)ignore delete <mask>"
return 0
}

if {[isignore $mask]} {
killignore $mask
} else { puthelp "NOTICE $nick :Eroare.$mask nu are ignore."
return 0
} 
puthelp "NOTICE $nick :Am sters ignore pentru $mask."
}

}
}


################################# show ################################

proc showpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set wich [lindex [split $arg] 0]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$wich == ""} { puthelp "NOTICE $nick :Use : $char(p)show <flag> (ex : $char(p)show antipub-reason | flood-deop )"
return 0
}
set why [catch {channel get $chan $wich} error]
if {$why == "1"} { puthelp "NOTICE $nick :Nu am putut obtine informatii despre $wich."
return 0
} else {
set replyinfo [channel get $chan $wich]

if {($replyinfo == "") || ($replyinfo == "0")} {
switch -exact -- [string tolower $wich] {

antipub-reason {
set replyinfo "$black(antipubreason)"
}

joinflood {
set replyinfo "4 5"
}

chanflood {
set replyinfo "4 5"
}

private-bantime {
set replyinfo "$black(privatebantime)"
}

private-reason {
set replyinfo "$black(privatereason)"
}

antipub-bantime {
set replyinfo "$black(antipubbantime)"
}

antinotice-bantime {
set replyinfo "$black(antinoticebantime)"
}

antinotice-reason {
set replyinfo "$black(antinoticereason)"
}

antictcp-reason {
set replyinfo "$black(antictcpreason)"
}

antictcp-bantime {
set replyinfo "$black(antictcpbantime)"
}

antibadword-bantime {
set replyinfo "$black(antibadwordbantime)"
}

antibadword-reason {
set replyinfo "$black(antibadwordreason)"
}

antilongtext-reason {
set replyinfo "$black(longmsg)"
}

antilongtext-bantime {
set replyinfo "$black(longbantime)"
}

antibadquitpart-reason {
set replyinfo "$black(badquitpartreason)"
}

antibadquitpart-bantime {
set replyinfo "$black(badquitparttime)"
}

antijoinpart-reason {
set replyinfo "$black(joinpartmsg)"
}

antijoinpart-bantime {
set replyinfo "$black(joinpartbantime)"
}

antispam-bantime {
set replyinfo "$black(spamban)"
}

antispam-reason {
set replyinfo "$black(antispamreason)"
}

antirepeat-reason {
set replyinfo "$black(antirepeatmsg)"
}

antirepeat-bantime {
set replyinfo "$black(antirepeatbantime)"
}

anticolor-reason {
set replyinfo "$black(anticolormsg)"
}

anticolor-bantime {
set replyinfo "$black(anticolorbantime)"
}

antibold-reason {
set replyinfo "$black(antiboldmsg)"
}

antibold-bantime {
set replyinfo "$black(antiboldbantime)"
}

antiunderline-reason {
set replyinfo "$black(antiunderlinemsg)"
}

antiunderline-bantime {
set replyinfo "$black(antiunderlinebantime)"
}

anticaps-reason {
set replyinfo "$black(anticapsmsg)"
}

anticaps-bantime {
set replyinfo "$black(anticapsbantime)"
}

badfullname-reason {
set replyinfo "$black(badfreason)"
}

badfullname-bantime {
set replyinfo "$black(badfbantime)"
}

badnick-reason {
set replyinfo "$black(badnickreason)"
}

badnick-bantime {
set replyinfo "$black(badnickbantime)"
}

badident-reason {
set replyinfo "$black(badidentreason)"
}

badident-bantime {
set replyinfo "$black(badidentbantime)"
}

antichanflood-reason {
set replyinfo "$black(antifloodchanmsg)"
}

antichanflood-bantime {
set replyinfo "$black(antifloodchanbantime)"
}

badchan-reason {
set replyinfo "$black(badchanreason)"
}

badchan-bantime {
set replyinfo "$black(badcbantime)"
}

count-message {
set replyinfo "$black(countmsg)"
}

dr-reason {
set replyinfo "$black(dreason)"
}

dr-bantime {
set replyinfo "$black(drtime)"
}

bot-reason {
set replyinfo "$black(botreason)"
}

bot-bantime {
set replyinfo "$black(bottime)"
}

n-reason {
set replyinfo "$black(nreason)"
}

n-bantime {
set replyinfo "$black(ntime)"
}

id-reason {
set replyinfo "$black(idreason)"
}

id-bantime {
set replyinfo "$black(idtime)"
}

w-reason {
set replyinfo "$black(wreason)"
}

spam-reason {
set replyinfo "$black(spamreason)"
}

spam-bantime {
set replyinfo "$black(spamtime)"
}

bw-reason {
set replyinfo "$black(bwreason)"
}

bw-bantime {
set replyinfo "$black(bwtime)"
}

}
}

puthelp "NOTICE $nick :4$wich 1este setat la: $replyinfo"
}
}


################################ report ###############################

proc reportpublic {nick host hand chan arg} {
global black botnick
set stat [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$arg == ""} { puthelp "NOTICE $nick :Use : $char(p)report <abused> | <deoped> | <users> ."
return 0
}

if {([regexp -nocase -- {(#[0-9]+|abused|deoped|users)} $stat tmp reported]) && (![regexp -nocase -- {\S#} $stat])} {
    switch $reported {

 abused {
foreach c [channels] {
if {![onchan $botnick $c]} { lappend ab $c }
}

if {[info exists ab]} { 
puthelp "NOTICE $nick :Nu sunt pe urmatoarele canale :[join $ab ", "]." 
} else { 
puthelp "NOTICE $nick :Nu am nici un canal in lista."
}
}

deoped {
foreach c [channels] {
if {[onchan $botnick $c]} {
if {![botisop $c]} { lappend noopchans $c }
}
}
if {[info exists noopchans]} { 
puthelp "NOTICE $nick :Canalele pe care sunt dar nu am op sunt : [join $noopchans ", "]." 
} else { 
puthelp "NOTICE $nick :Nu am nici un canal in lista."
}
}

users {
foreach c [channels] {
if {[onchan $botnick $c]} {
set usersnumber [llength [chanlist $c]]
if {$usersnumber < $black(reportminusers)} {
lappend minuserschans $c
}
}
}
if {[info exists minuserschans]} { 
puthelp "NOTICE $nick :Canalele cu numarul de useri mai mic de $black(reportminusers) sunt : [join $minuserschans ", "]." 
} else { 
puthelp "NOTICE $nick :Nu am nici un canal in lista."
}
}
}
}
}

############################## silence ################################

proc silencepublic {nick host hand chan arg} {
global black
set value [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$value == ""} { puthelp "NOTICE $nick :Use : $char(p) silence on / off"
return 0
}
if {([regexp -nocase -- {(#[0-9]+|on|off)} $value tmp silents]) && (![regexp -nocase -- {\S#} $value])} {
 switch $silents {
on { putquick "NOTICE $nick :Mi-am pus SILENCE +*!*@*" ; putquick "SILENCE +*!*@*"             
}
off { putquick "NOTICE $nick :Mi-am scos SILENCE +*!*@*" ; putquick "SILENCE -*!*@*"            
}
}
}
}

############################## msg ####################################

proc msgpublic {nick host hand chan arg} {
global black
set nicks [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set msg [join [lrange [split $arg] 1 end]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$nicks == ""} {puthelp "NOTICE $nick :Use $char(p)msg <nick> <text>"
return 0
}
if {[isbotnick $nicks]} { 
return 0
 }
putquick "PRIVMSG $nicks :$msg"
}

proc resetpublic {nick host hand chan arg} {
global black
set dece [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$dece == ""} { puthelp "NOTICE $nick :Use $char(p) reset <flag> | <all>"
return 0
}
if {[string match -nocase "all" "$dece"]} {
set emptyflag "antipub-reason antinotice-reason antictcp-reason antibadword-reason antilongtext-reason antijoinpart-reason antirepeat-reason antispam-reason anticolor-reason antibold-reason antiunderline-reason anticaps-reason badfullname-reason badnick-reason badident-reason antichanflood-reason chanflood joinflood private-reason dr-reason n-reason id-reason spam-reason w-reason bw-reason bot-reason badchan-reason count-message"
foreach eflag $emptyflag {
channel set $chan $eflag ""
}
set zeroflag "antinotice-bantime antipub-bantime antictcp-bantime antibadword-bantime antilongtext-bantime antijoinpart-bantime antispam-bantime antirepeat-bantime anticolor-bantime antibold-bantime antiunderline-bantime anticaps-bantime badfullname-bantime badnick-bantime badident-bantime antichanflood-bantime private-bantime  dr-bantime n-bantime id-bantime spam-bantime bw-bantime bot-bantime"
foreach oflag $zeroflag {
channel set $chan $oflag 0
}

}
puthelp "NOTICE $nick :Am resetat motive & banuri pentru acest canal.."
}





############################## rehash #################################

proc rehashme {nick host hand arg} {
puthelp "NOTICE $nick :Mi-am dat rehash.."
 rehash
}

############################## VERSION ################################

proc blackreply {nick host hand dest key text} {
global ctcp-version
set {ctcp-version} "1Using 4BlackTools 2.2 1by 12BLaCkShaDoW"
}


############################## restart ################################

proc restartme {nick host hand arg} {
puthelp "NOTICE $nick :Mi-am dat restart.."
 restart
}

############################### save #################################

proc saveme {nick host hand arg} {
puthelp "NOTICE $nick :Salvez fisierele.."
 save
}

############################### jump #################################

proc jumpme {nick host hand arg} {
puthelp "NOTICE $nick :Schimb server-ul.."
 jump
}

############################### die ###################################

proc dieme {nick host hand arg} {
puthelp "NOTICE $nick :Si am murit.."
 die "byeeee"
}


############################## nick ###################################

proc nickpublic {altnick host hand arg} {
global nick
set newnick [lindex [split $arg] 0]
if {$nick == ""} { puthelp "NOTICE $nick :Use : nick <newnick>"
return 0
}
set nick $newnick
}



############################## addchan ################################

proc addchanpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]
if {$chans == ""} {puthelp "NOTICE $nick :Use : addchan #canal"
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 } 

if {[validchan $chans]} {
puthelp "NOTICE $nick :$chans este deja in lista mea de canale."
return 0
} else {
channel add $chans
puthelp "NOTICE $nick :Am adaugat $chans in lista mea de canale"
}
}


############################## delchan ################################


proc delchanpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]

if {$chans == ""} {puthelp "NOTICE $nick :Use : delchan #canal"
return 0 
}
if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 } 

if {![validchan $chans]} { puthelp "NOTICE $nick :$chans nu se afla in memoria mea."
return 0
}

channel remove $chans
puthelp "NOTICE $nick :Am sters $chans din lista mea de canale."
}


############################## suspend ################################

proc suspendpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]

if {$chans == ""} {puthelp "NOTICE $nick :Use : suspend #canal"
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 }

if {![validchan $chans]} { puthelp "NOTICE $nick :$chans nu se afla in memoria mea."
return 0
}

if { [channel get $chans inactive]} {
puthelp "NOTICE $nick :$chans are deja suspend" 
return 0
}
channel set $chans +inactive
puthelp "NOTICE $nick :Am setat suspend pentru canalul $chans"
}

############################# unsuspend ###############################

proc unsuspendpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]

if {$chans == ""} {puthelp "NOTICE $nick :Use : unsuspend #canal"
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 }
 
if {![validchan $chans]} { puthelp "NOTICE $nick :$chans nu se afla in memoria mea."
return 0
}

if {![channel get $chans inactive]} {
puthelp "NOTICE $nick :$chans nu are suspend"
return 0
 }
channel set $chans -inactive
puthelp "NOTICE $nick :Am setat unsuspend pentru canalul $chans"
}

################################ op ###################################

proc oppublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
puthelp "privmsg $nick :$chan nu este un canal valid !" 
return 0
 } 
if {![botisop $chan]} { puthelp "PRIVMSG $nick :$black(noop)"
return 0
}

if {![validchan $chan]} { puthelp "PRIVMSG $nick :$chan nu se afla in memoria mea."
return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
if {[isop $nickz $chan]} { puthelp "PRIVMSG $nick :$nickz are deja op.."
return 0
}
putquick "MODE $chan +o $nickz"

}
}
}
}

############################### deop ##################################

proc deoppublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
puthelp "privmsg $nick :$chan nu este un canal valid !" 
return 0
 } 
if {![botisop $chan]} { puthelp "PRIVMSG $nick :$black(noop)"
return 0
}

if {![validchan $chan]} { puthelp "PRIVMSG $nick :$chan nu se afla in memoria mea."
return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
putquick "MODE $chan -o $nickz"

}
}
}
}

############################### voice #################################

proc voicepublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
puthelp "privmsg $nick :$chan nu este un canal valid !" 
return 0
 } 
if {![botisop $chan]} { puthelp "PRIVMSG $nick :$black(noop)"
return 0
}

if {![validchan $chan]} { puthelp "PRIVMSG $nick :$chan nu se afla in memoria mea."
return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
if {[isvoice $nickz $chan]} { puthelp "PRIVMSG $nick :$nickz are deja voice.."
return 0
}
putquick "MODE $chan +v $nickz"

}
}
}
}

############################## devoice ################################

proc devoicepublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
puthelp "privmsg $nick :$chan nu este un canal valid !" 
return 0
 } 
if {![botisop $chan]} { puthelp "PRIVMSG $nick :$black(noop)"
return 0
}

if {![validchan $chan]} { puthelp "PRIVMSG $nick :$chan nu se afla in memoria mea."
return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
putquick "MODE $chan -v $nickz"

}
}
}
}

############################## invite #################################

proc invitepublic {nick host hand arg} {
global black
set chan [lindex $arg 0]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {[matchattr $hand nm|OASM $chan]} {
if {$chan == ""} { puthelp "PRIVMSG $nick :Use : invite <chan>"
return 0 
}
putquick "INVITE $nick $chan"
putquick "PRIVMSG $nick :Ai primit invite pe $chan te rog reintra !"
}
}



##############################add ######################################

proc add:process {args time level hand chan nick} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set flags "nm|NMOSAV"
foreach user $args {
if {$user != ""} {
set replace(%user%) $user
if {([string length $user]>=10) && ($black(maxhand) == "1")} {
set user [string range $user 0 8]
}

set uhost [string map [array get replace] $black(hostadd)]
if {[userlist] != ""} {
foreach usr [userlist] {
set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string match -nocase $usr $user])} {
puthelp "NOTICE $nick :Mai exista un user in baza mea de date cu acelasi host.Acesta este $usr."
return 0
}
}
}
}
 
if {[matchattr $hand -|A $chan] && ($level == "manager")} {
puthelp "NOTICE $nick :Nu poti da access de manager deoarece acesta este desupra level-ului tau." 
return 0
}
if {[matchattr $hand -|A $chan] && ($level == "admin")} {
puthelp "NOTICE $nick :Nu poti da access de admin deoarece acesta este level-ul tau." 
return 0
}
if {[matchattr $hand -|M $chan] && ($level == "manager")} {
puthelp "NOTICE $nick :Nu poti da access de admin deoarece acesta este level-ul tau." 
return 0
}

if {([regexp -nocase -- {(#[0-9]+|owner|manager|admin|senior|op|voice|protect)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
       manager { 
          set flags "-|olM"
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} { puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} { puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de manager pe $chan."
} else {
adduser $user $uhost
chattr $user -|-SOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de manager pe $chan."
}
}
     admin {

      set flags "-|olA"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de admin pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de admin pe $chan."
}
}

   senior {
     set flags "-|olS"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} {
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de senior pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de senior pe $chan."
}
}


owner {
if {[matchattr $hand n|- $chan]} {
 set flags "m|-"
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de owner."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de owner ."
}
}
}

op {
 set flags "-|olO"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de op pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de op pe $chan."
}
}

protect {
 set flags "-|H"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qHolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de Protect pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de Protect pe $chan."
}
}



 voice {
 set flags "-|olV"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de voice pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time

puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de voice pe $chan."
}
}
}
}
}
}
}



########################## adduser ################################

proc adduserpublic {nick host hand chan arg} {
global black
set level [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set args [lrange [split $arg] 1 end]
set time [ctime [unixtime]]
set flags "nm|NMOSVA"
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}
if {$arg == ""} {
puthelp "NOTICE $nick :Use $char(p)adduser <level> <nick1> <nick2> <nick3>.. (Nivele : voice, op, senior, admin, manager,protect)" 
return 0
}

foreach user $args {
if {$user != ""} {
if {![onchan $user $chan]} { puthelp "NOTICE $nick :$user nu se afla pe canal nu il pot adauga."
return 0
}

set handle [nick2hand $user]
set hosts [getchanhost $user $chan]
set uhost "*!*@[lindex [split $hosts @] 1]"


if {([string length $user]>=10) && ($black(maxhand) == "1")} {
set user [string range $user 0 8]
}
if {[userlist] != ""} {
foreach usr [userlist] {
set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string match -nocase $usr $user])} {
puthelp "NOTICE $nick :Mai exista un user in baza mea de date cu acelasi host.Acesta este $usr."
return 0
}
}
}
}

if {[matchattr $hand -|A $chan] && ($level == "manager")} {
puthelp "NOTICE $nick :Nu poti da access de manager deoarece acesta este desupra level-ului tau." 
return 0
}
if {[matchattr $hand -|A $chan] && ($level == "admin")} {
puthelp "NOTICE $nick :Nu poti da access de admin deoarece acesta este level-ul tau." 
return 0
}
if {[matchattr $hand -|M $chan] && ($level == "manager")} {
puthelp "NOTICE $nick :Nu poti da access de admin deoarece acesta este level-ul tau." 
return 0
}
if {([regexp -nocase -- {(#[0-9]+|owner|manager|admin|senior|op|voice|protect)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
       manager { 
          set flags "-|olM"
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} { puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} { puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de manager pe $chan."
} else {
adduser $user $uhost
chattr $user -|-SOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de manager pe $chan."
}
}
     admin {
      set flags "-|olA"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} {
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de admin pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de admin pe $chan."
}
}
   senior {
     set flags "-|olS"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} {
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de senior pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de senior pe $chan."
}
}

owner {
if {[matchattr $hand n|- $chan]} {
 set flags "m|-"
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de owner."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de owner ."
}
}
}

op {
 set flags "-|olO"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de op pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de op pe $chan."
}
}

protect {
 set flags "-|H"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de Protect pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de Protect pe $chan."
}
}



 voice {
 set flags "-|olV"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de voice pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time

puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de voice pe $chan."
}
}
}
}
}
}
}




proc publicadd {nick host hand chan arg} {
global black
set level [lindex [split $arg] 0]
set args [lrange [split $arg] 1 end]
set time [ctime [unixtime]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}
if {$arg == ""} {
puthelp "NOTICE $nick :Use $char(p)add <level> <user1> <user2> <user3>.. (Nivele : protect, voice, op, senior, admin, manager)" 
return 0
}
add:process $args $time $level $hand $chan $nick
}


############################## delacc ################################

proc delaccpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set args [lrange [split $arg] 0 end]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$args == ""} { puthelp "NOTICE $nick :Use : $char(p)delacc <user1> <user2> <user3>.."

return 0
}

foreach user $args {
if {$user != ""} {
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
puthelp "NOTICE $nick :Am sters access-ul pentru $user pe $chan."
} else { puthelp "NOTICE $nick :$black(nomem)" }
}
}
}

############################## del #####################################

proc delpublic {nick host hand chan arg} {
global black
set args [lrange [split $arg] 0 end]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]

if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$args == ""} { 
puthelp "NOTICE $nick :Use : $char(p)del <user1> <user2> <user3>.."
return 0
}
foreach user $args {
if {$user != ""} {
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
deluser $user
puthelp "NOTICE $nick :Am sters $user din memoria mea."
} else {puthelp "NOTICE $nick :$black(nomem)" }
}
}
}

################################ addhost #############################

proc addhostpublic {nick host hand chan arg} {
global black
set time [ctime [unixtime]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set user [lindex [split $arg] 0]
set hosts [lrange [split $arg] 1 end]

if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$hosts == ""} {puthelp "NOTICE $nick :Use : $char(p)addhost <user1> <*!*@host1.users.undernet.org>"
return 0
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
setuser $user HOSTS $hosts
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat :$hosts la $user"
} else { puthelp "NOTICE $nick :$black(nomem)" }
}


############################### delhost ############################


proc delhostpuplic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set hosts [lrange [split $arg] 1 end]
set time [ctime [unixtime]]

if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$hosts == ""} {puthelp "NOTICE $nick :Use : $char(p)delhost <user1> <*!*@host1.users.undernet.org>"
return 0
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} {
delhost $user $hosts
puthelp "NOTICE $nick :Am sters host-ul :$hosts de la user-ul :$user"
} else { 
puthelp "NOTICE $nick :$black(nomem)"
 }
}


proc chuserpublic {nick host hand chan arg} {
global black
set time [ctime [unixtime]]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set user [lindex [split $arg] 0]
set chandle [lindex [split $arg] 1]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$user == ""} { puthelp "NOTICE $nick :Use : $char(p)chuser <user> <newuser>"
return 0 
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} {
chhandle $user $chandle
setuser $chandle XTRA LASTMODIFBY $hand
setuser $chandle XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am schimbat user-ul $user in : $chandle ."
} else {puthelp "NOTICE $nick :$black(nomem)" }
}

proc userlist:execute {hand level chan nick} {
global black
if {([regexp -nocase -- {(#[0-9]+|manager|protect|admin|senior|op|voice|all|owner)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
     manager {
     set flags "-|M"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
    if {$list == ""} { set user "Momentan nu contine niciun user" }
puthelp "NOTICE $nick :4Am in memorie 12$numar 4useri cu access de Manager."
puthelp "NOTICE $nick :4Lista de useri 12Manager 4este urmatoarea.."
puthelp "NOTICE $nick :12$user"
}
}

admin {
  set flags "-|A"
  set numar [llength [userlist $flags $chan]]
  set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "Momentan nu contine niciun user" }
puthelp "NOTICE $nick :4Am in memorie 12$numar 4useri cu access de Administrator."
puthelp "NOTICE $nick :4Lista de useri 12Administrator 4este urmatoarea.."
puthelp "NOTICE $nick :12$user"
}
}

senior {
set flags "-|S"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "Momentan nu contine niciun user" }
puthelp "NOTICE $nick :4Am in memorie 12$numar 4useri cu access de Senior."
puthelp "NOTICE $nick :4Lista de useri 12Senior 4este urmatoarea.."
puthelp "NOTICE $nick :12$user"
}
}

protect {
set flags "-|H"
set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "Momentan nu contine niciun user" }
puthelp "NOTICE $nick :4Am in memorie 12$numar 4useri cu access de Protect."
puthelp "NOTICE $nick :4Lista de useri 12Protect 4este urmatoarea.."
puthelp "NOTICE $nick :12$user"
}
}

op  {
set flags "-|O"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "Momentan nu contine niciun user" }
puthelp "NOTICE $nick :4Am in memorie 12$numar 4useri cu access de Op."
puthelp "NOTICE $nick :4Lista de useri 12Op 4este urmatoarea.."
puthelp "NOTICE $nick :12$user"
}
}

owner {
if {[matchattr $hand nm|- $chan]} {
set bossflags "n|-"
set ownerflags "m|-"
set listbossowner [userlist $bossflags]
set listowner [userlist $ownerflags]
puthelp "NOTICE $nick :4BOSS OWNER :12$listbossowner"
puthelp "NOTICE $nick :4Lista OWNERI :12$listowner"
}
}

voice {
set flags "-|V"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "Momentan nu contine niciun user" }
puthelp "NOTICE $nick :4Am in memorie 12$numar 4useri cu access de Voice."
puthelp "NOTICE $nick :4Lista de useri 12Voice 4este urmatoarea.."
puthelp "NOTICE $nick :12$user"
}
}

all {
array set flgc [list]
set flags "-|MNASVO"
set list [userlist $flags $chan]
set numar [llength [userlist $flags $chan]]
foreach user $list {
if {[matchattr $user -|V $chan]} { 
lappend flgc(VOICE) $user

} elseif {[matchattr $user -|O $chan]} {
 
lappend flgc(OP) $user
} elseif {[matchattr $user -|S $chan]} {

lappend flgc(SENIOR) $user

} elseif {[matchattr $user -|A $chan]} {
 
lappend flgc(ADMINISTRATOR) $user

} elseif {[matchattr $user -|M $chan]} {
 
lappend flgc(MANAGER) $user
 
}
}

foreach flw [array names flgc] {
lappend messall [join 4$flgc($flw) " , "] -> 12($flw)
}
if {$list == ""} { set messall "Momentan nu contine niciun user" }
puthelp "NOTICE $nick :4Am in memorie 12$numar 4useri 4pe acest canal"
puthelp "NOTICE $nick :4Lista de useri este urmatoarea.."
foreach mes [wordwrap [join $messall] 250] {
puthelp "NOTICE $nick :$mes"
}
}

}
}
}

proc wordwrap {str {len 100} {splitChr { }}} { 
   set out [set cur {}]; set i 0 
   foreach word [split [set str][unset str] $splitChr] { 
     if {[incr i [string len $word]]>$len} { 
         lappend out [join $cur $splitChr] 
         set cur [list $word] 
         set i [string len $word] 
      } { 
         lappend cur $word 
      } 
      incr i 
   } 
   lappend out [join $cur $splitChr] 
} 



proc publicuserlist {nick host hand chan arg} {
global black
set level [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {($level == "") && [matchattr $hand nm|- $chan]} { puthelp "NOTICE $nick :Use : $char(p)userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> / <manager> / <owner>"
return 0
}
if {$level == ""} {puthelp "NOTICE $nick :Use : $char(p)userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> / <manager> /"
return 0
}
userlist:execute $hand $level $chan $nick
}

############################### info ############################

proc infopublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set time [ctime [unixtime]]
array set flg [list]
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}

if {$user == ""} {puthelp "NOTICE $nick :Use $char(p)info <user1>."
return 0
}
if {[validuser $user]} {
} else { puthelp "NOTICE $nick :$black(nomem)" 
return 0
}

if {[matchattr $hand nm|- $chan]} {
foreach c [channels] {
if {[matchattr $user -|V $c]} { 
set fl "VOICE"
lappend flg($fl) $c
} elseif {[matchattr $user -|O $c]} { 
set fl "OP" 
lappend flg($fl) $c
} elseif {[matchattr $user -|S $c]} {
 set fl "SENIOR"
lappend flg($fl) $c
} elseif {[matchattr $user -|A $c]} {
set fl "ADMINISTRATOR" 
lappend flg($fl) $c
} elseif {[matchattr $user -|M $c]} {
set fl "MANAGER" 
lappend flg($fl) $c 
}

}
foreach cf [array names flg] {

lappend exit 1[join $flg($cf) ,] 12($cf) |
}

}

if {![matchattr $user nm|OAHSMNV $chan]} { puthelp "NOTICE $nick :$black(noaccess)"
if {![info exists exit]} { set exit "Nu are access pe nici-un canal"}
puthelp "NOTICE $nick :Acesta are access pe urmatoarele canale : [join $exit]"
return 0
}

set cflags [chattr $user | $chan]
puthelp "NOTICE $nick :4Informatii despre 1$user"
puthelp "NOTICE $nick :4Timpul curent   : 1$time"
if {[matchattr $user -|V $chan]} { set flags "VOICE" } elseif {[matchattr $user -|O $chan]} { set flags "OP" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR" } elseif {[matchattr $user -|H $chan]} { set flags "PROTECT"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER" } elseif {[matchattr $user n|- $chan]} { set flags "THE BOSS OWNER" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER" } elseif {$cflags == "-|-"} {puthelp "NOTICE $nick :$user nu are ACCESS pe acest canal !" 
return 0
}


if {[matchattr $user -|q $chan]} {
if {[matchattr $user -|V $chan]} { set flags "VOICE (suspendat din functie)" } elseif {[matchattr $user -|O $chan]} { set flags "OP (suspendat din functie)" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR (suspendat din functie)" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR (suspendat din functie)" } elseif {[matchattr $user -|O $chan]} { set flags "PROTECT (suspendat din functie)"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER (suspendat din functie" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER (suspendat din functie)" } elseif {$cflags == "-|-"} {puthelp "NOTICE $nick :$user nu are ACCESS pe acest canal !" 
return 0
}
}


  puthelp "NOTICE $nick :4Nivel de access :1$flags"
if {[getuser $user INFO] != ""} {
   puthelp "NOTICE $nick :4Info - 12[getuser $user INFO]"
 }

 
set date [getuser $user XTRA LASTMODIFDATE]
if {[matchattr $user n|- $chan]} { set date "No Date" }
if {$date == ""} { set date "Nu este o data fixata" }

 set lastt [getuser $user XTRA LASTMODIFBY]
 if {$lastt == ""} { set lastt "No info" }
 if {[matchattr $user n|- $chan]} { set lastt "The One And Only" }
  puthelp "NOTICE $nick :4Ultima oara modificat de : 1$lastt in data de : 1$date"

if {[getuser $user HOSTS] != ""} {
     set hosts [getuser $user hosts]
     puthelp "NOTICE $nick :4HOSTURI: 1$hosts"
}

if {![info exists exit]} { set exit "Numai are access pe nici-un canal"}
if {![matchattr $user nm|- $chan]} {
puthelp "NOTICE $nick :4Acesta are access pe urmatoarele canale : [join $exit]"
}

set lastseen [getuser $user LASTON $chan]
if {($lastseen == "0") || ($lastseen == "")} { 
puthelp "NOTICE $nick :4Ultima oara vazut ONLINE :1Momentan nu exista informatii"
puthelp "NOTICE $nick :4Pentru a vedea statisticile privind activitatea user-ului $user tastati - 1$char(p)activ 4$user -"
puthelp "NOTICE $nick :4Sfarsit informatii.."
return 0
}
set seened [ctime $lastseen]
puthelp "NOTICE $nick :4Ultima oara vazut ONLINE :1$seened"
puthelp "NOTICE $nick :4Pentru a vedea statisticile privind activitatea user-ului $user tastati - 1$char(p)activ 4$user -"
puthelp "NOTICE $nick :4Sfarsit informatii.."
}


################################# s ###############################

proc spublic {nick host hand chan arg} {
global black
set flags "-|q"
set users [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}
if {$users == ""} { puthelp "NOTICE $nick :Use $char(p)s <user>."
return 0
}

if {[matchattr $users -|q $chan]} { puthelp "NOTICE $nick :$users este deja suspendat"
return 0
}

if {![validuser $users]} {
puthelp "NOTICE $nick :$black(nomem)"
return 0
}
if {![matchattr $users nm|OASMNV $chan]} { puthelp "NOTICE $nick :$black(noaccess)" 
return 0
}
 

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}


chattr $users $flags $chan
setuser $users XTRA LASTMODIFBY $hand
setuser $users XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :I-am suspendat acces-ul lui $users pe acest canal"
} 


################################## us ################################

proc uspublic {nick host hand chan arg} {
global black
set flags "-|-q"
set users [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$users == ""} { puthelp "NOTICE $nick :Use $char(p)us <user>."
return 0
}

if {![validuser $users]} {
puthelp "NOTICE $nick :$black(nomem)"
return 0
}
if {![matchattr $users nm|OASMNV $chan]} { puthelp "NOTICE $nick :$black(noaccess)" 
return 0
}

if {![matchattr $users -|q $chan]} { puthelp "NOTICE $nick :$users nu este suspendat"
return 0
}

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

setuser $users XTRA LASTMODIFBY $hand
setuser $users XTRA LASTMODIFDATE $time
chattr $users $flags $chan
puthelp "NOTICE $nick :I-am scos suspendul lui $users pe acest canal"
} 

############################## ping ##################################

proc pings {nick host hand chan arg} {
putquick "PRIVMSG $nick :\001PING [expr {abs([clock clicks -milliseconds])}]\001"
return 0
}

proc pingpublic {nick host hand dest key arg} {
set ping [split $arg "."]
set pingreply [lindex $ping 0]
if {[regexp -- {^-?[0-9]+$} $pingreply]} {
putserv "NOTICE $nick :Pingul tau este de [expr {abs([expr [expr {abs([clock clicks -milliseconds])} - $pingreply] / 1000.000])}] secunde"
}
}

############################### time ##################################

proc timepublic {nick host hand chan arg} {
global black
set time [ctime [unixtime]]
puthelp "PRIVMSG $chan :Timpul este : $time"
}

################################### vers ###############################

proc verspublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set ::verschan $chan
set ::versnick $nick
set why [lindex [split $arg] 0]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)vers <nick> ."
return 0
}
if {![onchan $why $chan]} { puthelp "NOTICE $nick :$why nu se afla pe acest canal"
return 0
}
putserv "PRIVMSG $why :\001VERSION\001"

}


proc ctcpvers {nickname hostname handle dest key arg} {
set text [split $arg]
set chan $::verschan
set nick $::versnick
putquick "NOTICE $::versnick :4$nickname are ca version : 12$text"
}

################################### whois ###############################

proc whoispublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set ::wnick $nick
set who [lindex [split $arg] 0]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$who == ""} { puthelp "NOTICE $nick :Use $char(p)whois <nick> ."
return 0
}
putquick "WHOIS $who $who"
bind RAW - 311 winfo
bind RAW - 319 wchannels
bind RAW - 401 nonicks
}

proc winfo { from keyword arguments } {
 set nick $::wnick
 set nickname [lindex [split $arguments] 1]
 set ident [lindex [split $arguments] 2]
 set host [lindex [split $arguments] 3]
 set realname [string range [join [lrange $arguments 5 end]] 1 end]

putquick "NOTICE $::wnick :4Informatii despre $nickname :4host - 12*!*$ident@$host * $realname"

unbind RAW - 311 winfo

}

proc wchannels { from keyword arguments } {
set nick $::wnick
set channels [string range [join [lrange $arguments 2 end]] 1 end]
putquick "NOTICE $::wnick :4Se afla pe canalele : 12$channels"

unbind RAW - 319 wchannels

}

proc nonicks { from keyword arguments } {
set nick $::wnick
putquick "NOTICE $nick :Nu exista un asemenea nick."
unbind RAW - 401 nonicks
}


################################### clear ###############################


proc clearpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set why [lindex [split $arg] 0]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :Use : $char(p)clear <banlist> | <userlist>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|banlist|userlist)} $why tmp cleanlist]) && (![regexp -nocase -- {\S#} $why])} {
    switch $cleanlist {
       userlist {
set list [userlist -|AOSV $chan]

foreach user $list {
chattr $user -|-AOVS $chan
}

puthelp "NOTICE $nick :Am sters toate accesele dupa $chan"
}

banlist {
if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
resetbans $chan
puthelp "NOTICE $nick :Am resetat banurile pentru $chan"
}

}
}
}


################################# addbot ################################


proc addbotpublic {nick host hand chan arg} {
global black
set flags "ao|ao"
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set why [lindex [split $arg] 0]
set host [lindex [split $arg] 1]
if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)addbot <handle> <host>"
return 0
}

if {$host == ""} { puthelp "NOTICE $nick :Use $char(p)addbot <handle> <host>"
return 0
}
addbot $why $host
chattr $why $flags $chan
puthelp "NOTICE $nick :Am adaugat bot-ul cu handle : $why , host : $host."
}

############################### autovoice #############################


proc autovoicepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set why [lindex [split $arg] 0]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)autovoice <on> | <off> | <status>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|status)} $why tmp auto]) && (![regexp -nocase -- {\S#} $why])} {
    switch $auto {
on {
channel set $chan +autovoice
puthelp "NOTICE $nick :Am activat autovoice."
}
off {
channel set $chan -autovoice
puthelp "NOTICE $nick :Am dezactivat autovoice."
}
status {
if {[channel get $chan autovoice]} {
puthelp "NOTICE $nick :Autovoice este activat"
} else { puthelp "NOTICE $nick :Autovoice este dezactivat" }
}

}
}
}

proc autovonjoin {nick host hand chan} {
if {[channel get $chan autovoice]} {
pushmode $chan +v $nick
}
}


############################# autoop #################################

proc autooppublic {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)autoop <on> | <off> | <status>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|status)} $why tmp auto]) && (![regexp -nocase -- {\S#} $why])} {
    switch $auto {
on {
channel set $chan +autoop
puthelp "NOTICE $nick :Am activat autoop."
}
off {
channel set $chan -autoop
puthelp "NOTICE $nick :Am dezactivat autoop."
}
status {
if {[channel get $chan autoop]} {
puthelp "NOTICE $nick :Autoop este activat"
} else { puthelp "NOTICE $nick :Autoop este dezactivat" }
}

}
}
}

proc autoponjoin {nick host hand chan} {
if {[channel get $chan autoop]} {
pushmode $chan +o $nick
}
}

############################# addop #################################

proc addoppublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set flag "-|a"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $char(p)addop <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am adaugat autoop pentru user-ul $user"
}

proc addopjoin {nick host hand chan} {
if {[matchattr $hand -|a $chan]} {
pushmode $chan +o $nick
}
}


########################### addvoice ################################

proc addvoicepublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set flag "-|g"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $char(p)addvoice <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am adaugat autovoice pentru user-ul $user"
}
 
proc addvoicejoin {nick host hand chan} {
if {[matchattr $hand -|g $chan]} {
pushmode $chan +v $nick
}
}

########################### delop ##################################

proc deloppublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set user [lindex [split $arg] 0]
set flag "-|-a"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $char(p)delop <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am sters autoop pentru user-ul $user"
}

############################ delvoice ###############################

proc delvoicepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set user [lindex [split $arg] 0]
set flag "-|-g"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $char(p)delvoice <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am sters autovoice pentru user-ul $user"
}

############################## activ ##################################

proc activpublic {nick host hand chan arg} { 
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set user [lindex [split $arg] 0]
if {$user == ""} { puthelp "NOTICE $nick :Use : $char(p) activ <user> ."
return 0
}

if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
if {![matchattr $user mn|OAVMS $chan]} { puthelp "NOTICE $nick :$black(noaccess)" 
return 0
}

set dr [getuser $user XTRA DR($chan)]
set ban [getuser $user XTRA b($chan)]
set spam [getuser $user XTRA spam($chan)]
set badnick [getuser $user XTRA n($chan)]
set invite [getuser $user XTRA i($chan)]
set blacks [getuser $user XTRA Black($chan)]
set warn [getuser $user XTRA w($chan)]
set day [getuser $user XTRA d($chan)]
set kick [getuser $user XTRA k($chan)]
set stick [getuser $user XTRA stick($chan)]
set bw [getuser $user XTRA bw($chan)]
set bot [getuser $user XTRA bot($chan)]

if {$ban == ""} { set ban "0" }
if {$dr == ""} { set dr "0" }
if {$spam == ""} { set spam "0" }
if {$badnick == ""} { set badnick "0" }
if {$invite == ""} { set invite "0" }
if {$blacks == ""} { set blacks "0" }
if {$warn == ""} { set warn "0" }
if {$day == ""} { set day "0" }
if {$kick == ""} { set kick "0" }
if {$stick == ""} { set stick "0" }
if {$bw == ""} { set bw "0" }
if {$bot == ""} { set bot "0" }

if {[matchattr $user mn|AMS $chan]} {
puthelp "NOTICE $nick :4Statisticile privind comenzile folosite de catre 12$user 4sunt :"
puthelp "NOTICE $nick : 12- $char(p)dr - 4($dr) | 12- $char(p)bot - 4($bot) | 12- $char(p)b - 4($ban) | 12- $char(p)spam - 4($spam) | 12- $char(p)n - 4($badnick) | 12- $char(p)i - 4($invite) | 12- $char(p)black - 4($blacks) | 12- $char(p)w - 4($warn) | 12- $char(p)d - 4($day) | 12- $char(p)k - 4($kick) | 12- $char(p)stick - 4($stick) | 12- $char(p)bw - 4($bw) ."
puthelp "NOTICE $nick :4Sfarsit lista.."
return 0
}
if {[matchattr $user -|O $chan]} {
puthelp "NOTICE $nick :4Statisticile privind comenzile folosite de catre 12$user 4avand access de OP sunt :"
puthelp "NOTICE $nick :12- $char(p)dr - 4($dr) | 12- $char(p)bot - 4($bot) | 12- $char(p)b - 4($ban) | 12- $char(p)spam - 4($spam) | 12- $char(p)n - 4($badnick) | 12- $char(p)i - 4($invite) | 12- $char(p)w - 4($warn) | 12- $char(p)k - 4($kick) | 12- $char(p)bw - 4($bw) ."
puthelp "NOTICE $nick :4Sfarsit lista.."
return 0
}
if {[matchattr $user -|V $chan]} {
puthelp "NOTICE $nick :4Statisticile privind comenzile folosite de catre 12$user 4avand access de VOICE sunt :"
puthelp "NOTICE $nick :12- $char(p)w - 4($warn) | 12- $char(p)k - 4($kick)"
puthelp "NOTICE $nick :4Sfarsit lista.."
return 0
}
}

proc addmyhostpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set why [lindex [split $arg] 0]
if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)addmyhost <host> ."
return 0
}
setuser $hand HOSTS $why
puthelp "NOTICE $nick :Ti-am adaugat ca host $why."
}

############################## delmyhost ##########################

proc delmyhostpublic {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$why == ""} { puthelp "NOTICE $nick :Use $char(p)delmyhost <host> ."
return 0
}
delhost $hand $why
puthelp "NOTICE $nick :Ti-am sters hostu-ul $why."
}


######################## cc (channel created) #######################

proc createdpublic { from keyword arguments } {
set chan $::chan
set date [lindex [split $arguments] 2]
set dates [ctime $date]
puthelp "PRIVMSG $chan :Canalul a fost creeat in data de :$dates"
unbind RAW - 329 createdpublic
}

proc nocreatedpublic { from keyword arguments } {
set chan $::chan
puthelp "PRIVMSG $chan :Acest canal nu este creeat.Te rog specifica altul"
unbind RAW - 403 nocreatedpublic

}

proc ccpublic {nick host hand chan arg} {
global black
set ::chan $chan
set c [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$c == ""} { puthelp "NOTICE $nick :Use $char(p)cc <chan>"
return 0
}
if {![regexp {^[\\+!#&]} $c]} {
set c #$c
 } 

putquick "MODE $c"
bind raw - 329 createdpublic
bind raw - 403 nocreatedpublic
}

####################### TopWords ####################################


proc topwordspublic {nick host hand chan arg} {
global black who username
if {[channel get $chan topwords]} {
set lin 0
set wordsdir "logs/$username.$chan.words.db"
if {![file exists $wordsdir]} {
set file [open $wordsdir w]
close $file
}
set host "*!*@[lindex [split $host @] 1]"
set len($host) [llength $arg]
set words($host:$chan) $len($host)
if {[isbotnick $nick]} { return 0 }
set who "$chan $nick $host $words($host:$chan)"
set file [open $wordsdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1] 
set hhost [lindex [split $line] 2]
set hscore [lindex [split $line] 3]
set chanentry [lindex [split $line] 0]
if {[string match -nocase $hhost $host] && [string match -nocase $chanentry $chan]} {
lappend current($hhost:$chan) $hscore
set who "$chan $nick $hhost [expr $words($host:$chan) + $current($hhost:$chan)]"
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $wordsdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $wordsdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $wordsdir "w"]
close $files
}
set file [open $wordsdir "a"]
puts $file "$who"
close $file
}
}


set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set black(cmdsvoice) "1Comenzi disponibile : 1$char(p)v <nick> | 4$char(p)userlist | 1$char(p)version | 4$char(p)info <user> | 1$char(p)addinfo <text> | 4$char(p)t <topic>"
set black(cmdsop) "1Comenzi disponibile : 1$char(p)v <nick> | 4$char(p)o <nick> | 1$char(p)userlist | 4$char(p)version | 1$char(p)info <user> | 4$char(p)ping | 1$char(p)act <mesaj> | 4$char(p)addinfo <text> | 1$char(p)t <topic> | 4$char(p)l <secunde> | 1$char(p)ul | 4$char(p)cycle | 1$char(p)mode <chanmode> | 4$char(p)i <nick> | 1$char(p)vers <nick> | 4$char(p)whois <nick> | 1$char(p)cc <canal> | 4$char(p)time .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(cmdsenior) "1Comenzi disponibile : :1$char(p)v <nick> | 4$char(p)o <nick> | 1$char(p)userlist | 4$char(p)version | 1$char(p)info <user> | 4$char(p)ping | 1$char(p)act <mesaj> | 4$char(p)addinfo <text> | 1$char(p)t <topic> | 4$char(p)l <secunde> | 1$char(p)ul | 4$char(p)cycle | 1$char(p)mode <chanmode> | 4$char(p)i <nick> | 1$char(p)vers <nick> | 4$char(p)whois <nick> | 1$char(p)cc <canal> | 4$char(p)time .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(cmdadmin) "1Comenzi disponibile : : 1$char(p)v <nick> | 4$char(p)o <nick> | 1$char(p)userlist | 4$char(p)version | 1$char(p)info <user> | 4$char(p)ping | 1$char(p)act <mesaj> | 4$char(p)addinfo <text> | 1$char(p)t <topic> | 4$char(p)l <secunde> | 1$char(p)ul | 4$char(p)cycle | 1$char(p)mode <chanmode> | 4$char(p)i <nick> | 1$char(p)vers <nick> | 4$char(p)whois <nick> | 1$char(p)cc <canal> | 4$char(p)time .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(cmdmanager) "1Comenzi disponibile : :1$char(p)v <nick> | 4$char(p)o <nick> | 1$char(p)userlist | 4$char(p)version | 1$char(p)info <user> | 4$char(p)ping | 1$char(p)act <mesaj> | 4$char(p)addinfo <text> | 1$char(p)t <topic> | 4$char(p)l <secunde> | 1$char(p)ul | 4$char(p)cycle | 1$char(p)mode <chanmode> | 4$char(p)i <nick> | 1$char(p)vers <nick> | 4$char(p)whois <nick> | 1$char(p)cc <canal> | 4$char(p)time 1$char(p)clear userlist | banlist .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(cmdowner) "1Comenzi disponibile : 1$char(p)v <nick> | 4$char(p)o <nick> | 1$char(p)userlist | 4$char(p)version | 1$char(p)info <user> | 4$char(p)ping | 1$char(p)act <mesaj> | 4$char(p)addinfo <text> | 1$char(p)t <topic> | 4$char(p)l <secunde> | 1$char(p)ul | 4$char(p)cycle | 1$char(p)mode <chanmode> | 4$char(p)i <nick> | 1$char(p)vers <nick> | 4$char(p)whois <nick> | 1$char(p)cc <canal> | 4$char(p)time 1$char(p)clear userlist | banlist .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(cmdbossowner) "1Comenzi disponibile : 1$char(p)v <nick> | 4$char(p)o <nick> | 1$char(p)userlist | 4$char(p)version | 1$char(p)info <user> | 4$char(p)ping | 1$char(p)act <mesaj> | 4$char(p)addinfo <text> | 1$char(p)t <topic> | 4$char(p)l <secunde> | 1$char(p)ul | 4$char(p)cycle | 1$char(p)mode <chanmode> | 4$char(p)i <nick> | 1$char(p)vers <nick> | 4$char(p)whois <nick> | 1$char(p)cc <canal> | 4$char(p)time | 1$char(p)clear userlist | banlist .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."

set black(banvoice) "1Comenzi disponibile : 1$char(p)k <nick> | 4$char(p)w <nick> | 1$char(p)check <nick> | 4$char(p)sb <host>"
set black(banop) "1Comenzi disponibile : 1$char(p)k <nick> | 4$char(p)w <nick> | 1$char(p)check <nick> | 4$char(p)sb <host> | 1$char(p)id <nick> | 4$char(p)n <nick> | 1$char(p)spam <nick> | 4$char(p)dr <nick> | 1$char(p)b <nick>/<host> <motiv> | 4$char(p)bot <nick>/<host> | 1$char(p)bw <nick>/<host> | 4$char(p)ub <host> | 1$char(p)gag <nick> ."
set black(bansenior) "1Comenzi disponibile : 1$char(p)k <nick> | 4$char(p)w <nick> | 1$char(p)check <nick> | 4$char(p)sb <host> | 1$char(p)id <nick> | 4$char(p)n <nick> | 1$char(p)spam <nick> | 4$char(p)dr <nick> | 1$char(p)b <nick>/<host> <motiv> | 4$char(p)ub <host> | 1$char(p)d <nr zile> <nick> / <host> <reason> | 4$char(p)b3 - $char(p)b6 - $char(p)b9 - $char(p)b12 1<nick> / <host> <reason> | 4$char(p)bot <nick>/<host> | 1$char(p)bw <nick>/<host> | 4$char(p)black <host> / <nick> <reason> | 1$char(p)stick <nick> / <host> <timp ore> <motiv> | 4$char(p)gag <nick> ."
set black(banadmin) "1Comenzi disponibile : 1$char(p)k <nick> | 4$char(p)w <nick> | 1$char(p)check <nick> | 4$char(p)sb <host> | 1$char(p)id <nick> | 4$char(p)n <nick> | 1$char(p)spam <nick> | 4$char(p)dr <nick> | 1$char(p)b <nick>/<host> <motiv> | 4$char(p)ub <host> | 1$char(p)d <nr zile> <nick> / <host> <reason> | 4$char(p)b3 - $char(p)b6 - $char(p)b9 - $char(p)b12 1<nick> / <host> <reason> | 4$char(p)bot <nick>/<host> | 1$char(p)bw <nick>/<host> | 4$char(p)black <host> / <nick> <reason> | 1$char(p)stick <nick> / <host> <timp ore> <motiv> | 4$char(p)gag <nick> ."
set black(banmanager) "1Comenzi disponibile : 1$char(p)k <nick> | 4$char(p)w <nick> | 1$char(p)check <nick> | 4$char(p)sb <host> | 1$char(p)id <nick> | 4$char(p)n <nick> | 1$char(p)spam <nick> | 4$char(p)dr <nick> | 1$char(p)b <nick>/<host> <motiv> | 4$char(p)ub <host> | 1$char(p)d <nr zile> <nick> / <host> <reason> | 4$char(p)b3 - $char(p)b6 - $char(p)b9 - $char(p)b12 1<nick> / <host> <reason> | 4$char(p)bot <nick>/<host> | 1$char(p)bw <nick>/<host> | 4$char(p)black <host> / <nick> <reason> | 1$char(p)stick <nick> / <host> <timp ore> <motiv> | 4$char(p)gag <nick> ."
set black(banowner) "1Comenzi disponibile : 1$char(p)k <nick> | 4$char(p)w <nick> | 1$char(p)check <nick> | 4$char(p)sb <host> | 1$char(p)id <nick> | 4$char(p)n <nick> | 1$char(p)spam <nick> | 4$char(p)dr <nick> | 1$char(p)b <nick>/<host> <motiv> | 4$char(p)ub <host> | 1$char(p)d <nr zile> <nick> / <host> <reason> | 4$char(p)b3 - $char(p)b6 - $char(p)b9 - $char(p)b12 1<nick> / <host> <reason> | 4$char(p)bot <nick>/<host> | 1$char(p)bw <nick>/<host> | 4$char(p)black <host> / <nick> <reason> | 1$char(p)stick <nick> / <host> <timp ore> <motiv> | 4$char(p)gag <nick> .1Comenzi pentru ban global : 4$char(p)gb <nick> / <host> <timp ore> <motiv> | 1$char(p)sb <*!*@ban> global | 4$char(p)ub <*!*@ban> global ."
set black(banbossowner) "1Comenzi disponibile : 1$char(p)k <nick> | 4$char(p)w <nick> | 1$char(p)check <nick> | 4$char(p)sb <host> | 1$char(p)id <nick> | 4$char(p)n <nick> | 1$char(p)spam <nick> | 4$char(p)dr <nick> | 1$char(p)b <nick>/<host> <motiv> | 4$char(p)ub <host> | 1$char(p)d <nr zile> <nick> / <host> <reason> | 4$char(p)b3 - $char(p)b6 - $char(p)b9 - $char(p)b12 1<nick> / <host> <reason> | 4$char(p)bot <nick>/<host> | 1$char(p)bw <nick>/<host> | 4$char(p)black <host> / <nick> <reason> | 1$char(p)stick <nick> / <host> <timp ore> <motiv> | 4$char(p)gag <nick> .1Comenzi pentru ban global : 4$char(p)gb <nick> / <host> <timp ore> <motiv> | 1$char(p)sb <*!*@ban> global | 4$char(p)ub <*!*@ban> global ."

set black(addadmin) "1Comenzi disponibile : 1$char(p)add <nivel> <user> 4(nivel= protect,voice,op,senior) | 1$char(p)adduser <nivel> <nick> 4(nivel= protect,voice,op,senior) | 1$char(p)delacc <user> ."
set black(addmanager) "1Comenzi disponibile : 1$char(p)add <nivel> <user> 4(nivel= protect,voice,op,senior,admin) | 1$char(p)adduser <nivel> <nick> 4(nivel= protect,voice,op,senior,admin) | 1$char(p)delacc <user> | 1$char(p)del <user>."
set black(addowner) "1Comenzi disponibile : 1$char(p)add <nivel> <user> 4(nivel= protect,voice,op,senior,admin,manager) | 1$char(p)adduser <nivel> <nick> 4(nivel= protect,voice,op,senior,admin,manager) | 1$char(p)delacc <user>"
set black(addbossowner) "1Comenzi disponibile : 1$char(p)add <nivel> <user> 4(nivel= protect,voice,op,senior,admin,manager,owner) | 1$char(p)adduser <nivel> <nick> 4(nivel= protect,voice,op,senior,admin,manager,owner) | 1$char(p)delacc <user> | 1$char(p)del <user>."


set black(modifadmin) "1Comenzi disponibile : 1$char(p)s <user> | 4$char(p)us <user> | 4$char(p)addvoice <user> | 1$char(p)delvoice <user> | 4$char(p)addop <user> | 1$char(p)delop <user> ."
set black(modifmanager) "1Comenzi disponibile : 1$char(p)addhost <user> <host> | 4$char(p)chuser <user> <newuser> | 1$char(p)s <user> | 4$char(p)us <user> | 1$char(p)delhost <user> <host> | 4$char(p)addvoice <user> | 1$char(p)delvoice <user> | 4$char(p)addop <user> | 1$char(p)delop <user> ."
set black(modifowner) "1Comenzi disponibile : 1$char(p)addhost <user> <host> | 4$char(p)chuser <user> <newuser> | 1$char(p)s <user> | 4$char(p)us <user> | 1$char(p)delhost <user> <host> | 4$char(p)addvoice <user> | 1$char(p)delvoice <user> | 4$char(p)addop <user> | 1$char(p)delop <user> | 4$char(p)addmyhost <host> 1(iti adaugi un host) | 1$char(p)delmyhost <host> 1(iti stergi un host)"
set black(modifbossowner) "1Comenzi disponibile : 1$char(p)addhost <user> <host> | 4$char(p)chuser <user> <newuser> | 1$char(p)s <user> | 4$char(p)us <user> | 1$char(p)delhost <user> <host> | 4$char(p)addvoice <user> | 1$char(p)delvoice <user> | 4$char(p)addop <user> | 1$char(p)delop <user> | 4$char(p)addmyhost <host> 1(iti adaugi un host) | 1$char(p)delmyhost <host> 1(iti stergi un host)"
set black(howner) "1Comenzi Privat : 1nick <newnick> | 4restart | 1rehash | 4die | 1suspend / unsuspend <canal> | 4delchan <canal> | 1addchan <canal> | 4save . Comenzi publice : 1$char(p)status | 4$char(p)uptime | 1$char(p)set +/-flag / $char(p)set flag number:number | 4$char(p)away <text> | 1$char(p)silence on/off | 4$char(p)jump <server> | 1$char(p)msg <nick/chan> <text> | 4$char(p)broadcast <text>  | 1$char(p)addbot <name> <host> | 4$char(p)report <abused> | <deoped> | <users> | 1$char(p)ignore <list> | <add> <host> <time> <reason> | <delete> <host> | 4$char(p)chat 12(DCC-CHAT) | 1$char(p)login 12(Logare la $black(chanserv))."


################################## TOP ################################

proc toppublic {nick host hand chan arg} {
global black username
set cmd [lindex [split $arg] 0]
set max "20"
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set list [userlist nm|OSVAM $chan]
set wordsdir "logs/$username.$chan.words.db"
if {![file exists $wordsdir]} {
set file [open $wordsdir w]
close $file
}
set i 0
if {$cmd == ""} { puthelp "NOTICE $nick :Use $char(p)top <command> ( <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d> ) | Use $char(p)top <words> (Top Words) "
return 0
}
 
switch -exact -- [string tolower $cmd] {
       dr {
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA DR($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)dr 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

 b {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA b($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)b 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

bot {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA bot($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)bot 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

bw {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA bw($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)bw 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

black {
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA Black($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)black 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}


spam {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA spam($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)spam 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

stick {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA stick($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)stick 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

n {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA n($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)n 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}


i {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA i($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)i 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

k {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA k($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)k 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

w {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA w($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)w 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

d {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA d($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "NOTICE $nick :12Topul pentru 4$char(p)d 12este :"
foreach txt [wordwrap [join $topblack " "] 300] {
puthelp "NOTICE $nick :$txt"
}
}

words {
array set topw [list]
set del [lindex [split $arg] 1]
if {![channel get $chan topwords]} {
puthelp "NOTICE $nick :Modulul de Top nu este activat."
return 0
}
if {[string match -nocase $del "erase"] && [matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :OK! sterg top-ul de cuvinte..."
set file [open $wordsdir "w"]
close $file
return 0
}
set file [open $wordsdir "r"]
set database [read -nonewline $file]
close $file
if {$database == ""} { puthelp "PRIVMSG $chan :Nu sunt useri in Top"
return 0
}
set data [split $database "\n"]
foreach line $data {
set hhost [lindex [split $line] 2]
set hentry [lindex [split $line] 1]
set chanentry [lindex [split $line] 0]
set tw [lindex [split $line] 3]
if {[string match -nocase $chanentry $chan]} {
lappend topw($tw) $hentry
}
}
foreach twords [lsort -integer -decreasing [array names topw]] {
set i [expr $i +1]
if {!($i > $max)} {
lappend topwo 1- $i - : 1[join $topw($twords) ,] 12($twords) |
}
}
if {![info exists topwo]} { puthelp "NOTICE $nick :Nu sunt useri in top"
return 0
}
puthelp "PRIVMSG $chan :Top-ul $max al celor mai vorbareti useri este :"
puthelp "PRIVMSG $chan :$topwo"

}

}
}

proc securepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set what [lindex [split $arg] 0]
if {$what == ""} { puthelp "NOTICE $nick :Use $char(p)secure <on> / <off>"
return 0
}
if {[string match -nocase "$what" "on"]} {
set char(a) "+"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
puthelp "NOTICE $nick :Am activat protectiile.."
}
if {[string match -nocase "$what" "off"]} {
set char(a) "-"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
puthelp "NOTICE $nick :AM dezactivat protectiile.."
}

}

proc hpublic {nick host hand chan arg} {
global black botnick
set command [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
h:process $nick $host $hand $chan $command
}


proc h:process {nick host hand chan command} {
global black botnick
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set black(newcmd) "1Acum puteti folosii comenzi si prin intermediul nick-ului Eggdrop-ului : 1<botnick> <comanda> 4( ex : $botnick dr user1 )"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$command == ""} {
if {[matchattr $hand n|- $chan]} {
putquick "NOTICE $nick :NIVEL ACCESS 12-= BOSS OWNER =-"
putquick "NOTICE $nick :Poti folosi: 1$char(p)h cmds | 4$char(p)h top | 1$char(p)h ban | 4$char(p)h add | 1$char(p)h modif | 4$char(p)h chaninfo | 1$char(p)h module | 4$char(p)h extra | 1$char(p)h owner ."
return 0
}
if {[matchattr $hand m|- $chan]} {
putquick "NOTICE $nick :NIVEL ACCESS 12-= OWNER =-"
putquick "NOTICE $nick :Poti folosi: 1$char(p)h cmds | 4$char(p)h top | 1$char(p)h ban | 4$char(p)h add | 1$char(p)h modif | 4$char(p)h chaninfo | 1$char(p)h module | 4$char(p)h extra | 1$char(p)h owner ."
return 0
}
if {[matchattr $hand -|V $chan]} {
putquick "NOTICE $nick :NIVEL ACCESS 12-= VOICE =-"
putquick "NOTICE $nick :Poti folosi: 12$char(p)h cmds | 4$char(p)h top "
return 0
}
if {[matchattr $hand -|O $chan]} {
putquick "NOTICE $nick :NIVEL ACCESS 12-= OP =-"
putquick "NOTICE $nick :Poti folosi: 1$char(p)h cmds | 4$char(p)h top | 1$char(p)h ban"
return 0
}
if {[matchattr $hand -|S $chan]} {
putquick "NOTICE $nick :NIVEL ACCESS 12-= SENIOR =-"
putquick "NOTICE $nick :Poti folosi: 1$char(p)h cmds | 4$char(p)h top | 1$char(p)h ban"
return 0
}
if {[matchattr $hand -|A $chan]} {
putquick "NOTICE $nick :NIVEL ACCESS 12-= ADMINISTRATOR =-"
putquick "NOTICE $nick :Poti folosi: 1$char(p)h cmds | 4$char(p)h top | 1$char(p)h ban | 4$char(p)h add | 1$char(p)h modif"
return 0
}
if {[matchattr $hand -|M $chan]} {
putquick "NOTICE $nick :NIVEL ACCESS 12-= MANAGER =-"
putquick "NOTICE $nick :Poti folosi: 1$char(p)h cmds | 4$char(p)h top | 1$char(p)h ban | 4$char(p)h add | 1$char(p)h modif | 4$char(p)h chaninfo | 1$char(p)h module | 4$char(p)h extra ."
return 0
}
return 0
}
switch -exact -- [string tolower $command] {

cmds {
if {[matchattr $hand -|V $chan]} {
putquick "NOTICE $nick :$black(cmdsvoice)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}

if {[matchattr $hand -|O $chan]} {
foreach txt [wordwrap [join $black(cmdsop) " "] 300] {
putserv "NOTICE $nick :$black(newcmd)"
putquick "NOTICE $nick :$txt"
}
return 0
}

if {[matchattr $hand -|S $chan]} {
foreach txt [wordwrap [join $black(cmdsenior) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand -|A $chan]} {
foreach txt [wordwrap [join $black(cmdadmin) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand -|M $chan]} {
foreach txt [wordwrap [join $black(cmdmanager) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand n|- $chan]} {
foreach txt [wordwrap [join $black(cmdbossowner) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand m|- $chan]} {
foreach txt [wordwrap [join $black(cmdowner) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}
}

ban {

if {[matchattr $hand -|V $chan]} {
foreach txt [wordwrap [join $black(banvoice) " "] 450] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand -|O $chan]} {
foreach txt [wordwrap [join $black(banop) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand -|S $chan]} {
foreach txt [wordwrap [join $black(bansenior) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand -|A $chan]} {
foreach txt [wordwrap [join $black(banadmin) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand -|M $chan]} {
foreach txt [wordwrap [join $black(banmanager) " "] 300] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand n|- $chan]} {
foreach txt [wordwrap [join $black(banbossowner) " "] 380] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}

if {[matchattr $hand m|- $chan]} {
foreach txt [wordwrap [join $black(banowner) " "] 380] {
putquick "NOTICE $nick :$txt"
putserv "NOTICE $nick :$black(newcmd)"
}
return 0
}
}

add {

if {[matchattr $hand -|A $chan]} {
putquick "NOTICE $nick :$black(addadmin)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}

if {[matchattr $hand -|M $chan]} {
putquick "NOTICE $nick :$black(addmanager)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}

if {[matchattr $hand n|- $chan]} {
putquick "NOTICE $nick :$black(addbossowner)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}

if {[matchattr $hand m|- $chan]} {
putquick "NOTICE $nick :$black(addowner)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}
}


modif {
if {[matchattr $hand -|A $chan]} {
putquick "NOTICE $nick :$black(modifadmin)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}

if {[matchattr $hand -|M $chan]} {
putquick "NOTICE $nick :$black(modifmanager)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}

if {[matchattr $hand n|- $chan]} {
putquick "NOTICE $nick :$black(modifbossowner)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}

if {[matchattr $hand m|- $chan]} {
putquick "NOTICE $nick :$black(modifowner)"
putserv "NOTICE $nick :$black(newcmd)"
return 0
}
}

owner {
if {[matchattr $hand nm|- $chan]} {
foreach txt [wordwrap [join $black(howner) " "] 390] {
putquick "NOTICE $nick :$txt"
}
putserv "NOTICE $nick :$black(newcmd)"
}
}

top {
if {[matchattr $hand nm|MASOV $chan]} {
set black(htop) "1Bun Venit 4$nick 1in sectiunea TOP. 1Aici gasesti statisticile fiecarei comenzi folosite de catre useri ordonate intr-un TOP .Comenzile care au disponibil un TOP sunt 4<dr> | <b> | <bw> | <bot> | <black> | <spam> | <stick> | <n> | <i> | <w> | <k> | <d>. 1Foloseste 4$char(p)top <comanda> 1(spre exemplu $char(p)top dr).Poti viziona si activitatea totala a unui user prin intermediul comenzii 4$char(p)activ <user>."
putquick "NOTICE $nick :$black(htop)"
}
}

chaninfo {
if {[matchattr $hand nm|M $chan]} {
if {[channel get $chan antipub]} { set pubstatus "+antipub" } else { set pubstatus "-antipub" }
if {[channel get $chan antinotice]} { set noticestatus "+antinotice" } else { set noticestatus "-antinotice" }
if {[channel get $chan antictcp]} { set ctcpstatus "+antictcp" } else { set ctcpstatus "-antictcp" }
if {[channel get $chan antibadword]} { set badwordstatus "+antibadword" } else { set badwordstatus "-antibadword" }
if {[channel get $chan antilongtext]} { set longtextstatus "+antilongtext" } else { set longtextstatus "-antilongtext" }
if {[channel get $chan badquitpart]} { set badquitpartstatus "+badquitpart" } else { set badquitpartstatus "-badquitpart" }
if {[channel get $chan antijoinpart]} { set joinpartstatus "+antijoinpart" } else { set joinpartstatus "-antijoinpart" }
if {[channel get $chan antispam]} { set antispamstatus "+antispam" } else { set antispamstatus "-antispam" }
if {[channel get $chan antirepeat]} { set repeatstatus "+antirepeat" } else { set repeatstatus "-antirepeat" }
if {[channel get $chan anticolor]} { set colorstatus "+anticolor" } else { set colorstatus "-anticolor" }
if {[channel get $chan antibold]} { set boldstatus "+antibold" } else { set boldstatus "-antibold" }
if {[channel get $chan antiunderline]} { set underlinestatus "+antiunderline" } else { set underlinestatus "-antiunderline" }
if {[channel get $chan anticaps]} { set capsstatus "+anticaps" } else { set capsstatus "-anticaps" }
if {[channel get $chan badnick]} { set nickstatus "+badnick" } else { set nickstatus "-badnick" }
if {[channel get $chan badfullname]} { set fullnamestatus "+badfullname" } else { set fullnamestatus "-badfullname" }
if {[channel get $chan autoop]} { set opstatus "+autoop" } else { set opstatus "-autoop" }
if {[channel get $chan autovoice]} { set voicestatus "+autovoice" } else { set voicestatus "-autovoice" }
if {[channel get $chan antijoinflood]} { set joinfloodstatus "+antijoinflood" } else { set joinfloodstatus "-antijoinflood" }
if {[channel get $chan antichanflood]} { set chanfloodstatus "+antichanflood" } else { set chanfloodstatus "-antichanflood" }
if {[channel get $chan badident]} { set badidentstatus "+badident" } else { set badidentstatus "-badident" }
set xbantime [channel get $chan xbantime]
if {$xbantime == "0"} { set xbantime 1 }
set xbanlevel [channel get $chan xbanlevel]
if {$xbanlevel == "0"} { set xbanlevel 100 }
set black(hchaninfo) "1Protectii Disponibile : 1$pubstatus | 4$noticestatus | 1$ctcpstatus | 4$badwordstatus | 1$longtextstatus | 4$badquitpartstatus | 1$joinpartstatus | 4$antispamstatus | 1$repeatstatus | 4$colorstatus | 1$boldstatus | 4$underlinestatus | 1$capsstatus | 4$nickstatus | 1$fullnamestatus | 4$opstatus | 1$voicestatus | 4$joinfloodstatus | 1$chanfloodstatus | 4$badidentstatus | 1xbantime $xbantime | 4xbanlevel $xbanlevel."
set black(hchaninfo1) "1Pentru a activa protectiile folositi urmatoarea comanda : 4$char(p)set +flag ( ex : .set +antipub | $botnick set +antipub ) 1Desigur aveti la dispozitie si comanda 4$char(p)secure on / off 1ce va permite sa activati / dezactivati toate protectiile."
puthelp "NOTICE $nick :$black(hchaninfo)"
puthelp "NOTICE $nick :$black(hchaninfo1)"
}
}

module {
if {[matchattr $hand nm|- $chan]} {
puthelp "NOTICE $nick :1Aveti urmatoarele module la dispozitie : 4TopicRefresh | 1Count | 4XtoolS | 1BadChan | 4Anunt | 1Limit | 4Topic | 1CloneScan | 4Seen | 1Greet | 4Leave | 1Idle | 4ChanReport | 1TopWords | 4Xban | 1AntiTake | 4Private | 1AutoBroadcast | 4AntiBotIdle."
} else { puthelp "NOTICE $nick :1Aveti urmatoarele module la dispozitie : 4TopicRefresh | 1Count | 4XtoolS | 1BadChan | 4Anunt | 1Limit | 4Topic | 1CloneScan | 4Seen | 1Greet | 4Leave | 1Idle | 4TopWords | 1Xban | 4AntiTake | 1Private." }
puthelp "NOTICE $nick :1Pentru a putea vizualiza detalii despre module precum si metodele de activare utilizati comanda 4$char(p)h <modul>4 1( ex: $char(p)h clonescan )"
}


antitake {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care are doua componente: Prima avand functia de protejare impotriva celor care nu au access la Eggdrop si dau DEOP iar cea de-a doua pentru cei care nu au access la Eggdrop si dau OP."
puthelp "NOTICE $nick :1Pentru activare / dezactivare a primei componente folositi : 4$char(p)set +dontdeop | $char(p)set -dontdeop"
puthelp "NOTICE $nick :1Pentru activare / dezactivare a celei de-a doua componente folositi : 4$char(p)set +dontop | $char(p)set -dontop"
puthelp "NOTICE $nick :1Pentru protectie cu privire la modurile canalului aveti urmatoarea comanda : 4$char(p)set chanmode +mode 12(ex: +nt , +stn)"
}
}

private {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat nu va lasa pe cei fara access la Eggdrop sa dea join pe canal."
puthelp "NOTICE $nick :1Puteti utiliza comenzile : 4$char(p)private <on>/<off> | <add> <nume> <host> | <list> | <del> <nume> - $botnick private <on>/<off> | <add> <nume> <host> | <list> | <del> <nume>"
}
}


xban {
set xbantime [channel get $chan xbantime]
if {$xbantime == "0"} { set xbantime 1 }
set xlevel [channel get $chan xbanlevel]
if {$xlevel == "0"} { set xlevel 100 }
if {[matchattr $hand nm|- $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat (in cazul canalelor cu $black(chanserv)) va face ca eggdrop-ul la fiecare ban aplicat de acesta sa il adauge si la $black(chanserv) pe un anumit timp si cu acelasi motiv.1"
puthelp "NOTICE $nick :1Pentru activare / dezactivare / setare utilizati : 4$char(p)set +xban | $char(p)set -xban | $char(p)set xbantime <numar> 1(timp banare la $black(chanserv) in ore. Default este 1) | 1$char(p)set xbanlevel <nivel> 1(nivel banare la $black(chanserv).Default este 100)."
puthelp "NOTICE $nick :1In acest moment setarile sunt: 4xbantime = $xbantime | xbanlevel = $xlevel"
}
}

topicrefresh {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat la un interval de timp (setat in script) v-a reimprospata Topic-ul pentru a evita pierderea lui."
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati : 4$char(p)refresh <on>/<off> | $botnick refresh <on>/<off>"
}
}

count {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va retine numarul celor care viziteaza canalul.De asemenea afiseaza la /join un mesaj continand numarul corespunzator vizitatorului."
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati : 4$char(p)count <on> | <off> | <display> | <reset> - $botnick count <on> | <off> | <display> | <reset>"
}
}

xtools {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va avea grija ca Eggdrop-ul sa isi i-a op de la X, sa isi dea unban,invite."
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati :1 4$char(p)xtools <on>/<off> | $botnick xtools <on>/<off>"
}
}

badchan {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va bana persoanele care intra pe canal si se afla pe canalele adaugate ca fiind interzise."
puthelp "NOTICE $nick :1Pentru activare / dezactivare / adaugare canale utilizati : 4$char(p)badchan  <on> | <off> | <add> <#chan> | <list> | <del> <numar> - $botnick badchan  <on> | <off> | <add> <#chan> | <list> | <del> <numar>"
}
}
anunt {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va da anunturi pe canal odata la un interval de timp (setat in script.Default este $black(anunttime))"
puthelp "NOTICE $nick :1Pentru activare / dezactivare / adaugare anunturi utilizati : 4$char(p)anunt <on> | <off> | <add> <mesaj> | <list> | <del> <numar> - $botnick anunt <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
}
}

autobroadcast {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va da mesaje pe toate canalele eggdrop-ului odata la un interval de timp (setat in script.Default este $black(bttime))"
puthelp "NOTICE $nick :1Pentru activare / dezactivare / adaugare mesaje utilizati : 4$char(p)bt <on> | <off> | <add> <mesaj> | <list> | <del> <numar> - $botnick bt <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
}
}

antibotidle {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat nu va lasa eggdrop-ul sa faca IDLE.Acest modul este bazat pe trimiterea unui mesaj catre un obiect inexistent."
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati :4$char(p)botidle <on> | <off> | 1(Idle maxim este setat in script la $black(noidlemax))"  
}
}

limit {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va avea grija de limita canalului sa nu depaseasca valoarea setata"
puthelp "NOTICE $nick :1Pentru activare / dezactivare : 4$char(p)limit <on> | <set> <number> | <off> - $botnick limit <on> | <set> <number> | <off>"
}
}

topic {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care va ajuta sa salvati , adaugati topic-uri intr-o lista a canalului.Din acea lista putand seta orice topic."
puthelp "NOTICE $nick :1Pentru adaugare / eliminare utilizati : 4$char(p)topic <save> | <list> | <add> | <del> <number> | set <number> - $botnick topic <save> | <list> | <add> | <del> <number> | set <number>"
}
}

seen {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va salva inregistrari cu join/part/quit/netsplit/nickchange a userilor de pe acel canal.Are o baza de date pentru fiecare canal."
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati : 4$char(p)set +seen | $char(p)set -seen - $botnick set +seen | $botnick set -seen"
}
}

clonescan {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat la un interval de timp va scana canalul de clone.Puteti alege din script metoda de actionare in caz ca se gasesc clone."
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati :1 4$char(p)set +clonescan | $char(p)set -clonescan - $botnick set +clonescan | $botnick set -clonescan."
puthelp "NOTICE $nick :1Aveti la dispozitie si o comanda de scanare manual : 4$char(p)clonescan 1iar Eggdrop-ul va va afisa host + nick la clone."
}
}

greet {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul prin care puteti adauga mesaje catre userii care dau join pe canal."
puthelp "NOTICE $nick :1Pentru activare / dezactivare / adaugare mesaje utilizati : 4$char(p)greet <on> | <off> | <add> | <list> | <del> - $botnick greet <on> | <off> | <add> | <list> | <del>"
}
}
leave {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul prin care puteti adauga mesaje catre userii care dau part la canal."
puthelp "NOTICE $nick :1Pentru activare / dezactivare / adaugare mesaje utilizati : 4$char(p)leave <on> | <off> | <add> | <list> | <del> - $botnick leave <on> | <off> | <add> | <list> | <del>"
}
}

idle {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat nu va lasa pe userii cu idle sa aibe @/+"
puthelp "NOTICE $nick :1Pentru activare / dezactivare / configurare utilizati : 4$char(p)idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> (adaugi exceptii)  - $botnick idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> (adaugi exceptii)"
}
}

chanreport {
if {[matchattr $hand nm|- $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat da posibilitatea ca fiecare canal sa aibe un backchan,in care eggdrop-ul va anunta banurile date de catre acesta pe canalul principal.1"
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati : 4$char(p)set +chanreport | -chanreport | $botnick set +chanreport | -chanreport .1Pentru setarea backchannel utilizati : 4$char(p)set backchan #canal | $botnick set backchan #canal."
puthelp "NOTICE $nick :1Odata cu setarea canalului backchan puteti folosii pe acesta urmatoarele comenzi : 4$char(p)cb <host> 12(verificare ban pe chan principal) | 1$char(p)u <host> 12(stergere ban de pe chan principal)."
}
}

topwords {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Reprezinta un modul care odata activat va inregistra activitatea userilor de pe chan (numarul de cuvinte scrise)."
puthelp "NOTICE $nick :1Pentru activare / dezactivare utilizati : 4$char(p)set +topwords | -topwords | $botnick set +topwords | -topwords .1Pentru vizualizarea top-ului 20 al celor mai vorbareti useri utilizati :4$char(p)top words."
puthelp "NOTICE $nick :1Pentru resetarea top-ului de cuvinte utilizati urmatoarea comanda : 4$char(p)top words erase ."
}
}

extra {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Bine ai venit in sectiunea extra ! De aici va puteti configura caracteristicile comenziilor / protectiilor (mesajele de kick - bantime) disponbile in BLaCkToolS. Lista este urmatoarea.."
puthelp "NOTICE $nick :12COMENZI : 4dr | 1n | 4id | 1w | 4spam | 1bw | 4bot."
puthelp "NOTICE $nick :12MODULE : 4badchannel | 1counter | 4privat."
puthelp "NOTICE $nick :12PROTECTII : 4antipub | 1antinotice | 4antictcp | 1antibadword | 4antilongtext | 1antibadquitpart | 4antijoinpart | 1antispam | 4antirepeat | 1anticolor | 4antibold | 1antiunderline | 4anticaps | 1badfullname | 4badnick | 1badident | 4antichanflood | 1antijoinflood ."
puthelp "NOTICE $nick :1Pentru vizualizare caracteristici comenzi / protectii / module utilizati comanda 4$char(p)h <nume> 12( ex: $char(p)h antipub | $char(p)h dr )"
puthelp "NOTICE $nick :1Pentru resetarea totala a motivelor & timpurilor de ban pentru acest canal utilizati comanda : 4$char(p)reset <all>."
}
}

antipub {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antipub-reason | antipub-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antipub-reason <motiv> | $char(p)set antipub-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antipub-reason | $char(p)show antipub-bantime ."  
}
}

privat {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4private-reason | private-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set private-reason <motiv> | $char(p)set private-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show private-reason | $char(p)show private-bantime ."  
}
}

antinotice {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antinotice-reason | antinotice-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antinotice-reason <motiv> | $char(p)set antinotice-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antinotice-reason | $char(p)show antinotice-bantime ."  
}
}

antictcp {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antictcp-reason | antictcp-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antictcp-reason <motiv> | $char(p)set antictcp-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antictcp-reason | $char(p)show antictcp-bantime ."  
}
}

antibadword {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antibadword-reason | antibadword-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antibadword-reason <motiv> | $char(p)set antibadword-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antibadword-reason | $char(p)show antibadword-bantime ."  
}
}

antilongtext {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antilongtext-reason | antilongtext-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antilongtext-reason <motiv> | $char(p)set antilongtext-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antilongtext-reason | $char(p)show antilongtext-bantime ."  
}
}
 
antibadquitpart {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antibadquitpart-reason | antibadquitpart-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antibadquitpart-reason <motiv> | $char(p)set antibadquitpart-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antibadquitpart-reason | $char(p)show antibadquitpart-bantime ."  
}
}

antijoinpart {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antijoinpart-reason | antijoinpart-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antijoinpart-reason <motiv> | $char(p)set antijoinpart-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antijoinpart-reason | $char(p)show antijoinpart-bantime ."  
}
}

antispam {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antispam-reason | antispam-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antispam-reason <motiv> | $char(p)set antispam-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antispam-reason | $char(p)show antispam-bantime ."  
}
}

antirepeat {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antirepeat-reason | antirepeat-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antirepeat-reason <motiv> | $char(p)set antirepeat-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antirepeat-reason | $char(p)show antirepeat-bantime ."  
}
}

anticolor {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4anticolor-reason | anticolor-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set anticolor-reason <motiv> | $char(p)set anticolor-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show anticolor-reason | $char(p)show anticolor-bantime ."  
}
}

antibold {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antibold-reason | antibold-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antibold-reason <motiv> | $char(p)set antibold-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antibold-reason | $char(p)show antibold-bantime ."  
}
}

antiunderline {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antiunderline-reason | antiunderline-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antiunderline-reason <motiv> | $char(p)set antiunderline-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antiunderline-reason | $char(p)show antiunderline-bantime ."  
}
}

anticaps {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4anticaps-reason | anticaps-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set anticaps-reason <motiv> | $char(p)set anticaps-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show anticaps-reason | $char(p)show anticaps-bantime ."  
}
}

badfullname {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4badfullname-reason | badfullname-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set badfullname-reason <motiv> | $char(p)set badfullname-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show badfullname-reason | $char(p)show badfullname-bantime ."  
}
}

badnick {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4badnick-reason | badnick-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set badnick-reason <motiv> | $char(p)set badnick-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show badnick-reason | $char(p)show badnick-bantime ."  
}
}

badident {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4badident-reason | badident-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set badident-reason <motiv> | $char(p)set badident-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show badident-reason | $char(p)show badident-bantime ."  
}
}

antichanflood {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4antichanflood-reason | antichanflood-bantime | chanflood ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set antichanflood-reason <motiv> | $char(p)set antichanflood-bantime <minute> | $char(p)set chanflood <numar linii> <nr secunde> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show antichanflood-reason | $char(p)show antichanflood-bantime | $char(p)show chanflood ."  
}
}

antijoinflood {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4joinflood"
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set joinflood <numar intrari> <nr secunde> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show joinflood"  
}
}

dr {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4dr-reason | dr-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set dr-reason <motiv> | $char(p)set dr-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show dr-reason | $char(p)show dr-bantime ."  
}
}

bot {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4bot-reason | bot-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set bot-reason <motiv> | $char(p)set bot-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show bot-reason | $char(p)show bot-bantime ."  
}
}


n {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4n-reason | n-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set n-reason <motiv> | $char(p)set n-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show n-reason | $char(p)show n-bantime ."  
}
}

id {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4id-reason | id-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set id-reason <motiv> | $char(p)set id-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show id-reason | $char(p)show id-bantime ."  
}
}

w {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4w-reason "
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set w-reason <motiv>"
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show w-reason ."  
}
}

spam {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4spam-reason | spam-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set spam-reason <motiv> | $char(p)set spam-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show spam-reason | $char(p)show spam-bantime ."  
}
}


bw {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4bw-reason | bw-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set bw-reason <motiv> | $char(p)set bw-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show bw-reason | $char(p)show bw-bantime ."  
}
}

badchannel {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4badchan-reason | badchan-bantime ."
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set badchan-reason <motiv> | $char(p)set badchan-bantime <minute> ."
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show badchan-reason | $char(p)show badchan-bantime ."  
}
}

counter {
if {[matchattr $hand nm|M $chan]} {
puthelp "NOTICE $nick :1Aveti la dispozitie urmatoarele optiuni : 4count-message"
puthelp "NOTICE $nick :1Pentru setarea optiunilor folositi : 4$char(p)set count-message <mesaj> "
puthelp "NOTICE $nick :1Pentru a vizualiza daca optiunea este setata folositi comanda : 4$char(p)show count-message"  
}
}

}
}




proc comand:pubme {nick host hand chan arg} {
global botnick wordsdir wdir sdir black seendir count server uptime {server-online}
set arg [split $arg]
set bnick [lindex [split $arg] 0]
set what [lindex [split $arg] 1]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {([lsearch -exact [string tolower $bnick] [string tolower $botnick]] == 0)} {
switch -exact -- [string tolower $what] {

clear {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :Use : $botnick clear <banlist> | <userlist>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|banlist|userlist)} $why tmp cleanlist]) && (![regexp -nocase -- {\S#} $why])} {
    switch $cleanlist {
       userlist {
set list [userlist -|AOSV $chan]

foreach user $list {
chattr $user -|-AOVS $chan
}

puthelp "NOTICE $nick :Am sters toate accesele dupa $chan"
}

banlist {
if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
resetbans $chan
puthelp "NOTICE $nick :Am resetat banurile pentru $chan"
}

}
}
}
}


private {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set user [lindex [split $arg] 3]
set host [lindex [split $arg] 4]
set flags "-|f"
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
return 0
}


if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $why tmp privat]) && (![regexp -nocase -- {\S#} $why])} {
    switch $privat {
on {
     channel set $chan +private
puthelp "NOTICE $nick :Am activat modulul privat pe $chan"
}

off {
     channel set $chan -private
puthelp "NOTICE $nick :Am dezactivat modulul privat pe $chan"
}

add {
if {$user == ""} { puthelp "NOTICE $nick :Use !private add <name> <host>"
return 0
}
if {$host == ""} { puthelp "NOTICE $nick :Use !private add <name> <host>"
return 0
}

if {[validuser $user]} { 
chattr $user $flags $chan
puthelp "NOTICE $nick :$user este deja in baza mea de date..il adaug ca exceptie"
return 0
}
adduser $user $host
chattr $user $flags $chan
puthelp "NOTICE $nick :Am adaugat $user cu $host ca exceptie la private"
}


del {
if {$user == ""} { puthelp "NOTICE $nick :Use !private del <name>"
return 0
}

if {[validuser $user]} {
chattr $user -|-f $chan
puthelp "NOTICE $nick :AM sters $user din lista de exceptii"
} else { puthelp "NOTICE $nick :$user nu este baza de date de exceptii."
return 0
}
}

list {
set list [userlist $flags $chan]
puthelp "NOTICE $nick :Users Exceptati de la privat : $list"
}

}
}
}
}

report {
if {[matchattr $hand nm|- $chan]} {
set stat [lindex [split $arg] 2]
if {$stat == ""} { puthelp "NOTICE $nick :Use : $botnick report <abused> | <deoped> | <users> ."
return 0
}

if {([regexp -nocase -- {(#[0-9]+|abused|deoped|users)} $stat tmp reported]) && (![regexp -nocase -- {\S#} $stat])} {
    switch $reported {

 abused {
foreach c [channels] {
if {![onchan $botnick $c]} { lappend ab $c }
}

if {[info exists ab]} { 
puthelp "NOTICE $nick :Nu sunt pe urmatoarele canale :[join $ab ", "]." 
} else { 
puthelp "NOTICE $nick :Nu am nici un canal in lista."
}
}

deoped {
foreach c [channels] {
if {[onchan $botnick $c]} {
if {![botisop $c]} { lappend noopchans $c }
}
}
if {[info exists noopchans]} { 
puthelp "NOTICE $nick :Canalele pe care sunt dar nu am op sunt : [join $noopchans ", "]." 
} else { 
puthelp "NOTICE $nick :Nu am nici un canal in lista."
}
}

users {
foreach c [channels] {
if {[onchan $botnick $c]} {
set usersnumber [llength [chanlist $c]]
if {$usersnumber < $black(reportminusers)} {
lappend minuserschans $c
}
}
}
if {[info exists minuserschans]} { 
puthelp "NOTICE $nick :Canalele cu numarul de useri mai mic de $black(reportminusers) sunt : [join $minuserschans ", "]." 
} else { 
puthelp "NOTICE $nick :Nu am nici un canal in lista."
}
}
}
}
}
}

login {
if {[matchattr $hand nm|MSOAV $chan]} {
putquick "PRIVMSG $black(host) :login $black(username) $black(password)"
putquick "MODE $botnick :$black(xmod)"
puthelp "NOTICE $nick :Ma loghez la $black(chanserv) .."
}
}

h {
if {[matchattr $hand nm|MSOAV $chan]} {
set command [lindex [split $arg] 2]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
h:process $nick $host $hand $chan $command
}
}

secure {
if {[matchattr $hand nm|M $chan]} {
set what [lindex [split $arg] 2]
if {$what == ""} { puthelp "NOTICE $nick :Use $botnick secure <on> / <off>"
return 0
}
if {[string match -nocase "$what" "on"]} {
set char(a) "+"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
puthelp "NOTICE $nick :Am activat protectiile.."
}
if {[string match -nocase "$what" "off"]} {
set char(a) "-"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
puthelp "NOTICE $nick :AM dezactivat protectiile.."
}
}
}

ignore {
set what [lindex [split $arg] 2]
set mask [lindex [split $arg] 3]
set time [lindex [split $arg] 4]
set reason [join [lrange [split $arg] 5 end]]
if {$what == ""} { puthelp "NOTICE $nick :Use $botnick ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
return 0
}
switch -exact -- [string tolower $what] {

list {

if {[llength [ignorelist]] == "0"} { puthelp "NOTICE $nick :Nu sunt ignoruri date."
return 0
}
foreach ig [ignorelist] {
set hostig [lindex $ig 0]
set byig [lindex $ig 4]
set time [lindex $ig 2]
set reasig [lindex $ig 1]
if {$time != "0"} {
set bytime [duration [expr $time - [unixtime]]]
} else { set bytime "-"}
puthelp "NOTICE $nick :12$hostig 1de :12$byig1 1motiv :12$reasig 1timp :12$bytime" 
}
}

add {
if {$mask == ""} { puthelp "NOTICE $nick :Use $botnick ignore add <mask> <time> <reason>"
return 0
}
if {[isignore $mask]} {
puthelp "NOTICE $nick :1Eroare.$mask are deja ignore."
return 0
}

if {![regexp {^[0-9]} $time]} {
set time "60"
}
if {$reason == ""} { set reason "No Reason" }
newignore $mask $hand $reason $time
puthelp "NOTICE $nick :Am adaugat ignore pe $mask cu motiv :$reason cu timp :$time"
}



delete {
if {$mask == ""} { puthelp "NOTICE $nick :Use $botnick ignore delete <mask>"
return 0
}

if {[isignore $mask]} {
killignore $mask
} else { puthelp "NOTICE $nick :Eroare.$mask nu are ignore."
return 0
} 
puthelp "NOTICE $nick :Am sters ignore pentru $mask."
}

}
}



idle {
if {[matchattr $hand nm|M $chan]} {
set flag "-|H"
set why [lindex [split $arg] 2]
set type [lindex [split $arg] 3]
set user [lindex [split $arg] 3]
set host [lindex [split $arg] 4]
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick idle <on>/<off> (activezi modulul) | $botnick idle op <on>/<off> (activezi idle-deop) | $botnick idle voice <on>/<off> (activezi idle-devoice) | $botnick idle add <nick> (adaugi exceptie)" 
return 0
}

if {([regexp -nocase -- {(#[0-9]+|op|voice|add|on|off)} $why tmp idler]) && (![regexp -nocase -- {\S#} $why])} {
    switch $idler {
on {
 channel set $chan +antidle
puthelp "NOTICE $nick :Am activat modulul de anti-idle, pentru a putea functiona activeaza una din optiuni : $botnick idle op <on>/<off> (idle-deop) | $botnick idle voice <on/<off> (idle-devoice)"
}
off {

 channel set $chan -antidle
puthelp "NOTICE $nick :I dezactivat modulul de anti-idle"
}

op {
 if {$type == ""} { puthelp "NOTICE $nick :Use $botnick idle op <on>/<off>"
return 0
}
if {$type == "on"} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}
channel set $chan +antididle
puthelp "NOTICE $nick :Am activat idle-deop pe $chan"
}

if {$type == "off"} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}
channel set $chan -antididle
puthelp "NOTICE $nick :Am dezactivat idle-deop pe $chan"
}
}

voice {
 if {$type == ""} { puthelp "NOTICE $nick :Use $char(p)idle voice <on>/<off>"
return 0
}

if {$type == "on"} {

if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}
channel set $chan +antividle
puthelp "NOTICE $nick :Am activat idle-devoice pe $chan"
}

if {$type == "off"} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { puthelp "NOTICE $nick :Mai intai activeaza modulul de anti-idle cu comanda $char(p)idle on"
return 0
}

channel set $chan -antividle
puthelp "NOTICE $nick :Am dezactivat idle-devoice pe $chan"
}
}

add {

if {$user == ""} { puthelp "NOTICE $nick :Use $botnick idle add <nick>"
return 0
}
if {![onchan $user $chan]} { puthelp "NOTICE $nick :$user nu este pe canal."
return 0
}

if {[validuser $user]} { 
chattr $user $flag $chan
puthelp "NOTICE $nick :$user este deja in baza mea de date il adaug doar ca exceptie.."
} else {
set hosts [getchanhost $user $chan]
set uhost "*!*@[lindex [split $hosts @] 1]"
adduser $user $uhost
chattr $user $flag $chan
puthelp "NOTICE $nick :Am adaugat ca exceptie pe $user cu host $uhost."
}
}

}
}
}
}

version {
if {[matchattr $hand nm|MASOV $chan]} {
puthelp "NOTICE $nick :1VERSIUNE SCRIPT : 4BlackToolS 2.2  1Created by 12BLaCkShaDoW . 1Pentru mai multe informatii ---=1 4WwW.TclScripts.Net 1or 4#TCL-HELP @ UNDERNET"
}
}

cc {
if {[matchattr $hand nm|MASO $chan]} {
set ::chan $chan
set c [lindex [split $arg] 2]
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
if {$c == ""} { puthelp "NOTICE $nick :Use $botnick cc <chan>"
return 0
}
if {![regexp {^[\\+!#&]} $c]} {
set c #$c
 } 

putquick "MODE $c"
bind raw - 329 createdpublic
bind raw - 403 nocreatedpublic
}
}

activ {
if {[matchattr $hand nm|MASOV $chan]} {
set char(p) [lindex $black(cmdchar) [rand [llength $black(cmdchar)]]]
set user [lindex [split $arg] 2]
if {$user == ""} { puthelp "NOTICE $nick :Use : $botnick activ <user> ."
return 0
}

if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
if {![matchattr $user mn|OAVMS $chan]} { puthelp "NOTICE $nick :$black(noaccess)" 
return 0
}

if {$user == ""} { puthelp "NOTICE $nick :Use : $botnick activ <user> ."
return 0
}

if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
if {![matchattr $user mn|OAVMS $chan]} { puthelp "NOTICE $nick :$black(noaccess)" 
return 0
}

set dr [getuser $user XTRA DR($chan)]
set ban [getuser $user XTRA b($chan)]
set spam [getuser $user XTRA spam($chan)]
set badnick [getuser $user XTRA n($chan)]
set invite [getuser $user XTRA i($chan)]
set blacks [getuser $user XTRA Black($chan)]
set warn [getuser $user XTRA w($chan)]
set day [getuser $user XTRA d($chan)]
set kick [getuser $user XTRA k($chan)]
set stick [getuser $user XTRA stick($chan)]
set bw [getuser $user XTRA bw($chan)]
set bot [getuser $user XTRA bot($chan)]

if {$ban == ""} { set ban "0" }
if {$dr == ""} { set dr "0" }
if {$spam == ""} { set spam "0" }
if {$badnick == ""} { set badnick "0" }
if {$invite == ""} { set invite "0" }
if {$blacks == ""} { set blacks "0" }
if {$warn == ""} { set warn "0" }
if {$day == ""} { set day "0" }
if {$kick == ""} { set kick "0" }
if {$stick == ""} { set stick "0" }
if {$bw == ""} { set bw "0" }
if {$bot == ""} { set bot "0" }

if {[matchattr $user mn|AMS $chan]} {
puthelp "NOTICE $nick :4Statisticile privind comenzile folosite de catre 12$user 4sunt :"
puthelp "NOTICE $nick : 12- $char(p)dr - 4($dr) | 12- $char(p)bot - 4($bot) | 12- $char(p)b - 4($ban) | 12- $char(p)spam - 4($spam) | 12- $char(p)n - 4($badnick) | 12- $char(p)i - 4($invite) | 12- $char(p)black - 4($blacks) | 12- $char(p)w - 4($warn) | 12- $char(p)d - 4($day) | 12- $char(p)k - 4($kick) | 12- $char(p)stick - 4($stick) | 12- $char(p)bw - 4($bw) ."
puthelp "NOTICE $nick :4Sfarsit lista.."
return 0
}
if {[matchattr $user -|O $chan]} {
puthelp "NOTICE $nick :4Statisticile privind comenzile folosite de catre 12$user 4avand access de OP sunt :"
puthelp "NOTICE $nick :12- $char(p)dr - 4($dr) | 12- $char(p)bot - 4($bot) | 12- $char(p)b - 4($ban) | 12- $char(p)spam - 4($spam) | 12- $char(p)n - 4($badnick) | 12- $char(p)i - 4($invite) | 12- $char(p)w - 4($warn) | 12- $char(p)k - 4($kick) | 12- $char(p)bw - 4($bw) ."
puthelp "NOTICE $nick :4Sfarsit lista.."
return 0
}
if {[matchattr $user -|V $chan]} {
puthelp "NOTICE $nick :4Statisticile privind comenzile folosite de catre 12$user 4avand access de VOICE sunt :"
puthelp "NOTICE $nick :12- $char(p)w - 4($warn) | 12- $char(p)k - 4($kick)"
puthelp "NOTICE $nick :4Sfarsit lista.."
return 0
}
}
}

delmyhost {
if {[matchattr $hand nm|- $chan]} {
set why [lindex [split $arg] 2]
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick addmyhost <host> ."
return 0
}
delhost $hand $why
puthelp "NOTICE $nick :Ti-am sters hostu-ul $why."
}
}

addmyhost {
if {[matchattr $hand nm|- $chan]} {
set why [lindex [split $arg] 2]
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick addmyhost <host> ."
return 0
}
setuser $hand HOSTS $why
puthelp "NOTICE $nick :Ti-am adaugat ca host $why."
}
}


leave {
if {[matchattr $hand nm|M $chan]} {
set dir "logs/leave($chan).txt"
set who [lindex [split $arg] 2]
set leave [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {$who == ""} { puthelp "NOTICE $nick :Use $botnick leave <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +leave
puthelp "NOTICE $nick :Ai activat modulul de leave .Pentru a adauga un leave foloseste $botnick leave add <mesaj>. Poti adauga cate vrei."
}

off {
channel set $chan -leave
puthelp "NOTICE $nick :Am dezactivat modulul de leave."
}

add {
if {$leave == ""} { puthelp "NOTICE $nick :Use $botnick leave add <mesaj>"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $leave
close $file
puthelp "NOTICE $nick :Am adaugat urmatorul leave pentru $chan:"
puthelp "NOTICE $nick :$leave"
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/leave($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt leave-uri pentru $chan"
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de leave pentru $chan este:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$leave == ""} { puthelp "NOTICE $nick :Use $botnick leave del <numar>. Pentru a lista leave-urile si numerelor lor foloseste type $botnick leave list"
return 0
}

if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)leave del <numar>. Pentru a lista leave-urile si numerelor lor foloseste type $char(p)leave list"
return 0
}

set dir "logs/leave($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters leave-ul cu numarul :$number pentru $chan."
puthelp "NOTICE $nick :Verifica daca este corect cu comanda $botnick leave list"
}

}
}
}
}


greet {
if {[matchattr $hand nm|M $chan]} {
set dir "logs/greet($chan).txt"
set who [lindex [split $arg] 2]
set greet [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {$who == ""} { puthelp "NOTICE $nick :Use $botnick greet <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +greet
puthelp "NOTICE $nick :Ai activat modulul de greet .Pentru a adauga un greet foloseste $botnick greet add <mesaj>. Poti adauga cate vrei."
}

off {
channel set $chan -greet
puthelp "NOTICE $nick :Am dezactivat modulul de greet."
}

add {
if {$greet == ""} { puthelp "NOTICE $nick :Use $botnick greet add <mesaj>"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $greet
close $file
puthelp "NOTICE $nick :Am adaugat urmatorul greet pentru $chan:"
puthelp "NOTICE $nick :$greet"
}

list {

if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set dir "logs/greet($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt greet-uri pentru $chan"
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de greet pentru $chan este:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$greet == ""} { puthelp "NOTICE $nick :Use $botnick greet del <numar>. Pentru a lista greet-urile si numerelor lor foloseste type $botnick greet list"
return 0
}
if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)greet del <numar>. Pentru a lista greet-urile si numerelor lor foloseste type $char(p)greet list"
return 0
}

set dir "logs/greet($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters greet-ul cu numarul :$number pentru $chan."
puthelp "NOTICE $nick :Verifica daca este corect cu comanda $botnick greet list"
}

}
}
}
}

chat {
if {[matchattr $hand nm|- $chan]} {
*ctcp:CHAT $nick $host $hand $botnick CHAT $arg
puthelp "NOTICE $nick :Am trimis cererea de CHAT."
} 
}

seen {
if {[matchattr $hand -|- $chan]} {
if {![channel get $chan seen]} {
return 0
}
set what [join [lindex [split $arg] 2]]
set number [scan $black(seenflood) %\[^:\]]
set timer [scan $black(seenflood) %*\[^:\]:%s]
foreach tmr [utimers] {
if {[string match "*count(flood:$host:$chan)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {![info exists count(flood:$host:$chan)]} { 
set count(flood:$host:$chan) 0 
}
incr count(flood:$host:$chan)
utimer $timer [list unset count(flood:$host:$chan)]

if {$count(flood:$host:$chan) == "$number"} {
puthelp "NOTICE $nick :Asteapta 1 minut pentru a putea cauta."
return 0
}


if {[string match -nocase $what $nick]} { puthelp "NOTICE $nick :$nick uite-te in oglinda"
return 0
}
if {[onchan $what $chan]} { puthelp "NOTICE $nick :$what este pe canal deja"
return 0
}

set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set userentry [lindex [split $line] 2]
set chanentry [lindex [split $line] 1]
set qhost [lindex [split $line] 3]
set tm [lindex [split $line] 4]
set reason [lrange [split $line] 5 end]
set totalyear [expr [unixtime] - $tm]

	if {$totalyear >= 31536000} {
		set yearsfull [expr $totalyear/31536000]
		set years [expr int($yearsfull)]
		set yearssub [expr 31536000*$years]
		set totalday [expr $totalyear - $yearssub]
	}
	if {$totalyear < 31536000} {
		set totalday $totalyear
		set years 0
	}
	if {$totalday >= 86400} {
		set daysfull [expr $totalday/86400]
		set days [expr int($daysfull)]
		set dayssub [expr 86400*$days]
		set totalhour [expr $totalday - $dayssub]
	}
	if {$totalday < 86400} {
		set totalhour $totalday
		set days 0
	}
	if {$totalhour >= 3600} {
		set hoursfull [expr $totalhour/3600]
		set hours [expr int($hoursfull)]
		set hourssub [expr 3600*$hours]
		set totalmin [expr $totalhour - $hourssub]
	}
	if {$totalhour < 3600} {
		set totalmin $totalhour
		set hours 0
	}
	if {$totalmin >= 60} {
		set minsfull [expr $totalmin/60]
		set mins [expr int($minsfull)]
	}
	if {$totalmin < 60} {
		set mins 0
	}
	if {$years < 1} {set yearstext ""} elseif {$years == 1} {set yearstext "$years an, "} {set yearstext "$years ani, "}

	if {$days < 1} {set daystext ""} elseif {$days == 1} {set daystext "$days zi, "} {set daystext "$days zile, "}

	if {$hours < 1} {set hourstext ""} elseif {$hours == 1} {set hourstext "$hours ore, "} {set hourstext "$hours ore, "}

	if {$mins < 1} {set minstext ""} elseif {$mins == 1} {set minstext "$mins minut"} {set minstext "$mins minute"}

	set output $yearstext$daystext$hourstext$minstext

if {$totalyear < 60} {
set output "$totalyear secunde"
}


if {[string match -nocase $what $userentry] && [string match -nocase $chanentry $chan]} {
lappend entry $userentry
set counts [llength $entry]
if {$counts >= 10} {
puthelp "NOTICE $nick :Prea multe rezultate obtinute.Reincearca"
return 0
}
set seenfound 1

if {[lindex [split $line] 0] == "PART"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) iesind acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "SIGN"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) iesind de pe IRC acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "JOIN"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) intrand acum $output."
}
if {[lindex [split $line] 0] == "SPLIT"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) iesind in *.net *.split acum $output."
}
if {[lindex [split $line] 0] == "KICK"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) primind KICK acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "NICKCHANGE"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) schimbandu-si nick-ul in $reason acum $output"
}
}
if {$what == "*!*@*"} { return 0 }
if {[string match -nocase $what $qhost] && [string match -nocase $chanentry $chan]} {
lappend entry $userentry
set counts [llength $entry]
if {$counts >= 15} {
puthelp "NOTICE $nick :Prea multe rezultate obtinute.Reincearca."
return 0
}
set seenfound 1
if {[lindex [split $line] 0] == "PART"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) iesind acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "SIGN"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) iesind de pe IRC acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "JOIN"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) intrand acum $output."
}
if {[lindex [split $line] 0] == "SPLIT"} {
set reply "Am gasit ($counst) resultate [join $entry ","] ($qhost) a fost vazut(a) iesind in *.net *.split acum $output."
}
if {[lindex [split $line] 0] == "KICK"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) primind KICK acum $output cu motiv-ul ($reason)."
}
if {[lindex [split $line] 0] == "NICKCHANGE"} {
set reply "Am gasit ($counts) resultate [join $entry ","] ($qhost) a fost vazut(a) schimbandu-si nick-ul in $reason acum $output"
}
}
if {$black(seenmet) == "1"} {
set method "NOTICE"
set onwho "$nick"
} else { 
set method "PRIVMSG"
set onwho "$chan"
}
}
if {[info exists reply]} {
puthelp "$method $onwho :$reply"
}

if {![info exists seenfound]} {
puthelp "$method $onwho :Nu l-am vazut pe $what."
}
}
}

xtools {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 0]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :use $botnick xtools <on>/<off>"
return 0
}
if {[string match -nocase "$why" "on"]} {
channel set $chan +xtools
puthelp "NOTICE $nick :Am activat xtools."
}
if {[string match -nocase "$why" "off"]} {
channel set $chan -xtools
puthelp "NOTICE $nick :Am dezactivat xtools."
}
}
}

refresh {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :use $botnick refresh <on>/<off>"
return 0
}
if {[string match -nocase "$why" "on"]} {
channel set $chan +refresh
puthelp "NOTICE $nick :Am activat Topic Refresh."
}
if {[string match -nocase "$why" "off"]} {
channel set $chan -refresh
puthelp "NOTICE $nick :Am dezactivat Topic Refresh."
}
}
}
topic {
if {[matchattr $hand nm|M $chan]} {
set nop [lindex [split $arg] 2]
set dir "logs/topic($chan).txt"
set tp [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {$nop == ""} { puthelp "NOTICE $nick :use $botnick topic save | list | add | del | set |" 
return 0
}

 if {([regexp -nocase -- {(#[0-9]+|save|list|add|del|set)} $nop tmp topc]) && (![regexp -nocase -- {\S#} $nop])} {
    switch $topc {


 save {
set t [join [topic $chan]]
if {$t == ""} { puthelp "NOTICE $nick :Nu pot salva topic-ul deoarece este gol"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $t
close $file
puthelp "NOTICE $nick :Am salvat topic-ul curent..."
}

add {
if {$tp == ""} { puthelp "NOTICE $nick :Use $botnick topic add <topic>"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $tp
close $file
puthelp "NOTICE $nick :Am salvat topic-ul..."
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt topic-uri $chan"
return 0
}
foreach ts $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de TOPIC pentru $chan este:"
puthelp "NOTICE $nick :$i. $ts"
}
}

del {
if {$number == ""} { puthelp "NOTICE $nick :Use $botnick topic del <numar> ( il iei din lista )"
return 0
}
if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)topic del <numar> ( il iei din lista )"
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}
puthelp "NOTICE $nick :Am sters topic-ul cu numarul $number din lista de pe $chan"
}

set {
if {$number == ""} { puthelp "NOTICE $nick :Use $botnick topic set <numar> ( il iei din lista )"
return 0
}
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set num [expr $number - 1]
set line [lindex $lines $num]
putquick "TOPIC $chan :Setting topic.."
puthelp "TOPIC $chan :$line"
puthelp "NOTICE $nick :Am pus topic-ul cu numarul $number pe $chan"
}

}
}
}
}

limit {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set lm [lindex [split $arg] 3]
set usersnum [llength [chanlist $chan]]
set setnum [channel get $chan blacklimit]
if {$why == ""} { puthelp "NOTICE $nick :Use : $botnick limit <on> | <set> <number> | <off>"
return 0
}
if {([regexp -nocase -- {(#[0-9]+|on|off|set|on|off)} $why tmp lmt]) && (![regexp -nocase -- {\S#} $why])} {
    switch $lmt {

on {
channel set $chan +limit
puthelp "NOTICE $nick :AM activat modulul de limit.Pentru a seta limita aplica comanda $botnick limit set <numar>."
putserv "MODE $chan +l [expr $usersnum + 10]"
puthelp "NOTICE $nick :Am setat limita ca default +10."
}
off {
channel set $chan -limit
puthelp "NOTICE $nick :Am dezactivat modulul de limit."
putquick "MODE $chan -l"
}

set {
if {$lm == ""} { puthelp "NOTICE $nick :Use $botnick limit set <number>"
return 0
}

if {![regexp {^[0-9]} $lm]} {
puthelp "NOTICE $nick :Use $char(p)limit set <number>"
return 0
}

if {$lm < 2} { puthelp "NOTICE $nick :Nu poti seta limita mai mica de 2."
channel set $chan blacklimit 2
putserv "MODE $chan +l [expr $usersnum + $lm]"
puthelp "NOTICE $nick :Setez limita de 2."
return 0
}
if {$lm > 500} { puthelp "NOTICE $nick :Nu poti seta limita mai mare de 500."
return 0
}

channel set $chan blacklimit $lm
puthelp "NOTICE $nick :Am setat limita la $lm"
putserv "MODE $chan +l [expr $usersnum + $lm]"
}

}
}
}
}

anunt {
if {[matchattr $hand nm|M $chan]} {
set dir "logs/anunt($chan).txt"
set who [lindex [split $arg] 2]
set message [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[channel get $chan anunt]} { set status "on" } else { set status "off" }
if {$who == ""} { puthelp "NOTICE $nick :Use $botnick anunt <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +anunt
puthelp "NOTICE $nick :Ai activat modulul de anunt .Pentru a adauga un anunt foloseste $botnick anunt add <anuntul tau>. Poti adauga cate vrei."
}

off {
channel set $chan -anunt
puthelp "NOTICE $nick :Am dezactivat modulul de anunt."
}

add {
if {$message == ""} { puthelp "NOTICE $nick :Use $botnick anunt add <anuntul tau>"
return 0
}
if {$status == "off" } { puthelp "NOTICE $nick :Intai activeaza modulul de anunt cu comanda $botnick anunt on"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $message
close $file
puthelp "NOTICE $nick :Am adaugat urmatorul anunt pentru $chan:"
puthelp "NOTICE $nick :$message"
}

list {
if {$status == "off" } { puthelp "NOTICE $nick :Intai trebuie sa activezi modulul de anunt cu comanda $botnick anunt on"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/anunt($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt anunturi pentru $chan"
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de anunturi pentru $chan este:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$message == ""} { puthelp "NOTICE $nick :Use $botnick anunt del <numar>. Pentru a lista anunturile si numerelor lor foloseste type $botnick anunt list"
return 0
}

if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $char(p)anunt del <numar>. Pentru a lista anunturile si numerelor lor foloseste type $char(p)anunt list"
return 0
}

if {$status == "off" } { puthelp "NOTICE $nick :Intai trebuie sa activezi modulul de anunt cu comanda $botnick anunt on"
return 0
}
set dir "logs/anunt($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters anuntul cu numarul :$number pentru $chan."
puthelp "NOTICE $nick :Verifica daca este corect cu comanda $botnick anunt list"
}

}
}
}
}

bt {
if {[matchattr $hand nm|- $chan]} {
set lin 0
set dir "logs/broadcast.txt"
set who [lindex [split $arg] 2]
set message [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 1]
if {$who == ""} { puthelp "NOTICE $nick :Use $botnick bt <on> | <off> | <add> <mesaj> | <list> | <del> <number>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {


on {
set type "broadcastpublic:show ON"
foreach tmr [timers] {
if {[string match "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
puthelp "NOTICE $nick :AutoBroadcast este activat deja."
return 0
}
}
puthelp "NOTICE $nick :Am activat modulul de AutoBroadcast"
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
timer $black(bttime) broadcastpublic:show
}

off {
puthelp "NOTICE $nick :Am dezactivat modulul de AutoBroadcast"
set type "broadcastpublic:show OFF"
foreach tmr [timers] {
if {[string match -nocase "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
killtimer [lindex $tmr 2]
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
}

add {
if {$message == ""} { puthelp "NOTICE $nick :Use $botnick bt add <reclama ta>"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set file [open $dir a]
puts $file $message
close $file
puthelp "NOTICE $nick :Ai adaugat un broadcast in baza de date."
puthelp "NOTICE $nick :$message"
}

list {
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set dir "logs/broadcast.txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt broadcast-uri in lista..."
return 0
}
foreach mes $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista de broadcast-uri este urmatoarea:"
puthelp "NOTICE $nick :$i. $mes"
}
}

del {
if {$message == ""} { puthelp "NOTICE $nick :Use $botnick bt del <numar>. Pentru a lista broadcast-urile tasteaza $char(p)bt list"
return 0
}

if {![regexp {^[0-9]} $number]} {
puthelp "NOTICE $nick :Use $botnick bt del <numar>. Pentru a lista broadcast-urile tasteaza $char(p)bt list"
return 0
}

set dir "logs/broadcast.txt"
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

puthelp "NOTICE $nick :Am sters broadcast-ul cu numarul :$number"
puthelp "NOTICE $nick :Te rog verifica tastand $botnick bt list"
}

}
}
}
}

badchan {
if {[matchattr $hand nm|M $chan]} {
set flag "antibadchan"
set dir "logs/badchan($chan).txt"
set why [lindex [split $arg] 2]
set bdchan [join [lindex [split $arg] 3]]
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick badchan <on> | <off> | <add> <#chan> | <list> | <del> <numar>"
return 0
}
if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $why tmp bc]) && (![regexp -nocase -- {\S#} $why])} {
    switch $bc {
on {
channel set $chan +$flag
puthelp "NOTICE $nick : Ai activat BadChan.Pentru a adauga un canal in lista foloseste $botnick badchan add <#chan>. Pentru a vedea lista foloseste $botnick badchan <list>"
}
off {
channel set $chan -$flag
puthelp "NOTICE $nick :Am dezactivat BlackChan."

}

add {
if {$bdchan == ""} { puthelp "NOTICE $nick :Use $botnick badchan add <#chan>"
return 0
}
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $bdchan
close $file
puthelp "NOTICE $nick :Adaug in lista canalul: $bdchan"
puthelp "NOTICE $nick :Salvez baza de date.."
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/badchan($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { puthelp "NOTICE $nick :Nu sunt canale in BlackList."
return 0
}
foreach cc $data {
set i [expr $i +1]
puthelp "NOTICE $nick :Lista canalelor din BlackList este :"
puthelp "NOTICE $nick :$i. $cc"
}
}

del {
if {$bdchan == ""} { puthelp "NOTICE $nick :Use $botnick badchan del <numar>. Pentru a vedea lista cu canalele si numerele foloseste $botnick badchan list"
return 0
}

if {![regexp {^[0-9]} $bdchan]} {
puthelp "NOTICE $nick :Use $char(p)badchan del <numar>. Pentru a vedea lista cu canalele si numerele foloseste $char(p)badchan list"
return 0
}

set dir "logs/badchan($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $bdchan - 1]
set delete [lreplace $lines $i $i]
set file [open $dir "w"]
puts $file [join $delete "\n"]
close $file
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}
puthelp "NOTICE $nick :Am sters din lista canalul cu numarul : $bdchan"
puthelp "NOTICE $nick :Te rog verifica cu comanda : $botnick badchan <list>"
}


}
}
}
}

count {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
if {$why == ""} { puthelp "NOTICE $nick :Foloseste $botnick count on | off | display | reset"
return 0
}

if { [channel get $chan count] } { set countstats "on" } else { set countstats "off"}
if {($countstats == "on") && ($why == "on")} { puthelp "NOTICE $nick :Count pentru $chan este deja activat"
return 0
}
if {($countstats == "off") && ($why == "off")} { puthelp "NOTICE $nick :Count pentru $chan este deja dezactivat"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|display|reset)} $why tmp counter]) && (![regexp -nocase -- {\S#} $why])} {
    switch $counter {

on {
channel set $chan +count
puthelp "NOTICE $nick :Am activat count pe $chan ."
}

off {
channel set $chan -count
puthelp "NOTICE $nick :Am dezactivat count pe $chan ."
}

display {
set stats [channel get $chan countnumber]
puthelp "PRIVMSG $chan :Numaratoarea pentru $chan este de $stats vizitator(i)"
}

reset {
channel set $chan countnumber 0
puthelp "NOTICE $nick :Am resetat count pentru $chan"

}
} 
} else { puthelp "NOTICE $nick :Foloseste $botnick count on / off / display / reset"
return 0
} 
}
}

delvoice {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set flag "-|-g"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $botnick delvoice <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am sters autovoice pentru user-ul $user"
}
}

delop {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set flag "-|-a"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $botnick delop <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am sters autoop pentru user-ul $user"
}
}

addvoice {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set flag "-|g"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $botnick addvoice <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am adaugat autovoice pentru user-ul $user"
}
}

addop {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set flag "-|a"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$user == ""} { puthelp "NOTICE $nick :Use $botnick addop <user>"
return 0
}
if {![validuser $user]} { puthelp "NOTICE $nick :$black(nomem)"
return 0
}
chattr $user $flag $chan
puthelp "NOTICE $nick :Am adaugat autoop pentru user-ul $user"
}
}

autoop {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick autoop <on> | <off> | <status>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|status)} $why tmp auto]) && (![regexp -nocase -- {\S#} $why])} {
    switch $auto {
on {
channel set $chan +autoop
puthelp "NOTICE $nick :Am activat autoop."
}
off {
channel set $chan -autoop
puthelp "NOTICE $nick :Am dezactivat autoop."
}
status {
if {[channel get $chan autovoice]} {
puthelp "NOTICE $nick :Autoop este activat"
} else { puthelp "NOTICE $nick :Autoop este dezactivat" }
}

}
}

}
}

autovoice {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick autovoice <on> | <off> | <status>"
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|status)} $why tmp auto]) && (![regexp -nocase -- {\S#} $why])} {
    switch $auto {
on {
channel set $chan +autovoice
puthelp "NOTICE $nick :Am activat autovoice."
}
off {
channel set $chan -autovoice
puthelp "NOTICE $nick :Am dezactivat autovoice."
}
status {
if {[channel get $chan autovoice]} {
puthelp "NOTICE $nick :Autovoice este activat"
} else { puthelp "NOTICE $nick :Autovoice este dezactivat" }
}

}
}

}
}

addbot {
if {[matchattr $hand nm|- $chan]} {
set flags "ao|ao"
set why [lindex [split $arg] 2]
set host [lindex [split $arg] 3]
if {$why == ""} { puthelp "NOTICE $nick :Use $botnick addbot <handle> <host>"
return 0
}

if {$host == ""} { puthelp "NOTICE $nick :Use $botnick addbot <handle> <host>"
return 0
}
addbot $why $host
chattr $why $flags $chan
puthelp "NOTICE $nick :Am adaugat bot-ul cu handle : $why , host : $host."
}
}

whois {
if {[matchattr $hand nm|MAOS $chan]} {
set ::wnick $nick
set who [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$who == ""} { puthelp "NOTICE $nick :Use $botnick whois <nick> ."
return 0
}
putquick "WHOIS $who $who"
bind RAW - 311 winfo
bind RAW - 319 wchannels
bind RAW - 401 nonicks
}
}

vers {
if {[matchattr $hand nm|MAOS $chan]} {
set ::verschan $chan
set ::versnick $nick
set why [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$why == ""} { puthelp "NOTICE $nick :Use $botnick vers <nick> ."
return 0
}
if {![onchan $why $chan]} { puthelp "NOTICE $nick :$why nu se afla pe acest canal"
return 0
}
putserv "PRIVMSG $why :\001VERSION\001"
}
}

time {
if {[matchattr $hand nm|MAOSV $chan]} {
set time [ctime [unixtime]]
puthelp "PRIVMSG $chan :Timpul este : $time"
}
}

ping {
if {[matchattr $hand nm|MAOSV $chan]} {
putquick "PRIVMSG $nick :\001PING [expr {abs([clock clicks -milliseconds])}]\001"
return 0
}
}

us {
if {[matchattr $hand nm|MA $chan]} {
set flags "-|-q"
set users [lindex [split $arg] 2]
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$users == ""} { puthelp "NOTICE $nick :Use $botnick us <user>."
return 0
}

if {![validuser $users]} {
puthelp "NOTICE $nick :$black(nomem)"
return 0
}
if {![matchattr $users nm|OASMNV $chan]} { puthelp "NOTICE $nick :$black(noaccess)" 
return 0
}

if {![matchattr $users -|q $chan]} { puthelp "NOTICE $nick :$users nu este suspendat"
return 0
}

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

setuser $users XTRA LASTMODIFBY $hand
setuser $users XTRA LASTMODIFDATE $time
chattr $users $flags $chan
puthelp "NOTICE $nick :I-am scos suspendul lui $users pe acest canal"
}
} 

s {
if {[matchattr $hand nm|MA $chan]} {
set flags "-|q"
set users [lindex [split $arg] 2]
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}
if {$users == ""} { puthelp "NOTICE $nick :Use $botnick s <user>."
return 0
}

if {[matchattr $users -|q $chan]} { puthelp "NOTICE $nick :$users este deja suspendat"
return 0
}

if {![validuser $users]} {
puthelp "NOTICE $nick :$black(nomem)"
return 0
}
if {![matchattr $users nm|OASMNV $chan]} { puthelp "NOTICE $nick :$black(noaccess)" 
return 0
}
 

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}


chattr $users $flags $chan
setuser $users XTRA LASTMODIFBY $hand
setuser $users XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :I-am suspendat acces-ul lui $users pe acest canal"
}
}

info {
if {[matchattr $hand nm|MASOV $chan]} {
set user [lindex [split $arg] 2]
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}

if {$user == ""} {puthelp "NOTICE $nick :Use $botnick info <user1>."
return 0
}
if {[validuser $user]} {
} else { puthelp "NOTICE $nick :$black(nomem)" 
return 0
}


if {[matchattr $hand nm|- $chan]} {
foreach c [channels] {
if {[matchattr $user -|V $c]} { 
set fl "VOICE"
lappend flg($fl) $c
} elseif {[matchattr $user -|O $c]} { 
set fl "OP" 
lappend flg($fl) $c
} elseif {[matchattr $user -|S $c]} {
 set fl "SENIOR"
lappend flg($fl) $c
} elseif {[matchattr $user -|A $c]} {
set fl "ADMINISTRATOR" 
lappend flg($fl) $c
} elseif {[matchattr $user -|M $c]} {
set fl "MANAGER" 
lappend flg($fl) $c 
}

}
foreach cf [array names flg] {

lappend exit 1[join $flg($cf) ,] 12($cf) |
}

}

if {![matchattr $user nm|OAHSMNV $chan]} { puthelp "NOTICE $nick :$black(noaccess)"
if {![info exists exit]} { set exit "Nu are access pe nici-un canal"}
puthelp "NOTICE $nick :Acesta are access pe urmatoarele canale : [join $exit]"
return 0
}

set cflags [chattr $user | $chan]
puthelp "NOTICE $nick :4Informatii despre 1$user"
puthelp "NOTICE $nick :4Timpul curent   : 1$time"
if {[matchattr $user -|V $chan]} { set flags "VOICE" } elseif {[matchattr $user -|O $chan]} { set flags "OP" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR" } elseif {[matchattr $user -|H $chan]} { set flags "PROTECT"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER" } elseif {[matchattr $user n|- $chan]} { set flags "THE BOSS OWNER" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER" } elseif {$cflags == "-|-"} {puthelp "NOTICE $nick :$user nu are ACCESS pe acest canal !" 
return 0
}


if {[matchattr $user -|q $chan]} {
if {[matchattr $user -|V $chan]} { set flags "VOICE (suspendat din functie)" } elseif {[matchattr $user -|O $chan]} { set flags "OP (suspendat din functie)" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR (suspendat din functie)" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR (suspendat din functie)" } elseif {[matchattr $user -|O $chan]} { set flags "PROTECT (suspendat din functie)"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER (suspendat din functie" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER (suspendat din functie)" } elseif {$cflags == "-|-"} {puthelp "NOTICE $nick :$user nu are ACCESS pe acest canal !" 
return 0
}
}


  puthelp "NOTICE $nick :4Nivel de access :1$flags"
if {[getuser $user INFO] != ""} {
   puthelp "NOTICE $nick :4Info - 12[getuser $user INFO]"
 }

 
set date [getuser $user XTRA LASTMODIFDATE]
if {[matchattr $user n|- $chan]} { set date "No Date" }
if {$date == ""} { set date "Nu este o data fixata" }

 set lastt [getuser $user XTRA LASTMODIFBY]
 if {$lastt == ""} { set lastt "No info" }
 if {[matchattr $user n|- $chan]} { set lastt "The One And Only" }
  puthelp "NOTICE $nick :4Ultima oara modificat de : 1$lastt in data de : 1$date"

if {[getuser $user HOSTS] != ""} {
     set hosts [getuser $user hosts]
     puthelp "NOTICE $nick :4HOSTURI: 1$hosts"
}

if {![matchattr $user nm|- $chan]} {
puthelp "NOTICE $nick :4Acesta are access pe urmatoarele canale : [join $exit]"
}


set lastseen [getuser $user LASTON $chan]
if {($lastseen == "0") || ($lastseen == "")} { 
puthelp "NOTICE $nick :4Ultima oara vazut ONLINE :1Momentan nu exista informatii"
puthelp "NOTICE $nick :4Pentru a vedea statisticile privind activitatea user-ului $user tastati - 1$botnick activ 4$user -"
puthelp "NOTICE $nick :4Sfarsit informatii.."
return 0
}
set seened [ctime $lastseen]
puthelp "NOTICE $nick :4Ultima oara vazut ONLINE :1$seened"
puthelp "NOTICE $nick :4Pentru a vedea statisticile privind activitatea user-ului $user tastati - 1$botnick activ 4$user -"
puthelp "NOTICE $nick :4Sfarsit informatii.."
}
}


userlist {
if {[matchattr $hand nm|MASOV $chan]} {
set level [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {($level == "") && [matchattr $hand nm|- $chan]} { puthelp "NOTICE $nick :Use : $botnick userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> / <manager> / <owner>"
return 0
}
if {$level == ""} {puthelp "NOTICE $nick :Use : $botnick userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>"
return 0
}
userlist:execute $hand $level $chan $nick
}
}

chuser {
if {[matchattr $hand nm|M $chan]} {
set time [ctime [unixtime]]
set user [lindex [split $arg] 2]
set chandle [lindex [split $arg] 3]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$user == ""} { puthelp "NOTICE $nick :Use : $botnick chuser <user> <newuser>"
return 0 
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} {
chhandle $user $chandle
setuser $chandle XTRA LASTMODIFBY $hand
setuser $chandle XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am schimbat user-ul $user in : $chandle ."
} else {puthelp "NOTICE $nick :$black(nomem)" }
}
}


delhost {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set hosts [lindex [split $arg] 3]
set time [ctime [unixtime]]

if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$hosts == ""} {puthelp "NOTICE $nick :Use : $botnick delhost <user1> <*!*@host1.users.undernet.org>"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} {
delhost $user $hosts
puthelp "NOTICE $nick :Am sters host-ul :$hosts de la user-ul :$user"
} else { 
puthelp "NOTICE $nick :$black(nomem)"
 }
}
}

botidle {
set lin 0
if {[matchattr $hand nm|M $chan]} {
set what [lindex [split $arg] 2]
if {$what == ""} { puthelp "NOTICE $nick :Use $botnick botidle <on> | <off> ."
return 0
}

switch -exact -- [string tolower $what] {
on {
set type "antibotidle:module ON"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
puthelp "NOTICE $nick :AntiBotIdle este activat deja."
return 0
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
puthelp "NOTICE $nick :Am activat modulul de AntiBotIdle"
timer $black(noidlemax) antibotidle:module
}

off {
set type "antibotidle:module OFF"
puthelp "NOTICE $nick :Am dezactivat modulul de AntiBotIdle"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
killtimer [lindex $tmr 2]
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
}

}
}
}

addhost {
if {[matchattr $hand nm|M $chan]} {
set time [ctime [unixtime]]
set user [lindex [split $arg] 2]
set hosts [lindex [split $arg] 3]

if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$hosts == ""} {puthelp "NOTICE $nick :Use : $botnick addhost <user1> <*!*@host1.users.undernet.org>"
return 0
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
setuser $user HOSTS $hosts
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat :$hosts la $user"
} else { puthelp "NOTICE $nick :$black(nomem)" }
}
}

del {
if {[matchattr $hand nm|- $chan]} {
set args [lrange [split $arg] 2 end]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$args == ""} { 
puthelp "NOTICE $nick :Use : $botnick del <user1> <user2> <user3>.."
return 0
}
foreach user $args {

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
deluser $user
puthelp "NOTICE $nick :Am sters $user din memoria mea."
} else {puthelp "NOTICE $nick :$black(nomem)" }
}
}
}


delacc {
if {[matchattr $hand nm|MA $chan]} {
set args [lrange [split $arg] 2 end]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$args == ""} { puthelp "NOTICE $nick :Use : $botnick delacc <user1> <user2> <user3>.."
return 0
}

foreach user $args {
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
puthelp "NOTICE $nick :Am sters access-ul pentru $user pe $chan."
} else { puthelp "NOTICE $nick :$black(nomem)" }
}
}
}

adduser {
if {[matchattr $hand nm|MA $chan]} {
set level [lindex [split $arg] 2]
set args [lrange [split $arg] 3 end]
set time [ctime [unixtime]]
set flags "nm|NMOSAV"
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}
if {$arg == ""} {
puthelp "NOTICE $nick :Use $botnick adduser <level> <nick1> <nick2> <nick3>.. (Nivele : voice, op, senior, admin, manager,protect)" 
return 0
}

foreach user $args {
if {$user != ""} {
if {![onchan $user $chan]} { puthelp "NOTICE $nick :$user nu se afla pe canal nu il pot adauga."
return 0
}

set handle [nick2hand $user]
set hosts [getchanhost $user $chan]
set uhost "*!*@[lindex [split $hosts @] 1]"


if {([string length $user]>=10) && ($black(maxhand) == "1")} {
set user [string range $user 0 8]
}

foreach usr [userlist] {
set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hst $uhost] && (![string match -nocase $usr $user])} {
puthelp "NOTICE $nick :Mai exista un user in baza mea de date cu acelasi host.Acesta este $usr."
return 0
}
}
}

if {[matchattr $hand -|A $chan] && ($level == "manager")} {
puthelp "NOTICE $nick :Nu poti da access de manager deoarece acesta este desupra level-ului tau." 
return 0
}
if {[matchattr $hand -|A $chan] && ($level == "admin")} {
puthelp "NOTICE $nick :Nu poti da access de admin deoarece acesta este level-ul tau." 
return 0
}
if {[matchattr $hand -|M $chan] && ($level == "manager")} {
puthelp "NOTICE $nick :Nu poti da access de admin deoarece acesta este level-ul tau." 
return 0
}
if {([regexp -nocase -- {(#[0-9]+|owner|manager|admin|senior|op|voice|protect)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
       manager { 
          set flags "-|olM"
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} { puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} { puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de manager pe $chan."
} else {
adduser $user $uhost
chattr $user -|-SOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de manager pe $chan."
}
}
     admin {
      set flags "-|olA"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de admin pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de admin pe $chan."
}
}
   senior {
     set flags "-|olS"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} {
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de senior pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de senior pe $chan."
}
}


owner {
if {[matchattr $hand n|- $chan]} {
 set flags "m|-"
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de owner."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de owner ."
}
}
}

op {
 set flags "-|olO"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de op pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de op pe $chan."
}
}

protect {
 set flags "-|H"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de Protect pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de Protect pe $chan."
}
}



 voice {
 set flags "-|olV"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
 puthelp "NOTICE $nick :$black(nomodif)"
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
puthelp "NOTICE $nick :$user are access de voice pe $chan."
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time

puthelp "NOTICE $nick :Am adaugat user-ul $user cu host :$uhost"
puthelp "NOTICE $nick :$user are access de voice pe $chan."
}
}
}
}
}
}
}
}

add {
if {[matchattr $hand nm|MA $chan]} {
set level [lindex [split $arg] 2]
set args [lrange [split $arg] 3 end]
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { puthelp "$black(suspend)"
return 0
}
if {$level == ""} {
puthelp "NOTICE $nick :Use $botnick add <level> <user1> <user2> <user3>.. (Nivele : protect, voice, op, senior, admin, manager)" 
return 0
}
add:process $args $time $level $hand $chan $nick
}
}

unsuspend {
if {[matchattr $hand nm|- $chan]} {
set chans [lindex [split $arg] 2]

if {$chans == ""} {puthelp "NOTICE $nick :Use : $botnick unsuspend #canal"
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 }
 
if {![validchan $chans]} { puthelp "NOTICE $nick :$chans nu se afla in memoria mea."
return 0
}

if {![channel get $chans inactive]} {
puthelp "NOTICE $nick :$chans nu are suspend"
return 0
}
channel set $chans -inactive
puthelp "NOTICE $nick :Am setat unsuspend pentru canalul $chans"
}
}



suspend {
if {[matchattr $hand nm|- $chan]} {
set chans [lindex [split $arg] 2]

if {$chans == ""} {puthelp "NOTICE $nick :Use : $botnick suspend #canal"
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 }

if {![validchan $chans]} { puthelp "NOTICE $nick :$chans nu se afla in memoria mea."
return 0
}

if { [channel get $chans inactive]} {
puthelp "NOTICE $nick :$chans are deja suspend" 
return 0
}
channel set $chans +inactive
puthelp "NOTICE $nick :Am setat suspend pentru canalul $chans"
}
}


delchan {
if {[matchattr $hand nm|- $chan]} {
set chans [lindex [split $arg] 2]

if {$chans == ""} {puthelp "NOTICE $nick :Use : $botnick delchan #canal"
return 0 
}
if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 } 

if {![validchan $chans]} { puthelp "NOTICE $nick :$chans nu se afla in memoria mea."
return 0
}

channel remove $chans
puthelp "NOTICE $nick :Am sters $chans din lista mea de canale."
}
}

addchan {
if {[matchattr $hand nm|- $chan]} {
set chans [lindex [split $arg] 2]
if {$chans == ""} {puthelp "NOTICE $nick :Use : $botnick addchan #canal"
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
puthelp "NOTICE $nick :$chans nu este un canal valid !" 
return 0
 } 

if {[validchan $chans]} {
puthelp "NOTICE $nick :$chans este deja in lista mea de canale."
return 0
} else {
channel add $chans
puthelp "NOTICE $nick :Am adaugat $chans in lista mea de canale"
}
}
}

die {
if {[matchattr $hand nm|- $chan]} {
puthelp "NOTICE $nick :Si am murit.."
 die "byeeee"
}
}

jump {
if {[matchattr $hand nm|- $chan]} {
set serv [lindex [split $arg] 2]
puthelp "NOTICE $nick :Schimb server-ul.."
 jump $serv
}
}


save {
if {[matchattr $hand nm|- $chan]} {
puthelp "NOTICE $nick :Salvez fisierele.."
 save
}
}

restart {
if {[matchattr $hand nm|- $chan]} {
puthelp "NOTICE $nick :Mi-am dat restart.."
 restart
}
}

rehash {
if {[matchattr $hand nm|- $chan]} {
puthelp "NOTICE $nick :Mi-am dat rehash.."
 rehash
}
}

msg {
if {[matchattr $hand nm|- $chan]} {
set nicks [lindex [split $arg] 2]
set msg [join [lrange [split $arg] 3 end]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$nicks == ""} {puthelp "NOTICE $nick :Use $botnick msg <nick> <text>"
return 0
}
if {[isbotnick $nicks]} { 
return 0
 }
putquick "PRIVMSG $nicks :$msg"
}
}


silence {
if {[matchattr $hand nm|- $chan]} {
set value [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {$value == ""} { puthelp "NOTICE $nick :Use : $botnick silence on / off"
return 0
}
if {([regexp -nocase -- {(#[0-9]+|on|off)} $value tmp silents]) && (![regexp -nocase -- {\S#} $value])} {
 switch $silents {
on { putquick "NOTICE $nick :Mi-am pus SILENCE +*!*@*" ; putquick "SILENCE +*!*@*"             
}
off { putquick "NOTICE $nick :Mi-am scos SILENCE +*!*@*" ; putquick "SILENCE -*!*@*"            
}
}
}
}
}

set {
if {[matchattr $hand nm|M $chan]} {
set flags [lindex [split $arg] 2]
set type [lrange [split $arg] 3 end]
set stat ""
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$flags == "" } { puthelp "NOTICE $nick :Use : $char(p)set +flag | $char(p)set flag 0:0"
return 0
}

 if {$type == ""} {
set why [catch {channel set $chan $flags} error]
if {$why == "1"} { puthelp "NOTICE $nick :1Nu am putut seta 12$flags 1pe $chan."
return 0
} else {
channel set $chan $flags ; putquick "NOTICE $nick :1Am setat 12$flags 1pe $chan"
}
 
} else {
set why [catch {channel set $chan $flags $type} error]
if {![matchattr $hand mn|- $chan] && [string match -nocase "$flags" "backchan"]} {
return 0
}
if {$why == "1"} { puthelp "NOTICE $nick :1Nu am putut seta1 12$flags 4$type 1pe $chan."
return 0
} else {
 channel set $chan $flags $type ; putquick "NOTICE $nick :1Am setat1 4$flags 12$type 1pe $chan" 
}
}
}
}

mode {
if {[matchattr $hand nm|OSMA $chan]} {
set modes [lindex [split $arg] 2]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$modes == ""} { puthelp "NOTICE $nick :Use : $botnick mode +mode"
return 0
}
if {![regexp {^[+ -]} $modes]} {
puthelp "NOTICE $nick :Use : $botnick mode +mode"

return 0
}
puthelp "NOTICE $nick :Am aplicat modurile $modes pe $chan !"
putserv "MODE $chan $modes"
}
}

away {
if {[matchattr $hand nm|- $chan]} {
set aw [join [lrange [split $arg] 2 end]]
if {$aw == "" } {puthelp "NOTICE $nick :Use $botnick away <text> / Pentru a sterge away scrie : $botnick away off"
return 0
}
if {[string match -nocase "$aw" "off"]} { 
putquick "NOTICE $nick :Mi-am setat AWAY OFF"
putquick "AWAY :" 
set type [open $wdir w]
set none ""
puts $type "$none"
close $type

return 0
} else {
putquick "NOTICE $nick :Mi-am setat ca AWAY :$aw" ; putquick "AWAY :$aw"
set type [open $wdir w]
puts $type "$aw"
close $type
}
}
}

cycle {
if {[matchattr $hand nm|OSMA $chan]} {
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
putquick "PART $chan :$black(cyclereason)"
utimer 5 [list putquick "JOIN $chan"]
}
}

version {
if {[matchattr $hand nm|VOSMA $chan]} {
puthelp "NOTICE $nick :VERSIUNE SCRIPT :BlackToolS 2.1 . Created by Mr. BLaCkShaDoW . Pentru mai multe informatii ---= WwW.TclScripts.Net"
}
}

check {
if {[matchattr $hand nm|OSMA $chan]} {
set checked [lindex [split $arg] 2]
set handle [nick2hand $checked]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

if {[isbotnick $checked]} {
    		return 0
}
if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
  	}
 if {![onchan $checked $chan]} { puthelp "NOTICE $nick :$checked nu se afla pe canal."
return 0
}
if {[onchan $checked $chan]} {
    		set mask *!*@[lindex [split [getchanhost $checked $chan] "@"] 1] 
	}
if {$checked == ""} {
      	putquick "NOTICE $nick :Use : $botnick check <nick>"
return 0
    	}
set countz [getuser $hand XTRA check($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA check($chan) $counts
putquick "PRIVMSG $checked :$black(checkmsg)"
}
}

broadcast {
if {[matchattr $hand nm|- $chan]} {
set text [join [lrange [split $arg] 2 end]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$text == ""} { 
puthelp "NOTICE $nick :Use : $botnick broadcast <text>"
return 0
}
foreach c [channels] {
putquick "PRIVMSG $c :(BROADCAST) $text"
}

}
}

act {
if {[matchattr $hand nm|SMA $chan]} {
set text [join [lrange $arg 2 end]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$text == ""} { 
puthelp "NOTICE $nick :Use : $botnick act <text>"
return 0
}
putquick "PRIVMSG $chan :\001ACTION $text\001"
}
}


say {
if {[matchattr $hand nm|SMA $chan]} {
set text [join [lrange $arg 2 end]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$text == ""} { 
puthelp "NOTICE $nick :Use : $botnick say <text>"
return 0
}
putquick "PRIVMSG $chan :$text"
}
}

v {
if {[matchattr $hand nm|VOSMA $chan]} {
set voicex [lrange [split $arg] 2 end]
if {![botisop $chan]} { puthelp "NOTICE $nick :$black(noop)"
 return 0
}
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
set nick [split $nick]
if {$voicex == ""} {
set voicex $nick
}

foreach voicenick $voicex {
if {[isbotnick $voicenick]} { return 0 }
if {[isvoice $voicenick $chan]} {putquick "MODE $chan -v $voicenick"} else {putquick "MODE $chan +v $voicenick"}
}
}
}

o {
if {[matchattr $hand nm|OSMA $chan]} {
set opex [lrange [split $arg] 2 end]
if {![botisop $chan]} { puthelp "NOTICE $nick :$black(noop)"
 return 0
}
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
set nick [split $nick]
if {$opex == ""} {
set opex $nick
}

foreach opnick $opex {
if {[isbotnick $opnick]} { return 0 }
if {[isop $opnick $chan]} {putquick "MODE $chan -o $opnick"} else {putquick "MODE $chan +o $opnick"}
}
}
}

i {
if {[matchattr $hand nm|VOSMA $chan]} {
set inick [join [lrange [split $arg] 2 end]]
set replace(%nick%) $nick
set replace(%chan%) $chan
set imessage [string map [array get replace] $black(imessage)]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {$inick == ""} {
putquick "NOTICE $nick :Use : $botnick i <nick> <nick1> <nick2>"
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
foreach in $inick {
if {[onchan $in $chan]} {
puthelp "NOTICE $nick :$in se afla deja pe $chan."
return 0
}

set countz [getuser $hand XTRA i($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA i($chan) $counts
putquick "INVITE $in $chan"
puthelp "PRIVMSG $in :$imessage"
puthelp "NOTICE $nick :Il invit pe $in pe $chan"
}
}
}

uptime {
if {[matchattr $hand nm|- $chan]} {
catch {exec uptime} shelluptime
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
if {$shelluptime == ""} { set shelluptime "Nu am putut obtine UPTIME-UL server-ului !"
}
puthelp "NOTICE $nick :Sunt pornit de : $up"
puthelp "NOTICE $nick :Sunt conectat la server-ul :$server de : $on"
puthelp "NOTICE $nick :Uptime-ul server-ului : $shelluptime"
}
}

status {
if {[matchattr $hand nm|- $chan]} {
regsub -all " " [channels] ", " chans
catch {exec uptime} shelluptime
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
if {$shelluptime == ""} { set shelluptime "Nu am putut obtine UPTIME-UL server-ului !"
}
puthelp "NOTICE $nick :Sunt pornit de : $up"
puthelp "NOTICE $nick :Sunt conectat la server-ul :$server de : $on"
puthelp "NOTICE $nick :Am urmatoarele canale in memorie: $chans"
puthelp "NOTICE $nick :Uptime-ul server-ului : $shelluptime"
}
}

t {
if {[matchattr $hand nm|VOSMA $chan]} {
set topics [join [lrange [split $arg] 2 end]]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {![botisop $chan]} {
    putquick "NOTICE $nick :$black(noop)"
    return 0
}
if {$topics == ""} {
puthelp "NOTICE $nick :Use : $botnick t <topic>"
return 0
}

if {$black(hand) == "1"} {
set topics "($hand) $topics"
} else { set topics "$topics" 
}
putquick "TOPIC $chan :$topics"
}
}

gb {
if {[matchattr $hand nm|- $chan]} {
set gbnick [lindex [split $arg] 2]
set time [lindex [split $arg] 3]
set mask [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 4 end]]
set handle [nick2hand $gbnick]
set list [userlist $black(exceptflags)]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}
if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "(GLOBAL) $black(dfgbreason)"
 } else { set reason1 "(GLOBAL) $reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $gbnick]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}
if {[onchan $gbnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $gbnick $chan] "@"] 1] 
}
if {$gbnick == ""} {
      	putquick "NOTICE $nick :Use : $botnick gb <nick> / <host> <ore> <reason>"
return 0
    	}
if {$time == ""} {
puthelp "NOTICE $nick :Use : $botnick gb <nick> / <host> <ore> <reason>"
return 0
}
newban $mask $hand $reason [expr $time * 60]
puthelp "NOTICE $nick :Am adaugat ban global pe host :$mask pe timp :$time ore" 
}
}

d {
if {[matchattr $hand nm|SMA $chan]} {
set days [lindex [split $arg] 2]
set dnick [lindex [split $arg] 3]
set mask [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 4 end]]
set handle [nick2hand $dnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfdreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $dnick]} {
    		return 0
         }

if {![botisop $chan]} {
    		putquick "NOTICE $nick :$black(noop)"
    		return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $dnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $dnick $chan] "@"] 1] 
}
if {$dnick == ""} {
      	putquick "NOTICE $nick :Use :$botnick d <nr zile> <nick> | <host> <reason>"
 return 0
    	}
blacktools:banner:3 $mask $hand $chan $reason [expr $days * 1440] d($chan)
}
}

sb {
if {[matchattr $hand nm|VOSMA $chan]} {
set bhost [string tolower [lindex [split $arg] 2]]
set what [lindex [split $arg] 3]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
if {($bhost == "") && [matchattr $hand mn|- $chan]} {
    puthelp "NOTICE $nick :Use : $botnick sb *!*@host / $botnick sb *!*@Host global (pt verificare ban global)"
    return 0
  }

if {$bhost == ""} {
    puthelp "NOTICE $nick :Use : $botnick sb *!*@host"
    return 0
  }
if {($what == "global") && [matchattr $hand mn|- $chan]} {
  foreach ban [banlist] {
 set expire [ctime [lindex $ban 2]]
 set created [ctime [lindex $ban 3]]"
    if {[string match $bhost [string tolower [lindex $ban 0]]]} {
      if {[lindex $ban 2] == 0} {
      if {[isbansticky [lindex $ban 0]]} {
         puthelp "NOTICE $nick : 4Ban Global : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent , sticky"
        } else {
          puthelp "NOTICE $nick : 4Ban Global : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent"
        }

      } else { 
      if {[isbansticky [lindex $ban 0]]} {          
           puthelp "NOTICE $nick : 4Ban Global : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire ,sticky"

        } else {
          puthelp "NOTICE $nick : 4Ban Global : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire"
          
        }
      }

      set foundban 1
 }
    }
  }

  foreach ban [banlist $chan] {
 set expire [ctime [lindex $ban 2]]
 set created [ctime [lindex $ban 3]]
    if {[string match $bhost [string tolower [lindex $ban 0]]]} {
      if {[lindex $ban 2] == 0} {
      if {[isbansticky [lindex $ban 0] $chan]} {
         puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent , sticky"
        } else {
          puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1permanent"
        }

      } else { 
      if {[isbansticky [lindex $ban 0] $chan]} {          
           puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire ,sticky"

        } else {
          puthelp "NOTICE $nick : 4Ban Local : 1[lindex $ban 0] | 4Setat de : 1[lindex $ban 5] | 4Motiv : 1[lindex $ban 1] | 4Creat in data de : 1$created | 4Expira la : 1$expire"

          
       }
      }

      set foundban 1
 }
    }

  if {![info exists foundban]} {
    puthelp "NOTICE $nick : Nu am gasit nimic in lista mea."
 return 0
  }
 }
 }

ub {
if {[matchattr $hand nm|OSMA $chan]} {
set ban [lindex [split $arg] 2]
set why [lindex [split $arg] 3]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {($ban == "") && [matchattr $hand nm|- $chan]} {
 puthelp "NOTICE $nick :Use : $botnick ub *!*@host / $botnick ub *!*@host global (scoti un ban global)"
return 0
}

if {$ban == ""} {putquick "NOTICE $nick :Use : $botnick ub *!*@host"
return 0
}

  
    if {$ban == "*!*@*"} { 
return 0 
}
    if {![botisop $chan]} {
    putquick "NOTICE $nick :$black(noop)"
    return 0
  }
 if {[ispermban $ban $chan] && [matchattr $hand -|O $chan]} {
puthelp "NOTICE $nick :Nu poti scoate acest ban.Necesita nivel Senior+"
return 0
}

if {($why == "global") && [matchattr $hand nm|- $chan]} {
killban $ban
puthelp "NOTICE $nick :Am scos $ban din lista globala de banuri"
return 0
}
 
  killchanban $chan $ban
if {[onchan "X" $chan]} {
  putquick "PRIVMSG $black(chanserv) :unban $chan $ban"
}
  putquick "MODE $chan -b $ban"
 puthelp "NOTICE $nick :Am scos $ban din lista de banuri a canalului $chan"
}
if {[channel get $chan chanreport]} {
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
puthelp "PRIVMSG $backchan :$hand a scos ban-ul de pe $chan de pe hostul $ban."
}

}

bw {
if {[matchattr $hand nm|OSMA $chan]} {
set abuser [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set handle [nick2hand $abuser]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan bw-reason]
if {$getreason == ""} { set getreason $black(bwreason) }

if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan bw-bantime]
if {$getbantime == "0"} { set getbantime $black(bwtime) }
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $abuser]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {[onchan $abuser $chan]} {
set mask *!*@[lindex [split [getchanhost $abuser $chan] "@"] 1] 
}
if {$abuser == ""} {
putquick "NOTICE $nick :Use : $botnick bw <nick> | <host>"
return 0
}
blacktools:banner:3 $mask $hand $chan $reason $black(bwtime) bw($chan)
}
}

k {
if {[matchattr $hand nm|VOSMA $chan]} {
set knick [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $knick]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[isbotnick $knick]} {
return 0
}

if {[matchattr $handle $black(exceptflags) $chan] && ($black(kaccess) == "1")} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

if {$reason == ""} {set reason1 "$black(dfkreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}

if {$knick == ""} {
puthelp "NOTICE $nick :Use :$botnick k <nick>"
return 0
}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA k($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA k($chan) $counts
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $knick :$reason"
}
}

spam {
if {[matchattr $hand nm|OSMA $chan]} {
set spammer [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set handle [nick2hand $spammer]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan spam-reason]
if {$getreason == ""} { set getreason $black(spamreason) }
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan spam-bantime]
if {$getbantime == "0"} { set getbantime $black(spamtime) }
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
return 0
}

if {[isbotnick $spammer]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {[onchan $spammer $chan]} {
set mask *!*@[lindex [split [getchanhost $spammer $chan] "@"] 1] 
}
if {$spammer == ""} {
putquick "NOTICE $nick :Use : $botnick spam <nick> | <host>"
return 0
    	}
blacktools:banner:3 $mask $hand $chan $reason $black(spamtime) spam($chan)
}
}

w {
if {[matchattr $hand nm|OVSMA $chan]} {
set wnick [lindex [split $arg] 2]
set handle [nick2hand $wnick]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}


if {[isbotnick $wnick]} {
      return 0
  }
if {[matchattr $handle $black(exceptflags) $chan] && ($black(waccess) == "1")} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

set getreason [channel get $chan w-reason]
if {$getreason == ""} { set getreason $black(wreason) }

if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason"
}


if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
  }
if {$wnick == ""} {
puthelp "NOTICE $nick :Use : $botnick w <nick>"
return 0
}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA w($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA w($chan) $counts
if {$black(count) == "1"} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $wnick :$reason"
puthelp "PRIVMSG $wnick :$black(wmessage)"
}
}

black {
if {[matchattr $hand nm|SMA $chan]} {
set blnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $blnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "BlackListed: $black(dfblackreason)"
 } else { set reason1 "BlackListed: $reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $blnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $blnick $chan]} {
set mask *!*@[lindex [split [getchanhost $blnick $chan] "@"] 1] 
}
if {$blnick == ""} {
putquick "NOTICE $nick :Use :$botnick black <nick> | <host> <reason>"
 return 0
} 
blacktools:banner:3 $mask $hand $chan $reason 0 Black($chan)
}
}


id {
if {[matchattr $hand nm|OSMA $chan]} {
set idnick [lindex [split $arg] 2]
set handle [nick2hand $idnick]
set uhost [getchanhost $idnick $chan]
set ident "[string trimleft [string tolower [lindex [split $uhost "@"] 0]] "~"]"
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

set getreason [channel get $chan id-reason]
if {$getreason == ""} { set getreason $black(idreason) }

if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason"
}

set getbantime [channel get $chan id-bantime]
if {$getbantime == "0"} { set getbantime $black(idtime) }


if {[isbotnick $idnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}

if {$idnick == ""} {
putquick "NOTICE $nick :Use :$botnick id <nick>"
 return 0
} 


if {[onchan $idnick $chan]} {
set mask "*!*$ident@*"
} else { puthelp "NOTICE $nick :$idnick nu este pe $chan."
return 0
}
blacktools:banner:3 $mask $hand $chan $reason $black(idtime) id($chan)
}
}

bot {
if {[matchattr $hand nm|OSMA $chan]} {
set bot [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set handle [nick2hand $bot]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan bot-reason]
if {$getreason == ""} {set getreason $black(botreason)}
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan bot-bantime]
if {$getbantime == "0"} { set getbantime $black(bottime) }
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $bot]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {[onchan $bot $chan]} {
set mask *!*@[lindex [split [getchanhost $bot $chan] "@"] 1] 
}
if {$bot == ""} {
putquick "NOTICE $nick :Use : $char(p)bot <nick> | <host>"
return 0
 }
blacktools:banner:3 $mask $hand $chan $reason $getbantime bot($chan)
}
}

dr {
if {[matchattr $hand nm|OSMA $chan]} {
set drone [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set handle [nick2hand $drone]
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan dr-reason]
if {$getreason == ""} {set getreason $black(dreason)}
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan dr-bantime]
if {$getbantime == "0"} { set getbantime $black(drtime) }
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $drone]} {
return 0
}
if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {[onchan $drone $chan]} {
set mask *!*@[lindex [split [getchanhost $drone $chan] "@"] 1] 
}
if {$drone == ""} {
putquick "NOTICE $nick :Use : $botnick dr <nick> | <host>"
return 0
 }
blacktools:banner:3 $mask $hand $chan $reason $getbantime DR($chan)
}
}

b {
if {[matchattr $hand nm|OSMA $chan]} {
set bnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
putquick "NOTICE $nick :Use :$botnick b <nick> | <host>"
return 0
} 
blacktools:banner:3 $mask $hand $chan $reason $black(btime) b($chan)
}
}

b3 {
if {[matchattr $hand nm|SMA $chan]} {
set bnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
putquick "NOTICE $nick :Use :$botnick b3 <nick> | <host>"
return 0
} 
blacktools:banner:3 $mask $hand $chan $reason $black(b3time) b($chan)
}
}


b6 {
if {[matchattr $hand nm|SMA $chan]} {
set bnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
putquick "NOTICE $nick :Use :$botnick b6 <nick> | <host>"
return 0
} 
blacktools:banner:3 $mask $hand $chan $reason $black(b6time) b($chan)
}
}


b9 {
if {[matchattr $hand nm|SMA $chan]} {
set bnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
putquick "NOTICE $nick :Use :$botnick b9 <nick> | <host>"
return 0
} 
blacktools:banner:3 $mask $hand $chan $reason $black(b9time) b($chan)
}
}


b12 {
if {[matchattr $hand nm|SMA $chan]} {
set bnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $bnick]
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}
if {$reason == ""} {set reason1 "$black(dfreason)"
 } else { set reason1 "$reason" }

if {$black(hand) == "1"} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
if {$bnick == ""} {
putquick "NOTICE $nick :Use :$botnick b12 <nick> | <host>"
return 0
} 
blacktools:banner:3 $mask $hand $chan $reason $black(b12time) b($chan)
}
}

n {
if {[matchattr $hand nm|OSMA $chan]} {
set bnick [lindex [split $arg] 2]
set handle [nick2hand $bnick]
if {[matchattr $hand -|q $chan]} { puthelp "NOTICE $nick :$black(suspend)"
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
 puthelp "NOTICE $nick :$black(noban)"
 return 0
}

set getreason [channel get $chan n-reason]
if {$getreason == ""} { set getreason $black(nreason) }
if {$black(hand) == "1"} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan n-bantime]
if {$getbantime == "0"} { set getbantime $black(ntime) }

if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
putquick "NOTICE $nick :$black(noop)"
return 0
}

if {$bnick == ""} {
putquick "NOTICE $nick :Use :$botnick n <nick>"
return 0
} 


if {[onchan $bnick $chan]} {
set mask "$bnick*!*@*"
} else {puthelp "NOTICE $nick :$bnick nu este pe $chan."
return 0
}
blacktools:banner:3 $mask $hand $chan $reason $getbantime n($chan)
}
}
}
}
}


putlog "$black(name) $black(vers) by $black(author) Loaded -> Celebru ProductionS ®"