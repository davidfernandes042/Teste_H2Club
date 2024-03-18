SELECT
    c.Sexo,
    COUNT(CASE WHEN CAST(r.Winning AS Float) > 0 THEN 1 END) AS Total_Ganhadores,
    COUNT(*) AS Total_Jogadores,
    CAST(COUNT(CASE WHEN CAST(r.Winning AS Float) > 0 THEN 1 END) AS Float) / COUNT(*) AS Proporcao_Ganhadores
FROM
    resultado r
INNER JOIN clientes c ON r.Clientes_id = c.Id
GROUP BY
    c.Sexo
ORDER BY
    Proporcao_Ganhadores DESC;
