/*
Customers with no orders

There are some customers who have never actually placed an order. 
Show these customers.
*/

SELECT CompanyName
FROM Customers AS c
WHERE NOT EXISTS (SELECT 1 FROM Orders AS o WHERE o.CustomerId = c.CustomerId);

/*
             companyname              
--------------------------------------
 FISSA Fabrica Inter. Salchichas S.A.
 Paris spécialités
(2 rows)
*/