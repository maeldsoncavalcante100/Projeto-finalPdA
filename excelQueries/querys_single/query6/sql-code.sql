-- SOMA DE TODOS OS ITENS
SELECT item, SUM(amount) FROM Donation GROUP BY item;