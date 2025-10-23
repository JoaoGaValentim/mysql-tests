CREATE TABLE IF NOT EXISTS companies_unities (
    city_id INT NOT NULL,
    company_id INT NOT NULL,
    thirst TINYINT(1) NOT NULL,
    PRIMARY KEY (city_id, company_id)
) COMMENT 'Unit of company';