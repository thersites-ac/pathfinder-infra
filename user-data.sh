sudo su
yum install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm -y
amazon-linux-extras install epel -y
yum install mysql-community-server -y
systemctl enable --now mysqld
exit
