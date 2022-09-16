#!/bin/bash 

# This script wil enter a logging message with its level of severity

logit () {
  local LOG_LEVEL=$1  # indicates the level of severity
  shift  # ? A shift statement is typically used when the number of arguments to a command is not known in advance, for instance when users can give as many arguments as they like.
  # ? also shift stands for: the especial variable "$@" will contain everything else the variable "$1"
  MSG=$@  # all the parameters 
  TIMESTAMP=$(date +"%Y-%m-%d %T")

  if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE 
  then
    echo "${TIMESTAMP} ${HOST}
    ${PROGRAM_NAME} [${PID}]: ${LOG_LEVEL} ${MSG}"
  fi
}