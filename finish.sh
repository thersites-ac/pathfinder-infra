# ssh into ec2 instance, then run
sudo grep 'temporary password' /var/log/mysqld.log
# use the password found above for input:
sudo mysql_secure_installation -p'foundpassword'
# then use the new password
mysql -uroot -p
# run SQL commands to prepare initial database
