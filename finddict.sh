#!/bin/sh
R=`./kanji.py $1`
cat dictionary/data* | awk -F'\t' -v r=$R '{if(match($1, r)) print $0;}'
