#!/bin/bash

function hello () { 
  echo "Hello"
  now  # ? Now is executed later.
}

function now() { 
  echo "It's $(date +%r)"
}

hello  # ? Hello is executed first 



echo
      # * Postional parameters

function hello () { 
  echo "Hello $1"
}

hello Angel