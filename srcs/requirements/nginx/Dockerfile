FROM ubuntu

RUN apt update && apt install nginx -y

COPY    /conf/nginx.conf /etc/nginx/sites-enabled/

# CMD ["service", "nginx","restart"]