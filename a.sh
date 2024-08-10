#!/bin/bash
filename="mac.txt"
for x in `seq 1 4`; do
    a=$(sed -n '1,3p' mac.txt) 
    echo $a
done


