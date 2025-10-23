SELECT cop.company_name as "Empresa", ct.city_name as "Nome_cidade"
FROM
    cities ct
    JOIN companies_unities co ON co.city_id = ct.id
    JOIN companies cop ON co.company_id = cop.id
WHERE
    ct.id = 100;