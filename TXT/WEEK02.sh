#!/bin/bash

file="inputSCRAP.txt"

sed -r 's/\r//' "$file"

# -r gives extended regex
# replace terminator (\r) with nothing so every line only ends with \n


grep -oE '[0-9]{10}' "$file" | sort | uniq > outputSCRAP.txt

# grep searches for 10 digit numbers ranging from 0-9 within the file "inputSCRAP.txt"
# -o prints only the 10 digits of the id from the whole line
# -E enables extended regex

# sort does what it says (sorts based on student id number ascendingly)
# uniq prints only one of each occurrence of the student id
# outputs it as "outputSCRAP.txt"