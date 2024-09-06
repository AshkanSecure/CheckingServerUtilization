#!/bin/bash
echo " 𝙀𝙙𝙞𝙩 𝘽𝙮 SECUREMANAGER "
echo "𝙑𝙚𝙧𝙨𝙞𝙤𝙣 1.2.0 "
echo "Script Running...| Please Not Stop Script"
date;
echo "uptime:"
uptime
echo "Currently connected"
w
echo " Show Exim Service List "
exim -bp && exim -bpc
echo "-------------------"
echo "Show Last logins:"
last -a |head -3
echo "-------------------"
echo "Disk and memory usage:"
df -h | xargs | awk '{print "Free/totals disk: " $23 " / "$24}'
echo "--------------------"
free -m |xargs | awk '{print "free/total/used disk: "$10 "/" $8 "/" $9"  MB"}'
echo "--------------------"
#echo "Utilization and most expensive processes:"
  top -b |head -20
echo "--------------------"
echo "Open TCP ports:"
nmap -p- -T4 127.0.0.1
echo "--------------------"
echo "Current connections:"
ss -s
echo "--------------------"
echo "processes:"
ps auxf --width=20
echo "--------------------"
echo "vmstat:"
vmstat 1 5
echo "--------------------"
echo " detail Service httpd "
service httpd status
echo "--------------------"
echo "--------------------"
echo " detail Service csf (FireWall)"
csf -U
csf -v
csf -r
echo "--------------------"
