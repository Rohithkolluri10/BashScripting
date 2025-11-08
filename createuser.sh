#!/bin/bash

# Check if the user is not root user

# check the uid of the user

# Validate if it equals 0


echo "Your UID is ${UID}"

USER_NAME=$(id -un)


if [[  "${UID}" -eq 0 ]]
then
        echo "You are a Root user"
else
        echo "Your username is ${USER_NAME}"
        exit
fi

echo "${date}"