/*
Month-end orders

At the end of the month, 
salespeople are likely to try much harder to get orders, 
to meet their month-end quotas. 
Show all orders made on the last day of the month. 
Order by EmployeeID and OrderID.
*/

select orderid, employeeId, orderdate
from orders
where (date_trunc('month', orderDate) + interval '1 month - 1 day') = date_trunc('day', orderdate)
order by employeeId, orderid;

/*
 orderid | employeeid |      orderdate      
---------+------------+---------------------
   10461 |          1 | 2015-02-28 00:00:00
   10616 |          1 | 2015-07-31 00:00:00
   10583 |          2 | 2015-06-30 00:00:00
   10686 |          2 | 2015-09-30 00:00:00
   10989 |          2 | 2016-03-31 00:00:00
   11060 |          2 | 2016-04-30 00:00:00
   10432 |          3 | 2015-01-31 00:00:00
   10806 |          3 | 2015-12-31 11:00:00
   10988 |          3 | 2016-03-31 00:00:00
   11063 |          3 | 2016-04-30 00:00:00
   10343 |          4 | 2014-10-31 00:00:00
   10522 |          4 | 2015-04-30 00:00:00
   10584 |          4 | 2015-06-30 00:00:00
   10617 |          4 | 2015-07-31 00:00:00
   10725 |          4 | 2015-10-31 00:00:00
   10807 |          4 | 2015-12-31 11:00:00
   11061 |          4 | 2016-04-30 00:00:00
   11062 |          4 | 2016-04-30 00:00:00
   10269 |          5 | 2014-07-31 00:00:00
   10317 |          6 | 2014-09-30 00:00:00
   10490 |          7 | 2015-03-31 00:00:00
   10399 |          8 | 2014-12-31 00:00:00
   10460 |          8 | 2015-02-28 00:00:00
   10491 |          8 | 2015-03-31 00:00:00
   10987 |          8 | 2016-03-31 00:00:00
   10687 |          9 | 2015-09-30 00:00:00
(26 rows)
*/