#!/bin/bash

writefile=$1
writestr=$2

if [ ! -d "$writefile" ]
then
	mkdir -p $(dirname "$writefile")
	touch "$writefile" | echo "$writestr" > "$writefile"

else
	touch "$writefile" | echo "$writestr" > "$writefile"
fi
