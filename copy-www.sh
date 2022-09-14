#!/bin/bash 

# This script will copy all the files ending with .html to /var/www-just-html/

for FILE  in  /var/www/*.html
do
  echo "Copying $FILE"
  cp $FILE /var/www-just-html
done