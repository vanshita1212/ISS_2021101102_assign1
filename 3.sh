#!/bin/bash
read file_name 
echo 
echo

bytes=$(wc -c $file_name) 
echo $bytes | awk '{print $1}'   #byte count

line=$(wc -l $file_name)
echo $line | awk '{print $1}'   #line count

word=$(wc -w $file_name) 
echo $word | awk '{print $1}'   #word count

echo
echo

awk '$0="Line No:<" NR ">-Count of Words:[" NF"]"' $file_name   #display count of words in each line. NF shows number of fields in each line and NR represents line number.

echo
echo

#sed -e  's/[^A-Za-z]/ /g' $file_name  | tr ' ' '\n' | grep -v '^$'| sort | uniq -c | awk '{print "Word: " $2" - Count of repetition: "$1}'


sed -e  's/[^A-Za-z]/ /g' $file_name | tr ' ' '\n' | awk 'BEGIN { FS="[^a-zA-Z]+" } {
        for (i=1; i<=NF; i++) 
        {
            word = tolower($i)              
            words[word]++
        }
    }
    END {
        for (w in words)
            if (words[w]!=1)
            {
                printf("Word: <%s> - Count of repitition: [%d]\n", w, words[w]);
            }
    }'                                                    #sed -e s/[^A-Za-z]/ /g' remove all punctuations
                                                         #tr converts all whitespaces into newline character
                                                           #tolower() convert all letters to lowercase