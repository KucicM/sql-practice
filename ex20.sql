/*
Categories, and the total products in each category 

For this problem, we’d like to see the total number of products in each category. 
Sort the results by the total number of products, in descending order. 
*/

SELECT CategoryName, count(*) TotalNumberOfProducts
FROM Products AS p
JOIN Categories AS c ON c.CategoryId = p.CategoryId
GROUP BY CategoryName
ORDER BY count(*) DESC;

/*
  categoryname  | totalnumberofproducts 
----------------+-----------------------
 Confections    |                    13
 Condiments     |                    12
 Beverages      |                    12
 Seafood        |                    12
 Dairy Products |                    10
 Grains/Cereals |                     7
 Meat/Poultry   |                     6
 Produce        |                     5
(8 rows)
*/