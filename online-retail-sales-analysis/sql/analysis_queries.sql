-- Faturamento total
SELECT ROUND(SUM(TotalPrice), 2) AS faturamento_total
FROM online_retail;

-- Ticket médio por pedido
SELECT ROUND(AVG(total_pedido), 2) AS ticket_medio
FROM (
    SELECT InvoiceNo, SUM(TotalPrice) AS total_pedido
    FROM online_retail
    GROUP BY InvoiceNo
);

-- Top 10 países por faturamento
SELECT Country, ROUND(SUM(TotalPrice), 2) AS faturamento
FROM online_retail
GROUP BY Country
ORDER BY faturamento DESC
LIMIT 10;
