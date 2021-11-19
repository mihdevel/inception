FROM debian:buster
apt-get update
apt-get -y install vim nginx wget

openssl req -x509 -nodes -days 365 -newkey rsa:2048\
    -keyout /etc/ssl/private/nginx.key\
    -out /etc/ssl/certs/nginx.crt -subj\
    "/C=RU/ST=Moscow/L=Moscow/O=MVMGroup/OU=MVM/CN=https:\/\/jino.ru\/mihdevel/emailAddress=mihdevel@gmail.com"

mv nginx.conf /etc/nginx/sites-available/default