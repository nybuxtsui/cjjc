#!/bin/sh
R=`./kanji.py $1`
C=`cat dictionary/data* | awk -F'\t' -v r=$R '{if(match($1, r)) print $0;}' | wc -l`
if [ $C = "0" ]; then
    cat dictionary/sort* | awk -F'\t' -v r=$R '{if(match($1, r)) print $0;}'
else
    cat dictionary/data* | awk -F'\t' -v r=$R '{if(match($1, r)) print $0;}'
fi


