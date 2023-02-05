/*
Products with associated supplier names 
We’d like to show, for each product, the associated Supplier. 
Show the ProductID, ProductName, and the CompanyName of the Supplier. 
Sort by ProductID. 

This question will introduce what may be a new concept, the Join clause in SQL. 
The Join clause is used to join two or more relational database tables together in a logical way. 
Here’s a data model of the relationship between Products and Suppliers. 

Suppliers (SupplierId) <- Products (SupplierId)
*/

SELECT 
  p.ProductID, p.ProductName,
  s.CompanyName
FROM public.Products AS p 
JOIN public.Suppliers AS s ON s.SupplierId = p.SupplierId
ORDER BY p.ProductId;

/*
 productid |           productname            |              companyname               
-----------+----------------------------------+----------------------------------------
         1 | Chai                             | Exotic Liquids
         2 | Chang                            | Exotic Liquids
         3 | Aniseed Syrup                    | Exotic Liquids
         4 | Chef Anton's Cajun Seasoning     | New Orleans Cajun Delights
         5 | Chef Anton's Gumbo Mix           | New Orleans Cajun Delights
         6 | Grandma's Boysenberry Spread     | Grandma Kelly's Homestead
         7 | Uncle Bob's Organic Dried Pears  | Grandma Kelly's Homestead
         8 | Northwoods Cranberry Sauce       | Grandma Kelly's Homestead
         9 | Mishi Kobe Niku                  | Tokyo Traders
        10 | Ikura                            | Tokyo Traders
        11 | Queso Cabrales                   | Cooperativa de Quesos 'Las Cabras'
        12 | Queso Manchego La Pastora        | Cooperativa de Quesos 'Las Cabras'
        13 | Konbu                            | Mayumi's
        14 | Tofu                             | Mayumi's
        15 | Genen Shouyu                     | Mayumi's
        16 | Pavlova                          | Pavlova, Ltd.
        17 | Alice Mutton                     | Pavlova, Ltd.
        18 | Carnarvon Tigers                 | Pavlova, Ltd.
        19 | Teatime Chocolate Biscuits       | Specialty Biscuits, Ltd.
        20 | Sir Rodney's Marmalade           | Specialty Biscuits, Ltd.
        21 | Sir Rodney's Scones              | Specialty Biscuits, Ltd.
        22 | Gustaf's Knäckebröd              | PB Knäckebröd AB
        23 | Tunnbröd                         | PB Knäckebröd AB
        24 | Guaraná Fantástica               | Refrescos Americanas LTDA
        25 | NuNuCa Nuß-Nougat-Creme          | Heli Süßwaren GmbH & Co. KG
        26 | Gumbär Gummibärchen              | Heli Süßwaren GmbH & Co. KG
        27 | Schoggi Schokolade               | Heli Süßwaren GmbH & Co. KG
        28 | Rössle Sauerkraut                | Plutzer Lebensmittelgroßmärkte AG
        29 | Thüringer Rostbratwurst          | Plutzer Lebensmittelgroßmärkte AG
        30 | Nord-Ost Matjeshering            | Nord-Ost-Fisch Handelsgesellschaft mbH
        31 | Gorgonzola Telino                | Formaggi Fortini s.r.l.
        32 | Mascarpone Fabioli               | Formaggi Fortini s.r.l.
        33 | Geitost                          | Norske Meierier
        34 | Sasquatch Ale                    | Bigfoot Breweries
        35 | Steeleye Stout                   | Bigfoot Breweries
        36 | Inlagd Sill                      | Svensk Sjöföda AB
        37 | Gravad lax                       | Svensk Sjöföda AB
        38 | Côte de Blaye                    | Aux joyeux ecclésiastiques
        39 | Chartreuse verte                 | Aux joyeux ecclésiastiques
        40 | Boston Crab Meat                 | New England Seafood Cannery
        41 | Jack's New England Clam Chowder  | New England Seafood Cannery
        42 | Singaporean Hokkien Fried Mee    | Leka Trading
        43 | Ipoh Coffee                      | Leka Trading
        44 | Gula Malacca                     | Leka Trading
        45 | Rogede sild                      | Lyngbysild
        46 | Spegesild                        | Lyngbysild
        47 | Zaanse koeken                    | Zaanse Snoepfabriek
        48 | Chocolade                        | Zaanse Snoepfabriek
        49 | Maxilaku                         | Karkki Oy
        50 | Valkoinen suklaa                 | Karkki Oy
        51 | Manjimup Dried Apples            | G'day, Mate
        52 | Filo Mix                         | G'day, Mate
        53 | Perth Pasties                    | G'day, Mate
        54 | Tourtière                        | Ma Maison
        55 | Pâté chinois                     | Ma Maison
        56 | Gnocchi di nonna Alice           | Pasta Buttini s.r.l.
        57 | Ravioli Angelo                   | Pasta Buttini s.r.l.
        58 | Escargots de Bourgogne           | Escargots Nouveaux
        59 | Raclette Courdavault             | Gai pâturage
        60 | Camembert Pierrot                | Gai pâturage
        61 | Sirop d'érable                   | Forêts d'érables
        62 | Tarte au sucre                   | Forêts d'érables
        63 | Vegie-spread                     | Pavlova, Ltd.
        64 | Wimmers gute Semmelknödel        | Plutzer Lebensmittelgroßmärkte AG
        65 | Louisiana Fiery Hot Pepper Sauce | New Orleans Cajun Delights
        66 | Louisiana Hot Spiced Okra        | New Orleans Cajun Delights
        67 | Laughing Lumberjack Lager        | Bigfoot Breweries
        68 | Scottish Longbreads              | Specialty Biscuits, Ltd.
        69 | Gudbrandsdalsost                 | Norske Meierier
        70 | Outback Lager                    | Pavlova, Ltd.
        71 | Flotemysost                      | Norske Meierier
        72 | Mozzarella di Giovanni           | Formaggi Fortini s.r.l.
        73 | Röd Kaviar                       | Svensk Sjöföda AB
        74 | Longlife Tofu                    | Tokyo Traders
        75 | Rhönbräu Klosterbier             | Plutzer Lebensmittelgroßmärkte AG
        76 | Lakkalikööri                     | Karkki Oy
        77 | Original Frankfurter grüne Soße  | Plutzer Lebensmittelgroßmärkte AG
(77 rows)
*/