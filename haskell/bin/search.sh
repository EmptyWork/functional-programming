#!/bin/bash

# search.sh 
# is a bash script to help find any exe file from default haskell dist
# and move that file to ./build/ with the same name that was provided
# search.sh -n "name"
# future
# search.sh -n "name" -w

# TEMPORARY 
while getopts "n:w:" arg; do
  case $arg in
    n) name=$OPTARG;;
    # w) window=$OPTARG;;
  esac
done

find . -type f -name "$name" | xargs -I {} mv {} ../build/$name
# find . -type f -name "$name" | xargs -I {} cp {} ../build/$name

# if [ $name ]
#   then
#     if [ $window ]
#       then
#         find . -type f -name "$name" -exec mv {} ./build/ 
#         echo "Successfully moved $? to ./build/$name.exe" 
#     else
#       echo $name
#       find . -type f -name "$name" 
#       # find . -type f -name "$name" | xargs -I {} mv {} ./build/$name
#     fi
# else
#   echo "Please provide the file name using -n"
# fi