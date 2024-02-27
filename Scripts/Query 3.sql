--OUTER JOIN APPROACH
SELECT cst.firstName,
       cst.lastName,
       sls.employeeId AS SalesPerson,
       sls.salesId as orderNumber
FROM customer cst
FULL OUTER JOIN sales sls
ON cst.customerId = sls.customerId

--UNION APPROACH
SELECT cst.firstName,
       cst.lastName,
       sls.employeeId AS SalesPerson,
       sls.salesId as orderNumber
FROM customer cst
INNER JOIN sales sls
ON cst.customerId = sls.customerId

UNION

SELECT cst.firstName,
       cst.lastName,
       sls.employeeId AS SalesPerson,
       sls.salesId as orderNumber
FROM customer cst
LEFT JOIN sales sls
ON cst.customerId = sls.customerId
WHERE sls.salesId IS NULL

UNION

SELECT cst.firstName,
       cst.lastName,
       sls.employeeId AS SalesPerson,
       sls.salesId as orderNumber
FROM sales sls
LEFT JOIN customer cst
ON cst.customerId = sls.customerId
WHERE sls.salesId IS NULL