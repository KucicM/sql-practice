/*
High freight charges - last year

We're continuing to work on high freight charges. 
We now want to get the three ship countries with the highest average freight charges. 
But instead of filtering for a particular year, 
we want to use the last 12 months of order data,
using as the end date the last OrderDate in Orders. 
*/

SELECT ShipCountry, AVG(Freight) AverageFreight
FROM Orders
WHERE OrderDate > (SELECT MAX(OrderDate) - INTERVAL '12 month' FROM Orders)
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC
LIMIT 3;

/*
 shipcountry |    averagefreight    
-------------+----------------------
 Ireland     | 200.2100000000000000
 Austria     | 186.4596000000000000
 USA         | 119.3032558139534884
(3 rows)
*/