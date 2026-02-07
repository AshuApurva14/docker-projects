#!/bin/bash

# Taking 3 arguments and there input will be provided via docker run command

arg1=${1}
arg2=${2}
arg3=${3}

while true; do 
      echo "Argument 1: $arg1"
      echo "Argument 2: $arg2"
      echo "Argument 3: $arg3"
      sleep 1
done


