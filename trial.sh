#!/bin/bash

MYIP=$(wget -qO- ipv4.icanhazip.com)
passrandom=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)

Login=trial-`</dev/urandom tr -dc X-Z0-9 | head -c4`
masaaktif="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`
IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
  echo "Script by overses.net"
  echo "Terimakasih sudah berlanggananan di @orangkuatsabahanterkini"
  echo " "
  echo "Demikian Detail Account Trial Anda"
  echo "------------------------------"
  echo -e "Host/IP         : $MYIP"
  echo -e "Dropbear Port   : 80, 109, 110, 443"
  echo -e "OpenSSH Port    : 22, 143"
  echo -e "Squid Proxy     : 8080, 8000, 3128"
  echo -e "OpenVPN Config  : http://$MYIP:81/client.ovpn"
  echo -e "Username        : $Login "
  echo -e "Password        : $Pass\n" 
  echo -e "Akun ini hanya aktif 1 hari"
  echo "------------------------------"
