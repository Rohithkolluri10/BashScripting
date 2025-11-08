#!/bin/bash

# using the wild card * for string matching
# In a given String * will omit the preceding and ending values
# In this example *apple* will omit the before and after

FRUIT="apple banana mango"

if [[ $FRUIT == *pie*   ]]; then
        echo "Found it"
else
        echo "NO Mentioned fruits in ${FRUIT}"
fi



# Checking of the string is empty or not
# using [[  -n .... ]]

CODE=
if [[ -n $CODE ]]
then
        echo "Variable is empty"
else
        echo "Variable is not empty"
fi


COUNT=5

(( COUNT++ ))
echo $COUNT
# Regular Expression with Grep Utility
#  + here is a Quantifier means - should match one or more times
#  Regular expressions contains quantifiers , meta characters

TEXT="ID-1234567-SOMETHING"
echo $TEXT | grep -oE '[0-9]+'

