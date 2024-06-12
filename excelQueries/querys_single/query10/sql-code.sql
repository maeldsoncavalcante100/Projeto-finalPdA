-- -- Esta consulta retorna o período do dia que foi feita a doação
SELECT
    CASE
        WHEN EXTRACT(HOUR FROM entry_date) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM entry_date) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN EXTRACT(HOUR FROM entry_date) BETWEEN 18 AND 23 THEN 'Evening'
        ELSE 'Night'
    END AS period_of_day,
    COUNT(*) AS number_of_donations
FROM Donation
GROUP BY period_of_day
ORDER BY period_of_day;

-- Traduzida para português no Excel