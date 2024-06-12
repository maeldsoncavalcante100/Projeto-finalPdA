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
