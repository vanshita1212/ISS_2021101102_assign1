#!/bin/bash
sed '/^$/d' quotes.txt | cat       #remove blank lines from text
echo
echo
echo
echo

sed '/^$/d' quotes.txt | awk '!x[$0]++' $1 | cat   #remove blank lines and direct the output to "remove duplicate lines"
                                                   #$0 acts as line counter








