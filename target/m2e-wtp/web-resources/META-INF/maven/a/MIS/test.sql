create database javaTestDB;
use javaTestDB;
CREATE USER javauser IDENTIFIED BY 'javapass';
grant usage on *.* to javauser@localhost identified by 'javapass';
grant all privileges on javaTestDB.* to javauser@localhost;
 
CREATE TABLE TEST_TABLE (
        id INT NOT NULL AUTO_INCREMENT,
        TEXT VARCHAR(400) NOT NULL,
        PRIMARY KEY (ID)
    );
 
INSERT INTO TEST_TABLE values (default, 'test text');