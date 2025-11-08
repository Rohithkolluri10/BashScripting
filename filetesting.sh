#!/bin/bash



LOG_PATH="/home/ec2-user/text.txt"

if [[ "${#}" -eq 2 ]]
then
        echo "you are having correct number of parameters"
        echo "Script name: $0"
        echo "Arguments passed: $@"
        echo "Process ID of the script: $!"
        echo "current working directory: $PWD"
        exit 1
fi

# Parameter expansion in Bash

filename="report_2025.txt"

echo "${filename%.txt}"
echo "${filename%%.txt}"
echo "${filename#*_}"
echo "${filename##*_}"
echo "${#filename}"

echo "${name:?Error: name not set}"



# file testing


if [[  -f "$LOG_PATH" ]] && [[ -r "$LOG_PATH" ]]
then
        echo "File is present and File has read permissions"
else
        echo "file may not be present or Doest have read permission"