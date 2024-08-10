#!/bin/bash
g="=========================================================================================================================="
echo "Enter ip Address = " 
read a
    nmap -T4 -p- $a >a.txt
    awk '$1 ~ /^[0-9]/' a.txt | cut -d "/" -f 1 >aa.txt
    echo "$g"
    cat aa.txt
    echo "$g"
    >bb.txt
while IFS= read -r line
do
   echo "$g">>bb.txt
   echo "Report for Port($line)">>bb.txt
   echo "$g" >>bb.txt 
 nmap -T4 -A -p $line $a | grep "PORT" -A 20 >>bb.txt
done < aa.txt

#
