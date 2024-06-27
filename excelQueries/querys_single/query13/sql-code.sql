-- Esta consulta retorna a quantidade de usuários por sua categoria
SELECT 'Total Donors' AS category, COUNT(*) AS quantity FROM Donor
UNION ALL
SELECT 'Total Volunteers' AS category, COUNT(*) AS quantity FROM Volunteer;