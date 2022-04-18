#!/bin/bash
echo "Enter the file path."
read file
filesize=$(stat -c %s $file)
echo "$file is precise $filesize bytes."

number_of_lines=$(wc --lines <$file)

number_of_words=$(wc --word <$file)

echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"

awk '{print "Line No:" "<" NR ">"  "-Count of words :" "[" NF "]" }' $file
awk '{for(i = 1; i <= NF; i++) {a[$i]++}} END {for(k in a) if(a[k] > 1) {print "Word :" "<" k ">","- Count of repetition :" "[" a[k] "]"}}' $file
