#!/bin/bash

#Указываем путь к директории, в которой хотим работать
WORKFOLDER=~/myfolder

#Создаём директорию для работы
mkdir $WORKFOLDER

#Создаём первый файл и записываем в него значение
echo -e "hello\n$(date)" > $WORKFOLDER/file1.txt

#Создаём второй файл
touch $WORKFOLDER/file2.txt

#Меняем права второму файлу
chmod 777 $WORKFOLDER/file2.txt

#Создаём третий файл и добавляем в него 20 случайных символов
head -c 20 /dev/urandom | base64 | head -c 20 > $WORKFOLDER/file3.txt

#Создаём четвёртый пустой файл
touch $WORKFOLDER/file4.txt

#Создаём пятый пустой файл
touch $WORKFOLDER/file5.txt
