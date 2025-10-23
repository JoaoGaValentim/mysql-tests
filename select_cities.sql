SELECT * FROM cities;

SELECT ct.id, ct.city_name, st.state_acronym
FROM cities as ct, states as st
WHERE
    ct.state_id = (
        SELECT id
        FROM states
        WHERE
            id = 1028
    )
    AND st.id = ct.state_id;

ORDER BY city_population DESC;

SELECT ct.city_name as "Nome_Cidade", st.state_name as "Nome_Estado"
FROM states as st, cities as ct
WHERE
    st.id = ct.state_id
    AND st.state_region = "Sudeste";

SELECT st.state_acronym as "UF", ct.city_name as "Nome"
FROM cities as ct
    INNER JOIN states as st ON ct.state_id = st.id
WHERE
    ct.state_id = 1028;