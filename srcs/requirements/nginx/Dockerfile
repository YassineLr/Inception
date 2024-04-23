FROM debian:bullseye

RUN apt update && apt install nginx -y gettext

RUN apt-get install openssl

COPY    /tools/* /etc/nginx/ssl/

COPY    /conf/nginx.conf.template /etc/nginx/conf.d/

COPY    /conf/config.sh /bin
RUN     chmod +x /bin/config.sh 

EXPOSE 443

CMD ["config.sh"]