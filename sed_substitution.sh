#!/bin/bash 


# It will substitute (but NO change) the old for the new word in the document Globaly
# Without the "g" it will substitute just the first match
# the "s" sets the delimiter, in this case the delimeter is "/"

sed 's/oldWord/newWord/g' manager.txt


# It will substitute (but NO change) the old for the new word in the document Globaly
# & will ignore the case of the old word to search:

sed 's/OLDWORD/newWord/g' manager.txt


# It will substitute (but NO change) the old for the new word in the document
# But just he 2nd match, (it cam be done with the 1st, 2nd, 3rd ...)

sed 's/oldWord/newWord/2' manager.txt


# This will create a copy of original document with its new extention, and will change the original one:
# the new document will have a .txt.bak extention.

sed -i.bak 's/oldWord/newWord/g' manager.txt


#? In this case the "#" signe will treat has the delimiter:
# it can be any other singe, just make sure is preceded by the "s" in the sed pattern.

echo '/home/angel/' | sed 's#/home/angel#/export/users/AngelH#'


