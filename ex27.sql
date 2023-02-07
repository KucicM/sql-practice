/*
High freight charges with between
Another (incorrect) answer to the problem above is this: 
Select Top 3 
ShipCountry 
, AverageFreight = avg ( freight ) 
From Orders 
Where 
OrderDate between '1/1/2015' and '12/31/2015' 
Group By ShipCountry 
Order By AverageFreight desc ; 
Notice when you run this, it gives Sweden as the ShipCountry with the third highest freight charges. However, this is
wrong - it should be France. 
What is the OrderID of the order that the (incorrect) answer above is missing? 
*/

Select  
OrderId,
ShipCountry 
FROM Orders
WHERE 
OrderDate between '12/31/2015' and '01/01/2016' 
AND ShipCountry = 'France';

/*
 orderid | shipcountry 
---------+-------------
   10806 | France
(1 row)
*/