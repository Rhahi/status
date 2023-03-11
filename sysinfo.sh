#!/bin/sh

read -d "\t" _ user1 _ sys1 idle1 iowait < /proc/stat
sleep 1
read -d "\t" _ user2 _ sys2 idle2 iowait < /proc/stat
busy=$(($user2 + $sys2 - $user1 - $sys1))
idle=$(($idle2 - $idle1))
mem=$(free -h --si)
disk=$(df -h /)

echo "CPU $(echo "scale=1;100*$busy/($busy+$idle)" | bc)%"
echo ""
echo "$disk"
echo ""
echo "$mem"
