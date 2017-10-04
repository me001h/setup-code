#!/bin/bash

last | grep ppp | grep still | awk '{print " ",$1," - " $3 }' > /tmp/login-db-pptp.txt;
echo "Script by overses.net"
echo "Terimakasih sudah berlangganan di overses.net"
echo""
echo "===============================================";
echo " "
echo " "
echo "Memeriksa User PPTP VPN Yang Login";
echo "(Username - IP)";
echo "-------------------------------------";
cat /tmp/login-db-pptp.txt
echo " "
echo " "
echo " "
echo "===============================================";
