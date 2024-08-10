#!/bin/bash
. ~/.profile

echo "Enter the target domain ="
read url
if [ ! -d "$url" ]; then
    mkdir $url
fi
if [ ! -d "$url/target" ]; then
    mkdir $url/target
fi
echo "[+]Starting AssetFinder"
echo "[++]Setting up Target"
echo "[+++]Searching for the $url"
sleep 5s
assetfinder $url >> $url/target/asset.txt
cat $url/target/asset.txt | grep $url >> $url/target/final.txt
rm $url/target/asset.txt

#echo "-------------------------------------------------------------------------------------------------------------------------------"

#echo "[+]Starting Ammas"
#echo "[++]Setting up Target"
#echo "[+++]Searching for the $url"
#amass enum -d $url >> $url/target/f.txt
#sort -u f.txt >> $url/target/final.txt
#rm $url/target/f.txt
sort -u final.txt > final.txt
echo "[+]Starting Httprobe"
echo "[++]Setting up Target"

cat pgc.edu.pk/target/final.txt | httprobe  |sed 's/https\?:\/\///' >> $url/target/alive.txt