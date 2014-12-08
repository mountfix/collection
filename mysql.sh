#!/bin/bash
#
#
# Create MySQL database

read -p "Enter your MySQL root password: " rootpass
read -p "Database name: " dbname
read -p "Database username: " dbuser
read -p "Enter a password for user $dbuser: " userpass
echo "CREATE DATABASE $dbname;" | mysql -u root -p$rootpass
echo "CREATE USER '$dbuser'@'localhost' IDENTIFIED BY '$userpass';" | mysql -u root -p$rootpass
echo "GRANT ALL PRIVILEGES ON $dbname.* TO '$bduser'@'localhost';" | mysql -u root -p$rootpass
echo "FLUSH PRIVILEGES;" | mysql -u root -p$rootpass
echo "New MySQL database is successfully created"