#!/bin/bash
cards=('rtx3060' 'rtx3070' 'rtx3080' 'rtx3090' 'rx6700')
echo "$(date)" >> sales.txt
for x in "${cards[@]}"
do
tmp=$(curl "http://0.0.0.0:5000/$x")
echo "$x":" $tmp" >> sales.txt
done 