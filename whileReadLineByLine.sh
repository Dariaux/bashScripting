#!/bin/bash 

# This script will read line by line the file located in /etc/fstab/ and it will 
# print how many lines it has using a while loop

# You can comment the line "/etc/fstab" and then pipe this script to a cat fileName and you'll get the lines of your script

LINE_NUM=1

while read LINE 
do 
  echo "${LINE_NUM}: ${LINE}"
  ((LINE_NUM++))
done  < /etc/fstab