/*
Late orders - which employees?

Some salespeople have more orders arriving late than others. 
Maybe they're not following up on the order process, and need more training. 
Which salespeople have the most orders arriving late? 
*/

select e.FirstName, e.LastName, count(*) LateOrders
from orders o
join employees e on e.employeeId = o.employeeId
where shippeddate >= requireddate
group by e.FirstName, e.LastName
order by LateOrders DESC;
/*
 firstname | lastname  | lateorders 
-----------+-----------+------------
 Margaret  | Peacock   |         10
 Janet     | Leverling |          5
 Anne      | Dodsworth |          5
 Laura     | Callahan  |          5
 Andrew    | Fuller    |          4
 Robert    | King      |          4
 Nancy     | Davolio   |          3
 Michael   | Suyama    |          3
(8 rows)
*/
