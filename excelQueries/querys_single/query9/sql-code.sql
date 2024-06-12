-- Esta consulta retorna o total de doações por agrupamento de quantidades
SELECT
    CASE
        WHEN amount < 25 THEN 'Less than 25'
        WHEN amount BETWEEN 25 AND 49 THEN '25 to 49'
        WHEN amount BETWEEN 50 AND 99 THEN '50 to 99'
        WHEN amount BETWEEN 100 AND 199 THEN '100 to 199'
        ELSE '200 or more'
    END AS quantity,
    COUNT(*) AS number_of_donations
FROM Donation
GROUP BY quantity;

-- Traduzida para português no Excel