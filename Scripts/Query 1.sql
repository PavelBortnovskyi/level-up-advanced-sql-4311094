#SELF JOIN to retrieve employee and managers info

SELECT emp.firstName, 
       emp.lastName,
       emp.title,
       mng.firstName AS ManagerFirstName,
       mng.lastName AS ManagerLastName
FROM employee emp
INNER JOIN employee mng
        ON emp.managerId = mng.employeeId 