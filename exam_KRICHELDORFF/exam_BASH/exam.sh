#!/bin/bash
cards=('rtx3060' 'rtx3070' 'rtx3080' 'rtx3090' 'rx6700')

get_data(){
    echo $(curl "http://0.0.0.0:5000/$1")
}

echo "$(date)" >> sales2.txt
for x in "${cards[@]}"
do
tmp=$(get_data "$x")
echo "$x":" $tmp" >> sales2.txt
done 