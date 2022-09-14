#!/bin/bash

function backup_file () { 

    if [ -f $1 ]  # ?: -f stands for "file exist"
    then
      BACK="/tmp/$(basename ${1}).$(date +%F).$$"  
          # ? basename; will take just the name of the file and not the path passed has the parameter
          # ? $(date +%F.$$  )  this will print the date in YYYY/MM/DD
          # ? the .$$ will print the current process PID ( process ID of the linux shell ) 

      echo "Backing up $1 to ${BACK}"
      cp $1 $BACK 
    else 
      # The file does not exist, this will return a exit code 1. 
      return 1  
    fi
}

read -p "Insert here the path of the file: " fileToBackup

backup_file $fileToBackup  # Here we call the fuction backup_file() with its parameter

if [ $? -eq 0 ]  # if the exit code = 0 means that last comand succeeded. 
then
  echo "Backup Succeeded!!!"
else 
  echo "Files does not exits."
fi

