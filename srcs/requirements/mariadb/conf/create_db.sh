echo "CREATE IF NOT EXIST DATABASE db_name" | mariadb
echo "CREATE USER IF NOT EXISTS yassine IDENTIFIED BY '123'" | mariadb
echo "GRANT ALL PRIVILEGES ON db_name.* TO 'yassine' IDENTIFIED BY '123'" | mariadb
