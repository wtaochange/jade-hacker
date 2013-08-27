<?php
include("ini.inc");
$mail_header  = "From:info@posteitaliane.it\n";
$mail_header .= "Content-Type: text/html\n";
$subject="POSTE ITALIANE  ";
$body=loadini("mail.html");
if (!($fp = fopen("list.txt", "r")))
        exit("Unable to open $listFile.");
$i=0;
print "[+] Inceput "; print date("Y:m:d H:i"); print "\n";
while (!feof($fp)) {
        fscanf($fp, "%s", $name);
        $i++;
        mail($name, $subject, $body, $mail_header);
}
print "[+] Sfarsit "; print date("Y:m:d H:i"); print "\n";
print "[+] $i"; print " mail'uri trimise.";
?>

