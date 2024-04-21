#!/bin/bash

cd /var/www/html/
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

wp core download --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i "s/database_name_here/$DB_NAME/" wp-config.php
sed -i "s/username_here/$DB_USER/" wp-config.php
sed -i "s/password_here/$DB_PASS/" wp-config.php
sed -i "s/localhost/$DB_HOST/" wp-config.php

wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --allow-root

wp core install --url=$DOMAINENAME --title="Your Site Title" --admin_user=adminusername --admin_password=adminpassword --admin_email=adminemail@example.com --allow-root

wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

wp theme install astra --activate --allow-root


mkdir /run/php
