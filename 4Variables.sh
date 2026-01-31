#!/bin/bash
STARTTIME=$(date)
echo "Script Executed at: $STARTTIME"

sleep 10

ENDTIME=$(date +%s)
TOTAL_TIME=$(($ENDTIME-$STARTTIME))

echo "Script executed in: $TOTAL_TIME"