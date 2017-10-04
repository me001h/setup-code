user-list.sh
#!/bin/bash

echo""

read -p "Masukkan Username yang ingin anda hapus: " username
egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
# proses mengganti passwordnya
userdel -f $username

  echo "Script by overses.net"
  echo "Terimakasih sudah berlangganan di overses.net"
  echo " "
  echo "-----------------------------------------------"
  echo -e "Username ${blue}$username${NC} Sudah berhasil di ${red}HAPUS${NC}."
  echo -e "Akses Login untuk username ${blue}$username${NC} sudah dihapus"
  echo "-----------------------------------------------"
else
echo "Username ${red}$username${NC} tidak ditemukan di VPS anda"
    exit 1
    fi
