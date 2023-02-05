/*
Sales Representatives 
We’d like to see just the FirstName, LastName, and HireDate of 
all the employees with the Title of Sales Representative. 

Write a SQL statement that returns only those employees. 
*/

select FirstName, LastName, HireDate
from public.employees
where title = 'Sales Representative';

/*
 firstname | lastname  |      hiredate       
-----------+-----------+---------------------
 Nancy     | Davolio   | 2010-05-01 00:00:00
 Janet     | Leverling | 2010-04-01 00:00:00
 Margaret  | Peacock   | 2011-05-03 00:00:00
 Michael   | Suyama    | 2011-10-17 00:00:00
 Robert    | King      | 2012-01-02 00:00:00
 Anne      | Dodsworth | 2012-11-15 00:00:00
(6 rows)
*/