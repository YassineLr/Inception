FROM debian:bullseye

RUN apt-get update -y && \
    apt-get install -y mariadb-server 

RUN sed -i 's/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY /conf/create_db.sh /bin


RUN chmod +x /bin/create_db.sh

CMD ["create_db.sh"]