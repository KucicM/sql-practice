/*
Orders - random assortment

The Northwind mobile app developers would now like to 
just get a random assortment of orders for beta testing on their app. 
Show a random set of 2% of all orders. 
*/

select OrderId
from orders
order by random()
limit (select count(*) * 0.02 from orders);
/*
 orderid 
---------
   11022
   10757
   10977
   10596
   10648
   10412
   10287
   10914
   10513
   10803
   10720
   10453
   10693
   10702
   10697
   10666
   10745
(17 rows)
*/