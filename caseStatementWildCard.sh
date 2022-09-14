#!/bin/bash 


read -n1 -p "enter y or n: " ANSWER  
echo
# ? -p: Indicates that the information entered must be left in the following variable.
# ? -n1: Keeps the execution line, the same line we are in until it reaches the defined number of characters it can be 1 or 2 or 3 ... etc.

case "$ANSWER" in 
  [yY] | [Yy] | [eE] | [Ee])
    echo "You answered yes."
    ;;
  [nN] | [Nn] | [oO])
    echo "You answered no."
    ;;
  *)
    echo "Invalid answer."
    ;;
esac