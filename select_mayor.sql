SELECT ct.id, ct.city_name, ct.city_population, my.mayor_name
FROM cities as ct
    RIGHT JOIN mayors as my ON ct.id = my.city_id
UNION
SELECT ct.id, ct.city_name, ct.city_population, my.mayor_name
FROM cities as ct
    LEFT JOIN mayors as my ON my.city_id = ct.id
WHERE
    my.mayor_name IS NOT NULL;

SELECT *
FROM cities as ct
    RIGHT JOIN mayors as my ON my.city_id = ct.id
WHERE
    my.mayor_name IS NOT NULL;