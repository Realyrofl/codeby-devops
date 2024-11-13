#!/bin/bash

mkdir ~/myfolder

echo -e "hello\n$(date)" > ~/myfolder/file1.txt

touch ~/myfolder/file2.txt
chmod 777 ~/myfolder/file2.txt

head -c 20 /dev/urandom | base64 | head -c 20 > ~/myfolder/file3.txt

touch ~/myfolder/file4.txt
touch ~/myfolder/file5.txt
