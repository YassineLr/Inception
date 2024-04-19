service mysql start
sleep 1
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME ;" | mariadb
echo "CREATE USER IF NOT EXISTS $DB_USER IDENTIFIED BY '$DB_PASS';" | mariadb
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO $DB_USER IDENTIFIED BY '$DB_PASS';" | mariadb
service mysql stop