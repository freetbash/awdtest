#!/bin/bash
service ssh start
service apache2 start
service mysql start

mysql -uroot -p123456 < /var/www/html/db.sql
python3 /root/start.py

tail -f /dev/null
