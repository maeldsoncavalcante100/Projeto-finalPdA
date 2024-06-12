-- Esta consulta lista os nomes dos voluntários e o número de doações que cada um gerenciou.
SELECT V.name, COUNT(S.donation_id) AS managed_donations
FROM Volunteer V
JOIN Stock S ON V.id = S.volunteer_id
GROUP BY V.name
ORDER BY managed_donations DESC;