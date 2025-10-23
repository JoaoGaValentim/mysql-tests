-- Active: 1761150570752@@127.0.0.1@3306@country
DROP TABLE companies;

CREATE TABLE IF NOT EXISTS companies (
    id INT NOT NULL AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL,
    cnpj BIGINT UNSIGNED UNSIGNED,
    PRIMARY KEY (id),
    UNIQUE KEY (cnpj)
) COMMENT 'Company table';