sudo grep 'temporary password' /var/log/mysqld.log
sudo mysql_secure_installation -p'foundpassword'
mysql -uroot -p
# prepare initial database
