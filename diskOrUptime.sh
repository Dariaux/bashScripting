#!/bin/bash 

while true 
do 
  read -n1 -p "1: Show disk usage. 2: Show uptime. " CHOICE  # -n1: allow just 1 character as input, -p insert the input value in the variable "CHOICE"
  echo -e "\n"
  case "$CHOICE" in
    1) 
      df -h
      ;;

    2) 
      uptime
      ;;

    *)
      break
      ;;
  esac
done  