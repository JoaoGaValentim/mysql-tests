-- Active: 1761150570752@@127.0.0.1@3306@country
-- create states table
-- DDL (DATA DEFINITION LANGUAGE)
CREATE TABLE states (
    id INT NOT NULL AUTO_INCREMENT, -- chave sintética (PK)
    state_name VARCHAR(120) NOT NULL,
    state_acronym VARCHAR(2) NOT NULL,
    state_region ENUM(
        "Norte",
        "Nordeste",
        "Centro-Oeste",
        "Sudeste",
        "Sul"
    ) NOT NULL,
    state_population DECIMAL(5, 2) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT(NOW()),
    updated_at DATETIME NOT NULL DEFAULT(NOW()),
    PRIMARY KEY (id),
    UNIQUE KEY (state_name), -- NO REPEAT
    UNIQUE KEY (state_acronym) -- NO REPEAT
) COMMENT 'States table';