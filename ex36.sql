/*
Orders with many line items

The Northwind mobile app developers are testing an app that customers will use to show orders. 
In order to make sure that even the largest orders will show up correctly on the app, 
they'd like some samples of orders that have lots of individual line items. 
Show the 10 orders with the most line items, in order of total line items. 
*/

select o.orderId, count(*) DetailCount
from orders as o
join orderDetails as d on d.orderId = o.orderId
group by o.orderId
order by count(*) DESC
limit 10;

/*
 orderid | detailcount 
---------+-------------
   11077 |          25
   10979 |           6
   10657 |           6
   10847 |           6
   10360 |           5
   10893 |           5
   10553 |           5
   10294 |           5
   10514 |           5
   11064 |           5
(10 rows)
*/