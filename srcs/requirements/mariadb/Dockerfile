from debian:buster

WORKDIR /tmp/mariadb
COPY tools .
ARG DB_NAME=$DB_NAME
ARG DB_USER=$DB_USER
ARG DB_PASSWORD=$DB_PASSWORD
RUN chmod +x install.sh && ./install.sh && rm install.sh
CMD ./start.sh