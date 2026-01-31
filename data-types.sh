#!/bin/bash
NUM1=100
NUM2=Ram
SUM=$(($NUM1+$NUM2))

echo "sum is : $SUM"

FRUITS=("Apple" "Banana" "Pomogranate")
echo "Fruites are: ${FRUITS[@]}" 
echo "First Fruit is: ${FRUITS[0]}"
echo "Second fruit is: ${FRUITS[1]}"
echo "Third fruit is: ${FRUITS[2]}"
