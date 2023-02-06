/*
Total customers per country/city 
In the Customers table, show the total number of customers per Country and City. 
*/

SELECT Country, City, count(*) NumberOfCustomers
FROM Customers
GROUP BY Country, City;

/*
   country   |      city       | numberofcustomers 
-------------+-----------------+-------------------
 Germany     | Leipzig         |                 1
 Denmark     | Århus           |                 1
 Canada      | Vancouver       |                 1
 Sweden      | Luleå           |                 1
 USA         | Kirkland        |                 1
 Venezuela   | San Cristóbal   |                 1
 USA         | Portland        |                 2
 Spain       | Sevilla         |                 1
 Brazil      | Rio de Janeiro  |                 3
 Canada      | Tsawassen       |                 1
 Switzerland | Genève          |                 1
 Canada      | Montréal        |                 1
 Belgium     | Bruxelles       |                 1
 Austria     | Graz            |                 1
 Italy       | Torino          |                 1
 Germany     | Cunewalde       |                 1
 Denmark     | Kobenhavn       |                 1
 USA         | Seattle         |                 1
 Italy       | Reggio Emilia   |                 1
 France      | Marseille       |                 1
 Finland     | Helsinki        |                 1
 Finland     | Oulu            |                 1
 Germany     | Münster         |                 1
 France      | Lyon            |                 1
 USA         | Eugene          |                 1
 Argentina   | Buenos Aires    |                 3
 Spain       | Madrid          |                 3
 UK          | London          |                 6
 USA         | Elgin           |                 1
 USA         | Anchorage       |                 1
 Germany     | Brandenburg     |                 1
 USA         | Walla Walla     |                 1
 Germany     | Mannheim        |                 1
 Germany     | Berlin          |                 1
 Venezuela   | I. de Margarita |                 1
 Germany     | Aachen          |                 1
 Poland      | Warszawa        |                 1
 USA         | Lander          |                 1
 France      | Paris           |                 2
 Switzerland | Bern            |                 1
 Spain       | Barcelona       |                 1
 Belgium     | Charleroi       |                 1
 Brazil      | Campinas        |                 1
 USA         | San Francisco   |                 1
 Germany     | Frankfurt a.M.  |                 1
 Venezuela   | Caracas         |                 1
 Portugal    | Lisboa          |                 2
 USA         | Butte           |                 1
 USA         | Albuquerque     |                 1
 Norway      | Stavern         |                 1
 France      | Toulouse        |                 1
 Mexico      | México D.F.     |                 5
 France      | Versailles      |                 1
 Venezuela   | Barquisimeto    |                 1
 France      | Reims           |                 1
 France      | Lille           |                 1
 Italy       | Bergamo         |                 1
 Ireland     | Cork            |                 1
 France      | Strasbourg      |                 1
 Austria     | Salzburg        |                 1
 Germany     | Köln            |                 1
 UK          | Cowes           |                 1
 France      | Nantes          |                 2
 Brazil      | Sao Paulo       |                 4
 USA         | Boise           |                 1
 Germany     | München         |                 1
 Sweden      | Bräcke          |                 1
 Brazil      | Resende         |                 1
 Germany     | Stuttgart       |                 1
(69 rows)
*/