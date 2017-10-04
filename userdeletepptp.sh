            #!/bin/bash

            echo""
            read -p "Masukkan Username yang ingin anda hapus: " username
            grep -E "^$username" /etc/ppp/chap-secrets >/dev/null
            if [ $? -eq 0 ]; then
            # proses mengganti passwordnya
            username2="/$username/d";
            sed -i $username2 /etc/ppp/chap-secrets
            sed -i $username2 /var/lib/premium-script/data-user-pptp
            sed -i '/^$/d' /etc/ppp/chap-secrets
            sed -i '/^$/d' /var/lib/premium-script/data-user-pptp
            echo""
            echo "Script by overses.net"
            echo "Terimakasih sudah berlangganan di overses.net"
            echo " "
            echo "-----------------------------------------------"
            echo -e "Username ${blue}$username${NC} Sudah berhasil di ${red}HAPUS${NC}."
            echo -e "Akses Login untuk username ${blue}$username${NC} sudah dihapus"
            echo "-----------------------------------------------"
            else
            echo "Username tidak ditemukan di server anda"
            exit 1
            fi
