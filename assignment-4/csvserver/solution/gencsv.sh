#!/bin/bash

# This script creates a csv file based on input parameter. 
# If no parameter is provided it will take a default value of 10.

validate_arguments () {
  re='^[0-9]+$'
  if ! [[ $1 =~ $re ]] ; then
    echo "Please provide a valid number" >&2; exit 1
  fi
}

# Initiate default number of lines.
LINES=10
FILE="inputFile"

# Check if number of lines is provided as an input.
if [[ "${#}" -lt 1 ]]
then
  echo "CSV file with 10 lines"
else
  validate_arguments "$1"
  LINES=$1
  echo "CSV file with ${1} lines"
fi

# Cretate a file and write to it
touch "$FILE" 
>"$FILE"

START=0
END=$LINES-1

for (( c=$START; c<=$END; c++ ))
do
	echo "$c, $RANDOM">>"$FILE"
done




