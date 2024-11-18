#!/bin/bash

#Указываем путь к директории, в которой хотим работать
WORKFOLDER=~/myfolder

#Подсчитываем в цикле количество файлов в директории
file_count=0
for file in "$WORKFOLDER"/*; do
    if [ -f "$file" ]; then
        ((file_count++))
    fi
done

#Выводим количество файлов
echo "Number of files in $WORKFOLDER: $file_count"

#Корректируем права на второй файл
chmod 664 $WORKFOLDER/file2.txt

#Ищем и удаляем пустые файлы
find $WORKFOLDER -type f -empty -delete

#В цикле проходим по всем файлам в директории и удаляем в них всё кроме первой строки
for file in "$WORKFOLDER"/*
do
    if [ -f "$file" ] && [ -s "$file" ]; then
        sed -i '2,$d' "$file"
    fi
done
