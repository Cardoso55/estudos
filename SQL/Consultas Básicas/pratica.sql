-- Busca mais simples
SELECT * 
FROM clientes;

-- Selecionando apenas os nomes e emails dos clientes
SELECT nome, email 
FROM clientes;

-- Filtrando dados com condições
SELECT * 
FROM produtos 
WHERE preco > 200;

-- Combinando condições com AND, OR e LIKE
SELECT * 
FROM produtos 
WHERE preco > 200 AND quantidade < 30;

SELECT * 
FROM produtos 
WHERE preco > 200 OR quantidade < 30;

SELECT * 
FROM produtos 
WHERE nome LIKE '%camiseta%';

-- Ordenando resultados com ORDER BY
SELECT * 
FROM produtos 
ORDER BY preco ASC; -- Ordena pelo preço em ordem crescente

SELECT * 
FROM produtos 
ORDER BY preco DESC; -- Ordena pelo preço em ordem decrescente

-- Limitando resultados com LIMIT
SELECT * 
FROM produtos 
LIMIT 5; -- Retorna apenas os 5 primeiros resultados

SELECT nome, idade 
FROM clientes 
WHERE idade IS NOT NULL
ORDER BY idade ASC 
LIMIT 5;