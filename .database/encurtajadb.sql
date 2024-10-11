DROP DATABASE IF EXISTS encurtajadb;

CREATE DATABASE encurtajadb
	CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE encurtajadb;

CREATE TABLE redir (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127)  NOT NULL,
    link TEXT NOT NULL,
    short VARCHAR(127)  NOT NULL,
    expire DATETIME DEFAULT NULL,
    views INT DEFAULT '0',
    status ENUM('on', 'del')  DEFAULT 'on'
);

-- REMOVA-ME após executar pela primeira vez
DROP TRIGGER IF EXISTS set_expire_before_insert;
