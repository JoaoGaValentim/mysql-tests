CREATE TABLE IF NOT EXISTS cities (
    id INT NOT NULL AUTO_INCREMENT, -- chave sintética (PK)
    city_name VARCHAR(255) NOT NULL,
    city_population DECIMAL(5, 2) NOT NULL,
    state_id INT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT(NOW()),
    updated_at DATETIME NOT NULL DEFAULT(NOW()),
    PRIMARY KEY (id),
    FOREIGN KEY (state_id) REFERENCES states (id)
) COMMENT 'City table';