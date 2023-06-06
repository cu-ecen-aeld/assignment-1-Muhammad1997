#!/bin/sh
# Finder script
# Author: Muhammad1997  

# set the vars
filesdir=$1
searchstr=$2
# check if there is a valid input
if ! [ $filesdir ] || ! [ $searchstr ]
then
    echo "you must enter the folder path then search string"
    exit 1
# check if the dir is there    
elif ! [ -d $filesdir ]
then
    echo "not a dir"
    exit 1
# serch for the files and string    
else
    # get the number of files
    num_of_files=$(find $filesdir -type f | wc -l)
    # serch for files with the string
    found_files=$(find $filesdir -type f -exec grep -H "$searchstr" {} + | wc -l)
    echo "The number of files are $num_of_files and the number of matching lines are $found_files"
    exit 0
fi