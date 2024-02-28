--Retrieving total sales amounts and cars for each Sales Person

SELECT emp.employeeId,
       emp.firstName,
       emp.lastName,
       sls.salesAmount,
       COUNT(*) AS totalSales
FROM sales sls
INNER JOIN employee emp 
ON sls.employeeId = emp.employeeId 
WHERE emp.title = 'Sales Person'
GROUP BY emp.employeeId, emp.firstName, emp.lastName
ORDER by totalSales DESC
