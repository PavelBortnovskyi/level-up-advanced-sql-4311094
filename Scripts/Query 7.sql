--Retrieving total sales per year
SELECT 
      strftime('%Y', sls.soldDate) AS Year,
      FORMAT('$%2.f', SUM(sls.salesAmount)) AS AnnualSales,
      COUNT(*) as TotalSales
FROM sales sls
GROUP BY Year

--Another solution with CTE
WITH cte AS (
SELECT salesAmount,
       strftime('%Y', soldDate) AS Year
FROM sales)
SELECT Year,
       FORMAT('$%2.f', SUM(salesAmount)) AS AnnualSales
FROM cte
GROUP BY Year
ORDER By Year