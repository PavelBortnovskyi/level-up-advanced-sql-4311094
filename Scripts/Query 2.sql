--LEFT JOIN to retrieve salesman with zero sales

SELECT emp.firstName,
       emp.lastName,
       emp.title,
       emp.startDate,
       sales.salesId 
FROM employee emp
LEFT JOIN sales ON emp.employeeId = sales.employeeId
WHERE emp.title = 'Sales Person' AND sales.salesId IS NULL