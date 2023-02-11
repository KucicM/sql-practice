/*
High-value customers
We want to send all of our high-value customers a special VIP gift. 
We're defining high-value customers as those who've made at least 1 order with a 
total value (not including the discount) equal to $10,000 or more. 
We only want to consider orders made in the year 2016.
*/

select c.customerId, c.companyName, o.orderId, sum(d.unitprice * d.quantity) AS totalPrice
from orders o
join orderDetails as d on d.orderId = o.orderId
join customers as c on c.customerId = o.customerId
where extract('year' from o.orderdate) = 2016
group by  c.customerId, c.companyName, o.orderId
having sum(d.unitprice * d.quantity) >= 10000;

/*
 customerid |         companyname          | orderid | totalprice 
------------+------------------------------+---------+------------
 HANAR      | Hanari Carnes                |   10981 | 15810.0000
 HUNGO      | Hungry Owl All-Night Grocers |   10897 | 10835.2400
 KOENE      | Königlich Essen              |   10817 | 11490.7000
 QUICK      | QUICK-Stop                   |   10865 | 17250.0000
 RATTC      | Rattlesnake Canyon Grocery   |   10889 | 11380.0000
 SAVEA      | Save-a-lot Markets           |   11030 | 16321.9000
(6 rows)
 */
