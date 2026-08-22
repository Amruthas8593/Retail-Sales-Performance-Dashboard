SELECT Region,SUM(Revenue) Revenue,SUM(Profit) Profit,SUM(Units_Sold) Units FROM retail_sales GROUP BY Region ORDER BY Revenue DESC;
SELECT Category,SUM(Revenue) Revenue,SUM(Profit) Profit FROM retail_sales GROUP BY Category ORDER BY Revenue DESC;
SELECT DATE_TRUNC('month',Date) Month,SUM(Revenue) Revenue,SUM(Profit) Profit FROM retail_sales GROUP BY 1 ORDER BY 1;
SELECT Channel,SUM(Revenue) Revenue,COUNT(*) Orders FROM retail_sales GROUP BY Channel ORDER BY Revenue DESC;
