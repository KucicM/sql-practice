/*
Customers with no orders for
EmployeeID 4 
One employee (Margaret Peacock, EmployeeID 4) has placed the most orders. 
However, there are some customers who've never placed an order with her. 
Show only those customers who have never placed an order with her. 
*/

SELECT c.CustomerId
FROM Customers AS c
WHERE NOT EXISTS (SELECT 1 FROM Orders AS o WHERE o.CustomerId = c.CustomerId AND o.EmployeeId = 4);

/*
 customerid 
------------
 GROSR
 LAUGB
 LAZYK
 THEBI
 CONSH
 DUMON
 FISSA
 FRANR
 NORTS
 PARIS
 PERIC
 PRINI
 SANTG
 SEVES
 SPECD
 VINET
(16 rows)
*/