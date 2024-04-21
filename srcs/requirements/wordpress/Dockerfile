FROM debian:bullseye

RUN mkdir -p /run/php
RUN apt-get update && apt-get install -y php7.4 \
php7.4-fpm php7.4-mysql curl

WORKDIR /var/www/html/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
 
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wp-config.sh /bin

RUN chmod +x /bin/wp-config.sh

CMD [ "wp-config.sh" ]