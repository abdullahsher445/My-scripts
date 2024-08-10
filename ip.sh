#!/bin/bash

echo " Hello ! to anonymous IP sweep"
#echo "Enter your ip address up to three points like(192.168.10)"
#read a
a="192.168.10"
echo "write your range of ip addresses (from 1 to 255)"
echo "initial number "
read b
echo "final number"
read c

for ip in `seq $b $c`; do
ping  -c 1 $a.$ip| grep "64" | cut -d " " -f 4 |tr -d ":" 

done


#First two lines will be printed on screen then user will enter the ip address upto three dots and then 
#he will also specify the range 
#for loop will cause the ip variable to go from $b to $c which are to be specified by the user
#the ping command will ping the $a(e.g 192.168.10 or something like it given by user).$ip which will move from 
#$b to $c and then grep ,cut and tr will narrow result to a list of ip addresses available
