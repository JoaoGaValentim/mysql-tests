CREATE TABLE IF NOT EXISTS mayors (
    id INT NOT NULL AUTO_INCREMENT, -- chave sintética (PK)
    mayor_name VARCHAR(255) NOT NULL,
    city_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (city_id) REFERENCES cities (id),
    UNIQUE KEY (city_id) -- 1:1 (Relação)
) COMMENT 'Mayor table';