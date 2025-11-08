#!/bin/bash


for item in apple banana orange
do
        echo "$item"
done


for (( i=0; i<5; i++ ))
do
        echo i = "$i"
done


while IFS= read -r line
do
        echo "Line: $line"
done < text.txt
