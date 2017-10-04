            user-list.sh
            #!/bin/bash
           
          


            read -p "Masukkan Username Yang Diganti Passwordnya: " username
            egrep "^$username" /etc/passwd >/dev/null
            if [ $? -eq 0 ]; then
            read -p "Masukkan Password baru untuk user $username: " password

         
            echo "Merubah Password..."
            sleep 0.5
            egrep "^$username" /etc/passwd >/dev/null
            echo -e "$password\n$password" | passwd $username
            echo""
            echo "Script by overses.net"
            echo "Terimakasih sudah berlangganan di overses.net"
            echo " "
            echo "---------------------------------------"
            echo -e "Password untuk user ${blue}$username${NC} Sudah berhasil di ganti."
            echo -e "Password baru untuk user ${blue}$username${NC} adalah ${red}$password${NC}"
            echo "--------------------------------------"

            else
            echo -e "Username ${red}$username${NC} tidak ditemukan di VPS anda"
            exit 0
            fi
