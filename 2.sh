#!/bin/sh
set -x
mkdir Carpesano
cd Carpesano
git init
for i in $(seq 0 100);do
#echo $i
touch f$i
#git add f$i
git add .
git commit -m "+f$i"
done
git log --oneline --graph --all
rm -rf .git
cd Test01
rm -rf Carpesano
