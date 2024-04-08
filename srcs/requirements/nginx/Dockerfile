FROM ubuntu

RUN apt update && apt install nginx -y


COPY    /conf/nginx.conf /etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]