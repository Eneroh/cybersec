#!/bin/sh
if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh <ip>"

else
for ip in `seq 1 254`; do    
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &    
done
fi

# output to iplist.txt and refer to nmap_script.sh, gives you a comprehensive ip and port scan, liquid fast.