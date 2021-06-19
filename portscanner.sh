#!/bin/bash
echo "Name the file you want to save the scan result : "
read name
echo "Enter the ip address"
read ip
echo "[+] Reading ip adress"
sleep 3
echo "[+] Started scanning"


rustscan -a $ip > $name
echo "[+] Scan Completed"
echo "[+]Fetching ip addresses and port"
cat $name | grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]\.[0-9]{1,3}'

