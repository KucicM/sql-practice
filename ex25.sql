/*
High freight charges 
Some of the countries we ship to have very high freight charges. 
We'd like to investigate some more shipping options for our customers, 
to be able to offer them lower freight charges. 
Return the three ship countries with the highest
average freight overall, in descending order by average freight. 
*/

SELECT ShipCountry, AVG(Freight) AverageFreight 
FROM Orders
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC
LIMIT 3;

/*
 shipcountry |    averagefreight    
-------------+----------------------
 Austria     | 184.7875000000000000
 Ireland     | 145.0126315789473684
 USA         | 112.8794262295081967
(3 rows)
*/