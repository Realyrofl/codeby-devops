#!/bin/bash

file_count=$(ls -l ~/myfolder | grep -c '^-' )
echo "Number of files in myfolder: $file_count"

chmod 664 ~/myfolder/file2.txt

find ~/myfolder -type f -empty -delete

for file in ~/myfolder/*
do
    if [ -f "$file" ] && [ -s "$file" ]; then
        sed -i '2,$d' "$file"
    fi
done
