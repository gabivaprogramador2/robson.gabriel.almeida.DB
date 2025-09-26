INSERT INTO VENDAS (produto, categoria, valor, data_venda, vendedor) 
VALUES 
    ('Notebook Dell', 'Eletrônicos', 4500.00, DATE '2025-04-01', 'Carlos'),
    ('Mouse Gamer', 'Acessórios', 150.00, DATE '2025-04-01', 'Ana'),
    ('Teclado Mecânico', 'Acessórios', 300.00, DATE '2025-04-02', 'Carlos'),
    ('Monitor 24"', 'Eletrônicos', 1200.00, DATE '2025-04-02', 'Bruna'),
    ('Fone Bluetooth', 'Acessórios', 200.00, DATE '2025-04-03', 'Ana'),
    ('Notebook HP', 'Eletrônicos', 4000.00, DATE '2025-04-03', 'Carlos'),
    ('Webcam HD', 'Acessórios', 180.00, DATE '2025-04-04', 'Bruna'),
    ('Carregador Portátil', 'Acessórios', 120.00, DATE '2025-04-04', 'Ana'),
    ('SSD 1TB', 'Componentes', 500.00, DATE '2025-04-05', 'Carlos'),
    ('Cabo HDMI', 'Acessórios', 50.00, DATE '2025-04-05', 'Bruna');


//ATIVIDADE 1
    SELECT PRODUTO,VENDEDOR, DATA_VENDA FROM VENDAS
    WHERE VENDEDOR = 'Ana'
    ORDER BY DATA_VENDA DESC;

//ATIVIDADE 2
SELECT  vendedor, SUM(valor) as vendas
FROM VENDAS
WHERE categoria = 'Eletrônicos'
GROUP BY vendedor
ORDER BY vendas DESC;

//ATIVIDADE 3

SELECT produto,valor 
FROM VENDAS
WHERE valor BETWEEN 200.00 and 1000.00;


//ATIVIDADE 4
-- Mostre quantas vendas cada vendedor realizou e o valor total vendido por ele, ordenado do maior para o menor faturamento.
SELECT
    vendedor,
    COUNT(*) AS qtd_vendas,
    SUM(valor) AS total_vendido
FROM VENDAS
GROUP BY vendedor
ORDER BY total_vendido DESC;
