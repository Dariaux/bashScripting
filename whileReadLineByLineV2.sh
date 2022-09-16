#!/bin/bash 

# The script will count how many times the word "xfs" appears in the file /etc/fstab

grep xfs /etc/fstab | while read LINE
do
  echo "xfs: ${LINE}"
done 