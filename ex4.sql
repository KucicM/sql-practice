/*
Sales Representatives in the United States 
Now we’d like to see the same columns as above, but only for those employees 
that both have the title of Sales Representative, and also are in the United States. 
*/

SELECT FirstName, LastName, HireDate
FROM public.employees
WHERE 
title = 'Sales Representative'
AND Country = 'USA';

/*
 firstname | lastname  |      hiredate       
-----------+-----------+---------------------
 Nancy     | Davolio   | 2010-05-01 00:00:00
 Janet     | Leverling | 2010-04-01 00:00:00
 Margaret  | Peacock   | 2011-05-03 00:00:00
(3 rows)
*/