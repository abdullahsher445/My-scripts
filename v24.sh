#!/bin/bash
function abc {
echo "Scanner"
    g="--------------------------"
    echo "$g ------------------------ $g" >>v24.txt
    h="                         "
    echo "$h $(date)" >>v24.txt
     echo "$g ------------------------ $g" >>v24.txt
   nmap -sn  192.168.10.0/24 | grep "Host is up" -A 1 >> v24.txt
}
   
   echo "Do you want to clear previous file ?"
read file
if [ "$file" = "yes" ]; then
    >v24.txt
    abc
elif [ "$file" = "no" ]; then
    echo "\n"
    abc
else 
    exit
fi
exit