/*
Orders shipping to France or Belgium 
Looking at the Orders table, there’s a field called ShipCountry. 
Write a query that shows the OrderID, CustomerID, and ShipCountry 
for the orders where the ShipCountry is either France or Belgium. 
*/

SELECT OrderID, CustomerID, ShipCountry 
FROM public.Orders
WHERE ShipCountry IN ('France', 'Belgium');

/*
 orderid | customerid | shipcountry 
---------+------------+-------------
   10248 | VINET      | France
   10251 | VICTE      | France
   10252 | SUPRD      | Belgium
   10265 | BLONP      | France
   10274 | VINET      | France
   10295 | VINET      | France
   10297 | BLONP      | France
   10302 | SUPRD      | Belgium
   10311 | DUMON      | France
   10331 | BONAP      | France
   10334 | VICTE      | France
   10340 | BONAP      | France
   10350 | LAMAI      | France
   10358 | LAMAI      | France
   10360 | BLONP      | France
   10362 | BONAP      | France
   10371 | LAMAI      | France
   10408 | FOLIG      | France
   10413 | LAMAI      | France
   10425 | LAMAI      | France
   10436 | BLONP      | France
   10449 | BLONP      | France
   10450 | VICTE      | France
   10454 | LAMAI      | France
   10458 | SUPRD      | Belgium
   10459 | VICTE      | France
   10463 | SUPRD      | Belgium
   10470 | BONAP      | France
   10475 | SUPRD      | Belgium
   10478 | VICTE      | France
   10480 | FOLIG      | France
   10493 | LAMAI      | France
   10500 | LAMAI      | France
   10511 | BONAP      | France
   10525 | BONAP      | France
   10529 | MAISD      | Belgium
   10546 | VICTE      | France
   10559 | BLONP      | France
   10566 | BLONP      | France
   10584 | BLONP      | France
   10609 | DUMON      | France
   10610 | LAMAI      | France
   10628 | BLONP      | France
   10631 | LAMAI      | France
   10634 | FOLIG      | France
   10649 | MAISD      | Belgium
   10663 | BONAP      | France
   10671 | FRANR      | France
   10679 | BLONP      | France
   10683 | DUMON      | France
   10715 | BONAP      | France
   10730 | BONAP      | France
   10732 | BONAP      | France
   10737 | VINET      | France
   10738 | SPECD      | France
   10739 | VINET      | France
   10755 | BONAP      | France
   10760 | MAISD      | Belgium
   10763 | FOLIG      | France
   10767 | SUPRD      | Belgium
   10787 | LAMAI      | France
   10789 | FOLIG      | France
   10806 | VICTE      | France
   10814 | VICTE      | France
   10826 | BLONP      | France
   10827 | BONAP      | France
   10832 | LAMAI      | France
   10841 | SUPRD      | Belgium
   10843 | VICTE      | France
   10846 | SUPRD      | Belgium
   10850 | VICTE      | France
   10858 | LACOR      | France
   10860 | FRANR      | France
   10871 | BONAP      | France
   10876 | BONAP      | France
   10885 | SUPRD      | Belgium
   10890 | DUMON      | France
   10892 | MAISD      | Belgium
   10896 | MAISD      | Belgium
   10907 | SPECD      | France
   10923 | LAMAI      | France
   10927 | LACOR      | France
   10930 | SUPRD      | Belgium
   10932 | BONAP      | France
   10940 | BONAP      | France
   10964 | SPECD      | France
   10971 | FRANR      | France
   10972 | LACOR      | France
   10973 | LACOR      | France
   10978 | MAISD      | Belgium
   11004 | MAISD      | Belgium
   11035 | SUPRD      | Belgium
   11038 | SUPRD      | Belgium
   11043 | SPECD      | France
   11051 | LAMAI      | France
   11076 | BONAP      | France
(96 rows)
*/
