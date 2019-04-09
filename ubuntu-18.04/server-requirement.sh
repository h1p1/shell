apt-get update

# installing apache
apt-get install -y apache2

# installing certbot let's encrypt
add-apt-repository ppa:certbot/certbot
apt-get install -y python-certbot-apache
certbot renew --dry-run

# installing mysql 8.0
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb -O mysql-server.deb
dpkg -i mysql-server.deb
apt-get update
apt-get install -y mysql-server
mysql_secure_installation
rm mysql-server.deb

# installing php 7.2 
# by default, ubuntu 18.04 has php 7.2 repository
# so no need to add more sources
apt-get install -y php
apt-get install -y php7.2-curl php7.2-gd php7.2-mysql php7.2-xml php7.2-mbstring php7.2-zip

# installing composer 
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# installing wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# installing additional tools
apt-get install -y unzip


# additional configuration

# enable mod rewrite
a2enmod rewrite
systemctl restart apache2
