SELECT
	substring(r.Data_acesso, 0,5) AS ano,
    substring(r.Data_acesso, 6,2) AS Mes,
    SUM(r.Rake) AS Rake_Gerado
FROM
    resultado r
GROUP BY
    Ano,Mes;
