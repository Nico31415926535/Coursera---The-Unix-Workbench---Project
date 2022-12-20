#!/bin/bash

function check_guess () {

local guess=$1
local count_of_files_in_dir=$2

if [[ $guess -eq $count_of_files_in_dir ]]
then
  echo "Great, your answer $guess is correct."
  let exit=1
else
  if [[ $guess -gt $count_of_files_in_dir ]]
     then
       echo "Your guess was too high. Guess lower."
     else
       echo "Your guess was too low. Guess higher." 
  fi
fi
}

exit=0
count_of_files_in_dir=`ls -la | egrep "total" | egrep -o "[0-9]+"`

echo "*********************************"
echo "Welcome to the Guessing Game. Please guess the count of files in your current directory."
echo "Your current directory: `pwd`"
echo "*********************************"

while [[ $exit -eq 0 ]]
do
  echo "Please type your guess and confirm with enter: "
  read guess
  check_guess $guess $count_of_files_in_dir
done