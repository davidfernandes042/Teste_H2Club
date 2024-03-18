SELECT
    CASE
        WHEN c.data_nascimento BETWEEN '1925-01-01' AND '1940-12-31' THEN 'Veteranos'
        WHEN c.data_nascimento BETWEEN '1941-01-01' AND '1959-12-31' THEN 'Baby Boomers'
        WHEN c.data_nascimento BETWEEN '1960-01-01' AND '1979-12-31' THEN 'Geração X'
        WHEN c.data_nascimento BETWEEN '1980-01-01' AND '1995-12-31' THEN 'Geração Y'
        WHEN c.data_nascimento BETWEEN '1996-01-01' AND '2010-12-31' THEN 'Geração Z'
        ELSE 'Geração Alpha'
    END AS Geracao,
    SUM(r.rake) AS Rake_Gerado
FROM
    resultado r
INNER JOIN clientes c ON r.clientes_id = c.id
GROUP BY
    Geracao;