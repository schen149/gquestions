#!/usr/bin/env bash

filename=$1
while read -r line; do
    name="$line"
    echo "Name read from file - $name"
    python3 gquestions.py query "$name" en --csv  --headless
    sleep 20
done < "$filename"

#python3.7 gquestions.py query "School Day Should Be Extended" en --csv
