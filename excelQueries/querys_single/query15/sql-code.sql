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