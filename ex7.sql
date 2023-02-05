/*
Products with “queso” in ProductName 
In the products table, 
we’d like to see the ProductID and ProductName 
for those products where the ProductName includes the string “queso”. 
*/

SELECT ProductID, ProductName 
FROM public.Products
WHERE ProductName ILIKE '%queso%';

/*
 productid |        productname        
-----------+---------------------------
        11 | Queso Cabrales
        12 | Queso Manchego La Pastora
(2 rows)
*/