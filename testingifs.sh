#!/bin/bash

#echo "   Hello   World  " > texting.txt

# Default IFS will trim the leading and trailing white space

while read line; do
        echo "[$line]"
done < texting.txt


###  Defining custom IFS will not trim the white spaces


while IFS= read line
do
        echo "[$line]"
done < texting.txt