#!/bin/bash

# Working with Indexed Arrays

# Declarig a Array
declare -a FRUITS=("Apple" "Banana" "Orange")

echo ${FRUITS[0]}

echo "${FRUITS[@]}"

FRUITS[3]="Date"

FRUITS+=("Mango")


echo "${FRUITS[@]}"


declare -A CONFIG

CONFIG["HOST"]="localhost"
CONFIG["PORT"]="8080"

echo "Host is ${CONFIG["HOST"]}"

echo "Port is ${CONFIG["PORT"]}"

echo "Printing all the elemets in config ${CONFIG[@]}"

echo "Printing only the Key ${!CONFIG[@]}"

declare -A error_counts

error_counts["ERROR404"]=15
error_counts["ERROR500"]=16

# Increment the error count
(( error_counts["ERROR404"]++ ))

# Looping through the Associative arrays


echo "_____________________Error-Summary_________________"

for code in "${!error_counts[@]}"; do
        echo "Code: $code | Count: ${error_counts[$code]}"
done



declare -A STATUSCODE=( ["OK"]=200 ["FAIL"]=500 ["REDIRECT"]=301 )


SEARCH_KEY=500
FOUND_KEY=""

# Using the conditionals and loops to find out the error

for key in "${!STATUSCODE[@]}"; do
        if [[ "${STATUSCODE[$key]}" == "${SEARCH_KEY}" ]]; then
            FOUND_KEY="$key"
            break
        fi
done

"Echo value for the ${SEARCH_KEY} has been found: $FOUND_KEY"