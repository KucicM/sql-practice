/*
Late orders - which employees?

Some salespeople have more orders arriving late than others. 
Maybe they're not following up on the order process, and need more training. 
Which salespeople have the most orders arriving late? 
*/

select 
    e.FirstName, 
    e.LastName, 
    count(*) TotalOrders, 
    sum(case when shippeddate >= requireddate then 1 else 0 end) LateOrders
from orders o
join employees e on e.employeeId = o.employeeId
group by e.FirstName, e.LastName
order by TotalOrders DESC, LateOrders DESC;
/*
 firstname | lastname  | totalorders | lateorders 
-----------+-----------+-------------+------------
 Margaret  | Peacock   |         156 |         10
 Janet     | Leverling |         127 |          5
 Nancy     | Davolio   |         123 |          3
 Laura     | Callahan  |         104 |          5
 Andrew    | Fuller    |          96 |          4
 Robert    | King      |          72 |          4
 Michael   | Suyama    |          67 |          3
 Anne      | Dodsworth |          43 |          5
 Steven    | Buchanan  |          42 |          0
(9 rows)
*/
