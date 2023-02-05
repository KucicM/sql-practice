/*
Contact titles for customers 
Show a list of all the different values in the Customers table for ContactTitles. 
Also include a count for each ContactTitle. 
This is similar in concept to the previous question “Countries where there are customers”, 
except we now want a count for each ContactTitle. 
*/

SELECT ContactTitle, COUNT(*)
FROM public.Customers
GROUP BY ContactTitle;

/*
          contacttitle          | count 
--------------------------------+-------
 Sales Manager                  |    11
 Owner                          |    17
 Owner/Marketing Assistant      |     1
 Accounting Manager             |    10
 Sales Associate                |     7
 Sales Agent                    |     5
 Assistant Sales Agent          |     2
 Assistant Sales Representative |     1
 Order Administrator            |     2
 Marketing Manager              |    12
 Sales Representative           |    17
 Marketing Assistant            |     6
(12 rows)
*/