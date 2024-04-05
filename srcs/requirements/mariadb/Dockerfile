FROM ubuntu

RUN apt-get update -y && \
    apt-get install -y mariadb-server && \
    apt-get clean

COPY /conf/create_db.sh /app/

WORKDIR /app

RUN chmod +x ./create_db.sh

CMD ["./create_db.sh"]