#!/bin/bash

#checking if the argument has been provided:
[ $# -ne 1 ] && echo "Provide one string as an argumnet. You've provided $# argument(s)!" && exit 1

inputStr=$1
inputStrLen=${#inputStr}

while (( $inputStrLen > 0 )); do
    let "inputStrLen -= 1"
    resultStr="$resultStr${inputStr:$inputStrLen:1}"
done

echo $resultStr | tr 'a-zA-Z' 'A-Za-z'