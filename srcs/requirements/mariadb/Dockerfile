FROM debian:buster

RUN apt-get update && \
    apt-get -y install \
        gettext-base \
        mariadb-server \
        procps \
        nano

COPY ./conf/conf.sh .
COPY ./tools/makedb.sql .
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf 

RUN chmod +777 conf.sh

ENTRYPOINT [ "bash", "conf.sh" ]
