-- Retail Sales Performance | PostgreSQL-compatible SQL
SELECT COUNT(*) AS orders,
       SUM(Units_Sold) AS units_sold,
       ROUND(SUM(Revenue),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit
FROM retail_sales;

SELECT Region, SUM(Units_Sold) AS units_sold,
       ROUND(SUM(Revenue),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit
FROM retail_sales
GROUP BY Region ORDER BY revenue DESC;

SELECT Category, SUM(Units_Sold) AS units_sold,
       ROUND(SUM(Revenue),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit
FROM retail_sales
GROUP BY Category ORDER BY revenue DESC;

SELECT DATE_TRUNC('month', Date) AS sales_month,
       ROUND(SUM(Revenue),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit
FROM retail_sales
GROUP BY 1 ORDER BY 1;

SELECT Channel, COUNT(*) AS orders,
       ROUND(SUM(Revenue),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit
FROM retail_sales
GROUP BY Channel ORDER BY revenue DESC;