-- Esta consulta retorna a quantidade de voluntários por funções
SELECT role, COUNT(*) as count_of_volunteers
FROM Volunteer
GROUP BY role;
