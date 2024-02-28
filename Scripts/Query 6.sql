--List on most and least expensive cars sold by each employee 
--this year who has more than 5 sales

SELECT emp.employeeId,
       emp.firstName,
       emp.lastName,
       COUNT(*) AS totalSales,
       MIN(sls.salesAmount) as minAmount,
       MAX(sls.salesAmount) as maxAmount
FROM sales sls
INNER JOIN employee emp 
ON sls.employeeId = emp.employeeId 
--WHERE sls.soldDate >= DATE('now', 'start of year')
WHERE strftime('%Y', sls.soldDate) = '2023'
GROUP BY emp.employeeId, emp.firstName, emp.lastName
HAVING totalSales > 5
ORDER BY totalSales DESC