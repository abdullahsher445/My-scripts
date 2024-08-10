#!/bin/bash
echo Enter the MAC ADDRESS
read a
>macc.txt
MAC="$(echo $a | sed 's/://g' | cut -c1-6)"
  
result="$(grep -i -A 4 ^$MAC ./oui.txt |sed 's/(base 16)//g' )"
  
if [ "$result" ]; then
    b="For the MAC $a the following information is found:"
    echo "$b,$result" >>macc.txt
else
    echo "MAC $a is not found in the database."
fi