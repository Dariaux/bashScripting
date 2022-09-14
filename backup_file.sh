#!/bin/bash

function backup_file () { 

    if [ -f $1 ]  # ?: -f stands for "file exist"
    then
      BACK="/tmp/$(basename ${1}.$(date +%F).$$"  
          # ? basename; will take just the name of the file and not the path passed has the parameter
          # ? $(date +%F.$$  )  this will print the date in YYYY/MM/DD
          # ? the .$$ will print the current process PID ( process ID of the linux shell ) 

      echo "Baccking up $1 to ${BACK} 
      cp $1 $BACK 
    fi
}

backup_file /etc/hosts

if [ $? -eq 0 ]
then
  echo "Backup Succeeded!!!"
fi

