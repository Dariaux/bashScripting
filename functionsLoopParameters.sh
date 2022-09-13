#!/bin/bash

      # * Postional parameters

function hello () { 
  echo "Hello $1"
}

hello Angel



echo
      # Looping over all the parameters

function hello () { 
  for NAME in $@  # ? this will loop through all the paraemters passed.
  do
    echo "Hello $NAME"
  done
}

hello Jason Dan Ryan Angel  # here the function is executed and the parameters are added.