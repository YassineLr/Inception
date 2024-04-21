FROM debian:bullseye

RUN apt-get update && apt-get install -y php7.4 \
    php7.4-fpm php7.4-mysql curl

COPY /conf/wp-config.sh /var/www/html/

RUN chmod +x /var/www/html/wp-config.sh

CMD [ "sh" , "-c" , "/var/www/html/wp-config.sh && php-fpm7.4 -F"]