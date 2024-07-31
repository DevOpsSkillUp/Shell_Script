#!/bin/bash

MOVIES=("RRR" "DjTillu" "murari")

# size of above array is 3.
# index are 0,1,2

# list always starts with 0.

echo "First Movie is: ${MOVIES[0]}"
echo "First Movie is: ${MOVIES[1]}"
echo "First Movie is: ${MOVIES[@]}"


Movi=("Bharath" "Lokesh" "Honey")

echo "I am ${Movi[0]}"
echo "I am ${Movi[1]}"
echo "I am ${Movi[2]}"


#!/bin/bash

#arr=("Bharath" "Lokesh" "Honey")

#echo "I am ${arr[0]}"
#echo "I am ${arr[1]}"
#echo "I am ${arr[2]}"