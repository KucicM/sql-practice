/*
High freight charges - 2015 
We're continuing on the question above on high freight charges. 
Now, instead of using all the orders we have, we only want to see orders from the year 2015. 
*/

SELECT ShipCountry, AVG(Freight) AverageFreight
FROM Orders
WHERE EXTRACT('YEAR' FROM orderdate) = 2015
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC
LIMIT 3;

/*
 shipcountry |    averagefreight    
-------------+----------------------
 Austria     | 178.3642857142857143
 Switzerland | 117.1775000000000000
 France      | 113.9910256410256410
(3 rows)
*/