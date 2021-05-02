sudo yum install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm -y
sudo amazon-linux-extras install epel -y
sudo yum install mysql-community-server -y
sudo systemctl enable --now mysqld
