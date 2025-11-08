#!/bin/bash

# loganalyser.sh - A simple log analysis script

echo "   Hello   World  "  > temp.txt

# Trim leading and trailing whitespace from each line

# Intro into the while loop

# Here IFS = Internal Field Separator is set to empty to preserve leading/trailing whitespace

while read line; do
    echo "[$line]"
    done < temp.txt


# using the custom IFS to trim whitespace
while IFS= read -r line; do
    echo "[$line]"
    done < temp.txt



