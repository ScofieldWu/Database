SHOW DATABASES;
DROP DATABASE IF EXISTS rwu252assign2db;
CREATE DATABASE rwu252assign2db;
USE rwu252assign2db;

GRANT USAGE ON *.* TO 'ta'@'localhost'; 
DROP USER 'ta'@'localhost'; 
CREATE USER 'ta'@'localhost' IDENTIFIED BY 'cs3319'; 
GRANT ALL PRIVILEGES ON yourwesternuseridassign2db.* TO 'ta'@'localhost'; 
FLUSH PRIVILEGES;

SHOW TABLES;

CREATE TABLE westerncourse (coursenumber CHAR(6) NOT NULL, coursename VARCHAR(50) NOT NULL, weight FLOAT NOT NULL, suffix VARCHAR(5), PRIMARY KEY (coursenumber));

CREATE TABLE university (id TINYINT NOT NULL, officialname VARCHAR(50) NOT NULL, city VARCHAR(30) NOT NULL, provincecode CHAR(2) NOT NULL, nickname VARCHAR(20) NOT NULL, PRIMARY KEY (id));

CREATE TABLE outsidecourse (id TINYINT NOT NULL, code CHAR(10) NOT NULL, name VARCHAR(50) NOT NULL, year TINYINT NOT NULL, weight FLOAT NOT NULL, PRIMARY KEY (code, id), FOREIGN KEY (id) REFERENCES university (id));

CREATE TABLE equivalentto (westerncode CHAR(6) NOT NULL, code CHAR(10) NOT NULL, id TINYINT NOT NULL, decidedate DATE NOT NULL, PRIMARY KEY (westerncode, id, code), FOREIGN KEY (westerncode) REFERENCES westerncourse (coursenumber) ON DELETE CASCADE, FOREIGN KEY (id) REFERENCES outsidecourse (id) ON DELETE CASCADE, FOREIGN KEY (code) REFERENCES outsidecourse (code) ON DELETE CASCADE);

SHOW TABLES;