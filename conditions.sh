#!/bin/bash
NUM=$1

# -gt --> greater than
# -lt --> less than
# -eq --> equal
# -ne --> not equal
if [ $NUM -gt 20 ]; then
echo "Given number: $NUM is greater than 20"
fi 