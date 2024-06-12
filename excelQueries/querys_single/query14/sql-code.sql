-- Esta consulta retorna soma de todos usuários do sistema
SELECT COUNT(*) AS total_count
FROM (
    SELECT id FROM Donor
    UNION ALL
    SELECT id FROM Volunteer
) AS combined;