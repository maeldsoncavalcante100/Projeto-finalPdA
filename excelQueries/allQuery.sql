
##CONSULTA 01
-- Esta consulta lista os nomes dos voluntários e o número de doações que cada um gerenciou.
SELECT V.name, COUNT(S.donation_id) AS managed_donations
FROM Volunteer V
JOIN Stock S ON V.id = S.volunteer_id
GROUP BY V.name
ORDER BY managed_donations DESC;


##CONSULTA 02
-- Esta consulta conta o número de doações para cada categoria.
SELECT category, COUNT(*) AS donation_count
FROM Donation
GROUP BY category
ORDER BY donation_count DESC;


##CONSULTA 03
-- Esta consulta retorna as doações realizadas entre 1º de maio de 2024 e 10 de maio de 2024.
SELECT item, category, amount, entry_date
FROM Donation
WHERE entry_date BETWEEN '2024-05-01 00:00:00' AND '2024-05-10 23:59:59'
ORDER BY entry_date;


##CONSULTA 04
-- SOMA DE TODAS AS DOAÇÕES POR CATEGORIA
SELECT category, SUM(amount) FROM Donation GROUP BY category;


##CONSULTA 05
-- SOMA DE TODAS AS DOAÇÕES
SELECT SUM(amount) FROM Donation;


##CONSULTA 06
-- SOMA DE TODOS OS ITENS
SELECT item, SUM(amount) FROM Donation GROUP BY item;


##CONSULTA 07
-- Esta consulta retorna a quantidade de voluntários por funções
SELECT role, COUNT(*) as count_of_volunteers
FROM Volunteer
GROUP BY role;


##CONSULTA 08
-- Esta consulta retorna o total de doações realizada no dia
SELECT
    DATE(entry_date) AS donation_day,
    COUNT(*) AS number_of_donations
FROM Donation
GROUP BY donation_day;


##CONSULTA 09
-- Esta consulta retorna o total de doações por agrupamento de quantidades
-- Traduzida para português no Excel
SELECT
    CASE
        WHEN amount < 25 THEN 'Less than 25'
        WHEN amount BETWEEN 25 AND 49 THEN '25 to 49'
        WHEN amount BETWEEN 50 AND 99 THEN '50 to 99'
        WHEN amount BETWEEN 100 AND 199 THEN '100 to 199'
        ELSE '200 or more'
    END AS quantity,
    COUNT(*) AS number_of_donations
FROM Donation
GROUP BY quantity;


##CONSULTA 10
-- Esta consulta retorna o período do dia que foi feita a doação
-- Traduzida para português no Excel
SELECT
    CASE
        WHEN EXTRACT(HOUR FROM entry_date) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM entry_date) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN EXTRACT(HOUR FROM entry_date) BETWEEN 18 AND 23 THEN 'Evening'
        ELSE 'Night'
    END AS period_of_day,
    COUNT(*) AS number_of_donations
FROM Donation
GROUP BY period_of_day;



##CONSULTA 11
-- Esta consulta retorna quantos doadores usam certo tipo de e-mail
SELECT
    CASE
        WHEN email LIKE '%@gmail.com%' THEN 'Gmail'
        WHEN email LIKE '%@outlook.com%' OR email LIKE '%@outloock.com%' THEN 'Outlook'
        ELSE 'Other'
    END AS service,
    COUNT(*) AS number_of_donor
FROM Donor
GROUP BY service;


##CONSULTA 12
-- Esta consulta retorna a quantidade de nome que começam com Vogal ou Consoante
SELECT
    CASE
        WHEN LEFT(LOWER(name), 1) IN ('a', 'e', 'i', 'o', 'u') THEN 'Vogal'
        ELSE 'Consoante'
    END AS starts_with,
    COUNT(*) AS number_of_names
FROM Donor
GROUP BY starts_with
ORDER BY starts_with;


##CONSULTA 13
-- Esta consulta retorna a quantidade de usuários por sua categoria
SELECT 'Total Donors' AS category, COUNT(*) AS quantity FROM Donor
UNION ALL
SELECT 'Total Volunteers' AS category, COUNT(*) AS quantity FROM Volunteer;



##CONSULTA 14
-- Esta consulta retorna soma de todos usuários do sistema
SELECT COUNT(*) AS total_count
FROM (
    SELECT id FROM Donor
    UNION ALL
    SELECT id FROM Volunteer
) AS combined;


##CONSULTA 15
-- Esta consulta retorna a quantidade de Doadores com base na região do CPF
SELECT
    CASE SUBSTRING(cpf FROM 9 FOR 1)
        WHEN '1' THEN 'Distrito Federal, Goiás, Mato Grosso, Mato Grosso do Sul e Tocantins'
        WHEN '2' THEN 'Pará, Amazonas, Acre, Amapá, Rondônia e Roraima'
        WHEN '3' THEN 'Ceará, Maranhão e Piauí'
        WHEN '4' THEN 'Pernambuco, Rio Grande do Norte, Paraíba e Alagoas'
        WHEN '5' THEN 'Bahia e Sergipe'
        WHEN '6' THEN 'Minas Gerais'
        WHEN '7' THEN 'Rio de Janeiro e Espírito Santo'
        WHEN '8' THEN 'São Paulo'
        WHEN '9' THEN 'Paraná e Santa Catarina'
        WHEN '0' THEN 'Rio Grande do Sul'
        ELSE 'Outros'
    END AS region,
    COUNT(*) AS amount
FROM Donor
GROUP BY region;

