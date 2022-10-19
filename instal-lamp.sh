set -x
sudo dnf up -y
sudo dnf clean all

sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

sudo dnf install community-mysql-server -y
sudo systemctl start mysqld
sudo systemctl enable mysqld

sudo dnf install php -y
sudo dnf install php-mysqlnd -y
sudo systemctl restart httpd