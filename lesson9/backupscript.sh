mysqldump -u root -p "mypass" testovayabaza > /opt/mysql_backup/dbbackup_$(date +\%Y\%m\%d\%H\%M\%S).sql
sudo sshpass -p "mypass" rsync -avz -e ssh /opt/mysql_backup/ 192.168.56.105:/opt/store/mysql/