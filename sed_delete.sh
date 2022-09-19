#!/bin/bash 

# ? This will remove the line that has the searched word:

sed '/wordToDelete/d' nameOfFile.txt



# ? This command will remove all the comments of a file:

sed '/^#/d' config.txt  # it stands for: remove all the lines that start with "#".



# ? This one removes the blank lines:

sed '/^$/d' config.txt  # it stands for: the lines that starts and ends inmediately.



# ? In this way you can combine both operations at the same time:

sed '/^#/d ; /^$/d' config.txt

sed '/^#/d ; /^$/d ; s/oldWord/newWord/' config.txt # this one is doing 3 operations at the same time

sed -e '/^#/d' -e '/^$/d' -e 's/oldWord/newWord/' config.txt  # it do the same as above

sed -f script.sed config.txt  # It will execute the file "script.sed" and then it's commands will be affect the file "config.txt"

