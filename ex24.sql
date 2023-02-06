/*
Customer list by region 
A salesperson for Northwind is going on a business trip to visit customers, 
and would like to see a list of all customers, sorted by region, alphabetically. 

However, he wants the customers with no region (null in the Region field) to be at the end, 
instead of at the top, where you’d normally find the null values. 
Within the same region, companies should be sorted by CustomerID. 
*/

SELECT Region, CustomerId, CompanyName
FROM Customers
ORDER BY Region NULLS LAST, CustomerId;

/*
    region     | customerid |             companyname              
---------------+------------+--------------------------------------
 AK            | OLDWO      | Old World Delicatessen
 BC            | BOTTM      | Bottom-Dollar Markets
 BC            | LAUGB      | Laughing Bacchus Wine Cellars
 CA            | LETSS      | Let's Stop N Shop
 Co. Cork      | HUNGO      | Hungry Owl All-Night Grocers
 DF            | GROSR      | GROSELLA-Restaurante
 ID            | SAVEA      | Save-a-lot Markets
 Isle of Wight | ISLAT      | Island Trading
 Lara          | LILAS      | LILA-Supermercado
 MT            | THECR      | The Cracker Box
 NM            | RATTC      | Rattlesnake Canyon Grocery
 Nueva Esparta | LINOD      | LINO-Delicateses
 OR            | GREAL      | Great Lakes Food Market
 OR            | HUNGC      | Hungry Coyote Import Store
 OR            | LONEP      | Lonesome Pine Restaurant
 OR            | THEBI      | The Big Cheese
 Québec        | MEREP      | Mère Paillarde
 RJ            | HANAR      | Hanari Carnes
 RJ            | QUEDE      | Que Delícia
 RJ            | RICAR      | Ricardo Adocicados
 SP            | COMMI      | Comércio Mineiro
 SP            | FAMIA      | Familia Arquibaldo
 SP            | GOURL      | Gourmet Lanchonetes
 SP            | QUEEN      | Queen Cozinha
 SP            | TRADH      | Tradição Hipermercados
 SP            | WELLI      | Wellington Importadora
 Táchira       | HILAA      | HILARION-Abastos
 WA            | LAZYK      | Lazy K Kountry Store
 WA            | TRAIH      | Trail's Head Gourmet Provisioners
 WA            | WHITC      | White Clover Markets
 WY            | SPLIR      | Split Rail Beer & Ale
               | ALFKI      | Alfreds Futterkiste
               | ANATR      | Ana Trujillo Emparedados y helados
               | ANTON      | Antonio Moreno Taquería
               | AROUT      | Around the Horn
               | BERGS      | Berglunds snabbköp
               | BLAUS      | Blauer See Delikatessen
               | BLONP      | Blondesddsl père et fils
               | BOLID      | Bólido Comidas preparadas
               | BONAP      | Bon app'
               | BSBEV      | B's Beverages
               | CACTU      | Cactus Comidas para llevar
               | CENTC      | Centro comercial Moctezuma
               | CHOPS      | Chop-suey Chinese
               | CONSH      | Consolidated Holdings
               | DRACD      | Drachenblut Delikatessen
               | DUMON      | Du monde entier
               | EASTC      | Eastern Connection
               | ERNSH      | Ernst Handel
               | FISSA      | FISSA Fabrica Inter. Salchichas S.A.
               | FOLIG      | Folies gourmandes
               | FOLKO      | Folk och fä HB
               | FRANK      | Frankenversand
               | FRANR      | France restauration
               | FRANS      | Franchi S.p.A.
               | FURIB      | Furia Bacalhau e Frutos do Mar
               | GALED      | Galería del gastrónomo
               | GODOS      | Godos Cocina Típica
               | KOENE      | Königlich Essen
               | LACOR      | La corne d'abondance
               | LAMAI      | La maison d'Asie
               | LEHMS      | Lehmanns Marktstand
               | MAGAA      | Magazzini Alimentari Riuniti
               | MAISD      | Maison Dewey
               | MORGK      | Morgenstern Gesundkost
               | NORTS      | North/South
               | OCEAN      | Océano Atlántico Ltda.
               | OTTIK      | Ottilies Käseladen
               | PARIS      | Paris spécialités
               | PERIC      | Pericles Comidas clásicas
               | PICCO      | Piccolo und mehr
               | PRINI      | Princesa Isabel Vinhos
               | QUICK      | QUICK-Stop
               | RANCH      | Rancho grande
               | REGGC      | Reggiani Caseifici
               | RICSU      | Richter Supermarkt
               | ROMEY      | Romero y tomillo
               | SANTG      | Santé Gourmet
               | SEVES      | Seven Seas Imports
               | SIMOB      | Simons bistro
               | SPECD      | Spécialités du monde
               | SUPRD      | Suprêmes délices
               | TOMSP      | Toms Spezialitäten
               | TORTU      | Tortuga Restaurante
               | VAFFE      | Vaffeljernet
               | VICTE      | Victuailles en stock
               | VINET      | Vins et alcools Chevalier
               | WANDK      | Die Wandernde Kuh
               | WARTH      | Wartian Herkku
               | WILMK      | Wilman Kala
               | WOLZA      | Wolski  Zajazd
(91 rows)
*/