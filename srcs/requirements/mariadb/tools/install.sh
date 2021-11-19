apt-get update
apt-get -y install vim mariadb-server
mv 50-server.cnf /etc/mysql/mariadb.conf.d/
sed -i 's!#port!port !g' /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i 's!127.0.0.1!0.0.0.0!g' /etc/mysql/mariadb.conf.d/50-server.cnf