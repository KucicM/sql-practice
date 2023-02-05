/*
When was the first order? 
Show the date of the first order ever made in the Orders table. 
*/

SELECT MIN(OrderDate) FirstOrder
FROM public.Orders;

/*
     firstorder      
---------------------
 2014-07-04 08:00:00
(1 row)
*/