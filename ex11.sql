/*
Showing only the Date with a DateTime field

In the output of the query above, showing the Employees in order of BirthDate, 
we see the time of the BirthDate field, which we don’t want. 
Show only the date portion of the BirthDate field. 
*/


SELECT FirstName, LastName, Title, CAST(BirthDate AS DATE)
FROM public.Employees
ORDER BY BirthDate;

/*
 firstname | lastname  |          title           | birthdate  
-----------+-----------+--------------------------+------------
 Margaret  | Peacock   | Sales Representative     | 1955-09-19
 Nancy     | Davolio   | Sales Representative     | 1966-12-08
 Andrew    | Fuller    | Vice President, Sales    | 1970-02-19
 Steven    | Buchanan  | Sales Manager            | 1973-03-04
 Laura     | Callahan  | Inside Sales Coordinator | 1976-01-09
 Robert    | King      | Sales Representative     | 1978-05-29
 Michael   | Suyama    | Sales Representative     | 1981-07-02
 Janet     | Leverling | Sales Representative     | 1981-08-30
 Anne      | Dodsworth | Sales Representative     | 1984-01-27
(9 rows)
*/