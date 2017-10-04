            #!/bin/bash



            read -p "Masukkan Username yang ingin anda unlock: " username
            egrep "^$username" /etc/passwd >/dev/null
            if [ $? -eq 0 ]; then
            # proses mengganti passwordnya
            passwd -u $username
            echo "Script by overses.net"
            echo "Terimakasih sudah berlangganan di overses.net"
            echo " "
            echo "-----------------------------------------------"
            echo -e "Username ${blue}$username${NC} Sudah berhasil di ${green}BUKA KUNCINYA${NC}."
            echo -e "Akses untuk Username ${blue}$username${NC} sudah dikembalikan"
            echo "seperti semula"
            echo "-----------------------------------------------"
            else
            echo "Username tidak ditemukan di server anda"
            exit 1
            fi
