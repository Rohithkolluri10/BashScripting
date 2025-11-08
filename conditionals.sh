#!/bin/bash

# Working on the input variables

read name

if [ $name = "alice" ]; then

        echo "Hello Alice!"
else
        echo "Hello Stranger!"
fi
