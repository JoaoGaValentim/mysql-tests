-- Active: 1761150570752@@127.0.0.1@3306@country

SELECT state_region as "Região", SUM(state_population) as Total
FROM states
GROUP BY
    state_region
ORDER BY Total DESC;

SELECT AVG(state_population) FROM states;