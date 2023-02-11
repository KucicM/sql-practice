/*
 High-value customers - total orders

The manager has changed his mind. 
Instead of requiring that customers have at least one 
individual orders totaling $10,000 or more, 
he wants to define high-value customers as those who have orders 
totaling $15,000 or more in 2016. 
How would you change the answer to the problem above? 
*/

select c.customerId, c.companyName, sum(d.unitprice * d.quantity) AS totalPrice
from orders o
join orderDetails as d on d.orderId = o.orderId
join customers as c on c.customerId = o.customerId
where extract('year' from o.orderdate) = 2016
group by  c.customerId, c.companyName
having sum(d.unitprice * d.quantity) >= 15000;

/*
 customerid |         companyname          | totalprice 
------------+------------------------------+------------
 ERNSH      | Ernst Handel                 | 42598.9000
 FOLKO      | Folk och fä HB               | 15973.8500
 HANAR      | Hanari Carnes                | 24238.0500
 HUNGO      | Hungry Owl All-Night Grocers | 22796.3400
 KOENE      | Königlich Essen              | 20204.9500
 QUICK      | QUICK-Stop                   | 40526.9900
 RATTC      | Rattlesnake Canyon Grocery   | 21725.6000
 SAVEA      | Save-a-lot Markets           | 42806.2500
 WHITC      | White Clover Markets         | 15278.9000
(9 rows)
 */
