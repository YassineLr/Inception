FROM debian:buster

RUN apt update && apt install nginx -y

RUN apt-get install openssl

COPY    /conf/nginx.conf /etc/nginx/conf.d/

COPY    /tools/* /etc/ssl/

COPY /tools/index.html /var/www/html/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]