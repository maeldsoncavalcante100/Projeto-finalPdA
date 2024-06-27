-- Esta consulta retorna a quantidade de nome que começam com Vogal ou Consoante
SELECT
    CASE
        WHEN LEFT(LOWER(name), 1) IN ('a', 'e', 'i', 'o', 'u') THEN 'Vogal'
        ELSE 'Consoante'
    END AS starts_with,
    COUNT(*) AS number_of_names
FROM Donor
GROUP BY starts_with
ORDER BY starts_with;