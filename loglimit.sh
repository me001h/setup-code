            #!/bin/bash
5
            echo""

            echo "Script Created by http://overses.net";
            echo "Terimakasih sudah berlanggan di overses.net";
            echo ""
            echo "===============================================";
            echo " ";
            if [ -e "/root/log-limit.txt" ]; then
            echo "User yang dikick oleh user-limit adalah";
            echo "Waktu - Username - Jumlah Multilogin"
            echo "-------------------------------------";
            cat /root/log-limit.txt
            else
            echo " Tidak ada user yang melakukan pelanggaran"
            echo " Atau"
            echo " Script user-limit belum dijalankan"
            fi
            echo " ";
            echo "===============================================";
