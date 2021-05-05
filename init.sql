DROP DATABASE IF EXISTS country;

CREATE DATABASE country;

CREATE USER IF NOT EXISTS 'country'@'localhost' IDENTIFIED BY 'lolwoot';

GRANT ALL ON `country`.* TO 'country'@'localhost';
