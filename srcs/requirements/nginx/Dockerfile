FROM debian:bullseye

RUN apt update && apt install nginx -y

RUN apt-get install openssl

COPY    /tools/* /etc/nginx/ssl/

COPY    /conf/nginx.conf /etc/nginx/conf.d/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]