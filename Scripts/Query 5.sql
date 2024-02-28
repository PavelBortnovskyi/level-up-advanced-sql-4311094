--List on most and least expensive cars sold by each employee this year

SELECT emp.employeeId,
       emp.firstName,
       emp.lastName,
       MIN(sls.salesAmount) as minAmount,
       MAX(sls.salesAmount) as maxAmount
FROM sales sls
INNER JOIN employee emp 
ON sls.employeeId = emp.employeeId 
--WHERE sls.soldDate >= DATE('now', 'start of year')
WHERE strftime('%Y', sls.soldDate) = strftime('%Y', 'now')
GROUP BY emp.employeeId, emp.firstName, emp.lastName