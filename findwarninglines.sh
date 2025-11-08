#!/bin/bash

LOGFILE="testlogs.txt"

if [[ ! -f "$LOGFILE" ]] || [[ ! -r "$LOGFILE" ]]
then
        echo " Error : cannot read $LOGFILE" >&2
        exit 1
fi


awk '/WARNING/ {print; for (i=0; i<5 && getline; i++) print}' "$LOGFILE"