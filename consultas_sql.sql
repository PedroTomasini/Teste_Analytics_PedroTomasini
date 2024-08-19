-- Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) para cada produto, ordenado pelo valor total de vendas em ordem decrescente
-- Seleciona as colunas necessárias e calcula o total de vendas
SELECT 
    Produto,
    Categoria,
    SUM(Quantidade * Preço) AS Total_Vendas
FROM 
    data_clean  -- Nome da tabela que contém os dados
GROUP BY 
    Produto, Categoria  -- Agrupa os resultados por produto e categoria
ORDER BY 
    Total_Vendas DESC;  -- Ordena o resultado pelo total de vendas em ordem decrescente



-- Identificar os produtos que venderam menos no mês de junho de 2023

-- Seleciona o produto e calcula o total vendido
SELECT 
    Produto, 
    Categoria, 
    SUM(Quantidade) AS TotalQuantidadeVendida
FROM 
    data_clean  -- Nome da tabela que contém os dados
WHERE 
    strftime('%m', Data) = '06' AND strftime('%Y', Data) = '2023'  -- Filtra os registros do mês de junho de 2023
GROUP BY 
    Produto, 
    Categoria  -- Agrupa os resultados por produto ecategoria
ORDER BY 
    Total_Vendido ASC;  -- Ordena o resultado pela quantidade vendida, do menor para o maior
