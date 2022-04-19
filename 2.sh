#!/bin/bash

sed '/^$/d' quotes.txt | awk -F  "~" '{print $2 " once said, " "\x22" $1 "\x22"}' > speech.txt