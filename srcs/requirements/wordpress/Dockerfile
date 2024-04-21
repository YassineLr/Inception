FROM debian:bullseye

RUN apt-get update && apt-get install -y php7.4 \
    php7.4-fpm php7.4-mysql curl

WORKDIR /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
 
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wp-config.sh /var/www/html/wp-config.sh

RUN chmod +x /var/www/html/wp-config.sh

CMD [ "sh" , "-c" , "/var/www/html/wp-config.sh && php-fpm7.4 -F"]