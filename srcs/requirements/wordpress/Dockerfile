FROM debian:bullseye

RUN apt-get update && apt-get install -y php7.4 \
    php7.4-fpm php7.4-mysql curl

RUN rm -rf /var/www/html/*

WORKDIR /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

RUN mkdir -p /run/php

RUN wp core download --allow-root

# RUN wp config create --dbname=wpdatabse --dbuser=dbadmin --dbpass=yourdbpass --allow-root

# RUN wp core install --url=yourwebsite.com --title="Your Site Title" --admin_user=adminusername --admin_password=adminpassword --admin_email=adminemail@example.com --allow-root

WORKDIR /

CMD [ "php-fpm7.4" , "-F"]