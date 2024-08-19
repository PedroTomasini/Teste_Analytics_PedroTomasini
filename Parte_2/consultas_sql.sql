-- Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) para cada produto, ordenado pelo valor total de vendas em ordem decrescente
-- Seleciona as colunas necessárias e calcula o total de vendas
SELECT 
    Produto,
    Categoria,
    SUM(Quantidade * Preço) AS Total_Vendas
FROM 
    vendas  -- Nome da tabela que contém os dados
GROUP BY 
    Produto, Categoria  -- Agrupa os resultados por produto e categoria
ORDER BY 
    Total_Vendas DESC;  -- Ordena o resultado pelo total de vendas em ordem decrescente



-- Identificar os produtos que venderam menos no mês de junho de 2023

-- Seleciona o produto e calcula o total vendido
SELECT 
    Produto,
    SUM(Quantidade) AS Total_Vendido
FROM 
    vendas  -- Nome da tabela que contém os dados
WHERE 
    EXTRACT(YEAR FROM Data) = 2023  -- Filtra os registros do ano 2023
    AND EXTRACT(MONTH FROM Data) = 6  -- Filtra os registros do mês de junho
GROUP BY 
    Produto  -- Agrupa os resultados por produto
ORDER BY 
    Total_Vendido ASC;  -- Ordena o resultado pela quantidade vendida, do menor para o maior