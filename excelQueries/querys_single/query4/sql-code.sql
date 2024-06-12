-- SOMA DE TODAS AS DOAÇÕES POR CATEGORIA
SELECT category, SUM(amount) FROM Donation GROUP BY category;