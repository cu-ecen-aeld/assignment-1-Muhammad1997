#!/bin/sh
# writer script
# Author: Muhammad1997  

# set the vars
writefile=$1
writestr=$2
# check if input is valid
if ! [ "$writefile" ] ||  [ -z "$writestr" ]
then
    echo "please provide file name and string"
    exit 1

else
    # make the dir if not exist
    directory=$(dirname "$writefile")
    if ! [ -d "$directory" ]
    then
        mkdir -p "$directory"
    fi
    # create new file and check if created
    touch "$writefile"
    if [ -e $writefile ]
    then
        # write to file
        echo "$writestr" > "$writefile"
        exit 0
    else
        echo "File not created"
        exit 1    
    fi    
fi