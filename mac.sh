#!/bin/bash

function mac { 
     echo "$(tput setaf 3)"
g="---------------"
echo "                      $g,$(date),$g " >>mac.txt
echo "  ">>mac.txt
echo "Write your ip upto three points(ex:192.168.10) "
read a
echo "write your range of ip addresses (from 1 to 255)"
echo "initial number "
read b
echo "final number"
read c
m="="
echo "                      $g,$(date),$g "
    echo "$g --------------- $g --------------- $g--------------- $g"
for ip in `seq $b $c`; do
n=$(nmap $a.$ip |grep "MAC")
o=$(nmap $a.$ip )
if [ -n "$n" ]; then
    echo "$(tput setaf 1)"
    echo "The Mac address of $a.$ip is ::::::::- $n"
    echo "$(tput setaf 2)"
    echo "$g --------------- $g --------------- $g--------------- $g"
    echo "The MAC address of $a.$ip is ($n)" >>mac.txt
    tput rmso
fi

done
gedit mac.txt&
exit
}
function abcd {
    echo " "
}
echo "Do you want to clear previous file ?"
read file
if [ "$file" = "yes" ]; then
    >mac.txt
    mac
elif [ "$file" = "no"];
then  
    mac
else
    abcd
fi
gedit mac.txt
exit
