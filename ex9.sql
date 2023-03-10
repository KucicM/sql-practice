/*
Orders shipping to any country in Latin America

Now, instead of just wanting to return all the orders from France of Belgium, 
we want to show all the orders from any Latin American country. 
But we don’t have a list of Latin American countries in a table in the Northwind database. 
So, we’re going to just use this list of Latin American countries that 
happen to be in the Orders table: 

Brazil 
Mexico 
Argentina 
Venezuela 

It doesn’t make sense to use multiple Or statements anymore, 
it would get too convoluted. Use the In statement. 
*/

SELECT OrderID, CustomerID, ShipCountry 
FROM public.Orders
WHERE ShipCountry IN ('Brazil', 'Mexico', 'Argentina', 'Venezuela');

/*
 orderid | customerid | shipcountry 
---------+------------+-------------
   10250 | HANAR      | Brazil
   10253 | HANAR      | Brazil
   10256 | WELLI      | Brazil
   10257 | HILAA      | Venezuela
   10259 | CENTC      | Mexico
   10261 | QUEDE      | Brazil
   10268 | GROSR      | Venezuela
   10276 | TORTU      | Mexico
   10283 | LILAS      | Venezuela
   10287 | RICAR      | Brazil
   10290 | COMMI      | Brazil
   10291 | QUEDE      | Brazil
   10292 | TRADH      | Brazil
   10293 | TORTU      | Mexico
   10296 | LILAS      | Venezuela
   10299 | RICAR      | Brazil
   10304 | TORTU      | Mexico
   10308 | ANATR      | Mexico
   10319 | TORTU      | Mexico
   10322 | PERIC      | Mexico
   10330 | LILAS      | Venezuela
   10347 | FAMIA      | Brazil
   10354 | PERIC      | Mexico
   10357 | LILAS      | Venezuela
   10365 | ANTON      | Mexico
   10372 | QUEEN      | Brazil
   10379 | QUEDE      | Brazil
   10381 | LILAS      | Venezuela
   10386 | FAMIA      | Brazil
   10395 | HILAA      | Venezuela
   10405 | LINOD      | Venezuela
   10406 | QUEEN      | Brazil
   10409 | OCEAN      | Argentina
   10414 | FAMIA      | Brazil
   10420 | WELLI      | Brazil
   10421 | QUEDE      | Brazil
   10423 | GOURL      | Brazil
   10447 | RICAR      | Brazil
   10448 | RANCH      | Argentina
   10461 | LILAS      | Venezuela
   10466 | COMMI      | Brazil
   10474 | PERIC      | Mexico
   10476 | HILAA      | Venezuela
   10481 | RICAR      | Brazil
   10485 | LINOD      | Venezuela
   10486 | HILAA      | Venezuela
   10487 | QUEEN      | Brazil
   10490 | HILAA      | Venezuela
   10494 | COMMI      | Brazil
   10496 | TRADH      | Brazil
   10498 | HILAA      | Venezuela
   10499 | LILAS      | Venezuela
   10502 | PERIC      | Mexico
   10507 | ANTON      | Mexico
   10512 | FAMIA      | Brazil
   10518 | TORTU      | Mexico
   10521 | CACTU      | Argentina
   10531 | OCEAN      | Argentina
   10535 | ANTON      | Mexico
   10541 | HANAR      | Brazil
   10543 | LILAS      | Venezuela
   10552 | HILAA      | Venezuela
   10563 | RICAR      | Brazil
   10573 | ANTON      | Mexico
   10576 | TORTU      | Mexico
   10581 | FAMIA      | Brazil
   10585 | WELLI      | Brazil
   10587 | QUEDE      | Brazil
   10601 | HILAA      | Venezuela
   10606 | TRADH      | Brazil
   10613 | HILAA      | Venezuela
   10622 | RICAR      | Brazil
   10625 | ANATR      | Mexico
   10637 | QUEEN      | Brazil
   10638 | LINOD      | Venezuela
   10641 | HILAA      | Venezuela
   10644 | WELLI      | Brazil
   10645 | HANAR      | Brazil
   10647 | QUEDE      | Brazil
   10648 | RICAR      | Brazil
   10650 | FAMIA      | Brazil
   10652 | GOURL      | Brazil
   10659 | QUEEN      | Brazil
   10676 | TORTU      | Mexico
   10677 | ANTON      | Mexico
   10682 | ANTON      | Mexico
   10685 | GOURL      | Brazil
   10690 | HANAR      | Brazil
   10697 | LINOD      | Venezuela
   10704 | QUEEN      | Brazil
   10705 | HILAA      | Venezuela
   10709 | GOURL      | Brazil
   10716 | RANCH      | Argentina
   10720 | QUEDE      | Brazil
   10725 | FAMIA      | Brazil
   10728 | QUEEN      | Brazil
   10729 | LINOD      | Venezuela
   10734 | GOURL      | Brazil
   10759 | ANATR      | Mexico
   10770 | HANAR      | Brazil
   10777 | GOURL      | Brazil
   10780 | LILAS      | Venezuela
   10782 | CACTU      | Argentina
   10783 | HANAR      | Brazil
   10785 | GROSR      | Venezuela
   10786 | QUEEN      | Brazil
   10790 | GOURL      | Brazil
   10794 | QUEDE      | Brazil
   10796 | HILAA      | Venezuela
   10803 | WELLI      | Brazil
   10809 | WELLI      | Brazil
   10811 | LINOD      | Venezuela
   10813 | RICAR      | Brazil
   10819 | CACTU      | Argentina
   10823 | LILAS      | Venezuela
   10828 | RANCH      | Argentina
   10830 | TRADH      | Brazil
   10834 | TRADH      | Brazil
   10838 | LINOD      | Venezuela
   10839 | TRADH      | Brazil
   10840 | LINOD      | Venezuela
   10842 | TORTU      | Mexico
   10851 | RICAR      | Brazil
   10856 | ANTON      | Mexico
   10863 | HILAA      | Venezuela
   10868 | QUEEN      | Brazil
   10877 | RICAR      | Brazil
   10881 | CACTU      | Argentina
   10886 | HANAR      | Brazil
   10898 | OCEAN      | Argentina
   10899 | LILAS      | Venezuela
   10900 | WELLI      | Brazil
   10901 | HILAA      | Venezuela
   10903 | HANAR      | Brazil
   10905 | WELLI      | Brazil
   10913 | QUEEN      | Brazil
   10914 | QUEEN      | Brazil
   10915 | TORTU      | Mexico
   10916 | RANCH      | Argentina
   10919 | LINOD      | Venezuela
   10922 | HANAR      | Brazil
   10925 | HANAR      | Brazil
   10926 | ANATR      | Mexico
   10935 | WELLI      | Brazil
   10937 | CACTU      | Argentina
   10954 | LINOD      | Venezuela
   10957 | HILAA      | Venezuela
   10958 | OCEAN      | Argentina
   10959 | GOURL      | Brazil
   10960 | HILAA      | Venezuela
   10961 | QUEEN      | Brazil
   10969 | COMMI      | Brazil
   10976 | HILAA      | Venezuela
   10981 | HANAR      | Brazil
   10986 | OCEAN      | Argentina
   10989 | QUEDE      | Brazil
   10995 | PERIC      | Mexico
   10997 | LILAS      | Venezuela
   11014 | LINOD      | Venezuela
   11019 | RANCH      | Argentina
   11022 | HANAR      | Brazil
   11039 | LINOD      | Venezuela
   11042 | COMMI      | Brazil
   11049 | GOURL      | Brazil
   11052 | HANAR      | Brazil
   11054 | CACTU      | Argentina
   11055 | HILAA      | Venezuela
   11059 | RICAR      | Brazil
   11065 | LILAS      | Venezuela
   11068 | QUEEN      | Brazil
   11069 | TORTU      | Mexico
   11071 | LILAS      | Venezuela
   11073 | PERIC      | Mexico
(173 rows)
*/