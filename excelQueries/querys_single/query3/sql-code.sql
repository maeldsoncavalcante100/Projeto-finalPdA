-- Esta consulta retorna as doações realizadas entre 1º de maio de 2024 e 10 de maio de 2024.
SELECT item, category, amount, entry_date
FROM Donation
WHERE entry_date BETWEEN '2024-05-01 00:00:00' AND '2024-05-10 23:59:59'
ORDER BY entry_date;