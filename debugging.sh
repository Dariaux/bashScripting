#!/bin/bash

          # todo: Built-in Bash Options: 

#? /bin/bash -x 
#? -x is called: x-trace, tracing, print or debugging. and prints all the program like in debugging.

#? -e: Exit on error
# it can be combined with other options:
# /bin/bash -ex
# /bin/bash -xe 
# /bin/bash -e -x
# /bin/bash -x -e

#? -v: Prints shell input lines as they are read. It can be combined with other options.
# /bin/bash -vx



# set -x: starts the debugging 
# set +x: finishes the debugging


TEST_VAR='test'
set -x 
echo $TEST_VAR
set +x 
hostname