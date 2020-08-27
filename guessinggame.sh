#!/usr/bin/env bash
#

files=$(ls -1 | wc -l)
input=-1

function check_valid
{
    local check=`echo $2 | grep -E ^[0-9]+$`
    if [[ $check -eq '' ]]
    then
        echo $2 'is not a positive number!'
    elif [[ $1 -eq $2 ]]
    then
        echo 'Congrats! There are extacly' $files 'files!'
    elif [[ $1 -gt $2 ]]
    then
        echo 'No, there are more files, go higher...'
    else
	echo 'No, there are not that many files, go lower...'
    fi
}

while [[ $files -ne $input ]]
do
    read -p 'How many files are in the current directory? ' input
    check_valid $files $input
done
