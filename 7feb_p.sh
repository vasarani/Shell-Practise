#!/bin/bash

set -e #ERR
trap 'echo "There is error in $LINENO, Command: $BASH_COMMAND"' ERR
 

echo "Hello World!"
echo "I'm Learning Shell_Scripting"
echoo "Printing Error here"
echo "No error in this"
