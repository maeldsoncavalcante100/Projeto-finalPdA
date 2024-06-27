-- Esta consulta conta o número de doações para cada categoria.
SELECT category, COUNT(*) AS donation_count
FROM Donation
GROUP BY category
ORDER BY donation_count DESC;