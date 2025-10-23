-- Active: 1761150570752@@127.0.0.1@3306@country
SELECT * FROM states;

SELECT state_acronym, state_name, created_at FROM states;

SELECT state_acronym, state_name
FROM states
WHERE
    state_region = "Sul";

SELECT
    state_region as 'Região',
    state_acronym as 'UF',
    state_name as 'Nome',
    state_population as 'Total da População'
FROM states
WHERE
    state_population >= 10
    -- DESC maior para o menor
ORDER BY state_population DESC;

SELECT
    state_region as 'Região',
    state_acronym as 'UF',
    state_name as 'Nome',
    state_population as 'Total da População'
FROM states
WHERE
    state_population >= 10
    -- ASC menor para maior
ORDER BY state_population ASC;

SELECT
    state_acronym,
    state_name,
    state_population
FROM states
WHERE
    state_acronym = "PR";