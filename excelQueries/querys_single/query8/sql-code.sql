-- Esta consulta retorna o total de doações realizada no dia
SELECT
    DATE(entry_date) AS donation_day,
    COUNT(*) AS number_of_donations
FROM Donation
GROUP BY donation_day;