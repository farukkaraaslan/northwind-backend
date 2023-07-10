﻿/*
** Copyright Microsoft, Inc. 1994 - 2000
** All Rights Reserved.
*/

-- This script does not create a database.
-- Run this script in the database you want the objects to be created.
-- Default schema is dbo.

SET NOCOUNT ON
GO

set quoted_identifier on
GO

/* Set DATEFORMAT so that the date strings are interpreted correctly regardless of
   the default DATEFORMAT on the server.
*/
SET DATEFORMAT mdy
GO

go
if exists (select * from sysobjects where id = object_id('dbo.Employee Sales by Country') and sysstat & 0xf = 4)
	drop procedure "dbo"."Employee Sales by Country"
GO
if exists (select * from sysobjects where id = object_id('dbo.Sales by Year') and sysstat & 0xf = 4)
	drop procedure "dbo"."Sales by Year"
GO
if exists (select * from sysobjects where id = object_id('dbo.Ten Most Expensive Products') and sysstat & 0xf = 4)
	drop procedure "dbo"."Ten Most Expensive Products"
GO
if exists (select * from sysobjects where id = object_id('dbo.CustOrderHist') and sysstat & 0xf = 4)
	drop procedure "dbo"."CustOrderHist"
GO
if exists (select * from sysobjects where id = object_id('dbo.CustOrdersDetail') and sysstat & 0xf = 4)
	drop procedure "dbo"."CustOrdersDetail"
GO
if exists (select * from sysobjects where id = object_id('dbo.CustOrdersOrders') and sysstat & 0xf = 4)
	drop procedure "dbo"."CustOrdersOrders"
GO
if exists (select * from sysobjects where id = object_id('dbo.SalesByCategory') and sysstat & 0xf = 4)
	drop procedure "dbo"."SalesByCategory"
GO
if exists (select * from sysobjects where id = object_id('dbo.Category Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Category Sales for 1997"
GO
if exists (select * from sysobjects where id = object_id('dbo.Sales by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Sales by Category"
GO
if exists (select * from sysobjects where id = object_id('dbo.Sales Totals by Amount') and sysstat & 0xf = 2)
	drop view "dbo"."Sales Totals by Amount"
GO
if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Quarter') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Quarter"
GO
if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Year') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Year"
GO
if exists (select * from sysobjects where id = object_id('dbo.Invoices') and sysstat & 0xf = 2)
	drop view "dbo"."Invoices"
GO
if exists (select * from sysobjects where id = object_id('dbo.Order Details Extended') and sysstat & 0xf = 2)
	drop view "dbo"."Order Details Extended"
GO
if exists (select * from sysobjects where id = object_id('dbo.Order Subtotals') and sysstat & 0xf = 2)
	drop view "dbo"."Order Subtotals"
GO
if exists (select * from sysobjects where id = object_id('dbo.Product Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Product Sales for 1997"
GO
if exists (select * from sysobjects where id = object_id('dbo.Alphabetical list of products') and sysstat & 0xf = 2)
	drop view "dbo"."Alphabetical list of products"
GO
if exists (select * from sysobjects where id = object_id('dbo.Current Product List') and sysstat & 0xf = 2)
	drop view "dbo"."Current Product List"
GO
if exists (select * from sysobjects where id = object_id('dbo.Orders Qry') and sysstat & 0xf = 2)
	drop view "dbo"."Orders Qry"
GO
if exists (select * from sysobjects where id = object_id('dbo.Products Above Average Price') and sysstat & 0xf = 2)
	drop view "dbo"."Products Above Average Price"
GO
if exists (select * from sysobjects where id = object_id('dbo.Products by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Products by Category"
GO
if exists (select * from sysobjects where id = object_id('dbo.Quarterly Orders') and sysstat & 0xf = 2)
	drop view "dbo"."Quarterly Orders"
GO
if exists (select * from sysobjects where id = object_id('dbo.Customer and Suppliers by City') and sysstat & 0xf = 2)
	drop view "dbo"."Customer and Suppliers by City"
GO
if exists (select * from sysobjects where id = object_id('dbo.Order Details') and sysstat & 0xf = 3)
	drop table "dbo"."Order Details"
GO
if exists (select * from sysobjects where id = object_id('dbo.Orders') and sysstat & 0xf = 3)
	drop table "dbo"."Orders"
GO
if exists (select * from sysobjects where id = object_id('dbo.Products') and sysstat & 0xf = 3)
	drop table "dbo"."Products"
GO
if exists (select * from sysobjects where id = object_id('dbo.Categories') and sysstat & 0xf = 3)
	drop table "dbo"."Categories"
GO
if exists (select * from sysobjects where id = object_id('dbo.CustomerCustomerDemo') and sysstat & 0xf = 3)
	drop table "dbo"."CustomerCustomerDemo"
GO
if exists (select * from sysobjects where id = object_id('dbo.CustomerDemographics') and sysstat & 0xf = 3)
	drop table "dbo"."CustomerDemographics"
GO
if exists (select * from sysobjects where id = object_id('dbo.Customers') and sysstat & 0xf = 3)
	drop table "dbo"."Customers"
GO
if exists (select * from sysobjects where id = object_id('dbo.Shippers') and sysstat & 0xf = 3)
	drop table "dbo"."Shippers"
GO
if exists (select * from sysobjects where id = object_id('dbo.Suppliers') and sysstat & 0xf = 3)
	drop table "dbo"."Suppliers"
GO
if exists (select * from sysobjects where id = object_id('dbo.EmployeeTerritories') and sysstat & 0xf = 3)
	drop table "dbo"."EmployeeTerritories"
GO
if exists (select * from sysobjects where id = object_id('dbo.Territories') and sysstat & 0xf = 3)
	drop table "dbo".Territories
GO
if exists (select * from sysobjects where id = object_id('dbo.Region') and sysstat & 0xf = 3)
	drop table "dbo".Region
GO
if exists (select * from sysobjects where id = object_id('dbo.Employees') and sysstat & 0xf = 3)
	drop table "dbo"."Employees"
GO

CREATE TABLE "Employees" (
	"EmployeeID" "int" IDENTITY (1, 1) NOT NULL ,
	"LastName" nvarchar (20) NOT NULL ,
	"FirstName" nvarchar (10) NOT NULL ,
	"Title" nvarchar (30) NULL ,
	"TitleOfCourtesy" nvarchar (25) NULL ,
	"BirthDate" "datetime" NULL ,
	"HireDate" "datetime" NULL ,
	"Address" nvarchar (60) NULL ,
	"City" nvarchar (15) NULL ,
	"Region" nvarchar (15) NULL ,
	"PostalCode" nvarchar (10) NULL ,
	"Country" nvarchar (15) NULL ,
	"HomePhone" nvarchar (24) NULL ,
	"Extension" nvarchar (4) NULL ,
	"Photo" "image" NULL ,
	"Notes" "ntext" NULL ,
	"ReportsTo" "int" NULL ,
	"PhotoPath" nvarchar (255) NULL ,
	CONSTRAINT "PK_Employees" PRIMARY KEY  CLUSTERED 
	(
		"EmployeeID"
	),
	CONSTRAINT "FK_Employees_Employees" FOREIGN KEY 
	(
		"ReportsTo"
	) REFERENCES "dbo"."Employees" (
		"EmployeeID"
	),
	CONSTRAINT "CK_Birthdate" CHECK (BirthDate < getdate())
)
GO
 CREATE  INDEX "LastName" ON "dbo"."Employees"("LastName")
GO
 CREATE  INDEX "PostalCode" ON "dbo"."Employees"("PostalCode")
GO

CREATE TABLE "Categories" (
	"CategoryID" "int" IDENTITY (1, 1) NOT NULL ,
	"CategoryName" nvarchar (15) NOT NULL ,
	"Description" "ntext" NULL ,
	"Picture" "image" NULL ,
	CONSTRAINT "PK_Categories" PRIMARY KEY  CLUSTERED 
	(
		"CategoryID"
	)
)
GO
 CREATE  INDEX "CategoryName" ON "dbo"."Categories"("CategoryName")
GO

CREATE TABLE "Customers" (
	"CustomerID" nchar (5) NOT NULL ,
	"CompanyName" nvarchar (40) NOT NULL ,
	"ContactName" nvarchar (30) NULL ,
	"ContactTitle" nvarchar (30) NULL ,
	"Address" nvarchar (60) NULL ,
	"City" nvarchar (15) NULL ,
	"Region" nvarchar (15) NULL ,
	"PostalCode" nvarchar (10) NULL ,
	"Country" nvarchar (15) NULL ,
	"Phone" nvarchar (24) NULL ,
	"Fax" nvarchar (24) NULL ,
	CONSTRAINT "PK_Customers" PRIMARY KEY  CLUSTERED 
	(
		"CustomerID"
	)
)
GO
 CREATE  INDEX "City" ON "dbo"."Customers"("City")
GO
 CREATE  INDEX "CompanyName" ON "dbo"."Customers"("CompanyName")
GO
 CREATE  INDEX "PostalCode" ON "dbo"."Customers"("PostalCode")
GO
 CREATE  INDEX "Region" ON "dbo"."Customers"("Region")
GO

CREATE TABLE "Shippers" (
	"ShipperID" "int" IDENTITY (1, 1) NOT NULL ,
	"CompanyName" nvarchar (40) NOT NULL ,
	"Phone" nvarchar (24) NULL ,
	CONSTRAINT "PK_Shippers" PRIMARY KEY  CLUSTERED 
	(
		"ShipperID"
	)
)
GO
CREATE TABLE "Suppliers" (
	"SupplierID" "int" IDENTITY (1, 1) NOT NULL ,
	"CompanyName" nvarchar (40) NOT NULL ,
	"ContactName" nvarchar (30) NULL ,
	"ContactTitle" nvarchar (30) NULL ,
	"Address" nvarchar (60) NULL ,
	"City" nvarchar (15) NULL ,
	"Region" nvarchar (15) NULL ,
	"PostalCode" nvarchar (10) NULL ,
	"Country" nvarchar (15) NULL ,
	"Phone" nvarchar (24) NULL ,
	"Fax" nvarchar (24) NULL ,
	"HomePage" "ntext" NULL ,
	CONSTRAINT "PK_Suppliers" PRIMARY KEY  CLUSTERED 
	(
		"SupplierID"
	)
)
GO
 CREATE  INDEX "CompanyName" ON "dbo"."Suppliers"("CompanyName")
GO
 CREATE  INDEX "PostalCode" ON "dbo"."Suppliers"("PostalCode")
GO

CREATE TABLE "Orders" (
	"OrderID" "int" IDENTITY (1, 1) NOT NULL ,
	"CustomerID" nchar (5) NULL ,
	"EmployeeID" "int" NULL ,
	"OrderDate" "datetime" NULL ,
	"RequiredDate" "datetime" NULL ,
	"ShippedDate" "datetime" NULL ,
	"ShipVia" "int" NULL ,
	"Freight" "money" NULL CONSTRAINT "DF_Orders_Freight" DEFAULT (0),
	"ShipName" nvarchar (40) NULL ,
	"ShipAddress" nvarchar (60) NULL ,
	"ShipCity" nvarchar (15) NULL ,
	"ShipRegion" nvarchar (15) NULL ,
	"ShipPostalCode" nvarchar (10) NULL ,
	"ShipCountry" nvarchar (15) NULL ,
	CONSTRAINT "PK_Orders" PRIMARY KEY  CLUSTERED 
	(
		"OrderID"
	),
	CONSTRAINT "FK_Orders_Customers" FOREIGN KEY 
	(
		"CustomerID"
	) REFERENCES "dbo"."Customers" (
		"CustomerID"
	),
	CONSTRAINT "FK_Orders_Employees" FOREIGN KEY 
	(
		"EmployeeID"
	) REFERENCES "dbo"."Employees" (
		"EmployeeID"
	),
	CONSTRAINT "FK_Orders_Shippers" FOREIGN KEY 
	(
		"ShipVia"
	) REFERENCES "dbo"."Shippers" (
		"ShipperID"
	)
)
GO
 CREATE  INDEX "CustomerID" ON "dbo"."Orders"("CustomerID")
GO
 CREATE  INDEX "CustomersOrders" ON "dbo"."Orders"("CustomerID")
GO
 CREATE  INDEX "EmployeeID" ON "dbo"."Orders"("EmployeeID")
GO
 CREATE  INDEX "EmployeesOrders" ON "dbo"."Orders"("EmployeeID")
GO
 CREATE  INDEX "OrderDate" ON "dbo"."Orders"("OrderDate")
GO
 CREATE  INDEX "ShippedDate" ON "dbo"."Orders"("ShippedDate")
GO
 CREATE  INDEX "ShippersOrders" ON "dbo"."Orders"("ShipVia")
GO
 CREATE  INDEX "ShipPostalCode" ON "dbo"."Orders"("ShipPostalCode")
GO

CREATE TABLE "Products" (
	"ProductID" "int" IDENTITY (1, 1) NOT NULL ,
	"ProductName" nvarchar (40) NOT NULL ,
	"SupplierID" "int" NULL ,
	"CategoryID" "int" NULL ,
	"QuantityPerUnit" nvarchar (20) NULL ,
	"UnitPrice" "money" NULL CONSTRAINT "DF_Products_UnitPrice" DEFAULT (0),
	"UnitsInStock" "smallint" NULL CONSTRAINT "DF_Products_UnitsInStock" DEFAULT (0),
	"UnitsOnOrder" "smallint" NULL CONSTRAINT "DF_Products_UnitsOnOrder" DEFAULT (0),
	"ReorderLevel" "smallint" NULL CONSTRAINT "DF_Products_ReorderLevel" DEFAULT (0),
	"Discontinued" "bit" NOT NULL CONSTRAINT "DF_Products_Discontinued" DEFAULT (0),
	CONSTRAINT "PK_Products" PRIMARY KEY  CLUSTERED 
	(
		"ProductID"
	),
	CONSTRAINT "FK_Products_Categories" FOREIGN KEY 
	(
		"CategoryID"
	) REFERENCES "dbo"."Categories" (
		"CategoryID"
	),
	CONSTRAINT "FK_Products_Suppliers" FOREIGN KEY 
	(
		"SupplierID"
	) REFERENCES "dbo"."Suppliers" (
		"SupplierID"
	),
	CONSTRAINT "CK_Products_UnitPrice" CHECK (UnitPrice >= 0),
	CONSTRAINT "CK_ReorderLevel" CHECK (ReorderLevel >= 0),
	CONSTRAINT "CK_UnitsInStock" CHECK (UnitsInStock >= 0),
	CONSTRAINT "CK_UnitsOnOrder" CHECK (UnitsOnOrder >= 0)
)
GO
 CREATE  INDEX "CategoriesProducts" ON "dbo"."Products"("CategoryID")
GO
 CREATE  INDEX "CategoryID" ON "dbo"."Products"("CategoryID")
GO
 CREATE  INDEX "ProductName" ON "dbo"."Products"("ProductName")
GO
 CREATE  INDEX "SupplierID" ON "dbo"."Products"("SupplierID")
GO
 CREATE  INDEX "SuppliersProducts" ON "dbo"."Products"("SupplierID")
GO

CREATE TABLE "Order Details" (
	"OrderID" "int" NOT NULL ,
	"ProductID" "int" NOT NULL ,
	"UnitPrice" "money" NOT NULL CONSTRAINT "DF_Order_Details_UnitPrice" DEFAULT (0),
	"Quantity" "smallint" NOT NULL CONSTRAINT "DF_Order_Details_Quantity" DEFAULT (1),
	"Discount" "real" NOT NULL CONSTRAINT "DF_Order_Details_Discount" DEFAULT (0),
	CONSTRAINT "PK_Order_Details" PRIMARY KEY  CLUSTERED 
	(
		"OrderID",
		"ProductID"
	),
	CONSTRAINT "FK_Order_Details_Orders" FOREIGN KEY 
	(
		"OrderID"
	) REFERENCES "dbo"."Orders" (
		"OrderID"
	),
	CONSTRAINT "FK_Order_Details_Products" FOREIGN KEY 
	(
		"ProductID"
	) REFERENCES "dbo"."Products" (
		"ProductID"
	),
	CONSTRAINT "CK_Discount" CHECK (Discount >= 0 and (Discount <= 1)),
	CONSTRAINT "CK_Quantity" CHECK (Quantity > 0),
	CONSTRAINT "CK_UnitPrice" CHECK (UnitPrice >= 0)
)
GO
 CREATE  INDEX "OrderID" ON "dbo"."Order Details"("OrderID")
GO
 CREATE  INDEX "OrdersOrder_Details" ON "dbo"."Order Details"("OrderID")
GO
 CREATE  INDEX "ProductID" ON "dbo"."Order Details"("ProductID")
GO
 CREATE  INDEX "ProductsOrder_Details" ON "dbo"."Order Details"("ProductID")
GO


create view "Customer and Suppliers by City" AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName
GO

create view "Alphabetical list of products" AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0))
GO

create view "Current Product List" AS
SELECT Product_List.ProductID, Product_List.ProductName
FROM Products AS Product_List
WHERE (((Product_List.Discontinued)=0))
--ORDER BY Product_List.ProductName
GO

create view "Orders Qry" AS
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GO

create view "Products Above Average Price" AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC
GO

create view "Products by Category" AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1
--ORDER BY Categories.CategoryName, Products.ProductName
GO

create view "Quarterly Orders" AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GO

create view Invoices AS
SELECT Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, Orders.ShipRegion, Orders.ShipPostalCode, 
	Orders.ShipCountry, Orders.CustomerID, Customers.CompanyName AS CustomerName, Customers.Address, Customers.City, 
	Customers.Region, Customers.PostalCode, Customers.Country, 
	(FirstName + ' ' + LastName) AS Salesperson, 
	Orders.OrderID, Orders.OrderDate, Orders.RequiredDate, Orders.ShippedDate, Shippers.CompanyName As ShipperName, 
	"Order Details".ProductID, Products.ProductName, "Order Details".UnitPrice, "Order Details".Quantity, 
	"Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice, Orders.Freight
FROM 	Shippers INNER JOIN 
		(Products INNER JOIN 
			(
				(Employees INNER JOIN 
					(Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID) 
				ON Employees.EmployeeID = Orders.EmployeeID) 
			INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
		ON Products.ProductID = "Order Details".ProductID) 
	ON Shippers.ShipperID = Orders.ShipVia
GO

create view "Order Details Extended" AS
SELECT "Order Details".OrderID, "Order Details".ProductID, Products.ProductName, 
	"Order Details".UnitPrice, "Order Details".Quantity, "Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "Order Details" ON Products.ProductID = "Order Details".ProductID
--ORDER BY "Order Details".OrderID
GO

create view "Order Subtotals" AS
SELECT "Order Details".OrderID, Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "Order Details"
GROUP BY "Order Details".OrderID
GO

create view "Product Sales for 1997" AS
SELECT Categories.CategoryName, Products.ProductName, 
Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
	ON Products.ProductID = "Order Details".ProductID
WHERE (((Orders.ShippedDate) Between '19970101' And '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName
GO

create view "Category Sales for 1997" AS
SELECT "Product Sales for 1997".CategoryName, Sum("Product Sales for 1997".ProductSales) AS CategorySales
FROM "Product Sales for 1997"
GROUP BY "Product Sales for 1997".CategoryName
GO

create view "Sales by Category" AS
SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductName, 
	Sum("Order Details Extended".ExtendedPrice) AS ProductSales
FROM 	Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN "Order Details Extended" ON Orders.OrderID = "Order Details Extended".OrderID) 
		ON Products.ProductID = "Order Details Extended".ProductID) 
	ON Categories.CategoryID = Products.CategoryID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName
--ORDER BY Products.ProductName
GO

create view "Sales Totals by Amount" AS
SELECT "Order Subtotals".Subtotal AS SaleAmount, Orders.OrderID, Customers.CompanyName, Orders.ShippedDate
FROM 	Customers INNER JOIN 
		(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Customers.CustomerID = Orders.CustomerID
WHERE ("Order Subtotals".Subtotal >2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231')
GO

create view "Summary of Sales by Quarter" AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO

create view "Summary of Sales by Year" AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO

create procedure "Ten Most Expensive Products" AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC
GO

create procedure "Employee Sales by Country" 
@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO

create procedure "Sales by Year" 
	@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal, DATENAME(yy,ShippedDate) AS Year
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO

set quoted_identifier on
go
set identity_insert "Categories" on
go
ALTER TABLE "Categories" NOCHECK CONSTRAINT ALL
go
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(1,'Beverages','Soft drinks, coffees, teas, beers, and ales','aaa')
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings','aa')
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(3,'Confections','Desserts, candies, and sweet breads','aaa')
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(4,'Dairy Products','Cheeses','aaa')
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(5,'Grains/Cereals','Breads, crackers, pasta, and cereal','aaa')
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(6,'Meat/Poultry','Prepared meats','aaa')
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(7,'Produce','Dried fruit and bean curd','aaa')
INSERT "Categories"("CategoryID","CategoryName","Description","Picture") VALUES(8,'Seafood','Seaweed and fish','aaaa')
go
set identity_insert "Categories" off
go
ALTER TABLE "Categories" CHECK CONSTRAINT ALL
go
set quoted_identifier on
go
ALTER TABLE "Customers" NOCHECK CONSTRAINT ALL
go
INSERT "Customers" VALUES('ALFKI','Alfreds Futterkiste','Maria Anders','Sales Representative','Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321','030-0076545')
INSERT "Customers" VALUES('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Avda. de la Constitución 2222','México D.F.',NULL,'05021','Mexico','(5) 555-4729','(5) 555-3745')
INSERT "Customers" VALUES('ANTON','Antonio Moreno Taquería','Antonio Moreno','Owner','Mataderos  2312','México D.F.',NULL,'05023','Mexico','(5) 555-3932',NULL)
INSERT "Customers" VALUES('AROUT','Around the Horn','Thomas Hardy','Sales Representative','120 Hanover Sq.','London',NULL,'WA1 1DP','UK','(171) 555-7788','(171) 555-6750')
INSERT "Customers" VALUES('BERGS','Berglunds snabbköp','Christina Berglund','Order Administrator','Berguvsvägen  8','Luleå',NULL,'S-958 22','Sweden','0921-12 34 65','0921-12 34 67')
INSERT "Customers" VALUES('BLAUS','Blauer See Delikatessen','Hanna Moos','Sales Representative','Forsterstr. 57','Mannheim',NULL,'68306','Germany','0621-08460','0621-08924')
INSERT "Customers" VALUES('BLONP','Blondesddsl père et fils','Frédérique Citeaux','Marketing Manager','24, place Kléber','Strasbourg',NULL,'67000','France','88.60.15.31','88.60.15.32')
INSERT "Customers" VALUES('BOLID','Bólido Comidas preparadas','Martín Sommer','Owner','C/ Araquil, 67','Madrid',NULL,'28023','Spain','(91) 555 22 82','(91) 555 91 99')
INSERT "Customers" VALUES('BONAP','Bon app''','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille',NULL,'13008','France','91.24.45.40','91.24.45.41')
INSERT "Customers" VALUES('BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Accounting Manager','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada','(604) 555-4729','(604) 555-3745')
go
INSERT "Customers" VALUES('BSBEV','B''s Beverages','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','(171) 555-1212',NULL)
INSERT "Customers" VALUES('CACTU','Cactus Comidas para llevar','Patricio Simpson','Sales Agent','Cerrito 333','Buenos Aires',NULL,'1010','Argentina','(1) 135-5555','(1) 135-4892')
INSERT "Customers" VALUES('CENTC','Centro comercial Moctezuma','Francisco Chang','Marketing Manager','Sierras de Granada 9993','México D.F.',NULL,'05022','Mexico','(5) 555-3392','(5) 555-7293')
INSERT "Customers" VALUES('CHOPS','Chop-suey Chinese','Yang Wang','Owner','Hauptstr. 29','Bern',NULL,'3012','Switzerland','0452-076545',NULL)
INSERT "Customers" VALUES('COMMI','Comércio Mineiro','Pedro Afonso','Sales Associate','Av. dos Lusíadas, 23','Sao Paulo','SP','05432-043','Brazil','(11) 555-7647',NULL)
INSERT "Customers" VALUES('CONSH','Consolidated Holdings','Elizabeth Brown','Sales Representative','Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK','(171) 555-2282','(171) 555-9199')
INSERT "Customers" VALUES('DRACD','Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','Walserweg 21','Aachen',NULL,'52066','Germany','0241-039123','0241-059428')
INSERT "Customers" VALUES('DUMON','Du monde entier','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','40.67.88.88','40.67.89.89')
INSERT "Customers" VALUES('EASTC','Eastern Connection','Ann Devon','Sales Agent','35 King George','London',NULL,'WX3 6FW','UK','(171) 555-0297','(171) 555-3373')
INSERT "Customers" VALUES('ERNSH','Ernst Handel','Roland Mendel','Sales Manager','Kirchgasse 6','Graz',NULL,'8010','Austria','7675-3425','7675-3426')
go
INSERT "Customers" VALUES('FAMIA','Familia Arquibaldo','Aria Cruz','Marketing Assistant','Rua Orós, 92','Sao Paulo','SP','05442-030','Brazil','(11) 555-9857',NULL)
INSERT "Customers" VALUES('FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain','(91) 555 94 44','(91) 555 55 93')
INSERT "Customers" VALUES('FOLIG','Folies gourmandes','Martine Rancé','Assistant Sales Agent','184, chaussée de Tournai','Lille',NULL,'59000','France','20.16.10.16','20.16.10.17')
INSERT "Customers" VALUES('FOLKO','Folk och fä HB','Maria Larsson','Owner','Åkergatan 24','Bräcke',NULL,'S-844 67','Sweden','0695-34 67 21',NULL)
INSERT "Customers" VALUES('FRANK','Frankenversand','Peter Franken','Marketing Manager','Berliner Platz 43','München',NULL,'80805','Germany','089-0877310','089-0877451')
INSERT "Customers" VALUES('FRANR','France restauration','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes',NULL,'44000','France','40.32.21.21','40.32.21.20')
INSERT "Customers" VALUES('FRANS','Franchi S.p.A.','Paolo Accorti','Sales Representative','Via Monte Bianco 34','Torino',NULL,'10100','Italy','011-4988260','011-4988261')
INSERT "Customers" VALUES('FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Sales Manager','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal','(1) 354-2534','(1) 354-2535')
INSERT "Customers" VALUES('GALED','Galería del gastrónomo','Eduardo Saavedra','Marketing Manager','Rambla de Cataluña, 23','Barcelona',NULL,'08022','Spain','(93) 203 4560','(93) 203 4561')
INSERT "Customers" VALUES('GODOS','Godos Cocina Típica','José Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla',NULL,'41101','Spain','(95) 555 82 82',NULL)
go
INSERT "Customers" VALUES('GOURL','Gourmet Lanchonetes','André Fonseca','Sales Associate','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','(11) 555-9482',NULL)
INSERT "Customers" VALUES('GREAL','Great Lakes Food Market','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','OR','97403','USA','(503) 555-7555',NULL)
INSERT "Customers" VALUES('GROSR','GROSELLA-Restaurante','Manuel Pereira','Owner','5ª Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','(2) 283-2951','(2) 283-3397')
INSERT "Customers" VALUES('HANAR','Hanari Carnes','Mario Pontes','Accounting Manager','Rua do Paço, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091','(21) 555-8765')
INSERT "Customers" VALUES('HILAA','HILARION-Abastos','Carlos Hernández','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','5022','Venezuela','(5) 555-1340','(5) 555-1948')
INSERT "Customers" VALUES('HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','City Center Plaza 516 Main St.','Elgin','OR','97827','USA','(503) 555-6874','(503) 555-2376')
INSERT "Customers" VALUES('HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Sales Associate','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland','2967 542','2967 3333')
INSERT "Customers" VALUES('ISLAT','Island Trading','Helen Bennett','Marketing Manager','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK','(198) 555-8888',NULL)
INSERT "Customers" VALUES('KOENE','Königlich Essen','Philip Cramer','Sales Associate','Maubelstr. 90','Brandenburg',NULL,'14776','Germany','0555-09876',NULL)
INSERT "Customers" VALUES('LACOR','La corne d''abondance','Daniel Tonini','Sales Representative','67, avenue de l''Europe','Versailles',NULL,'78000','France','30.59.84.10','30.59.85.11')
go
INSERT "Customers" VALUES('LAMAI','La maison d''Asie','Annette Roulet','Sales Manager','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France','61.77.61.10','61.77.61.11')
INSERT "Customers" VALUES('LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Marketing Assistant','1900 Oak St.','Vancouver','BC','V3F 2K1','Canada','(604) 555-3392','(604) 555-7293')
INSERT "Customers" VALUES('LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','WA','99362','USA','(509) 555-7969','(509) 555-6221')
INSERT "Customers" VALUES('LEHMS','Lehmanns Marktstand','Renate Messner','Sales Representative','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany','069-0245984','069-0245874')
INSERT "Customers" VALUES('LETSS','Let''s Stop N Shop','Jaime Yorres','Owner','87 Polk St. Suite 5','San Francisco','CA','94117','USA','(415) 555-5938',NULL)
INSERT "Customers" VALUES('LILAS','LILA-Supermercado','Carlos González','Accounting Manager','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','(9) 331-6954','(9) 331-7256')
INSERT "Customers" VALUES('LINOD','LINO-Delicateses','Felipe Izquierdo','Owner','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','(8) 34-56-12','(8) 34-93-93')
INSERT "Customers" VALUES('LONEP','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','89 Chiaroscuro Rd.','Portland','OR','97219','USA','(503) 555-9573','(503) 555-9646')
INSERT "Customers" VALUES('MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Marketing Manager','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy','035-640230','035-640231')
INSERT "Customers" VALUES('MAISD','Maison Dewey','Catherine Dewey','Sales Agent','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium','(02) 201 24 67','(02) 201 24 68')
go
INSERT "Customers" VALUES('MEREP','Mère Paillarde','Jean Fresnière','Marketing Assistant','43 rue St. Laurent','Montréal','Québec','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055')
INSERT "Customers" VALUES('MORGK','Morgenstern Gesundkost','Alexander Feuer','Marketing Assistant','Heerstr. 22','Leipzig',NULL,'04179','Germany','0342-023176',NULL)
INSERT "Customers" VALUES('NORTS','North/South','Simon Crowther','Sales Associate','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK','(171) 555-7733','(171) 555-2530')
INSERT "Customers" VALUES('OCEAN','Océano Atlántico Ltda.','Yvonne Moncada','Sales Agent','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina','(1) 135-5333','(1) 135-5535')
INSERT "Customers" VALUES('OLDWO','Old World Delicatessen','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','AK','99508','USA','(907) 555-7584','(907) 555-2880')
INSERT "Customers" VALUES('OTTIK','Ottilies Käseladen','Henriette Pfalzheim','Owner','Mehrheimerstr. 369','Köln',NULL,'50739','Germany','0221-0644327','0221-0765721')
INSERT "Customers" VALUES('PARIS','Paris spécialités','Marie Bertrand','Owner','265, boulevard Charonne','Paris',NULL,'75012','France','(1) 42.34.22.66','(1) 42.34.22.77')
INSERT "Customers" VALUES('PERIC','Pericles Comidas clásicas','Guillermo Fernández','Sales Representative','Calle Dr. Jorge Cash 321','México D.F.',NULL,'05033','Mexico','(5) 552-3745','(5) 545-3745')
INSERT "Customers" VALUES('PICCO','Piccolo und mehr','Georg Pipps','Sales Manager','Geislweg 14','Salzburg',NULL,'5020','Austria','6562-9722','6562-9723')
INSERT "Customers" VALUES('PRINI','Princesa Isabel Vinhos','Isabel de Castro','Sales Representative','Estrada da saúde n. 58','Lisboa',NULL,'1756','Portugal','(1) 356-5634',NULL)
go
INSERT "Customers" VALUES('QUEDE','Que Delícia','Bernardo Batista','Accounting Manager','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil','(21) 555-4252','(21) 555-4545')
INSERT "Customers" VALUES('QUEEN','Queen Cozinha','Lúcia Carvalho','Marketing Assistant','Alameda dos Canàrios, 891','Sao Paulo','SP','05487-020','Brazil','(11) 555-1189',NULL)
INSERT "Customers" VALUES('QUICK','QUICK-Stop','Horst Kloss','Accounting Manager','Taucherstraße 10','Cunewalde',NULL,'01307','Germany','0372-035188',NULL)
INSERT "Customers" VALUES('RANCH','Rancho grande','Sergio Gutiérrez','Sales Representative','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina','(1) 123-5555','(1) 123-5556')
INSERT "Customers" VALUES('RATTC','Rattlesnake Canyon Grocery','Paula Wilson','Assistant Sales Representative','2817 Milton Dr.','Albuquerque','NM','87110','USA','(505) 555-5939','(505) 555-3620')
INSERT "Customers" VALUES('REGGC','Reggiani Caseifici','Maurizio Moroni','Sales Associate','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy','0522-556721','0522-556722')
INSERT "Customers" VALUES('RICAR','Ricardo Adocicados','Janete Limeira','Assistant Sales Agent','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil','(21) 555-3412',NULL)
INSERT "Customers" VALUES('RICSU','Richter Supermarkt','Michael Holz','Sales Manager','Grenzacherweg 237','Genève',NULL,'1203','Switzerland','0897-034214',NULL)
INSERT "Customers" VALUES('ROMEY','Romero y tomillo','Alejandra Camino','Accounting Manager','Gran Vía, 1','Madrid',NULL,'28001','Spain','(91) 745 6200','(91) 745 6210')
INSERT "Customers" VALUES('SANTG','Santé Gourmet','Jonas Bergulfsen','Owner','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway','07-98 92 35','07-98 92 47')
go
INSERT "Customers" VALUES('SAVEA','Save-a-lot Markets','Jose Pavarotti','Sales Representative','187 Suffolk Ln.','Boise','ID','83720','USA','(208) 555-8097',NULL)
INSERT "Customers" VALUES('SEVES','Seven Seas Imports','Hari Kumar','Sales Manager','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK','(171) 555-1717','(171) 555-5646')
INSERT "Customers" VALUES('SIMOB','Simons bistro','Jytte Petersen','Owner','Vinbæltet 34','Kobenhavn',NULL,'1734','Denmark','31 12 34 56','31 13 35 57')
INSERT "Customers" VALUES('SPECD','Spécialités du monde','Dominique Perrier','Marketing Manager','25, rue Lauriston','Paris',NULL,'75016','France','(1) 47.55.60.10','(1) 47.55.60.20')
INSERT "Customers" VALUES('SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','WY','82520','USA','(307) 555-4680','(307) 555-6525')
INSERT "Customers" VALUES('SUPRD','Suprêmes délices','Pascale Cartrain','Accounting Manager','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium','(071) 23 67 22 20','(071) 23 67 22 21')
INSERT "Customers" VALUES('THEBI','The Big Cheese','Liz Nixon','Marketing Manager','89 Jefferson Way Suite 2','Portland','OR','97201','USA','(503) 555-3612',NULL)
INSERT "Customers" VALUES('THECR','The Cracker Box','Liu Wong','Marketing Assistant','55 Grizzly Peak Rd.','Butte','MT','59801','USA','(406) 555-5834','(406) 555-8083')
INSERT "Customers" VALUES('TOMSP','Toms Spezialitäten','Karin Josephs','Marketing Manager','Luisenstr. 48','Münster',NULL,'44087','Germany','0251-031259','0251-035695')
INSERT "Customers" VALUES('TORTU','Tortuga Restaurante','Miguel Angel Paolino','Owner','Avda. Azteca 123','México D.F.',NULL,'05033','Mexico','(5) 555-2933',NULL)
go
INSERT "Customers" VALUES('TRADH','Tradição Hipermercados','Anabela Domingues','Sales Representative','Av. Inês de Castro, 414','Sao Paulo','SP','05634-030','Brazil','(11) 555-2167','(11) 555-2168')
INSERT "Customers" VALUES('TRAIH','Trail''s Head Gourmet Provisioners','Helvetius Nagy','Sales Associate','722 DaVinci Blvd.','Kirkland','WA','98034','USA','(206) 555-8257','(206) 555-2174')
INSERT "Customers" VALUES('VAFFE','Vaffeljernet','Palle Ibsen','Sales Manager','Smagsloget 45','Århus',NULL,'8200','Denmark','86 21 32 43','86 22 33 44')
INSERT "Customers" VALUES('VICTE','Victuailles en stock','Mary Saveley','Sales Agent','2, rue du Commerce','Lyon',NULL,'69004','France','78.32.54.86','78.32.54.87')
INSERT "Customers" VALUES('VINET','Vins et alcools Chevalier','Paul Henriot','Accounting Manager','59 rue de l''Abbaye','Reims',NULL,'51100','France','26.47.15.10','26.47.15.11')
INSERT "Customers" VALUES('WANDK','Die Wandernde Kuh','Rita Müller','Sales Representative','Adenauerallee 900','Stuttgart',NULL,'70563','Germany','0711-020361','0711-035428')
INSERT "Customers" VALUES('WARTH','Wartian Herkku','Pirkko Koskitalo','Accounting Manager','Torikatu 38','Oulu',NULL,'90110','Finland','981-443655','981-443655')
INSERT "Customers" VALUES('WELLI','Wellington Importadora','Paula Parente','Sales Manager','Rua do Mercado, 12','Resende','SP','08737-363','Brazil','(14) 555-8122',NULL)
INSERT "Customers" VALUES('WHITC','White Clover Markets','Karl Jablonski','Owner','305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','USA','(206) 555-4112','(206) 555-4115')
INSERT "Customers" VALUES('WILMK','Wilman Kala','Matti Karttunen','Owner/Marketing Assistant','Keskuskatu 45','Helsinki',NULL,'21240','Finland','90-224 8858','90-224 8858')
go
INSERT "Customers" VALUES('WOLZA','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Owner','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland','(26) 642-7012','(26) 642-7012')
go
ALTER TABLE "Customers" CHECK CONSTRAINT ALL
go
set quoted_identifier on
go
set identity_insert "Employees" on
go
ALTER TABLE "Employees" NOCHECK CONSTRAINT ALL
go
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(1,'Davolio','Nancy','Sales Representative','Ms.','12/08/1948','05/01/1992','507 - 20th Ave. E.Apt. 2A','Seattle','WA','98122','USA','(206) 555-9857','5467',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D20540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0CB0C9000B090900000A009009000000000909A09A900B09000A90A00000000FFFEFFFFFFFFFFFFFFFFFCB9CFCFEFAFFFFFFFFEDFFFEDEFFDEFEFCFFFFDADA00D900009009009000000000090A00090BC0000900900000000A00ACA0E0E0E0F0E9CA9000A9CB0C00009090E0000009090B0000D009009000000900009A000FFFFFFFFFFFFEFFFFFFFFFCADEBDBDFDFDFFFFFFFFFEFEDFFFEFFFFFFFEFCAF0C9A0A0D00009A0000000000000009090A000B009A9000090000900C0900900900FA90ADA00090B00B000000009000090000009009A9B009009A00000000C000BFFFFFFFFEFFFFFFFFFFFFCF9FBCBEFBFFEBFFFFFFFEFDFFFEFDFFCFFEFFF9BC0B00909000900009000000000000900000909009A0C0B00000B00009A00E0E0E0EFCADA0C90000CB009000009A9A09A000B0090090900D00A9090009090A0000FFFFFFFEFFFEFFFFFFFFFFF0F0FFDFEDADFDFFFFFFFFFEFEFDEFEFFCFDEFEC0F0C9AC00A00A09000000090000000090A900A00009090000A00000CA00C09009090F900DA009A9000DA00D0000009C090000090B000A9A9B090000000AC00000BFFEFFFFFFFFFFFFFFFFFEDA9DF0FF9FFFFFFF0FFFFFFFFFDFEFFDEFFEFDFF9A9A0090909009000900000000000090A9000909A9000A90D090000A9000B0E0CACA0FAE9A9CA000A99A90B00000090B000909000090090D00009A900009000009FFFFFFFFFFFFFEFFFFFFEDADEBCFDEFFDADADFFFFFFFFFFEFEFCBEFDEDBEFCAD0D0E00A000000900000000000009009009000000009000A000090000000009A900DF090CA9009090E90900B00090A9009000090B009A09A90909000090B0009FFFFFFFFFFFEFFFFFFFFFD09E9CFBFBF0FFFFFEFFDEFFFFFFFFDFFDFEBFEFDA90B0A90900A9009000000000000000000000090900090A909000A0000ACB00B0C0E0AF0F0BC09000009ADA9090000090F0000900909009909A9A0900000000000FFFEFFFFEFFFEFFEFFFFEA9E9FBFDEDFFFDFFFDFFFFFCFFFFFEFEFEDFCFDEFC000D0000900000000000000000000009009000A0090090000B00900009000C00A09C0FF0F0BCA0B0A00090F0A9A900090B0900900090000B0D090A900009A000BFFFFFFFFFFFFFFFFFFFFD0F9E9F0FBEF0FAFCBFEFFDFFFFFFFFFDFFAFFAF9EFBC0A9C0A00909000900000000009000000000900000000B0000000A000000B0C90A00F0B0F009C0009000B009C000B00AD000B0099A909A90B00990000009C00FFFFFFFEFFFEFFEFFFFFCA90F0FCFFDFDFFDFFFDFDBEFFFDFFFFFEFCFCFDFEFC00900A9000000A090000000000000000B000900900000900909AC90000A9000A0C09CF00F00DA0090000909F0B909C0099A09009A00000090909A0090009A09FFFFFFFFFFFFFFFDFFFEE99CF0FDBE9EFAFCBE9EFBEFFFDEBFDBFFFFFFF0FEDF0A90AD0009009090000000000000000090090000000000009A00900090000DA0900A0AFADADB009AC900000009000A9009AD00090090909BCB09C9900090009AFFFFFFFFFEFFFEFEFEFFDACB0FDADFFBDF9FFDFDFDFDFFFFFFEFFFFFEFCF0FBED0E9009C0000000000000000000000000000000900000000009A00000090B0C00E9C00FDA90E9AC9A0A90A90A9A909AD009B900AD0A90009090B0A90000090BDFFFFFFFFFFFFFFFFFFFC09AD0B0F0BEDAFE9EFAFBEBFDAFDFFFDBFFFFFFFFCFFE9009A0B00000090A90000000000000090090000000000090009B000000000B0000AD0FADEB9E9000D00090090D0B099A9A0F09009009090B09099000000009EFFFFFFFFFFEFFFFCFFC0F0DAFCF9FD9FDF9FF9FDFDFEFFFFEFDFEDFFFFEFCFFEDE9E09000090000090000000000000000000090090000000099C00900000F000090000FDBADCADA900A9000000B009CA9C099A00B0090A9E900B00A0009009FBFFFFFFFEFFFFEFEFFC0B09AD09ADEBEFE9EF0FCBEF9FBDFFFFFFFFFFFFFFFFEFF000900090000900000000000000000900900000009009009A0A9000000900000ACA0AFAEDABF9ADA900DA9C909E9A99A9C9A9990900900909909900000000BCFFFFFFFFFEFFFDFFCBC0F0DA9EDBFDF9FF9DFBFF9FEDFFEBDFFEDBFFFFFEFFFFEC09ACB00000000909000000000000000000900900000090009000009000A0000000D0FDBEDACFBCBCBA09A0A00909AC9BA99E0A9A90090B00BCA9000000009BFFFFFFFFFFFFFEFF00909E9CB9EDAFCF0FEBCF0FE9FBCFDFFBFFFFCFFFFFFFFFFFE09009000000A0000000000000000000000000000000009A0909000090900000000BFFE9FDBC9E9BC900909900B09B0D9A0999C00090909A0909000090090FFFFFFEFFFFEFFFFC90A900B0DADBDFBFFDBDB9FDBFCFFBFFEDFDBFFBFFFFFFFFFE900B0C009090900900000000000000009000000900000AD090A0009A000000909A09F9FFEBEBEBDADBAD0BCA09C0BCB0BC9B00A9090B0F0990B000000000B9FFFFFFFFFFFDEFCA0C9CAD0DADBEBEDADBEDAFCBFCBDBCFDFFEFFCFDFFFFFFFFED00009A9000000090000000000000000000000000000090000090900000F0900000DAFEADBFDBDF0FAD0A9090B0B0090B0BD0B990000090000900000090090FFFFFFFFEFFEFFFD09A0090B0F0FDF9FFEDBFDFBCBFFFFFAFFBFFFBFBFFFFFFFFFFE09000000000900000000000000000000000000000000900900000909000000A9A9AF9DADAFCBFBCBF9F0B0F090B9A9C90B90E909090B909B0900000000090BFFEFFFFFFFFEFE00909AD0BCBDAFE9FDBCBE9FFDADAFDF9FDFDFFCF9FFFFFFFFFC000090909000B009000000000000009000000900009A009A90000000B09E0900C90FEADADFBF0DBDAF0BC090F90000B0B0DB90B00090000090B0000000009FFFFFFFFFFEFFF090C0AC9ADBDAFDBFEBEFFDFF0FFFFDBFFEFFBFFFFEFFFFFFFFEB000000A0000000000000000000000000000000000B090000009009A9000000090A9F0DFAF0FE9EBEBDBE9B0B0BC090BD09A9A9009A90090B000000009009BFFFFFFEFFFFDFC000A9090F9EFBDBEDBFDF9FE9FFBDBEFFFDBFCFF9F9FFFFFFFFD000000090009090000000000000000000000000009C0000A909A0000009009A00A9CFEA0D0FDBFBC9CADBF090D0B00990B09B9E90090B009090900000000000FEFFFFFFFEFEF00090DAF0F9EDEDBFCFBFE9FFADFEFDFCBFFFFFFFEF9FFFFFFFE90000900000000090000000000000000000000090B000009000000B0F0A0000F0D0BFDFFAFAFEDBFBF9E9EF0BA9ADA0A9C9AD09A0900090000000000000009BDFFFFFFEFFFFE0900A909F0FBFBFDBFDEFFFFDFFBDFBFFFE9FDBDF9FEFFFFFFFFC090000090000000000000000000000000000000F00000909A9090090909AD000000FBEFDFFDBFE9E9A9B9BD09DB90D09B090B909009000B090900000090900FFFEFFFFFFFED000D0CBCBDADEDEFFFFF9FDAFF9FFEDF9FDFEFEFFFF9F9FFFFF9B00000000090090000000000000000000000000B090009000900009F0AC00000A0BCFCF0BEDAFF9F9ADF0FFA9AB00B09E9A9A9E90090900900000000000000FBEFFFFFFFEDF009009B0F0FDFBFBFCBDFFEFFDEFEDFBFFEFBF9FBDF0FFEFFFFFE00000000000000000000000000000000000009F000000009BCA900B00909A0AD0D09FA9EC9AF9EF0ADBAD0BDF9C9F0B09090999A900A09000009000000000909FFFFFFEFFEFC00B0E0F9FFAFDFDFFFFAFDBFFBDFBDFCF9FCFFDFBFFBDBFFFFFD9A0000B0000000900000000000000000000BCB0B000009A0090009E9E0000900A0A0FFCBFEDAF9BFDADBBF0B0BB099DA9F0BCB0D0009009090000000000090B0DFFFEFFFFFF000099F0F0FDFAFEBDFFDFFFCFFFFFEBFFFFBDEBCF9FCBDADFFFAD0000000000000000000000000000000000090D000090090B009F09090B00C090D09FEBFCBADBEF0BDADA9FDBC9FA0B90090099A909000A00000090000000009AFEDFFFFEFC09090E9F9FBEBDFFFFBFFFFFFBDE9FFDF0F0FFBDFBEFBFFDBFFFF0900000000000000000000000000000000B9A9A00090090900FA0BCA0000B0B0E0A0F0F0BEDFEF9BCADADFA9A9A9099E99B0B9A900009009000000000000009ADFFFFDEFFDA000F0BDAFCFDFFF9FFCFFE9FFFFFFF9EBFDFFADEBFDBCBCBE9EF09A00009C000000000000000000000000090C0900900A900B0F909000900D000C090DFACFEDAF9F9EBDB9A9BDBDBDB0B9A90990D0B09009000900000000000909ADEFEFFFEF009009F0F9FBFCBFEFFFF9FFF9FCF9EFFDAF0FDBFD0FDBDBD9F9FF009000A00000000000000000000000000B090E9009090B9C9A00E090C00A000B0CB0FDB0F0F0FBE9CBCF9EDA9A9ADBCB9ADA0B0909A9000900000900000000009BFDFFFFFFC009ACBDAFDEBFFDFBDBFFFDEFFBFF9FAFDFF0F9EBFBEFEFADADBE9000090000000000000000000000000009A090000090B0ABD090900B0A900F0CB0E9F0EDAF9E9E9BBCB9EBBDBDBDB09AD0999090090009000000000000000009A0FFFEFEF00000DBCBDFBFDF0FBDEFFFFBFFDEDFEFDFADADFE9FCBDBD9FBD0BD0B0000CB0000000000000000000000009C90A900A90BC9D00A000B0009C0B09AC090F0B9ADADBF0BCBBCB9DADA9A90BDA9B0A9A09A00900090000090000000909DBEFFFFDE090DB0FBFBEDEBFFFFFFDADFDFBFBFBDFADBFFADBCBDADBEF90BD009000900000000000000000000000009A000900999A90B0A090B9C90F00BC0AC0B0EFB0C09ADA9FDBFCB9EBB9BDBDB90B9099C900990090000000009000000000ADFEDFEF0000A9F0FCFDBDFDFDFBFFFFFBEFDFCFADFBC9ADADBCBF0F90FBCBE9AC000AC0000000000000000000000009A090E90A09E900900BCA9A00B0090090009FDBB0F09F0B0B9BCB9C9E9B0BCB9CBDA9B0900B00090000000000000000090A9FADFEF0090E9F9FAFFBEBEBFDFFFFFFDFEBFDFBCFFEDBDADBCBDAFD0F90909000090000000000000000000000009009090099E900F00909909C900000A9A9E90FBCDF0BE9BDBDADB9E9BBDADB909BB090900090909009000000090000009090FEDFED009ADBCBE9FDADFDFFFEFDBDEDBFDFCBFCBCBDADADB0F9E99AF0BDA00B009000000000000000000000000900900A9B00909B09ADA0E00A00D0B0D0C0000F09BA9F9BCBB0F0BE9BBCBF9B0F9AD90B009090000000000090000000000009E9EF9E000D9ADBDFDAFFFBF9FFBFFFFFFFAFBFCBDBDADADACBDADBCF99E0D090000A0000000000000000000000000B0009000B09A000000900000000C000B00A9FFAD9CB0F9ADBBDB9F0DBF9ADB0B90B99A9A00B09090090000009000000090B9E9EF009A9ADBCBEBFDBDEFFFFDFFFBFFDFDE9FCBE0F9E9DBCB9F0B0DA99A000000D00000000000000000000900900009A90900000090900909090B09A0000900F9FABBDB0F9AD0BCB9B09AF9A9BCBBCBC90900900000000000900000000000009E9CF009E9ADBD9E9FEBFDFFFFFFCFDAFBFFFAFDBDADBE9CBCB0F0BE9E9DA09000000000000000000000000000A9090000009000000A000A000A000009000090FF9FDFBE9BF9BF9B9E9FBD9BD9CB9090B090900090009000000000900000090B09EB009C90F0FEBDFBDFDBFFBFF9FFFFDFCBCF0F0F0F0DA9E9CB0D0909A09000009A000000000000000009000900000909000000909000909009000000090DADFAFFFADBDADBF0F9E9BADBBE9AB09F9B90B0009B009000000009000000000000DAD0D0A09ADBCBDFADFBEFFCFDEFFFF9FEBDF9F0F0F0DA9E90BC9ADA9E0900000000000000000000000000009A009A9000000000000000000000000900900B0BF9EBFFF0BDA9FBDB9AD9BCF9B99B0B09E9009000000009000000000000000909ADA00090F9ADBDADFAFDFFFFFFBFF9FEBFDBEFCBDAD0F0F09E90F090990F0900009000000000000000009009090000000000000900009000000009A090A9BDBFFBDF9FFF9FFBDBEBDBBCBB9F0F0DB9B090900909090000000000090000000000009E00090CBCBFFBDFBFBDBFFFFFFEFFDFADBCBCBCBA9E9E90F09E9E0B000000000000000000000000000000A0090090900000000090009000900009A90BCB9FFEBEFFB0FA9FAF9FBD0BF0FA9B9A9E99A9A90009A000900900000000000000090BC909AC9B0F9E9EBFDEFFFDFFDFFFFDEBDFEBDBCBCDCBC9EB0DA90900D0B009000000000000000000090090900009000000000000000000000A909090F0BFEFF9F9BF0FB9FFF9FBCBBF9F99F9E90B9E90900090009000000000000090000090AC000009A0F9E9FDFDBFDFFFFFFF9FDBFDFE9DACBCB0A90B0D0F009E09A90000000000000000000000900B0900900000000000000000909009090B0F0B09F9F9FBEFC9F90FB9BF0FB9F9E9BFA99F99090900900090000900000000000000000909000900D90F9FAFBEFFBFFFFFFFFFEFFAF9FEF9E90F9E9CA0B09E090000090000000000000000000000000A00090000900090090900000A90B009090DBFBEBFFDFBFEBFF9CFDBF9FADBFBCBDBA9ADB0B0B009000909000009000000000000000000009A0BDADBDFFDBFFFFFFFFFFFFFDFFE9F0F0FA0D0A9D0CB0900B00900000000000000000000000090909000009000000000000900900009ADA9A90F9F9EFA9EDBDB9EBBAF9ABDBE9DB9B0DB9A99C9090009000000090000000000000009090000A90D0BF0FBCBFDFFFFFFFDE9F9EF0FF0F0F0DE9AD0A9A0F9E90D000900000000000000000000900000000000000000000009000B00909E909C9AF9E9E9F9FFAFBEFDBDFDBFDBF9FBE9E9B0BDB09A900090A909090000000000000000000A00909C9AFC9FFDBFFFFFFFFFFFFFEFF9FDADAD0DA9AC9E9C9C90000A090000000000000000000000009A900009000009000909000090090B0090B0BF9E9ADAF00BDBF9BBEBFADBBDAB9F9B9E9DA90B090090009000000000000000000000090900000B0D9BE9AFFDFBFFFFDFFFF9F9EFAFDADA9A9C0B00B0A9A0BD090000900000000000000000009000009000900900900000009A090A9C0B0F0F90F0BDA0BF0FADFFDF9F9FBCBFDBE9E9B9A99F90B090A90009009000900000000000000000000090B0E9FFDBFFFFDFFFFFF9EFEF9CDADBCF0DA9C09E0D0C9C0A009A000000000000000000000000090000000000000000009009009CB090909AFB0F0F09F0B0FFBFBFEBFBDBF0BDBBDBC9F0B0B0D0B09009000900900000000090000009090009A9C9BDADBEDBFFFFFFFFFEF9F0FBBDAF09E0D0A9E09A0B0B09C90090000000000000000000000900000000009009000000A0900B90090B0BBD9CB0F09EF9ADB9FFCB9FF9EBDBDBEDB0BB099F0909090900009009000009000000000000000090009ADADBDFFFFFFFFFFFDF9F0FBCDAF09E0B0AD00900D0D0D00A0900000000000000000000090009000900000000000909090A900A9A9C9FDAFA9BCBE9F0F9FE9BFFF9EBDBBEBF9BF909F0B09A9A9000909000000000000000000000000900009F0F9FBEFBFFDFBFFF9FBEF0F9CBAD0DA0D0D00D0ADB0B0A0B0900009000000000000000000009000000009000909000000090E9090DA9A9AD09FCB9CBE9AF9FFF9AFF9FBDBDF0F0BEDA9BCB90990B90000909000900000009000000090000000090F0DBDF9FBFFDFFFED9FF0F0D0F0BCB0A0F0A900C0C90D0CA9C00000000000000000000000000000000000000000090B0090A9CB09ADBDAF00BCA9FB09FE9A9FFDBFE9E9FBB9F9B9BC9B9CB00900B090A0009000909000000000000090009A9AD0FBFAFFFFCFBFCBDBE90BCB9E9AC9C9C900D0E90B0A9A9090A90000000000000000000090090000000009000B009000900090B90BDA9A90BD0F9FFD0BE9ADEBDBEF9FBFBE9F0FCBC9A90B0A99C90900909000000000090000000009000900D0BFBCFDFE9FBFEDBFDAD9EDA9E09C90B0B0CB0B00B0C9C00A09000000000000000000000000000000000000090000000900B90B0CBC0BCBCBDAF9FFFB0BDBDB9EBFDBFADBDBC9B9B90B9CB99DA0B00009000000900000000000000000000009AD9ADBBF9FFFF9FBDEBDBE9A9C9DA9E0C0CB00C090C90A0F0D0E9009000000000000000000000000000000900009090900A90E9C9B0BDB9E9FEDFFFFFF00ADADBDBEBDF9FAFFBCBCBF90B90F09909090009000900009000900000000090009009AD9FCFEF9F9FFFFF9FF0DF9EBCBC90B09009A90E90AD0900A900B000000000000000000000900000000000090000000B000909A09F0ADF0F0BFDFFFFF0DBCBF0F99FBEF9F9F9BF9090F0B909A090B009A009000009000900000000000000009E9AF0F9F9FFFFFDFFFE9FB0FD0F09E9C9A0D000090E90A0909090C090000000000000000000000000000000000B000B0009DA9A99E9F9A0F9FDFFFFFFB0B0BF0FBEFADBDAFBCBE9A9EB909C9AD9A90090090000090000900000000000000909A90F9FBFBFFFFFFFFDF9FEDFF0BDBE09A0C9A0D0B009000DAC0CA0090000000000000000000900000000090900900900009A009C9E9A9EBDBAFFFFFFDFF00DADF0F9BDBFBF9FBD9BDB9DA90B0900909009009000000900000000000000900000D0F9E9FDFFFFFFFFFBFF9FBCBDEBC9F0D0BC09A00DA00F0009A90B0A0B0000000000000000000000000000000000000909090B09A9AD0BDADF9FFFFFFFF0A9FA9F0FCBDADBE9FBE9E9A99F090B9BC0B09A900909000009090000000000000090B0ADBFBFFFFFFFFFFDFFEDFFDBDEBCBDAD09E09C0090009A00000C90C000000000000000000000000000000009A090000A00909A9F0BBCBDAFFFDFFFFFF09F09E9E9BDAFBF9F0F9B9BDAF09A900099000900900000909000000000000000000009DBDFFFFFFFFFFFFFFF9F9FADBDDF0F9ADA90E9A90CB00C9ADA900090900000000000000009000000000090900000909090BC90F0F0D9FA9FBDBFFFFFB09E9E9A9BFAF9F9EDBFADADA999A9C90B9A09B009A0000900009000000000000009099FBFFFFFFFFFFFFFFFFDFFEFDFFEB0FDAD909E900CA90090000000A9A00000000000000000000000000090000009000A000B00ADA9E9ABE9FDFBEFDFFDF00BF0BDAC9F9FBFBBCBDB9B9CBC90B09000900909009000090900000000000000000EBFFFFFFFFFFFFFFFFFFFF9F9FADBDF9ADACF09ADA9009E0B090909C0090A00000000000000000000000000A90900909090D0909ADB0BDE9AFB9EDBFFFFF000BDA9FBCBEDBCFBF9AFCB0B9A909B0909090B009000090000900000000000000099F9FFFFFFFFFFFFFFFFFFFFFFDFFCBDE9F9B0F0909CBC090CBCA0E0900AD090000000000000900000000009000000000000B00BCB0F90BDBDADEB0E9FCBE0009ADADABDBBFB9F9FDB9F90BD0BC090F0009090A90000090B000000000000000BBFFFFFFFFFFFFFFFFDFFFDFCF9EBDBDADF0FCD9ADADA09BCA9009090A09000000000000000000000000000000009009090B0009090F00F9ADE9A90F9EBFEB009ADBDAD9FADF0F0FA9BCB0F90B909B09099A900900009000000000000000000BDFFFFFFFFFFFFFFFFFFFFFFBFBFDDADEDB0FDB0AD09AC9AC090CBC90009C00B000000000000000000000090900900000A00090900BCB0BB0F0B0F0F0FEFC0F0000A0BDBE9FFBF9F9FADBD90B090B0090B0090A9009000B09000000000000009BFFFFFFFFFFFFFFFFFFFFFFDFDFDAFF9FBCF0BCBD9AD0BC90BCA900A0F00A90000000000000000000000000000009009090B000A090B9C9CB0F0F09AB0FDBFE90BC900BDBE9FDAF0B9F0BBE99F0D090B0090909090000900090000000000009FFBFFFFFFFFFFFFFFFFFFFDFFFFCBD9FE9FBDF0FCBE9AD0BCB09D0F0D00900009000000000000009000009000000000009000909C0B0DAB0BCF0B0BC9CB0ADAB0C0B0A9E9E9FBFBDBDE9F9C9BE9B0B09090A90B09A900000900000000000009FBDFFFFFFFFFFFFFFFFFFFFFFFFDBFFEF9F0FA9F9BC90DA9CB0DA0A09A0BCA9CA00900000000000000000000900090009A0A900009009A9CBCB9CBC0B0B0FDADF00BC0DBCBFBDAF9EB0B9B0BF09900909009900909000090900000000000009BFFFFFFFFFFFFFFFFFFFFFFDFF9EBFC9F9EDF09FCBC9ADA9CB0DA9E99E0D009009CA0000000000000000009000000000900090000B00BCBCB0F9EA90B0E9E9A9AF0000B00B0DAFDFF9FDBE9F90BCA99A9C9A009009009000000900000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FF0F9A9DE09ADADBC9F0DAD09CA09ADACB00090000000000000000000000009000009000090009090F090E990F0F9B0F0F0F009C0BC9A9FBFBFFBE9F0BF9B99A0D0B0909A900B00900900000000000009BDBFFFFFFFFFFFFFFFFFFFFFFF0FF9E9F9EDDAB9E90B90E9A0B09ADA9C9E9090C9A00000000000000000000000000000B00A900009000B0B0E9BCACA9F0E0F0B0BB000A90A09E9CBDF0F9F9BD0F0DAD90B0900090900900000090000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EBF0F9ABD0F0F0C0F9CBD0DADA9E9A9CBCB9AD0DA90000000000000009000000009009000900A09A0D0BD0A9DB9E0B9F0BC90F0A09CB0DA9EBFAFBDBFAF0B09A9B0B09A9090900900000090000000000BDBFFFFFFFFFFFFFFFFFFFFFFFFFDBDAD9C9090D0F009E9B90AD0FADA9C9A9CA9000C0B0000000000000000000000090000000000000090090BC0A9DA0E9F9E00B0BEFC900BC0BCB9F9F9FBCBDBDB9F9090909C90000B0090009000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9A99A090909F090CAD9AF09E9E9ADA09E9E9A9009E900000000000000009000009009009000900090BCB0D0A9F9ADAD0F0F09B0AC90B0DA0DAF9F0FBCBCBCB0F9E9ADA909A9009009000090000000009DBDFFFFFFFFFFFFFFFDFFFFFFFFFDBE9C90D9D09A0009E9B0AD09E99E9E90DBC9A9C9E9E00A000000000000000000000000000000000090A009CB09DA0FBF00B0B0F0D00B00F0A9FA9FAFBF9FBF9F9F0B909090BC9090090000000000000009FBFFFFFFFFFFFFFFFDBFFFFFFFFD9FC9F9BDA90BC9D09000C9C0F09E9F09E9A0BCBCA9009090D00000000000900000009009000000900000909A009A0BDBCA9E09E900A09FCB0099E9CBF9FDADBDB0B0B9E90B0909000090000000000000000BBFFFFFFFFFFFFFF9FBFFFFFFFDBDFF9F90D090D9090000909A9B0BCB0F0F0F0D0909DACBCBCA0000000000000000000000000900900009A900E90DA0F9E9E9F09E90F0D000B0F00A9BF9FFAFFBDAF9F9CB9BD09A909A9009090000900000009DFDFFFFFFFFFFFFFFFFDFBFFFDBDB99C9E909090090909000090C9CBDF0F9E90BCADA009000909C00000000000000000000900000000900000900B0999E9E9E0DA9A000B0009E9E90E9FADBF9FABDBE9A9CB0B9090B090900000000000000000BFBFFFFFFFFFFFFFF9FAFDFFDBD0D009990F9CBBC9E0909090090A90ADBCBDBE90D0DAD0F0F0A0B00000000000000000090000000000009090A909A0E90F0B9A0F0C900DA0009E9AC9A9FBFDFBDFADBDF9B0F9CB090900009000000000000009BDFFFFFFFFFFFFFFFFFDBFF90009A9FBEFFFEF9CBE0900000000090F9ADBCBC9E9A9A90B0909D000000000000000000900009000009000000090BC909ADAD0E9C090000A9A00B0BDB0BCBDEBBFFBDBFA9B099AB090DA9090000000000000000FFFFFFFFFFFFFFFFFDADAD090099BF0FFFFFFF9AFF09E0F00000000090F9ADA9A9C9E9CB0CBC0A0F000000000000000000000009000009009090F0B0DAD0F0E90B0E0000F00009ADADE9BFBFFDF9EBDB9F0F0BD9DA9090009090000000000009BDBFFFFFFFFFFFFFFFFBDA900000FDFBFDBFEBC9E9E0900000900000ADAFDBDCD0B09A9CA90A9C90000000000000000000900000090000000DA090DA09A9009A0C9000009FA90C09A9BC0FF9FAFF9FADFB9BD0BA99A909900000000000000000BFFDFFFFFFFFFFFFFF9FF9CAD0090B0DAD9BD0B09090090090000090909ADAABCBCBC9E9DAD0A9E9A0000000000000000000900000090090B090A90909DA9E0D00000000E900A9AC9E0BF9FBFFDBFFDBADE90B9DBC90B0A9000000000000000BDBFFFFFFFFFFFFFFFDFF9E99909090999000090900090009000000000BC9ADD9AD009A90A9A9C900D000000000000000000000000000000A000F09ACB0A0C900A0009009B0A90009A0BF9EFFCFBFF0BD9FB9BD0B0B9090900900000000000009FFFBFFFFFFFFFFFFFBF0FFFFFF99090F09BD99C900900990009A90DAD00BDB0AD0BDBC9E9C9E0A0F0A00000000000000900000090000009090909ADB090DB0B0C9000C9EF90A9ADAD000FB9FBDF9FFFAF9BCB0BDBDA9E909000000000000009B9FDFFFFFFFFFFFFFFDFFBDBFFFFFDF99BC909A909D0BC0C90BC0DA090BD0BCBD0F000A909A099C909000000000000000000000000000B0000A0BCB0000B0C0090000B0F00FA009A9AC909EFFFBFE9FBDBCB9DB0B9A90900B000000000000000FFBFFFFFFFFFFFFFFFF9FFADFFFFFFFFFDBDBC9FDA9C9B9ADADB00D0E00AD0BCB09F9C9E9E9E0A9AC0F0000000000000000000900009009090909ADBC90C9A9CA0A90CBCBF00B0A00A9A00B9FADFBFBDBFBDA9AD9ADB9A9090900000000000009BFFBFFFFFFFFFFFFFFFF9FFBFFFFFFFFFFFDFF0BDFBDE0D0900DA0B09F9ADCB0F000B0909099C0D0B0000000000000000090000000000000009A9A090A9AD0B090CA90A090B000B0D000B0FFFFBDBCBF9CB9F99ADBD090D0000000000000009FFDFFFFFFFFFFFDBFDBF9FDBDFFFFFDFFDFFFB09FCBCB099E9E9A9AD0F00DBB0D09E90D0F0F0E0B0B0C000000000000000000000009009009A9E9C909A9000BC0CA0F0E90FA00A90B0BC00DBFF9EFFFF0FBDA9ADB9B0F909A909000000000009BFFFDFFFFFFFFFFFFFFDEBFFFFFFFFFFFFBFFC9E9BDBC9E0900D0D09A9DBAC0F9E99E9A090090900C90B00000000900000000000000000000909ABCB0C00F09A9ADFAF00B0DA90A00B0B0A00BFF9F9FBFDA9F99ADADB09A900000000000000009FBFBFFFFFFFFFFFFDBF9F0F9FDFFFFFFFDFFFF9E9F0B090A9B0B0F0DA0D9BD0A9E909CB0F0CB0F09AD0000000000000090000000000900900BC90909A99000D0AFFDFBC0FA90A90B0DAD09ADEBFFEBDFBFF0BC9B9BBDA909090000000000009FDFFFFFFFFFFFFFDFBFDF9DBFFFFFFFFFFFFDBD09F0D09E9C0C90D0B0DB0F0BFD090F090D09A9C09E00BC0000009A0000000000000000000090B0F09E90A09A0BDFFFECB0B00A00A00B0BCA09BDE9BDFBFF9BDBB0DBD0909A900000000000009BFBDFFFDFFFFFFFFFFDFADBFCBFFFFFFFFFFBFCBE909E0000B9AD0B0DB0F09C90B0F00BCB0A9C0B009F00090009000000000000900900090BCBDA90F09AC90CBCFFFEDBCACB00B09A9AF0F0F0FBFFFA9E9FFEB0DBA9BF9E9009090000000000BDFFFFFFFFFFFFFFFDBFBDBC9BDBFDFFFFDFFFDBD9E9009090000B0D0BCB9CBBCBC90BD090C90B00DA0009C0090A000000000000000009000090A9CB0BC0BCB00F0FDFACB0BCB00A00090B0F0F0F9FEDBFFBF9FB0DBCB09909A00000000000000BDBFFBFFFFFFFFFFFFDF9FBC9BDFFFFFFBFDFBFF99E9000090C90B0D09CB9C9BDBCBCADA9BC0D0B09E90A909E09C00009000000000000090B0990BC9CBC0BCB0BF0E9F9E0EB00A0A9A0A0F09AF0FBDBCB0F9FBDBB99FFB0B0990900000000009BFFFDFFFFFFFFFFFFFFFF9DB9CB9FBDFD09B9FDB0F9000000090009A0F90F9E9E99CB909C09B0090C90E90B00900B000000000000000000009E9E90B009ADA9E00BCA0A09900B0900009A9A009FADAFF9FFFFDAD0FFB90D0900000000000000BDBDBFFFFFFFFFFFFFFDBDBE9CBDFFFFF99F9FDB0FD0E99A909A90DBC990F9E9CB9EBD0CB0B0C0F0A9A09000CB09F000000000000009090909E9A90B0CBCBCBCB0B0B0F09AFB000A0A0A09AC9E09FFFDBEDAFBFFBF9A9FB9AD0B0909000000009BFFFFFFFFFFFFFFFFFFFFDF9B0909FFFFFFFFFFDBFBDAC90F0DA0009F0F0F9FBDE9D0B9C9CB090C9009CADA90E009000000000000000000B09A9EBCBE9ADACB0A0CA00A000FA9009090A09A09A09AFADBBFDFFBDBF9F9E909009000000000009DBDBDFFFFFFFFFFFFFFFFBDFDF9F9FFFFFFFFFFFDADB9AC90B0D09A90BDBCBC9ADA9FCB9A9CB0B009E090090909E0F000000000000000900BC909CBCBCF0B0E9CB09A90B0F00A0A0A0A90A0B0090F9FFFDFBFBDFE9FBE9F9A900090000000000BFFFFFFFFFFFFFFFFDFFFDFBF0F0F9FFFFFFFFFDFFFCD99E9CB009C9E9ADBDBFDBDBA9C0DB09C09E090A90CA09A09009000000009000900909ADA900FFACF0B0A00A00A0090B00900900A090ADAF0FBCBFAFFFFBDBDBDB90909A900000000099F9FBFFFFFFFFFFFFFFFDFFBFDF9F9FFFFFFFFFFFFDB9B0E9CB00B09E9FDADAD0BCBC9DBDB0CB0B090B0D0A909E9D0F9E000000000090009A9ADA9ACBDADF0B0F0B0BCBCB0FA0A0A0A0A090A90B09ADBFFDFFF9FFBFAFBF0B0900090900000009BFDFFFFFFFFFFFFFFFFFBFDFBFFDBFFFDFFFFFFFFFEDE99AD0C90DA9DA9FBDBFDF9FEBCBC9BC9CA9C000D009090A90000000000000000B0D09A9C0BDADA0FCA00E9E9E9EA0F909009000A00A00A900CBFBF9FF0FFF9FDBFDBC9900000000000ADBFFFFFFFFFFFFFFFFFFDFFFDFBFDBDFFFFFFFFFDFDBDE09A9009ADA9F0DAD0B0F099DB0F0CB0900BCB0A9CA00B0F090F000000000090009AD9ABDAFCADA0BDBB0F0FAFDFF0A0A0A0A9A09A09A9E0B0BCFFFFBFBFDFBBF9B09A09090000000099FDBFFFFFFFFFFFFFFFFFFFDFFDFFFFFFFFFFFFFFFBDA9DAC0B0BC90F0FBDBFDF9FFE9E90F90DADA090900A9C90D0BCB000000000900090B0BED0BF00900F0A0CB0F0D0EAB00B09009000A09A000900FFFBFFFFDFBF9EDBCB909000900000009FBFFFFFFFFFFFFFFFFFFFFDBFFFFBFFFFFFFFFFFFFDE9DA099C9CBBFF9E9DADABCB090F9F9ADBC909CAC00900009AD00090000000009A0B09F9AFC0D0EBDA9ADBACBEAFBDCB00A0A0A0A090A0B0B0E900FFF9FFBFFBFBBF9AD09090000000009BFFFFFFFFFFFFFFFFFFDFFFFFBDFFFFFFFFFFFFFFFFBDAD9E00B09C90F9EBDBFDBDFFF9E9AD909ADA099A0090B0000BDA00000090000900FADAD0B0A90C0F09A0DB09000ABCB09009009A00900B0B0EB09AFFFFFBFDFDFBDB9A9A0909000000099FFFFFFFFFFFFFFFDFFFFFFDFFFDFFFFFFFFFFFFDFCBDA09B9CBCBF9E9DADF0FDA9DAF9EDAE9E90DA0C900000909009C900000000900909FADAC0090B0B0F09A00E0BC909A00A0A0A0A00A0A9A00B00CADFBFFDF9FBF9ADBC99090000000009BFFFFFFFFFFFFFFFFFFBFDBDFF9FFFFFFFFFFFFFFFFBDADBC0CB0B09E9EBDB0F9ADFAD9E9BD9E9ADAD0B00000000009A9A0000000000B0DB09A9A90CAC0F00BC9AD0B0A0AE90A0B090B09A909A09ADADA09BDFBFBFBF0BFFB90A900909000009CBFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFDFCBC9009B0D0DE9F9DBCFDADFA9DAF9E9E9AD09A90C00000900909C0000000090909ABCBC000A090B00B00A90B009A99E09000A00A00A0A0B0B0A9000EBFFFFDA9F99B0F99090000000009BDBFFFFFFFFFFFFFFFFFFFDFBFDFFFFFFFFFFFFFFFFF90F0F0C9ADB9E0FEDB0BDA9DEBD0F9E9ADABC9E9A9000000000A9E00000000000F9CB0BC00D00009AC9ADAC0F0E00A9A0A900B09A9009A0A0B0E9090DBFDBFF9BF0DB9E9DA90900000009BDFFFFFFFFFFFFFFFFFFFFFDFFFDBDFFFFFFFFFFF9EFF090B0D0ACBDB9BEFDAFDA99EBDADBDE9DA9E9C000000009090909000000090B0ABC0009A000ACA0B09A9A9A90B0DA090A0A00A00EB0CB9CA90A000BFFBFF9E90BB9E99A9000090000909FBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF90F0D09A9DBC9EFC90BD0BDE99CADACB9E9CB09A900000090000BC000009090009D0B009A0090090900E9EDAC0AC0A90A00090A09A900B00A9CA0900BCBDBFFBDB90DB9A090090000900BDBFFFFFFFFFFFFFFFDFFFFDFFFDFFFFFFFFFFFFFDE9CF09A0A9DACBAD09BFECBDA9ACBF9BDBCBCBC9E9C000000000A9C9A0000000A9B0A00CB0C900C9A0A0A9A9A09A90BDA00A9A0A9A00A0B09A9A09A0909FFFFBF9AD0B90F99090090000900B9FFFFFFFFFFFFFFFFFF0FAFDBEBDFDFFFFFFFFFFFFB0D00D9CADBCDADAC099BC9EDB9CBCBCBCB09E9A000000000909A0C0000009000C9A900000A9A0009090DAC9E0A00AD0B0000000B09E0EADA9A09A0000BDADFF9B909B9ADB090009000990F9BFFFFFFFFFFFBDBE9FDBCBDDFAFBFDFFFFFFFDBCDB0B0A0B009A9DADBCAC0A900FA9CBCBDADFA9C9E9000009000C9B00000000090B0C0BC0B0C09A0A0A0B09A0090B0F0A00B0B0B00EA0B09A0E90ADADA9AFFBFBE9E9A9C9B0900900000009B9FFFFFFFFFFDFDFF9F0BC90A90D9EDBFFFFFFFFFFBC00D090C9E0CA900909090B90DA9DBC9F09CBA900000000090B0C900000009A900B000900B0E0900090A9CB0A0000B00A000000A909ACA9A90A9A900CBDBFDF9990909BC9A9000000099F0DBFDFFFFFFFFFBF0FCBD0BC90F9ADBFFFFFFFFFCBC9090AC0B09099C0BCBCAC0C0CB9EBCBAC9EBC9CA000090AD0A9CB00000090000CB09CB00F009A0A9A0AD0A0BC90AF0B090B0A0B0A0E0B0E9A99E9ACB00BDFAFFA9B0B09B909B0909000099A9BFFFFFFFF9FDFF9BDAD09A90090F9FFFFFFFFFDAC0A09090009E0AD00090B090B0E9CB0DBAD09E9C900000909CB00B900000909A90CA09E9ADA09000909A9AD00A90BC00A00A90090A90E90A0EB0F0BCBC9ADBDBDAD09CB0BC0900000909A9DBCBFDBFFFBFFBCBC009000909ADB0F9FFFFFFFDF9900D0BC9CB09000090000000090B09E0D0BCB0B00000000A0B0F0C000000000DA9BDA0000A0A0A0A00A900A900A0CB0A09A00A0A09A09AD0B00A0B0B0B0BFFBFF99B0909DB900900000909A9BDBFFDBFDF0F0909E0A9C0B0D09DBFBFFFFFFFACA090A00B00DAD0B00000000090009E9B0F0BCBCB0000009C90D00B000009A09A9CA09CBE909009090B00AD0E0BC9B0B00A09A9009A0BE0ABC9A9F0F0F0D0BDBDBCB09B09A9A090900909B99BF9FBDA9DB0909E0000D009C90ADB0FDFFFFFDAD909E090900F0000C00C0090000090F090E90D0F0C000009A00DA90900000009A9CB0F0B0000A0A0A0A00A90A9A00AF009A9A00A0A00000BC0AAD0A9AA0B0F0BFBFB9F0090909B000000009AD09EBDBDA0090FFF00C0000A009009FBFFFFFFFFA000900C0090BC000000000000000009E09EB0F09A00000009A90000000009009EBC90F0A9A00090000A90EB0009E90FA0009A0090A9A000B09A0BCBD9BCB0F9E9FF9B90B09F00F090900909B9999EBD90009BFFE0000AC9E009009F9FFFFFFDFDA009A90000EF0A00000000000009A09F09CB0F0D00000090C0F00F0000000BC90BF0AD0000B0A0B090A900E9A0A0F00B0A00B0A00009A00E0CB0B0AACB0BCBFBF9EBF9090099090000009090BCB9FBE900009C09E0000009009BE9FFFFFFFF09090C000B09000C0000000000009A9CA0BCB0CBCA000000009A0090000090909AFC0E9A0A0B000000A00A0B00090009A0A09A000B00A0090B0B0A0CB990DADBDBFFBD90F099A009A909090B0BDB09FF9D0B0000000000009000BC9FFBFFFFF0F0C00B0090000000000000009009C0CB09DA9CB09000000009A0900900000009AFCB090009000A9A0A09A0900B0A0BFA909A009A00A900A0A0CA00B00EABADBAFDBF9FA9090009A090000090D90BDB9FFA90FF0000000090009F9BF9FFFFFFFF0B0B009C009E900000000000000A9A9CBCACA9CAC0000000009C090A000090B0F9000A0A0A0A000909A000A0A000009E0A09A0A0B00A09009A90F00B090CB09DBBFFF9FB09B090900B090909A99090B9FDF909E9C00090090000FD0F9FFFFFDFE9C00909A0000F09000090900A90C9A90B99CB90B000000000B0000900000090AF00C90900909A0A0A0A9A0090A9A0F0B00A009000B00A0A000A00A00A9A9AFADFF9FBF9F09000090090000B90F9F09FFBEDA909A909000009BDBEBFFFFFDFEBD0B09E0A9C09000E09E000009C0E9AC0F0CABCAD00000000000DAD900000900BD000A0A0A9A0A0000090009A0A00000B00A09A0A0B00A00900B00B09A9A9AD09FFBFFFDB09090900090A9099090B0B9F9F9BFDAD00AC0909BADBCBDF9F9FFFBD0BC0090D090000909009A909E9A90D9B0CB9C09A000000000009A9E00009A0BC0000909A9000009A9A0A00A00090A0F0A09A09A9A0A909A0A00B00A0A00E90B0BFF9FBFFB90B000900990000B099D90BFFFDEBFBFF99BCB0D9E9F9BCBFFFBFCFAD0F0000A0F0BC00A900CADA90D0F0AC0BCA9F0C0000000000009F0000000D09A09A0A000A0A9A000000A900B0A000AD0A00A000F0CAA0009A00A0909A90BE9F9FFFFFBDFA909900000A99909B0B0B99B9FBDF9F9FEF0BDA9E90BC9BDADFF9F9DA90F009000009A9CADB9CBCAD0B0D9AD09E00B00000000000000000000900BC0009A9A0B09000A0A0A90A00000A009A90B09A9A0BA9CBA9A0A90BCA00A009AB0FFBF9FFBD9B009090090A090D099C0BDFBDBDE9E9909009009F09E9ADBFCFFBE9F090F0090000009000E9E9DAF0F0AD0BC9DAC000000000000000000000A90B00CA00CB00AE0B090D00A09A0B009AF0A000A00ADAD0A000009CA0A09A9A9EBC9FBDFFFBF0BC9B00009099909A9B09BDA99CB09A9000009009A09F9BDFBDBFBC9FCBEF090009000000909009A09C9AD0BCB0A0900000000000000000009090BC00B0B0B0CA90900A0A0A90A00000A0AD0A0A0A90A0AE9A9A9A0A909A0000A90BBEFFBFBDFF9B909000000BC90990B9099EB90B09CBC9CBC9E9DBDADF0BDFFFDFE9BD99CBCB00090090A000B0D0F0BCBC0BC0DA000000000000900000000B0F00CB0C0A00B0A0A0A0B0BC0AC9A0A0009AB09090A0909A0CA009A0A0A9E0B09AF0DBFFFFFBFFDAD0B90000909A9A99CB9AD9CBC9CB09A990BF9A9ADB0FFDAFDAF9FCBEFADADCB0F0DA09C900C9A90F0F0BD0B00D00000000000000090009009AD0A0B0B0F00E90DA90000B00A00C9ADABC0A0A0A9A0A00B09A0A0F0BC00B0AC00BA9FBFDBDFBF9B90D090000B909CB9099BFB9B090F9C9AFDAFDFF9FF9EBFDBFDFBBDBDFBDBBDF0FADBE0E9F0ADFE9F0F0AD0DA0000000000000000000900F0F0AD0A00A00B0A0A0ACB0E0A90B0B00A0F0A900B000B00B0AA0F09000A0B0C0B0F09FFDFBFFBFDF0A9A0000099C09B90B0FADBCF0BF9E9BFDBF9F9BCF9F9F9BDFF0FCFDE9DEFCF0FAD9E9F9BCBDF09F0F09DA0B00000000000000000000009090000A90B09A009A090B0A9A9CA0A00A900B00A00A9A0A00A0900A0A9A9A0A9A0A0BE9FAFFDBCBFBD909909A009B900BD9999BDB9D99F9F0DBFDFBCFF9EFFDEFF0FFDBFBFEBF9F9F9DEBDF0FCBE90FE0F0BCAD0C0000000000000000000090ADAD00B0CA0CA09A000A0000000A0900B0CAF0B00B00A090B09A0AB000A00900A900909A9FBFBFBF9EBF0BC909000099B0B0B0D9BDABCB0F9B0F9E9FBDBF9F0F9DBF9FBCFDBDF0FEDAF0DEBCF9FDFFF9F9E9E9B0B000000000000000000000A90B000A0B09A90A00A900A00B0A09ACB0CA90BE00A0A90B0A0A00B000B000A0A00A0A0A0DADFFFDF9FFDBD09A009A99AC0999DB0BCBD9B9F9C9F9FBDBDBCBF9FBFADFADEBDADADFDBFDBFB9DBFCBE9E9E9E9E9C0D000000000000000000009009AF09AD000A00A9A900A909A0090A0A00B00AD09A0900A0A9A90B009A000B0090B009A09A9BFBDBABDBBF9A9090099E99BDA9A9099B0BCBCB9BF9E9FAFDBFCBDAD9F9DFBDBFFFBFBEDBCFCFEFCBE9F9E9E9E9CA9A0000000000000000000000DAD00E00B0A90A90CA0A0A0A00A0A0090A0A90BA000A0B09A000A00A000A0000A000A090A0BC9FFFFDBFDEBDB0090009A9099F9B09E9F99BF9E90F9BDDB9E9BCBDAF9EBC9FCBDBDEDFADBDBF9DBFDADE9F0F9CB9C00000000000000000000009A90F009A000A00A0B0009000A9000B0A9090A0CBA90000A09A0B0B09A09000A00A090A00090BCBFF9E9BF9FBFF909A099F9A9A9D09090F090B9F9BCFB9FF9FDBDBDAF9FBEB9FEDBFBDFFEBCFEBCBDFBDADBCBACA90000000000000000000000A9E9E9AC9A900B0000A9A0A9000A90000A0A000BC9A0A9000A09A00A000A0A900900A000B00A09BDBFFFDBFBDBDAD09000B0DB9FB9A9099BDBD09ADB9EF0BDBADADF9DADF9FEF9FCFDFADBDBDBDFBE9EADBCBC99C00000000000000000000090D09A000B000A000B0A000090A9A00A9A00009A0F0A0000A0A90A00B00A00000A0A0B00B000B099EFFFBDABFDAFB99A90099FB0DB0090B0F09A9BBDB9F9BDBCBDF9F0BFFF9EDF9EFBFAFDFDEDAFE9EDBDDBCBC9E0A00000000000000000000000A0BC9CB00A0000A0090A9A0A0000A00009A0A009B00B00090A90B00A90B0A00000000000A000A09A9FFBFCBFF0FFADA99A09DBA9F900099F9DAD09E9E9CBDBDA9E9FF0F0FFBFF9FDFDBFAFBFDBDF9EDABCBC9A9C0000000000000000000000909F0BA00A09A9A09A0A000900B0A090A0A000000E9A000A0000A00A90A00090A090A0A0A09A09000DBFDFBFDBDF9FDBDAD9E0BDDB9F9900B0B99B9F99BF9BCB9F9BDADBDF9FCBFFBEBFCFDFDAFCBEF9FDE9E9EDA909000000000000000000000A09FC0B00A000000090A0A0A0009A00900A0B0A0BF0B0A00A0000B0A09A0A0000A0090090000A0B9A0BFFFFBFFBE9FFADAB990BA9EB0B0909DAF0B0FBC9DA9BCBCFBDBCBBCFBDE9FDFDBDBCBF9FDDBE9E9F9E9AC0A000000000000000000000909E90BCA900A0A0A0A0090000A0000A0A9000000E000090090A9A0009A0900A0000A00A0A0A00900C9FFBDBCBFFDBFBDBD09E9BDFB9D090B9A999CB909BA9FCBDBBCBCFBCFBDFBFCBFAFFEFFCFFEBE9F9F0E9AD0D000000000000000000909AC9EBCA00000A900900000A00B0000A090000B0A9AB9A0A0A0A00000B0A0A0A00B0A00000000900A0B000FFFFFFBFFF0FBCBDB9E9B9F9A909CBD9E9BDA9E9D0B9F9EDBDBFDFBDAFCFBDFF9F9F9F0F9FDEFADF9EDA0A90000000000000000000090A900C0B0B00000A000B0000000A09A0A9A000000CB09000000A0B00009000900009A0B00B00A09009A90BFBDBDBFFFDF9ABCB9E9E9F9E9A90BA909AD99A9F0F0F9BCBDAF9EFDBFDEBDCFEF0FFF9E9F9CFADA9ED90C00000000000000000000090BC0B0000A00A000A0000A00A900000000B00A00BCA0A090A00000A0B0A9A0A00000000000A00A09AC0BDFFFEBDADBFAFDF9F0F9FBCB9099BD9F0990BE9F0BD9BCBDBE9FEBDAFDBFDFBF9FFDADEFF0FF9FADE9ACB00900000000000000909A00BCA000A0A09A00A0900A0900000A0A9A0A00A900DA9000A09009A09000000000A0A00A0A0009000A0900BF9FBDBFBFFFDA99A9B0F9F9E90BCBE90F0BC990BD0BE9F0F9FDBDFF9FE9FAFDFCFADFBD0FF0F0DF0BC900000000000000000000009DA9009A9090A090000A0000A0A0A000009000000AB0A0A000A0A00A0A0A9A0A9009000900B0A0A9009AD00FFFFFCBDBDFBFEFDADB0FBF9AC9B99A99099A0F90BD9E9F9EF0FF0FE9FEDFDAFBDF0FCBFA9FCBF0BCB000000000000000009009C90AD0CA00A0A0000A9A0000A00000090A0A0A9A0A00CF090B0000000009000090A0A00A0A00000000A0000A90BDBFF9EBBCF9FBFDADB9DAF99ADAD9A09E9990BD0ADB9CF9BF0FF9FF9FBEFDFCBFF9FCFDE9FCBCDAC9E90000000000000000A00A90A909E9000B0A00000A090A9A0B0A090000009000B00A000A900A9A0A0B0A000000A9000B0A9A0009A9AD00BFF9FF9FDBFFF0FBDBCBBDBE909B9AD0B9A0C900B9ADAB9EDFF9CF0FEFDBDADBFCBCBF9EBEDBDBAD9A0000000000009000009009CBC0AA0A0B00090A0A090A000000000A0B0A0A0A0ACB0000A00A00000000000A90A000A9A000009A00000009E9FBEBFCBF0F9FDADAFBCBF990F9E90909C9B0E9D0DB9CFB0F9EFBFB9DBEFFBFCBDFF9EFD9F0E0D0AC90090000000000900900B0B09AC909A00A00A90D0A0009A0B0A9A0A009A00000BCA9A09000B000A90A0B000009A0000A0A9A00A0A9A9C09BDFDF9FA9FAFBFFBDBDBD0FA90B99F0B0000990A9B0FB0DF0FBDCFCFADF9EDBFFEBCFBDAF0F9DAC9000000000009000090A09C0DAC90A0A0F00B00A0A00A0A00000000909A000B0B0B00000A0A000A90A000000A00009A0909000A090000A900EBFBFFBDB9DBCBDFADAFB9FDAF9E900DB09000900C90DB0BF0FBF9BDFA9F9FCBDDF9EDBDADACB9B0F000000000000900090CA9A09A0D0BC00A00A90B0A9090A9A0B0A0A0A0A9A0000CB0A0000900A00000B0A0B00A0A000A0A0A900A0A0900A09CBFDADFCFBC9FAFDBF9FF0BC9A9A9F0000A90009B0DADBC9F9CBCFADFDEFAFDEBFEDBCF9E9F0C00009000000000000B00090009E0CA00A9A90A0A0A00E0A00000009000090000A0AB0000A000A9000A9A000000900000A0009000B0090A0A900BFFFBFBFA99EBDBFE9FE9BFDBDAD90009090009B00B0909EBCFADBDADAF9F9EBDADBEDBCBD0A9090000000000909A900A90A9DA90B00B0000A09009CB009A0A0B0A0A0B0A0A0B090CB00009A0000A900000B0A0A000B000B0A0A0000A00900F909FFFDFBDEF9CBCBDF9BFDB9EB900A9000090000D090CBC9CB9DBCBDBD0F0F9EFDEF9F0F0AC9CA09000000900A000009C09C0A9E00B00A9A090A0A0A09A0009000900000009000A0BC0A000000A00A0A0B0009000A000B00000900A000A09A00E0BDFBCBF9FAF9BFAFFDBFEF9CFBC9009000000B000B09A99CACADADAF9FDAD9A9F0F0F0D90A9000000000009009C90A90A909E9CACB00A0A00009A0A00A9A0A0A0A9A0A0A0A00009A900A000B000009000A00A0900A000A0B0A0A90A900A09A909AFFFDBFFDBE9FDBCBE9F9EB909A9C0009000090000000E9999ADAD0F0ADAFDE9F0F0F0AC9009000000000009A00B00090BCBCA900A00090A9A00900B000090000000900009A0AE000000A0000A9A0A0A90A00A00000A900000000000A09A0090FDFFBEBDAFDFCBFFF9FBFBD0F090A009000090090909090ACAC909A9ADBC90B9E9F00909000000009090909009B0D0F0F0F09000A909A0A00000A0A000A0A0A0B0A00A00A009090A0A09000A000000000009000B0A900A0A0B0A0A000000B0E00BBDFFDBDBFBFFDBFFFCBDAB0BC09000000000000000009090BCBC9C9009E9C090090E00000000000000ACA9E0C0A90B0F0BC0A900A0000000B00900A0900090009A00A9000A0E90000A00009A0A9A9A0A0A0A0000A000900000900B00A0090B0CBFBDFEBDEDBEBF0FBFFFDF90B00B009000900000000000090000A00F009A9E0F0E90900000000000B090909B090F0F90000000A00A9A09A00A0A090A00B0A0A00009000A000BCA90000A9A000000000900090A0000B0A0B0A0A0A00A90A000090FFFBDFBFBDFFDFFFF9FBE9E909000000000000000000000090909000900090009000000000000900C0BCB009E90900F0F000A9000000A0000900A000A000900A0A0A0A09A0CB00A0A000000B0A0A0A0A0A0A090A0000000090000000000A9A0F9FBFFBCBCF9FFF9F0FFF9F99E00909A0000900000000000000000090009000900000000000090A099B090C9E90BCAF0900A0000A00A0000A0A0A090B00B0A0A90000000000B0000090000A000090900009000A09A0A0B00A0A0B0A000A9009000FFDFFFFFBE9BFFFFBCBFBCB09000090000000000000000000000000000000000000000000009C9A0000A9A9AD0BD9AC00900A09000000090009A0A0A0000900A9A009A0A0CBA0A00A0A09A0B0A0A0A0A0A900A009000A900000090A900A0A0909AFBDFBDFFEDAFFFFFFDFBCBCB00000000000000000000000000000000000000000000000000009E9C9C9C09AD0AC0B000A0000A09A0B0A0A0A09009A0B0A000009A00090BC090000900000000009090000E900A0A0000A09A000A00A00009A0E9FFFBFFBDBDBDBFFDBEBDB909C90090000000000000000000000000000000000000000090A9A9090BA9AB9E9EBDA9C0A0090A00000000009000A0A0000000B0A0A00A0A0C90A00A00A0A00A0B0A0A0A90A9A0B0009A0A00A00A00000090A00090FBDFDBFFFFCBCBFFFDFFBCBCA000009009000000000000000000000000000000000009A09C90F0BC9DADCB0900C0B0000A09000A0000A00A0B00900B0A9A00000009000BA00A90A0000090009C0000A00000CA9A0000900090A0A9A0A000B0A90FAFFFCBFFBFFDBFFBF0F9B090900000000000000000000000000000000000000000000F0B0F0F9BEBDBB0F0F0B0000B0000A000A0A09000000A0A0000000B0A9A0A0A0CB0000090A09A0A00A0B0B00A9A0B0000A9A0A0A0A090000000B0009A09FBFBFDADFFBEFDFFFFBC9F000A900000000000000000000000000000000000000090090DA9BCF9F0FC9E9F0C09EB0000A00A900000A0A90A00000A9A0A00000000000BC0B0A0A00000009A0000009000000A0F0000009000A0A0A9A000A000BC0FDFFBFBFDFFBFFF9FFBF09F090090900000000000000000000000000000000009E90F0BDFEB9E9F0BE9BCAB9E9CA0A900000A09000000009A00B000900B0A0A9A090CB00000009A0A90AC9A0A0A0A00A9A9000A0B0A0A0B00900000A090A900B9AFFFDEDBFFFFFFFF0FCBF000000000000000000000000000000000000000000000F0F0FA99EDBE9F9FC0BDCF0A9000A9A0000A0A000A0A009A00A0A0A00090000A0B0A00A90A0000A09A09009000A9000A9A090090000000A0A0A900A00A0B0E9AFFFFBE9FFFBFFFFDBC9AD09000000000000000000000000000000000000900BDA9DFBDEFFADF9EF0BD0FA0F0A9A00000A000009A00000A0000090090A0A00A000E90B00A00A0900A00A0A0A00900A00000A0A0A0A9A0B0009000A000000090990BFFDFBC9EFDFFFBEBDB0F0A9000909000000000000000000000000000000000FABCFB9F9FAFF9EDAFF0F000000A00A009A000000A09000A0A00A0A0900A009A09E000000900A0090B009000A0A009A0A9009009000000A00A0A90A9A09A0A0E0DBFFFCBF9FBFFFFDFADB09C0090000000000000000000000000000000090DBC9DFBDEFEFFDF0FFBFDA00A9A00090090A000A0A00900A000090A0000A0090A000E90A0B0A0A000A0A000A0A00009A00900A0A0A0A0A0A090A090000000000090B0BDBFFFCBCFFFFFFBFDADE9A900000000000000000000000009009000900B0BFEBCBFF9F9EBFF9EDE0CB0009A00A0A000000000A00A00B00A0900A0000A090A09A000000000A90000B00000B0A00000A0090090000900A090A0A0A000A090A90F0FE9FBFDFADBFFEDEBF9BC9CA90900000000000000000000000009000BC0FCBDFFF0FFEFFDADEFAFB0000A00A000000A0A9A000000000A000A009A0B00A0000E9A9A0A00A00A0B0000A0900000A9009A0A0A0A0B0A000A00000900B000A00A09A9BFEDEF9FFCBDFBDFCF0B09000000000000000000000000009A00A000B0BDEBCBFF9FF9EFFF090C0F0B000000A00A9000000B0A09A0009A00B00000000A0A0BC00009000900000BCA90A000B000A00000900900000B000A9A0A00000A00000A09CA9FBFFE9FFFFFFBF9FCBCBC90000000000000900000900900909090DADABDBFDFEF9FFDA09E0BA0000A9A00090000A00000000000A0000000A000A090000CB00A0A0B0A00A0A0000000A000B000A09A0A0A0A09A000B000000A0A9009A0B09A09FFDFFFFE9EFFEDEFA9F009A000900000000000090000DA0D000000AD0BDEF9EBF9EF9A0DA09C90A0A0009A00A0A000A00A00A0A0900A0A0000B000A09A0B0A09000000A90909A0A0A09A0000A90A00009009A000A000A0A00900A0A0000000B000BFFFFFF9F9FF9FDF0DB0DA9000009090900000009A09A0A9E9E9D0FCBDAFDF0F9E0FA000A0A009000A00A00000A90A0000090A0A0090A9A000B000000F09A0A9A0000A0A0009000000B0A000000A9A0A0000A90B090090A000000A00A0A000B0009F9FFEFFFFFFBEFADE99CB0B09C0000A9090F009F090D0009AEB9F0BDAFBFCBF90F09E9A90A0A9000000A09000000A9A000000A000000A0000A0A009E0000000B000009A0A0B0A000009A0A9A000000A9A00A00A0A0A00A90090000000A90000BCFFFFFFFFFFDF9FB9ACB0D0DA0B09090E0909A90F0F0BDAC99CFADFEDBCBF0CAC00A0000A0000A0B00900A000A090000A000000A0A0090A0009000E90A90A0A00A0B0AC0000090A0A0A0000000A9A00009A09A009000000A0A09A09A0000A900FBFFDFFFBEFFFFEDEDFBDA9A090D0ADA99F0BDEF0F0BCABDBEFADFA9BCBCBCB090090B0A900A00000A0A000A000A00A000B00B000900A000A00A0A9A90A00900090000B0B0A0A0090900B0A0B00009A0A00CA0B0A009A0000000000090A90000009FBEFFDFFFFFFFFBDBEDBD9E9AF99CBE9FCBB9F9FDBDDAFDBCBCFDE9E9E9E000A0A0000B000B0A000000009A000009A00A000000A000A09A0000E0A00B0A0A0A0A9000009000A0A0A000900A0A00090A90000000A00A9A00A00A00A0000A90A000FBDFFFFAFFFFFFEDBEBFADF9FEB9DB0BDFCF0F0BFAFDAFDBDBE0BCBDAC9E00900B0A000A00009A00A0B000000A00000000A0A00A0090000A00DBC9A0009000900A9A0A0A9A000090A0A000900A0A090A9ADA9A0000000900000A00A0A900900009EBFFFFFFDBFFFFFDFCFBEFE9FEBCFFAFBFFFFFCF9AFDAFEDBFCBCA09A00B0A00090A900A000009000000A0A90A00A0A009000900A0A00900A00AC0B0A0A0A0ADA09000009A9A0A9000B0A0A90000A00000000B000A0A09A0000090000A00000009FFFFFFEFFFFFBFFFBFDBDBDBDBF9FFDFF9E9FBEFDAFF90FCB0F0DAC0000090A0A000B00A0A0A00A0A000000009009000A00A0A00000A0ADB00B000009009000CA0A9A0A0090009A0000900A0B00B0A0B0A000A09000000A90A000A0090A0000009FDFFFFFFCFFCBDFFFFFEFEFFFFFFBEFFFFEDBDADBCFF0BC0000000B0A0A00000A0009000000000009000A0A0A000A00B0000009A0000ACB00A0A0A0A0A0B0B090AC90A0A90A000A00A00900A0009000D0A000A00A00900000A9000A0000000000AF9FFFFFFFFFFFFFFF9F9FFFFFFFDBF9FFFEFFEFF0E0CBC0000B0009000A9009A00A0A90A0B009A0A00000000A000000A009A000A00F90A090900000900000A009A09000A00B009A09A0A009A00A0A0A90A000900A00A0000000A00B00A00000900F9FFFFFFFFE9F0FFFFFFFADFBFFEFFFFDFFF0BF9F000A0A900A0A0A900A0000A000000000A00000B0090A000B0A0009A000A0900A0E900A0A9A90A0A0B0090A000A0A90A000A00A0009A000A090900A900A0A000000A000A090000909090000F0BC9BFFFFFFFFFFFFFFFDFFFFFFFFFDEBFC09E0E0CB009000A9000000A00A09000A0A00A00000A0000A0090A00900A000A090A0AF90CA000000A000900A0A009A9090A900A0000090A000A0900A0A000A900090A00090A00A000A0A0A009A0000CBFCBCBF9FFFFFFFFFFFFFFCFFDFEA9F0F009FDB00F0A0A900A9A0A00090A0A0090000000A09000A0000A000A0A900A900A0000CAB00B09A0000B00A0900B000E0A00A009A9A0A0000A90A0A000CB0000A00A000B00009000A090000A0000B0090AD0FCFFFFFDEDFFFFFBDBFFFE9FDE0FCA00BEDF000000A00000900B0A0000A0A00B00A900A000000A000A9000A000A0000A90BD0A000A09A9A00B09A0A00B09ADA909A0000900A900000009A9A0A9A0000000A00A00A000000A09000A9000B0AD0B0B0BCA0FBFFFEF0FEFCBC9E00BCB09CBCBFADA9A9000B0A0A0A0000B0090000000000000A09A090A000A9A00B000B0A00AC0A090A00A0000B00A0C90B0FADA9E0A000A00A000A0A0B0A0000000009A00A000000000A90A000A0B000A0A0090AC900CBDFBCB00909E90BCBC00BC9E0EB0BDADA0000A0A009000000B000A0A0A00A00A0A000000000090AD009A000A0009A0BB00A09A900E9ACBE9A9AF0F9FFFF09C0B09A009A00900009A0A9ADA0A00009000B0A9A000000B00000A009000A090ACB0000000000000000000F000A9090ACBDA9A0A00900A0A9A9A00A9E90000000000000B00A000A00A9A0BE0BE9000A000CF090A00A090A9BDBCB0DBFFFFFFFFA9A0AC09A000A0A0A00090E00090A00A00A000000B0A0A000B00090A00B00A0A90000000000000000000A00BCB0A0A09A0AC0009A0A090000000B00A9EB0B0A90A9009000000A009A00F00BDCBE9E90A909A0A090E90A09ADBFF0FFFFFFFFFFFCF09CB0A00A9000900A0A009A0A090A00A00A0A000009000A00A0A000A0090090A9A9A0000000A0900B09CB00009009A090B0B000000A09A0A0000B0F9F00000A00A0A00A000000A0DA0BFCBFF0F0A000AE9E900A90A09ADFFFCBDBFFFFFFFFFFA9EBA0DA900A9A0A900090A09C00A0900900900A000A0A0000000000000A00A0000000A0B090000A0000A0A0B0A0A0000A0000A00A000A0090A9ADFBF0E0A0000000000000A90A09ABDFCBFFDFFADA9A0B000A90A09CA9ABDFBF0FBFFFFFFFFBDF9FDFA00A000000A0B0A000A0B000A0A0A00A900B0000B009A00A9A0A00A00A9A00A090000A0B009ADA909000009A0B00B0A000900B0000A0009A9FCB0900A00A0000A90000090AC9EBFFFFFFDF0E000DBA90A90A0B00DAFBCBBEDFBFBFFFDFBFFFFFDAD0A90A90000009A9000A9000000A000A00A00000A00090000900009000A90A0A0A0000A0A000A0A0A0A00000A00000B0A0000A9000A0A9E9BCA000000000A0000A00A009AB9E9FDFFFFFF9F00BC00A9E9CB00B09F0F0C9BFDE9FBEBFDFFFF9E9A000A00A9A0B0A00A0B0E0B0A9009A000000B000000A00000A009A0A09000000909A0F0909A900090090A00009A0B00000A0000A09000DADA090A09A00A90000A00000A000E9FFFFFFFF0E0A0CA9E90B0B00B0BF0F0DBBE9A9B0F9F9FBFFFEDA00B090B00000000B09000000000A0000A9A000A00A000A0A000A00000A0A0B00A0A0900A0A00A00A00A000A9A0000000B009A0A00A0A9A0B0F0A000090000A000000A0900F9FFFFFFFBCE9090B9A9AF0F09AC9E9FFBEF0DADADF9EB0BDFFDBADA00A0ACA0A0B0B000A0A0B0A0A0000B00000000900900009000000A900000000000A0A00000009000000B0000A0A00A000A00009000009FFF9F000A00A00000A09A000A0B0ABFDFFFEDB0A0A0CF090A90E09A9BFFFF9FFBDBFBFBDADA0BBEDB009A909090900C0BCBC0900009009A000A00A0A0A000A0B000A90A00A0A9000A0B09090B0B00A0A0A0B0000A00090A90A0000A00A0A9A0A9FFE9E9000000A0000000090000BC9BFFFFDAC90000BA9AF9EB90A0FFFFFFFF0FADFDFFCB0BDFDBF0E9A00A0A0A0ADABCB0A9A0B0A0A0A00A09009000000A00000A00A0900000A0B0000A0A00000A90000000A0A90A000000090A0090000009BFFFFF0A00A00000A90A00A0A0A90BEDFEFDA0B0A9A09DAF90B0CA9FBFFFFFDA9F9FBFFDBE9FBFFFFCB000A9E9C9ADABDFBE9E0000900000900A0A00A00A00000A0000000A00A000000A000000A000000A90A09000090A00A00A09000A00A00BEDF9F00000900A90000000000090EBDBF9FA0F000000EB09EBCB09A9FFFFFFFF0A9FFFFFF9FFFFFFFBC0B090BABE9BDFFFDF090B0A0A0B0A0A0000009009009A00B00A9A0000900B0A90A900B00B0A0A00A00A0A0A0A00A09A00A00A00B00B009BBE00A9A000000A00A09A009A0A90EBCF0DA0A0A0009EB90B9E0A9ADFFFFF0DBCA9FFFFFFFFFFFFDFBC00AC9DBDFFFFFFFEFA0009000000090A90A00A00A0000000000009A00A00000000A0000009009000900909000900009000900000000A0C09A900000A00000000000A0090A900B0A0909090A0F90E9E09A9CBBFFFFBFA09BFFFFFFFFFFFFFFF0B0B0BBFFFFFFFFFFF9CB0A0A9A0B0A0A00A00A00A00A00A00A00A0A00A00A00A00A00A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0B09A9A00A00A000A00A00A00A00A0A9A0B0A9A0A0A0A00B0A9A09A00B9FFFFFF000B0FFFFFFFFFFFFFFF9E00BDFFFFFFFFFFFF0A000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000000000000000000000000000000000000000000000000000000000000000105000000000000B4AD05FE,'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.',2,'http://accweb/emmployees/davolio.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(2,'Fuller','Andrew','Vice President, Sales','Dr.','02/19/1952','08/14/1992','908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D20540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000000000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000C00BFE000000A9000FFFFFFFFFFCFFFFFFFC009FFC00000000000000000000000000000000000F0000000000000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB09F00000000FCBFFE9E0BFFFFFFFFFF0FFFFFFC09FFFE0000000000000000000900000000000000000F000000000000000000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000009009F09FFC0BFFFFFFFFFF0FFFFFFFFEFFFC00000000000000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0B00000FF0000000BFFFFFFFFFFFDFFFFFF0F9FE0000000000000000000000000000000900000000F00000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE09FFFC0A9F0000FC00BFFFFFFFFFFFEBFFFFCFFEFC00000000000000000000900000090000000000000F0000000000000000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009CBE09C00000000BFFFFFFFFFFFFFDFFFCBFC90000000000000000000000000000000000000000000F0000000000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0009FF0BFA9F0A9BFFFFFFFFFFFFFEFFFFFFC000000000000000009000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009FCBC0DFFFFDFFFFFFFFFFFFFFFF9F0FC000000000000000000C0000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF0000000000BFFFFFFFFFFFFFFFEFE0000000000000000000D000000000000000000000000000000F00000000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FC00BF0090BFFFFFFFFFFFFFFFFDFC00000000000000000C00000000000000000000000000000000F0000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD09EBFC9ADAFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000009FFFFFFFFFFFFFFFFFFFC00000000000000009C0000000000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0BFDBFFFFFFFFFFFFFFFFFFFFFFF00000000000000090000000000000000000000000000000000000F00000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000F0000000000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FDB9FFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDBFFFBFFF99FFFFFFFFFFFFFFFFFFFFFC00000009000000000000000000000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBFFF9FDFBDFFF9BFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000F00000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFFDFBDFFBFFFBFFFF9FFFFFFFFFFFFFFFFFF0000000000000000000000000090A0009CB0DA9A9AF9E9BE900A00F0000000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFBFFBFBFDFBFFFFF9BFFFFFFFFFFFFFFFFE00000000000000009CA90A90F00C90BDA9ADA9FF9F9E9BD9B0C9C0F0000000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFBDFFF9FD0F9F9DFBFFFFF9FFFFFFFFFFFFFFFC0000000000000DADA99E09CB0F9BCBDAD9F9BDB0BCB9ADAFCB9A9FF000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFBF9FFBDA9F0AD0B0A09DB9BFFFBFFFFFFFFFFFFFFE0900000009CB0B9BDA99F9BDB0F9B0B9AB0F9ADF9BDADB99BCBDA9F00000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFDBFBFDBFCF0F0FDFCBDAD0D9F0BEFDFBFFFFFFFFFFFFFFFFC000000000009CBCF0BCB0F0BDB9E9F9E9DB9E9B0F0BDB0FE9B9ADBF0000000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFDBFFFF9FF0F9FFBCB0BD0F9A9E00D090BDFBFFFFFFFFFFFFFFC0000000C0B9FB9B9BDB9F9BDA9E9B9E99A9E9ADF99F9ADB99F0F9EF0000000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFBDBDBDADEADBDA9C9F9F0FBDADA9DB0F0F9E9DBFFF9FFFFFFFFFE000000B09DA9CBCF09E9A9E9F9BD0F9ADBDB9F9A9E9ADADBE9F0F9F000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFBE9FBFBE9FDBDBCBCBFBC9E9F9E0DBDA0DB09E09E9CB9FFFFFFFFFFFC00009000A9FB99B9F09F9F9B0F0B99E9ADADA9E9F9F9B9AD9A9B0FF00000000000000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFFFDF9FDFBCDFDADA9E90B9C9CBFBCBFDBF0F9FBC9E99E9AD0FFFF9FFFFFFFE0000C0DBDB0DAD0F0BC9BCBCF9BCBC9BDB9BDB9F0B0F0F9BE9E9F9F00000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFFFFDBBBFFB9CFB0BCB0F09FDE9FA90DB9CBD0F9E9CBF99E90F9A90BFF9FFFFFFC00000B9A9ADB9BF0BDBBCB9B9BCBDBBDA9EDA9E9B9F9F0BC9B9F9AF0000000000000000000000000000000000000000000000000000000009FFFFFFFFFFFFFF9F9BDFCB0DCB0DBC9DBDBF0A9E99FF0FCB0FB9E9FBC9EB0F09EDBCF9BF9BFFFF000909CBDBDB0F09BCB0DBDADADB9A9CBDB9B9F9E9E9A9BDBFCB0F9F9F0F0D000000000000000000000000000000000000000000000000000FFFFFFFFFFFFD9BF9FFB9FCB0BCB0DBE9E90DBDB9E09CB09AD0DBDA9DBD9C99E99E9B0F0FFFFFFFC0F0A9BCBCBCB9F0B9DB0B0F9B9E9DB9B0F0DA9F9F9F9E9A9B9DB0FF9F99BBF990C000000000000000000000000000000000000000000000FFFFFFFFFFFB0BFF0FBCDADBC9E9BCB0D09AF09E0D9F9A9F0DA9E09D0A00F0BCBDA9F0F0F0FB9FFF00009CBDB9F9BCBDF0B0F9F90FCBCB0F0F9BF9F0BCB0F9F9F9EB0F9FB0BDAFDBCF9AD09A0CBCB0000000000000000000000000000000000BFFFFFFFFF0BD9FF9F9C9ADA09F09C9CB0BFD09E99FA9AD9E9F9F99F0F9F99BD9B0FD0FF9F9E9FFFF009ADA9B0F0BCB9B0B0F9E9AF9B9B9F0B90F90B9F9BDB0BCBCB9DB0F9F0BD9A9B0F90F0DB909FF000000000000000000000000000000009FFFFFFFBC9F9EF9F0F0BC9A9DA99E9A9CBD0BFD9E90DFDA9F9BCBCBCBDBCBEDBEDF9BF99F0F9E9BFFC00009C9F9BDB9E9F9D0B9F90F9E9E9F0DB0FBCF0BCBC9F9BFC9A9FBCBDABDBC9B9EB9BADBFA9AF0000000000000000000000000000000FFFFFFE90BDADBF9E90D0BC9E90E90F0F90BD0BA9FFB9A9F9E9F9F9F9F0DBDBCB9FBE9EF0BF9E9E9FF009090B0BCB0D9BCBA9BCB0F9BCB99A9F0BD09B9F9B9BA9E99BE9A9FF909DADB0DB9DAD9BC9DBD9C00000000000000000000000000000FFFFFD09BDFB9F0BC9E9A9C9A90F9CB090BDA9F9DF09FD9FDADBCBDBDE9BFBDFBDCBD9DB9FDFFBFD9FE000E000D0B9FBADBDDADB9F0BCBDAD9F0BCBFBCB9E9E9DB9FAD9BDBF9A9FAB90DA9F0B9ADB9BE9ABC000000000000000000000000000BFFFFCB9BCFB0FD0D0A909CB09CB9CB0FDBCBDF9EBDBF0BE9BDBDBF9E9BFFD0FBDFBF0FB0DBF0FFDBE90009090B0B0DB0D9A9A99EDAD9BDA9BAB9F9B9CB9E9F9F0BCBDBADA9F9DA9D9E9B9E9BC9FA9E99F9CBC00000000000000000000000009FFFE99DADB0DF0B0BD00F0B0FA9C0B9DB0DBDA9F90F9FFFDBDBFFDFF9FDBDBF9FBFDBFF9FBCBF9FAF9FBC000AC00C9ADB0BDBDADB9B0F0BDAD9CF0BCFBDF9B0B0F9BDAD9BDAFABDABD9ADB9E9BC9F99E9AF99B0000000000000000000000000FFF99EBDBDFB09E9C00F09FC90DBDB0F0DBADBD0BFF9F99FBFFDB9B9FFBDFBDBF9F9FDBDFDBDDFFDFFAFDBF090090009A9F0BCB9ADADB9F0BDAB9BDB9F0B0FDBDB0BCB9AD0BDF9DA9DABD0BDBD0B0F9E9BD9AD0F00000000000000000000000BFF09E99ADB0DB0009A99F009BDBCB0F9A9CDBCBFDBDF0FF9BDBFDFFFF9FFBDFFDFFFBFFFBFFBA9FBF9F9FCBC009A090E9C9BDB9CB9F9CB9F909DADADA9F9F9ADADBDBF0F0BCBBDA9FA9D0BCB9AB9F9A9BCBE9BF9B0000000000000000000009FE09F9DAD9ADA0D0F0D9E09FF0F0B9F9E9DBA9DBDB9EBFDBFDFFDBF9F9FFF9FBFBF9FFDBDFF9FDFBDFFDAFBFB0000000909ADA9CBBCB0BBCBCBEB9BDB9F9E9ADB9BC9A9F9BDB9DBDA9DBAF9BCBD0DA9F0DB99E90D0F00000000000000000000FF99BCB0F0E90DA090B0A9DB09F9FDE9E9DA9DEBDADFFDBFDBFBFBFFFFFF9FFFFFDFBDFBFF9FFFF9FFBDBFDBCFF009CB00AC99FB9C9BDBC9F9B990FCB0F0F9BDB0F09BDF0BC9ADFCB9E9D90F9BDA9BDA9F0DA99EB9BCB000000000000000000BF00DB0DB9B0F0090BC9D0BCBDA9A9B9E9A9FBF9F9FB9FBDBFDFDFDFF9FFFFFFFDFFFFFDFBFFBDBFBFDBEFBFFBD9F00000900AC9FABC9ADB0BC9E9B9BDB9F0F0F9F0FA9A9F9BF9AFB9E9BEBD0BDADBCB9F0B9F0F99E9BDF00000000000000000FC0BD0F90D0D00F0D09A9F9BDADBDF0F9F9F0D0F9FBDFFDF9FFBFBFBFFFF9FF9FFBFDFFBFDFFDFFFFFFF9FDBDFBEBF0090C0909B0D9B9F90F9BF0BCBCB0F9BDB9E9BD0F9F0F09E9F9E99E990BDADB0B9E99BDADB9E99F0B0000000000000000BF0BDA99ADA0B0909A9F0F09E9FBCB9F9CBC9FBF9FBDFBDABDBFDFFDFDF9FFBFFFFFFBF9FFFFBFBFDFFDBFFBFEBFFDF0000B00A9ADBA9E9E9B0F09DBDB9F9ADA9E9BDA9BDADB9E9FDB90F9BCBCBDB0DADBCBCB990F9EA9F9F000000000000000FC0DADBC9009C9E0F9CB9F9F9F09FDADBF9FBDBDFF9EBDBFDBDBFF9FBFFFFFDF9F9FDFFFFFBFDFFFBFFBFFFDBDF9FAFF0000909C9A9DBDB9E9F9F9A9BCF0FDB9F9F0BDBCB9F0F9B0BEDB0F0B090BDB9DB0BDBDAF9A99DA9EBC9000000000000BFC09D09AD0DA0099A0BCB0F0F9F9BDF9CBF9E9F09FF9FF9FBDBDBFF9FDF9F9FFFBFFBDFBDFFFFBDFFFFFFDBFFBDFBDBDF0900C0009E9A9E99A9E9F9E9B9B0BCF0F9F9A9BDA9B0F9FF9B0F9BD0BDB0F0BDBD09AD9E9F0B9F999AC00000000000FE09A9BC90B0090F0D9DBDBDBDBFCFBB9B9C9BDBFF9FDBDBDBDBDF9BDBFBFFFF9FDBDFFBFFBDF9FFBDBFBDFFFDFFBDFFBFE00B09A9C90DB9F0DBDB0B9F0F0F9B9BDA9E9F0BDBCB9E9FB0F9BC0BCB0F9BCBDA9BF9A9B0F9E9ADADB0000000000FF0DA9F09000C9E9ADB9EB0FBDAF9BBFCFFCBBDADBDBCB9F9FDBDA9FDBF9FFDB9FFBDBFBFDBFFBFFBFFFDFFBFBFBBDBFF9FF0000000B0FBADADB0B0F9E9F9F9BCBCB9F9F0BDBCB9E9BDF99ADBD09BDBCBBDBDAD0BD0F909BDB090BD000000000FFF09C9E09E9B09F09AF99F0F9F9FDDBDB9BDFDBDFBDBDFBDADF9BDB9F9F9FBDFBDFFDBFDBDFBDBDFDBFFBFFDFFDFFF0FFBDF0000D00909DB9A9F9F0F9F9A9ADBDB0F0F09E9BFCB9BCBCF9DA9A9CBDB9D0B0BDBDABD0FBC9ADBDBCB9000000009FFC9B0900000F09F9DBE9F9FF9FABDBBCFF9BE9BC9FFBDBD9B0FDADBDBDF9FF9FBDBFDFBFBDFFFBFBFBFFFBFBFBF9FF9FFBFF090A09E9A9E9D0BCB90B0F9F9F0F9F9B9FB9E9BDBCBBFB9A9DBDA90BCB0BDBDA9BD0B9909BDB0B09F0E00000000BCA09F0C90D090F0FBC9F9F0BFDDFBFC99BEDBFDBF9D9EBFBDB9F9BDBDB9FF9FDFBDBFBDFFFBDBDFDFDF9FFFFDF9FB9FF0FDF000900009F9F0BDB9E9F9BCBCBB9E9ADA90F9F9ADBD0F9E9FADA9CBDBDBCBD0B9E9BDBE9AF9E9C9FB09000000000099F00B0B0BE9BDBC9F0BF9F0BBBDF9BFFDBDB9F9FBBF9C9F9F99FD0BDFB9FFBFFFFFDF9FBDFBFFBFBFFFF9FBFFF9FF9FBFBC0000D09E9B0BDA9E9DA9E9B9BCF99F9F9F9ADADBE9FF9B099BD0B9E9A99A9F0DBC9A99F90F9B0A9CBC0000000000CB0B000DBC9CBC9BFBFC9F9FFDDF9FF9BBFBDFBF9FD9FBF9F9FFBBDB999F9F9F9F9BFBFDBBFDBDFFFFFFFFFFBFFFFBFFFFFF009A0A09CBD0B9F9A9BDB0DADB9AF0BCB0F9BF9BDA9FEDBCBCBD09BDBCBDA9F0B9E9E90F9AD9D9B99BC900000009AD9C0DA09BF99BFDBD9FBFF9BFBBF9FFDFDBF9F9FBFBDBDB9F9FD9F9FF9F9F9DBDFD9F9FDFBFFFBDBFF9FBFDFDBFFDBBFDBFF009009A9EBD0F0F9ADADB9F9E9DBDB9E9ADB0F0BDADB90B9F9A9E9BC9A9F90BDA99BDB0BDB0BADAF09AC000000099A0909DAD0F0F9BCBFBDADFF9FDBFBDBFBDBFFF9FDFBDBFF9F9BF9F09F0F9EBDB9FF9FFBFFFBFFFFDBFFFFBFBF9FBFDFBFFF000C900999A9BDB0DBDB0F0B9FA9ADB9F9BDB9F9E9FBCB9E9A9CB9E9B9DB0BDA9FBCB09CB0F0D9F99E900000009CBC0B0F0B9F9FDADF9FDBDBF9FDBFBDBDFDFFF99BDBBDBDF9FBFFD9F9F9F9F99F9FF9BFBDBDFFBFBFFFFBDBDFF9FFFDFBDFFF000B00B0FAD0F0BCBA9ADBDBCBDBDB0F0F0F0F0F9BF99E99BDA99F9E9EB0F09F909F9E9BDB99AB9CB9F90900000B909C99BC9A9FBDBBDBF9BF9FFBFDFFFBFB9F9FFFBDFBFFBF9F9FBFDBDBDB0FF9F9FBFDFFFFBDFFDFFBDFFFF9FBDBFBFFFF9FF00000C909BB9F9BD9FDA9ADB9BDA9F9B9BDB9F0BCBE99E9E99E0B9BD9F9BDA9FB0B99E9ADAD9CBBCB0F0A90009CBCA9AC0F9FD0F0DFBFDF9FF9BDFF9F9FFDBFF9F9FBFDBDBFFFF9FBBDBDBD99BDBC9DBF9FBFFFFBFBDFFBDBFBFFFFDFFFFBFFFB09C90AD0D0F0F0B0B9F9F9E9EBDB0F0F9BCB9F9BFDBC9B9BC9BDADA9A9E99F0DBDE99BDB9B0B9CB9F9F9CB909B9090D9B9F0BBDBF9F9FBFBDFFBFBFBFBDFF9BFFF9FDBFBFDBF9FFDFBDADBC9CB9BFBDBFDFFFFBFFFBFBFFBDFDFBFFBF9FFFFBC00A0090B0B9F9E9F9E9A9E9FDB0FDBD0BCBDA9E9FB09BE9E9BDADB9F9F99EB9BF0B9ADADA0DBCB9E9A90B0C0BDA09E9ADADBDFDBDBFFBD9FFFBDBDBDFDBF9FFDB9FDBF9FDBFDBF9F9DBDBDBFB9FDBDBDFBFFBFDF9FDFDFBDFBFBFDBDFFFFF9FF009090BC9BCB09B9E9BDBDB9A9F9A9ABDBDA9F9FF9DAD9F9DA9DBC9ADBCB9CBC9BDADBDBD9A9BD0BDBDBDB90DAD009F9F9F0B9FA9DBDFBFDBDFFFFFFFBFDBDBFDBFBDFFBFFDBDFBFFFBDBDBD9FDBDBDBFDBDFFFBFFBFBDFBFFFFFFFFBFFBFFFF0000E00B0F9F9F0F9F0BCB0F9F0F9F9DBCB9F0B0FFA9A9BA9DA9BBD9A9BCB9FBDA99A9A9AD9CB9F0BCB0BCB0990DA9CB0F9FDADFBFDBDFBFFBDBFFBFDFBFBF9BFF9FB9FDBDBFBDBDBD99F9DBDBDBD9FD9BFBFFFF9FDBFFBDBDBDBFBFDFBDFBFFF0090909C9A9E9B0F9F9BDB0F9F0F0F0BBCB9FDBF09F9FC9DA9F0DA9DBCB9E90BDBC9DBD9A9B9E99F99F9900BE9A9CBDB9E9BFBFDBFFFBDF9FBFF9FFBFFFDFFBD9FBDF9FBFF9FBDB9FFFFFFFF9F9FB9BFDFFFFFBFFBFDBDFFFFFFFFFFBFFFFFBF0000AC9A9F9B9CB9E9E9ADB9EB9FB9BDFBDA9ADF9F09A9BA9FBDB9EB0B9CB9BCBCB9BE9A9CBC9BF0BF0F0F9C90C9B9CBD9FD9D9BFDB9FFBFFDFFFFFFFBDBB9DBFBDFBBFDB9F0DF9FDBFFDBDFDBF9DFFDBFFF9FFF9BDBFFFBF9FF9FFBFFFFFFFF00090909CBCBCB9F9F9BDB0F99F09E9E90BDBDBFB0DBDBC9CBDADA9DBC9BDE9F9BDAD9BDA99BF09F09B0909BCB9ACB9FAF9BFBFDBFFF9FDBFBFBFBFBDFFFDFBDF9F9FD9F0D9B9FD9BDB9F9BF9FDFBDBFFFFFE99FFFDBFBFDFFFFFFDFFFBF9FFF900C0A0B9BDA9CB9E9ADADBDBE9BF9F9BFCBCB0BCBA9ADB9B0F9BDA9F9E9B9A9E9BDAF09DAD90F09F0DBD09F00D9BCB9DBCF9FBF9F9DFBBDFFFDFFDFBFBFFBDBBF9FBF09B9D9F9BD9FDBDFDBDBF9FFDFFFFF9009F9BD9FBBFBFBFBFFFFFFFBDFE09A90C0F0BDB9E9BDB9F0B0F9F0F0BCB9BDBDBDF9DBDBCADB9FE99F0B99E9DB9F0B99FB09B0F9BDA9B0B0FB09A0DBDBBDB9E9FF9FFB9FDFBF9FBDBFFFDFBDBDFDBD9DBD9CB99BDBF9BDB9FDB9DBD9BD990000909ADBF9DFDFDFFFFBF9FFFFFBF00000909BDA9E9BCBCF0F9F9ADB9F9BDE9A9ADFA9ADADB9B9F099E9BD0F9FB0F0BDBE909E9F9BCB9F09CB9C9E9DBF0FDA9FDBF9FBFDFDBFFFFFFFFF9FFBDF9F900000909B9CBD9D99C90909090900909009DBDCBD9F9FFBFFBFDFFFFFFBFFFFF009CB0B9E9BD9ADBDB9B9F0BDB0F0BCB9BDBDAF9C9B9AD0DADBDA9ADA9AF0DB9F9AD9BDA90BCB9E90DB09F0099A9DBF9FF9BFDBF9BFBFFBDFFBDBFFFF9FBDB900B090900909009000909C9AD09099CB09F9BDBBDBFBFF9F9FFBFBF9FFFDFBFFF000000CB9E9ADBDBA9E9E9FDA9F9BDB9FCBCB9FBBC9F9B9BDB0BD09BD99BF0F0BDBBCB9DBDB9CB9E90090BF9AD9F0FDB9EDBDBDFFDBDBDFFBFFFF9FFBFDFBDA9D9BDB0D90D0909B9DBD9BD99F9F9F9DBD9F9FDBF9FDFBFBF9FFFFFFFFFBFFFBFC09A9090F9F9A9AD9F9F9B0BDA9E9ADA9B9BCBFC9BA9F0F0BDF9A9F0B0F09B9F909CB9E90B0FB9E90000FD00DABCB9BDF9BDBFBFBFDBFBFFFFFFBFFBDFBF9F9FBFDBDF9BDB9DBD9F99BD9F9F9BDBDBBDFBDFBFF9FFBFFDFFFF9F9FBFBFFFF9FFB00C0A0F0B0F9F9BE9A9E9FF9BDBDB9F9E9E99B9BC9CB90BDA9AD90B0DBDBFCBCBFB9E90F9DB9C9000099B09B9DB9F0F9BDBF9DBDFFBFDFBDBF9FDBDBFF9F9FBFDBF9BFDB9FBDBDBDBDFBD9DBD9F9DDBF9FBDF9FF9FF9FBDBFFFFFDFFFDBFFFFC09A9099BDF9E9BC9F9F9BCB0F0F0BCBCB9BCBFD09BBDAD0B9F90FBD9A9BC9BDB090F9F90ABC9B9F9F90E90BC9ADF9FCBFF0FFBFF9F9FBFFFFFFFBFFF9FFFFFDBFDFFDBFDF9DBDBDBDBDFFFBDFBDBFBDBFFFBFF9FFFFFFFFFF9FBFBFFBFFFFBFF00000CBCB0B9F9FA9A9ADB9F9B9BDBDB0FCB0BEBC9CB9B9CB0F909AD9E9BF0BCB9F0B0F9D9BD9FDF9F99E9CBF9A9E9BD0FBD9DBFBFF9FDBFDBDFDB9FF9FBFDBDBF9F9F9FFF9FFDBDFFFFFFFFBDFF9FFFFFFF9FFBFDBFDBFDBFDFDFBFFFF9FFBF009CB00BDBCB0F9FDBD9ADF0F0F0B0BDB9BDBF99B0B9E9CB9F9E9F9BA9F09F9B9E9BDB09A9DBFFBFFFF090A90F9F9F9BF9FBFF9FDDBFFBFBFFBFBFFF9FFFDBFF9FFFBDBF9FF9F9FFBFB9F9DBDFBDFFFBFFFFFF9FDBFFFFFBFFBFBFDFFBFFFBDFF000009B0F9F9FA9ADABDB9F9F9BDBDADADA9F0F0D9E90B9E9A99A9C9DA9FBCBCB9E90DAD9FF9DFFDBF90F9DF9E9EBDF9F9DBDFBFBBF9FDFBDF9FDF9FFBDBFDBFFB9FF9F9F9F9BF9FBDFBDBFF9FFFBFDFDBFF9FFBFF9FBFFF9F9FFFBFFFBFFFFF09A09F0F9B0FBD9F9BD9AF9E9ADAF0F9B9F0DB09AB9F9CB9F9E9DAB0BDB0DB99CB9F9B9BF9FFBDBFFDF09E9AD9B9CB9F0FBFBF9FDFFFFBDFBFFFBFFBDFFBDBDBFDF9FF9FBF9FF9FDF9FDBF9FBFBFDBFFBF9FFF9F9FFFDF9FFFFFBFFDFFFDFBFFC09C009BC9FBCBE9ADAF9E9B9F9BDB0F0F0BBDBC9DA9A9E90B9A9D9F0BDB0FA9BCB0F0D9FF9FFBDBFFF909F9AD9FBDE9F9FD9FF9BF9FFFBDBDBFDBDFBDBDBFFD9BDBDBF9DBF9FFBFFFBFDFFFDFDBDFBFDBFF9FFFFF9FBFF9FF9FFFFFFBFFBFFFF0090BC0BB0DBDBD9BD9F9F0F0F0BDB9F9F9FB09B0F9C99BDBC9F0B0BDA9F9DADB9F99FBDBF9BDF9FBF0DB0BDBC9F9BDBF9BFF9FF9FF9BDFFFF9FBFBFBFFFDBBFD9E9F9EBDBFF9FF09FFBFFDBFBFFBDBFDF9FBDBDBFFFDBFBDFBDBFBFFFFFF9FF00A009BD0FB9F9AF0BA9E9BDB9F9F0F0BCBF0DB0DB0B9BCB09B0F09DA9DB0BDB9E90FF9DBDFFF9DBFD0B0FDBCBBF9F9F9FFDB9F9FF9FFFFBDBFBDFFDFDF9FBDDBF99DBD9F9F9FF9FBDBDB9BFD9F9FFDBF9FBDFFFFDBDBFFDBFFFF9FFFBFFFFFFC090F0DA9BDEB0F9F9DF9BCB0F0F0B9FDB9DB9CBB0D9E9BDBC9F9FA9F9ADBCB0F9DB9DBDB9F9FFBDF0DBD9ADB9D0BDBFE9BBFDBF9FFBDBDFBDBDBDBFBFBF9FFBDBBFBDBF9E9FBDF9DBF9FDFDBFBF9FBDFF9FFB9FBFFBFDBFFBDFFFFFFFF9FBFFF0000B0FBCBBDF9B0FAB0F9F9BDBBCF0BCFADA9C9BA99ADB0B0B09DA9F9A9BDB0B09FBFFDBFF9FFBFB00BDB0DABDF0F99FD9FBDBF9FFBFBFDBFFFBD9FDFDBD9FBDFDF0DBDB9D9BFFF9EFBFBFDBDFFDBFBDF9FFFFDBDF9FDBDFBFBFFBFFFFFF9FFA0900909BD9A9E9F9DBDA9BCB0D9B9F9B9FBD0B9C9F0D9AD9C9F9A9F09DBCB0DBDBD99BFF9FFF9FDC9F09F0BD9A9F9FF9FBDFBFDBF9FDF9FFDBDFFFBBFBFFFBDBDB9FB0F9FBFD9F9F99DBDFBFFFBFDBDBFFBDBDBFFBFBFFFBFDFFFFFFFFFBDBFC000DADBCBF9F9F9EBDB9F0F9FBEDA9E9EF90B9E9B09BAD9A9B9E9F09FB0B9DA9BDBFFFDFFBFFFDB0B09F0BDBE9F9BF9FBDBBDDBFDFFFBFF9FFB99BDF9FF9F9F9FBDBDF9FDBDBFFF09CB0F9FFFBD9FFFFDBDFFBDF9FDFDFBDFFFFFFFFFBFFD9FF009A090BF0F0B0FB9E9CB9B9AD9B9F9F99E9C99AD9AD9B0DADA90BDB0D9F0B9FDFDBDBF9FFF9FBF09FE9F9E99F9FCBFBDBFDBBDBF9F9F9FFBDFFFFDBF9FF9F9F9F9DB99BFDBFD99F9B9DBF999FFBDBDBFFFB9FBFFFBFBDFFBFBFFBFFFFFFBFFF000090F9DB9F9F9ADBFB0F0F9BE9E9E9BF9A9EB9AD9AD0B09BDBD0BDBA9ADA9BBFFF9F9FF9FFFDBD009ADB9E9DA9F9FCBDBFDBF9FFBFFF9FFBDF9BF9DBFBFFBF9FE9DBFD9BDBF009FDB9DBFC0909BDBDBDFFFDF9F9FFFBFDFFFFFFFFFBFFFFBFD009E90ABDA9E9F9F09F9BDBC9BDB9F0FFE9099E99ADBBDBC909A9F09DBD99DFDBDBF9FFBFF909F0BDBDB0D9BE9FBDB9FBDBF9FFBDFDBDFF9FFBFF9FF9FDFBDFF99B09DBC0009DB9B9FFBDFB99F9DBF9FF9BDBBFFFBDFFFBFFFFFFFFFFFBDBDFE09A00F9DBBDB9E9BFF0BCB0BF0BCB9F9B99F9E9DADA9C90B0BF9F0BCB09A9FBF9FF9DF9FC909FB0DAD0FD9BE9F9DBFDBDBF9FF9DBFBFF9FFF9FF9FBDB9FBDFB90F9FDB09B9D9AD9FFDBDBBFFF9FBFFFFB9FFFDFDBDBF9FFFFFFFFFFFFFFFFFFF0000909AFCB0F9BCB99F9F9F9FDB9E9BFCB0B9B09BDB9AD9F090BD9BDBC9FBDFF9FFA9F9909BFDA9B9B0BAD99BFBF9BFF9FF9FBFBDF9FFFBFF9FFDFBDF9FBDFDF9FFBDBDBDBD9BFD9FFFDFF9FFFFFFDBDFB9BFBFFFFFFFDBFFFFFFBFFFBDBFFF0090E9BF9BDF9E9BCBE9BCB0FA9ADB0F9F0D0F0F09BCB9A99F9F0BC9A9A99FF9DBFFDB9DBFDBFC9CBDE9C9BE9DA9FFD9BF9FF9FDFBFFF9FFDFFFFBDFBDBBDF9BDBDBDBFFDBCBD9FBFFBFBDFF9BFFFFF9BDDFDFFF9FDBDFFFBFFFFFFFFFFF9FFF90E900D0F0B0BDBDBDBCB9F99FBDADB9FB9A99B9ADA9F0DA90B09F9ADBD9FF9FBFF99DBFFF9FF9A9DA9DBFC9FBDF9BFFF9F9BFBF9FDBFFFFBFFF9FFBDBDDBBFDB9FBDFD9BF99BF9FFFDFFBFFFFFFFF99FBBFFBDBFFFFFBFFFFFFFFFFFFFF9BFFC0909A9B9F9F9ADABF9BDA9AF9FBDBCBF90DBCBC9B9F09B9CBD9F9AD9B0BFBDBDBD9FBDFF9FFD09DA9BE999BF9F9FFDB9FBFDFFDFFBDBDBDFFF9FF9FF9FBFDF09FD9FB9FFD9FF9FFFFF9FFFFFFFFFF9FFFDF9FFFDFBF9FFFFFFFFFFFBFFBDFFBF00AC09EDADA9F9BD09E9F9F9E9CB0BDBCB90B09F0F0F0DA90B0BC9B0D9FDDBFFD9BDFBFFFDBF0B0DBD9BCBDBCBF9FBDFBDFBDBF9F9FFFFBDFFFFFFDBFF99F9F99FF99F90BF9FF9FF9FFDBFFFFBFF9FF9FFBFF9FBFFFFFFFFFFFFFFFFFFF9FDFF0909A9B9B9BDAF0BFF9BCB0F9FB9FDBFBCBDBDA99B99B09F9C99BC9BA9BFB9FFBF9BDF9FFBFF9CBBCBE9F9ADBDBF9FBDFBDFBDBFDF9F9FFF9FBDFFFF9FFBDBDB09BFDBDBDBF9FF9FBDBDFFFFFFFFB9FF9FFFFFFFFDBFFFFFFFFFFFFFFFF9FFFFA0009CADADA9DBD90BCB9F9BF0F0B0FF99090B9CBCBC0F90B9BE99AD9FFD9FFFDFFDBFFFB9FD009C999F09F9FBDFBDBF9FBFDFF9FBFFFBDBFFDFBFBDFF9FFFBD9F99BCBDBD9F99FFDBFFBFFBDBF9FFFBFFF9FFDBFFFFDFBFFFFFFFFFBFFBFFBFD09E099BDBDBA9AFFB9F0BCB0F9FDB9BDA9EB9CB09B9B90F0F099E99BDB9BDFFB9F9FDBFDFFF0BDB0FF0BF0F99FBDBFDBDFDBBDBFFDB9FFFFFFBFDFFBF9FDBD9F09FDB9F9DBF9FFDBFDBFFFFFFFF9FBFDFBFFBFFFDBFFFFFFFFFFFBFFFBDF9FFF0009A9E9A9F9F9F90F0BDB9F9E9A9FF9C99C9A99F0D0CB990BCB90F9FF9FBFFDFBDBFF9F99F090FB09F9DB9FFBDBDFBFBFBDFBD99FFFDBDF9FDBFBDFDFBFFFBDBDA9C9F9A9DBDBFDBFFFFFFFBDBFFDFBDFFFDBFFBFFFFFFFFFFFFFFFFDBFF9FF0090CB9F9E9E9F0BF9F9ADBE9BBDE9EB9A0BD9E90B9B9CB0F99ADB09BDF9FFFBDFBDFFFBFF9F0D9F9F9EBDB9F9FFBD9FDBFBDFFFBDBDFFFBFBFDFFFBF9F9FBDBDBDBB90F9F9FBDBFDBFFFFFFFFFFFBFFBF9FFFFDFFFBFFFFFFFFFFFFFBFFDBFF9A0A90F0B9F9A9FDADADB0DBCDA9BFF9C9D0B090F9E90B9D0B0D099FFF09FBFFF9F9BFDF09F09A90F9F99BCB9FBDFBF9BFDFFBDBDBFBF9BDFFDBF9FDFFBFFDFFFDBDDF99F9F9DBF9FFFFFFBFFFFF9FFDFFFF9FFBFFFFFFFFFFFFFFFFFFFDF9FF0D090F9BD0BFDF9ADB9BCBBDBBDBCBF90B0B9DADB090BD0B09DA90F9B99FBDFFFFF9FFF99F00DBDBDA90FDBDFF9F9FBDFDBDBDFFFFDBDBDFBDBFBDBBF9FD9BFBF9F9AB9FDF9FBFDFBDFFFFFFFFFFFBFBFFFFFFBFFBFFFFFFFBFFFFBFFBFFBDBFF0009B0F0FF9B0BF9ADE9BDA9CBCBDBE9CBCB0909DBC0BD0F9A9A99FDFF9FFFFBDBD9FFCB9F9A90F9BF9B9F9B9FBF9FDBFBFFFBFF9BDFBFBDBF9FFDF9F9BF9FDBF9F9DF9B9BDF9F9FBFFFFFFFBDFBDFDBFDBFFDBDFFFFFFFFFFBFFFFFF0BDBFFC09ACBDB9B9E9FD0F9B9ADBDFB9F9BD9A999ADA9A99B09A900D9D09BF9F9BFBDFFDB0BFD9F00DBDBC9FD0B9FDBDBDBFBDBDBDBDBDFFBDFDF9DFF9BFF9FFDBDBF9FBDB0BD9F9BDB9F9FBFFFF9FFF9FFBFDFBFDBFFBFDBFFBFFFFDFFFBFFC99DBFFE0909BCBCBF9ABF9E9F9A9A9F0BCBBF90E9D09C90E9DADA9B9A00BFF9FD99FFBFBFD99BF00009E9B99AD9EBBDFF9F9FDBFFBDFFBFDFBFBFFBF9FDBDBF9B9F9DBFDBDFDBCBDFBFDBDFFFFFBFF9BFF9FFBBDBFF9FFFFFFBFFFFFFBFFFFFF09BFFD090ADA9F9B0F9F0F9F0F9FF9ADB9FF0CB99A9B0BF9B0999C9C9B99FF9F9BFFBDFFFFF0F900C9BDBDF0F9BD9CFB9FBDBBFDBDBF9F9FBDBDB9F9F9FBFF9FDF9FB9F9BDB99F9F99DBFFBFFFFDF9FFF9FF9FDFDA9FDBF9FFDFFF9FFFFFFFF009DFF0F00DB9F9ADF9F9F9A9B0F90BDB0F9DB90BE9C0D9090BCB0B0BC009BF9FD0BDFF9FFBDF9F09009ADA9B9F9FBB9FD9FBDFDBFFFDFBFF9F9FDF9F9F9F9FFBFBF9DBDBC9BCB9F9FBFF99FFFBFB9FBD9F9ADA9B9F9FBDBFBFBFFFFBFFFBFBFF09BFF00A9A9F0BDB0F0F0F9E9F0FBDADBCBBCBD09B9A0F9AD09C9C99B909FFDBF99BBDF9FF9BF00000999FDDBDA9DF9BF9FDBBF9F9BBD9BDADB0B0F9EBF9F9BDBDBF9F0FBCBDF9DBDF9FFFBFFFFDBDFBFCF9BDFDB9F9FBDBDFFDBFFFFFFFFFF0099FF0D009E9FCBF9BBF9BCB09B9E9F0B9FDB00BC9C990BDA9B9A9AD0D09BF9FDBDFDFBFF0BFD00E900F99A9F09FB9FDBFFBDFBFBFDFBFDBDBDBDF9BD99DBFDBDBDFF9F99F9B9FBDB9FBDFFFFF0BFF9E9BDBDB9BDBF9F9FFBFFBFFFBFFFFFFBF090FF0009E9B9BDAF0DBFCBDBCBDFB9FDA9BC9BD9B0B0BD090DAD0909A90FFDBFD9BFBFDF9DF00900E9BCFBDB9F9FDBBFDB9F9D9FDBB9DA9F9F9F9BDB9EB099BFDBDB9F9F9BFDADBDFF9FBFFFD9FC9BD9F9BDBFFFFFFFFFBFDBFF9FFFFBFFFFC9FFBF0A9E9BCBCBD9FBF0B9B0BDAB0F0B9FFBC00B0D0D9A9F0B909CBD009BFF9F9E9FFFFDBFB0000900DB9DBCF9E9BDBDBDF9FBF9BC9FBDB9FBDBFFBDF9DBDAD9AFBFDBDBC9DBDBDBDBFF9BFFADBB9F9F9BDBDF9BDBFFFFFBFFFFFBFFFFFFFF0B9FFDC909BDBDB9FA9CBDBDAD0BDBDBDADBDB99ADB0B0F9090DA9A90B90F99FF9F99FFFB9FDAD000E09ADABDB9F9F9F9FFBF9DBDF9BF0DBDBDBFDBDFBDBF9BDBD99DBBDADB9BDBDBDBDBDFFFF90DFBDBD9FFDBFFD909A9FFFF9909F9FFFFFFFAD0BFA9E9ADADADA9FFB9E9ADB0DADADBDADF9E0990D0900F0B99C90BC090BFF99FDBBDBDF0BD00009009B9DA9F9FBDBFDBDFBF9BAF0DB9BCBDBDBDB0DBD99DBDBBF9FDBDBDE9BDBFBDBFFBFF09FBFDADBFFFFFD90BDBDFBD0000BDBFBFFFFFF00BFADA90D9BF9BDF0BDE9BDA9F9B9F9AF9BF009BCB0B0DB90D0F0BC99B0B9DF9FF99CBDF9BDA0000009DEDB9F9AD9FBDBBFBF9BD999B9E99BC9FF9FDBF9FFF9DBDDBDBDBDB99DBF9DBFBFDFF9BF9909909090000FFFF900000F9DBFFFFFBFF09E90C90DABAF9ADA9BDA9BCB9F0BCF9AD9BCDB9C09D00B09E90B0909AD09C9BFF99E9BDBF00900000000B9ADBDBDBFADBDFDBDBDBCF0D09F9FF009F9FF9F090BE9EBFBFBFBDF0BD9FBDFDBFFE9DBC09FFF00000909FFF0009090FBFDBF9FFFFF09E900A99D9DBDB9FCBDBCBCB09FB0BDBADBBCB9A0B9C9F09A9DBC909A90B099FF9BDBFDBD00090009000F9BDADBD9F9FBBFF9EDB9900000999BF0000009FFD9999909FDBDBDF9BF9FBFBDBFDA99BB09FF009FE000FC009FFF099DBBDFFBFFFD0000A9CA0BE9E9E9BDA9F9B9EB09F9E9DFADF9C09D09A90BC9CB0B0E990F9F00F9FDBDA900000000000090D0BDBDEB9F9FDB9F9BC9E9900000BFC0000090FFFFFD099F9BD0B9BDF9F9F9FFFFFD0FD9D09000090000000FBFF090BBDFBFDFFFF0ADBC9009C99BF9BDABDB0F0F9DBC9ADBA99BF0B9B0BC90F990B09D099E9090099FB9FFD0000000000009CBB9F9BDB9FDE9BFDBFF9B90A9C9C0000009FC00BFF000BDBDFDBBDFDBBFFFFFFFFFB09BFBFBDBD0C009009F9FF000BDBDFADFBFBFE09B000A90A9AF0BCB9DB0F0F90BCBBF9AD9EFBD000D0BCB90E90DB0B0B9E9AD9A009F990000000000000009CB9F0BDFBB9FF9FB99FCBD909A9DE900009000000AD99F9BF09DB9BDFF9FFBF9FFDF090D9DADBF9FFFFF9BFA90B9FBFF9F9BFFFF9000E0900D09D9BDBCBE9F9B9AF0B0D0BDAF9BFBD9A99090F99A9AD9C9C9909A9C90000009000900900909009CBDBDBD0F090BDFE9BDBEDB0DB090FFDBC009BC99BF99F09FADBDFBDFFF9FFFDBFF9E9A99DBD9FBFFBD00D09F9FC9FBFFF9FFFFF09F9E090A00A9DA9BDBCBDE99BC9BBDA99AD9BD0AD9E9CB09E9C9B0B0B0F90C900000000000B0C000000A0DBBD0F9FBFD9BDF909F9F99BBDB09CB99FFF9FFDBFFDBCB09F9F9FFBDBF9FFFFFBFF9F9BD0B090B990909BF9BF9FBFF0F9CBFFBFFBC00F0DAC90B0F0F9E9BF9A9F0DB0D0BDAD9BEF0B99A90B09F9A9B0D09C900B9B0000000000000B00009C09BC90F9BF9DBADA90BF9E90FDFCBDFBDDA909AD09AD090909F9F9BDBDBFFFFF9FFFF9FB0D0FCBDBC9EDBDBFDBFDAD9E9F9A9BFFFFFFF09FB009000D0B9CB9F0F9F0FB0DABDADBAF9F90F0DA90F090D0D0B90BCB99C0B000000000D09C0900000F0BDB9FCBFA9DBDAD9009F9F09BDFBDFBDBFD9BBD99F9F9FF099E9F9FFFDBFFFFF9FFDDFBB9909F9B9BFFDBFDBFDBFBDBFFF0DBFFFF00BC0F009E90BDABDADB9E9B0DBAD0B9AD9CBBF90B99E99FA9A9B9CB0990E9B00D0C09000000A0000909009CBDA9BD9FF9DB9A0D9E909F099ADB9FBDBFFDFBFF90B999FBDBDBF9D9FFFFF9FFBFBBC9CB9F000C9009BDBF9BD0900090009BFFFFF90F09FE000A00D0BDBCB9E9F09DBDAD9AB9FF9CBC9E90A99C909E90DA0B90D90A0000000C09009C00A009F9B9FDBFBDBFAD0D9A090F00BF0D9E99FFDB9FBD090F9CB09DA9BC9FBBF9F9FFF9FDFD9090D0AD0000000000C00900D00009FFFBFF00BF0F00909C9A9ADA9BDE9B0BCB0BDAF9DA9F0B09B90F9DA9ADA90B09D90F0AC90000000900C000009C9A9BCBDB9F9FBC9FB00090F00BD09BF0F090B0D0000F090B0C9B0DF9BFFDFFFFFFFFFFBFBE0000900900000090000ACB0A909BFBDFFFE9C09E90E00A0D0DB9FDA9BCBDBCBDA909ADFBD0BD0E909AD9009F9C9A9E99090090090000000900900B0DADBDAFCBDBD9F9DF0000909009E0990F00D9000000000C900C990909BFBDFFBFFFDBDBD990000900F0D0000909090909C9BFFFFFFF90BF09E9000900A90FA9F0F90B09B0DBCBDABFBD0B99B0F9ADB9090B0D09E9F00000000000900A00000C09F9EF9BDBFDA9FB0BD000000D009C009090A00D09F090090090A09FF99FFFBFFBDFFFFFFF099E000900000C0A000F0C09A9FFFBFFFFFAD0BF0F0BC0090BC9DA9F0FBCBCBDA9B0BD9F90BC9E0D9AD00DBCB09A9A900900000000000009C0B090B0BDB9FDBDB9F9BDFDBF90009000009E0C009C9A0C0000000000D9FF9FFF9FFDFDFBFFBDBFF9090C000009099C9FB09BBC9FFDFFFFFFD09ADF0F0009AC009BAD0B909B090BF0DADAFF0BC9A999AD9B9B090D099C90F000F0000000000000C0A0DBCB9F0B9E9F9FDBF9AD9F000009A9099A90000090900000009909BFFFDBFFFFFFBFFFDFFF9FFDB900000A09EBF009DADBFFBFF9FFFFA9E9FFF09C000900F0D9F9E9E9CBBD09A99F9BD09B0DAC9A9C0CBDA9ADA9A90000009000000900090090099F0DBDBDBFF9BD0BDBE9BD0009FEBCBCBC909000C9000909BDBFDF9FFFFFFBFFFFFFFBDBDBFFFFFBDBD9DF990BDBE99FFFFFFFBFFFD0B0BF00F0B000090B9A9A909A9C90BC9CB0BFBD0DB99BCB9B9090909090D0BC0000C0000000C0000D09ACBDBF9FDBD9FF0FBDBD9EDBF90909F9090BCBC0F000099DBDFFFBFFFFFFDBFFFDFFFFFFFFFFFFFF9FF9FFBFFFDF9F9BFFFFFBFFFFFFA9C90FF0F00D000000E9ADA9C9A90F0B0B0F0DA0B09E0990F0DBCBCBCBCB0900900000000000090000A0D00A9FE9BFFF99F9FADBF99FFF0009000090BF9B99F9FFFBFFBDFFFFFFF9FFFFFFBFFBDFFBFFF9F9FFFFFBFFFBFFFFFFFFFFFFFFFFFBDA0AFBCBCB0A00000909C90DA9C9E09C90D09BC909E99F0F09B0990909090E900000000000000000090C9B99DB99E9B90F9F9FDB09FBCBFD09E9FDBDF9BDFFBDBFFFFFFFFFFBFFFFFFDFFFFFFFFFFFF9FFFFFFDBFDFDFFFBFFFFFFFBFFFBFFFF09BD9CB0F0C00000000000000000090000000F000090000900000000000090000000090090000009000900F0BDFF9FDF9BF0F9BFDAD9F9BFF99DB9FFBDFFFFFFFBDFFFFFBDFFFF9FFFFBFFFDFFFFFBFFFFFFFBFDBFFBFFFFFFFFFFFFFFFFFFFDE00FAFD09A9000000000000000000000000000F000000000000000000000000F00000000000009000000090D0B09FB9AD9DBDF9BDBBF9FF9FFBFFF99FBDFBDF9FFFBFF9FFFFFFFFFFBFFFFFFBFFFFDFF9FDBFDBFFFFFFFFFFFFFFFFFFBFFFFFB90090BE9EDE00000000000000000000000000F0000000000000000000000009000C00000000D00000000BC09BD9FBDFD9A9FBDEDBDF9FF9F9FDBDBFFFFFBFFBFF9FFFFFFFFFFFFFF9FFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CB009F0B9A9E9C000000000000000000000009E000000000000000000000000009A000000900000C000900B009AF0DB0BDFBDB9BFF9FF9FBFFBFBDFF99BDFFFDBFFDBFFFFFBFDBFFFFF9FFF9FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCB000BCBDEDF00000000000000000000000000E9A09000000000000000000000C0000900000000A900090C900D099DB9FDBBCBFFDBDB9BDBDF9FDBF9FFFFBDBFFFFFFFBFFFDFFFFF9FFFFFBFFFBFDFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC009F9F0B0BCB000000000000000000000000BC00A0000000000000000000090009000000000000000000AD0BD0BF0F9BC9F999F9FFDBFFBDFBFDFFBDBDFFFDBFDBFFFFDBFBFFBFFBFFFFDFFDFFFBFFFFBFFBFFFFFFFFFFFFFFFFFFFFFFFFFDA90000BE9F09F0C00000000000000000000000CB00000000000000000000000000000000900009C009000909000BC9BDADBF9FFEDFBDBFDBDBFDBFBFDFFFBFFBFFBFDBFFFFFDFFFF9FFBF9FBFBFFBFF9FFFF9FFF9FFBFFFFFFFFFFFFFFFFFFFBF0090BC9BC0BC0B00000000000000000000000BC0000000000B00000000000000C000C00000000000000000FAC909BC9DBD9FDB9BBDBDFBFFFBFFDFDBFBFFDFFFDFFFFF9FFFFFBDBFFDFFFFFFFFFFDBFFFBDBFFFFFDFFFFFFFFFFFFFFFFFFFBD00900FDAC0BF0BD00000000000000000000000CB009A0C00000000000000009E0900090000000090000000009F09C9BA9BFB0BDFFDBFB9F9BDFDBFBFFFFDFBDFBFFFFFFFBFFBDFFFFFFFFFFFFDBDBFFFD9FFFFFBFFFDBFFFFFFFFFFFFFFFFFDAF0E09AF9F00F0DAE0000000000000000000000BC00000900000C00E00A000009000900000000000000D000900B90BC9F9C9FDBF9BF9DFFDFBFBFDFDBF9FBFFBFFF9FBDBFFDFFBFFDBFFBFFFDBFFFFFF9BF99DBFDFBFBFFFFFFFFFFFFFFFFFFF909009F00ADBF0BD00000000000000000000000E9A0000A00000B009009000000000000000000000090A0090009E90B90FBDA9F9FD9FBF9BFDFDBFBFF9FFFDBDF9FFFFFFDFFBDFFFFFFFFDBFBFFBFF9FDE99FBF9FBFFDF9FFFFFFFFFFFFFFFF9E9A090DB0D0F0BFE00000000000000000000000BC0000000000000000000000000000C000000000000090000D009BC90F909FDB9FBFBFDBFDBFBFFDBFFFF9FFBFFFBDBDFBFBFFFFBFFFFBFFFFDFFF9F0099E99FF9FFDBBFFFBFFFFFFFFFFFFBF0BC0F0A00BE9BCD000000000000000000000000DA00A090000000ACA0000009000009000000000000000C0900BC90BC90BF90BDBF9FDBFDFBF9FDBFFDBDBFBFFDBDFFFBFFFDFFBFFFFFDFFFFFBFBD090B9F99F9FFF9BFD999C9B99FFFFFFFFFCF0900090D09C0BE900000000000000000000000E9C000000000009000CA0000000000000000000000000900A09ADC9BBD9CB99ED9F9FDBDBFDFBFF9FFFFFFF9FFFBDBFF9FBFBFDFDBF9BFF9F9FFC99099F09BFDBF9FF9BFE9000FBCBFFFFFFF9F0090FC0BF0BCF00F0000000000000000000000F0A00000A00000000B0000900000000000000000090000009C09A909C0B9F0F9BF9BF9FBFDBDFDBFFBDBDBFFFBFFFFDFFFDFFDBFFFDFFFBFFFF0B00FBF09FDFBD9F09FF090B9D9099FFFFFF9A0BC0A90BC009B0BC00000000000000000000000AC9000000000000E0000000000000000000000000000000900009CBC9B9CBDB9FDBFDFBFDBFBFBFDBDBFFFDFBDFF9FFBFFBFFFFFFBFFDFF0B00909B9D0BBFFBD9B09F909090CA00FFFFFFFF0F9C909CB0F09AC9D0C0000000000000000000000DA00C00000009A090E0000000000000000000000000909000BD0A90B9CB9CBD9FBC9BDFDBDBDBDFBFFDF9FBFFFBFFBFF9FFFDBFFFDFFB9F9D9900C9F09DF9D0B09FBDAD0BC09009BFFFFFFF900A09A0C90BC9B0A000000000000000000C00000F9E0A00000900000009E00000000000000000000000000000009C090FBCB9BCBCBFF9BFBFFDBFBDFDBBFFDF9FFDFFDFFFFFFFFFFB9B9F900B0C99BF09F09FB9FDA9F000900B0009FBFFFFF0F09C0BC9AC9BEF0F9F000000000000000C0000000F0090000000A000AC0000000000000000000000000000009C09F090F09F9E9B9F9DBDF9F9FBDFFFB9FDFBFBFF9FFBFFFFBFBFFF00C09009F009AF909B9FF09C90900909009009BF9FFFFFFF000B000099AC90DA0000000000000000000000C000E00E000000000009A0000000000000000000000000000009000BF090F0BDBCF9FBFF9F9FBDBBD9FFFFBF9FFDFBFFFBFFFDFFBD099BD0BF09DBD9C9F9E9090B09BC90000BC909E9FBFFFF90909C000D0AC9F0B0D0000000000000C0000000000F090000000000000000000000000000000000000000C0AD00A0909CB909E9DB9F9F99FBFFDBDFFBDFBDFDFBFBFF9FFFDBFBFF099BC9A9C9D0B0B09BC9900090BC0000090000E9BFFFFBF9E00000090A90B00BC9A000000000000A00000000000F0A00A00000000000090000000000000000000000009090F090C0090FD09A9F9F9FFF9F9BFDB9FFBDFBFBFFDFFFFFF9FFFFD0F00FF9CB9A009FD0B00A09DBC00900009A90A90B9FF99FFF9000000E900C9F09A9C000000000000000C00C00000AD00900000000000A00A00000000000000000000000000000009A90DA9BF9F0FBF99BDBFDBFFFF9FBFDF9FFBFFFFF9FF99F0B09F90099C099F000D09D90A09090009E0C009DADF900BFF000DA00900000B00E0DA0C000000C00C000000000000DA00C000000000000000000090000000000000000900000090F09CB09DE90F9BDE9FFFBDBF9F9FBDFDBFFF9FF9FFDBF99F09C9E909BC0009F99DB0B00A09000000B00909C0B9FA09FF0000900900009DBC0B99B0000000000000000000000000AD00A0000000000000000000000000000000000000009C000000A09B0B9DF9FDF9F9F9FFF9FFBDFFBFFF9FFFFFFB0BCBF00900900C0B00BCA0000D00D0D09DAD0D0D00009B0F0909F0909A00000000A00900AC0F000000000000000000000000F0A0000000000000000000000000000000000000000000900090D00D9CBA9E9BBDBFBF9BFDB9FBDBDB9FFBDBFFFDBD99F0909BD0909000999CB0900B0000E90B0B009A9E09F0F09F90A00D0000000909000D9B00000000000000000000000000F0D00000000000000000000000000000000000000900000BC0000B00B09DB9F9FBD9DBFDBFFFFDBFFFFFFDFFFF0090F00000F0000AC009AC0900009C090B00F0C9CBAD099BE900F00C909A009000000E00F0ACBC0000000000000000000000000A0000000000000000000000000000000000000000000000000909C909FB0F9ED9FFBFDBDBDBDBFBDBDBDBF9F9090F9090F9000090909C90900D09A09E90C90090B0D9ADAD90BD0009000000000909090F00D900000000000000000000000000F0000000000000000000000000000000000000000000900900C000ADBC0DF9F9BFBDBDBFBFFBFFDFF9FFF9FFF009F90C090000900F0009A00000AC00000909ADA9C9AC99B0E90A09000A90D0000000E0000B0AD0000000000000000000000000AD0000000000000000000000000000000000000000000000000009009B0BDADF0DBFDAD9F9DF9BF9FF9BFFBFC0909CB00AD000009000B00D00900909000000900090900E9B9C9000909C00000000A900090D90A0000000000000A00000000000DA000000000000000000000000000000000000000000C0000900900F0DB0BDB9FBDAFDBF9FB9FF9FF9FDB9FD0B0DA900090000090009C0900000D0000000000090000BF90C0A009A0A0900A000090000B0A0AD0000000000000000000900E000AD0A0A0000000000000000000000000000000000090090000009E0090B0DBDBDF9BD9BFDBF9FF9FBBDBFFFD090909C009000909C00900900900000000909000000AD9C9C009090C9090A00909000C0090C90D000000000A000A000090E000000DA0909CA900000000009A000000000000000000000000009000009000DB9E9FA9FDBFF9F9E9F9F9FDBFBDBF0BC9A09000000000000090000000909090000000F09000B00B00009A0C0D09C00000000000000B000000000090090000000900000E9E0A090000000000CA0C9A0C000000000000000000000000000000909E99F9F9BDF9BF9BDBFFBDBFC9F9FC9900D000090000009000090000900000000000900009000F90E90E0090A00000000900000090BC00000000000A00A000000CA0000F0090CA00C000E9A0909A000B0000000000000000000000000000000009F00F9FCB9FCBDFF9F9FBFDFBDBF00A0D000900000090000000000900000C00000A0000000BD0009009090E90090000000090F00BC00000000000000000000090000000F000B090A0B000C0A0A00F0000000000000000000000000000000000009F9BCB99E9BDAF9BDBDFDB99FF099C9A90000000090000009000000000900090D0090090BD0AD000F00E90009A000900000000BC0B0000000000000000009E0000000F000000E090C0B0A9C00D00000000000000000000000000900000000090009F9F0F9FDBD9FDBFFAFBCBD900A000000000000000000000000000900000000000000F00000BD0090909000009000000009009000000000000A00000000000000000F000090A0A90C90A09A0A0000B000000000000000000000000000000000900F9F9F99EB9ADBF99D9F9BCBD09090900000000000000000000000000090009000000F090900B00F00009C000000009A00F00F0000000000000000000090000000F000A0A09C00A0A090A0090F000000000000000000000000000000000000009DA9E9AF9DFB9F9FFBF9FDB000AC000009000000000000000000000000000000090090000E9BC9F00000A09000900D009009F000000000000000000000000000000A00909C0A0B0909CA00D0E0000000000000000000009000000000000900009ADBDBDBDBBD0F9F9FDADBC0909000000000000000000000000009000000000000090000090C0B000AD009AC0000A000009E000000000000000000000000000000F0DAC00A09000ACA00D0A0000009000000000000000000000000900000000009BDA9F0FC9E99FADBFDBCB0000090000000000000000000000000000000000000BC0000BC090C00900F0009A0009009CB0B0000000A0000000000000000000000DA009A00A0A0D009A0000000000000000000000000C00900000000000009000C09DADB9F99E9FDBF9F9BC0090000000000000000000000000000000000000000000909000A9009E9000000C090000A00D0000000000000000000000000000000AD00A00D090DA0BC0000000000000000000000000009000000000090000000090A9DBDAFCB090FBDBCBC90000900000000000000000000000009000000009000009A00009000B0000090090000C9A90F0000000000000A000000000000000000F0B0C09A0A0A0000000000000000B0000000900000000000000000000000000009CA9E99BC9BF909C9000090000000000000000000000000000000000000000900000009A9E900900F00000B00900C9000000000000000000000000000000000F00A9A0009C90F000000000000A000000000000900F000000000000000000009000909BC09C00AD0B0F90000000000000000000000000000000000000000090E90000000C00090E900000000000B09A0000000000009000000000000000000000F000DADA00A000000000000000009C000000000000009000000000000000000000000090A9090BC90000000000000000000000000000000000000000090CA900000D090B900E9000090BC90090C00D0000000000000A9A00000000000000000F00F0A00000000000000000000000A00000A0900000000000000000000000000009000000D000D00BC90000000000000000000000000000000000000000090000090000AC00D00000AC000000CA90A0000000000000A00C000000900000000000F000000000000000A000000000000009009C00B000000000000000000000000000090009000900900000000000000000000000000000000000000000000000C90C0009090B000BC090A09A09A90090000000B0000B0CB0A00000A0000000000F0B0A900000000000090A0000000009A00000000909000000000000000000000000000000000000000000000000000000000000000000000000000000000009000000BC0AC090009A0090000C000F000000000A00009A0900000000000000000BC0000C00C00900B00A00000B0000000000009000000FE0000000000000000000000000000000000000000000000000000000000000000000000000000900000000090090000CBC09C009C09000900000000000000E09ACA0000000000000000FA90CA0B009000A000000000000000000C90AC0000000C00D090000000000000000000000000000000000000000000000000000000000000000900090000000000000000909A900000000A000BC00000000A09000090E09000000000000000009C0A90000A00A00000000000000000009000900DA00900000000009000000000000000000000000000000000000000000000000000000000000009000000900E9000000AC0000090000000900000000000000A009A0A9AC00000000000000000EBC000000000090000000000000000000000000000000090000000000000000000000000000000000000000000000000000000000000000000000000000000900000C9090B0C0000B00F0009C000000000090000009C09A00000000000000000DA9A000000000A0000000000000000000A000B00000000000000000000000000000000000000000000000000000000000000000000000000000900000000000000DA0000000900A009000CB0B0000000000A000000A0AC000000000000000000F0C00000000000C0A000000000A000000000000E900CB0000000000000000000000000000000000000000000000000000000000000000000090C00000000000090009E90000A09C00000B0000000000000000000A00909A00000000000000000DA00000A0000900900000000000000000000009000900090AC09000000000000000000000000000000000000000000000000000000000000000000000000009000090000909000090009C0000000000000A000000900A0000000000000000000F00D00009A0000A0000000000000000000000000000000009000900900000000000000000000000000000000000000000000000000000000000000000090000000000000C0AC90000CB00000000000000090000000A00000000000A000000000AF00A00000CAF0000000000A000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009A90000000B0000000000000000000A000A009A000A9C0A0000000A000F000000A0900000000000000000A0000000000000000900000000000000000000000000000000000000000000000000000000000000009009000000000000900009000C000900090000000000000000000A0000900000000C0A090F000B09C000C0000900A000000000009A000000000000A00000B00C0000000000000000000000000000000000000000000000000000000090D00000000000000000000000000E0BDA909E0900BC0000000A00000000000000009A0000B0A900A00000CA000F00000A0000000000000000000000000000000000009A00000000000000000000000000000000000000000000000000000000000009000000009C00900000000009C0000E0000BC000000000000000000000000A0000A000000F0C00000B0000AD000000000B0000000A00000000000000000000000009000000000000000000000000000000000000000000000000000000000090000000000009000000000000009009009000000000000000000000000000000000090A9E00B0000000EBC0DA0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C0000000000000000000000000090900BCA0009ACB00000000000000000000000000000A09E0C009A0000000A90A0A900000000000000000000000000000000000000000A0C09009C00000000000000000000000000000000000000000000000000000000000000009C00000000000AD00900CB0900000000000000000000000000000090A0B0B0AC000000900F00DA000000000000000000000A0000000000000000000090A00000900000000000000000000000000000000000000000000000900000000000000000A90009CA0F090B000900C000000000000000000000000000A0B0A0D0000009000000ADA000F00000000000000000090A00000000000000A000A0900000F00AC0B0000000000000000000000000000000000000000000000000000000900009A000000009000000D000B00000000000000000000000000900C0CBCA0A00000A000000000F00F0000000000000000000C90009000000000000000000A0900090000C9C00000000000000000000090000000900000009E000000900090000F000C9C0A90B0C00BC00000BC000000000000000000000000000CA9A9009009A0B0000000000B0000F0000000000000000B000AC0A000000000000DA00A0900000000090000000000000000000900000090C0000A0000000090900000000009000900009C0000B090000B0F000000000000000000000000000A0A90000A00000000000A9009A00A0F0000000000000A00000B0090000A00000A09A00C900CA00B00000000000000000000000000009000090009000D00C90000000000000000090A0B000090000000090C90000000000000000000000A0000009000A00000A0000000000A0C000000F0000000000000D00000CA0C0A000000000000B0A000000000B000A090A0D0000009000000000C000000000D0000000000000000090000000000090AC09C000DBCB00000000000000000000000000009A00A00000000000A00000000A0BCB00F00000000000000A00000090A90000A00000000000CB000000C000900009000A000000000090009000000000000090000AD0000900000D00E090DADA9000090F000000000000000000000000A000900A000000000000000090000E9A9000000000000000000009E00A00000000009000000000B0CB000009E9A00000000C0000009000D000009A00C0000000000000009000BC0ACB0F00A0900000000000B00000000000000000000000000000A00A0000000000000000000C90A90CAC9A00A0F00000000000A09009C0000A0000A00900A000000000000000009A0000A900090000000A90E0000090C0B0000F000000000000090000900000000000009000CB0000000000000000000000A0900000000000000000000C0A00A000A09A00A900F0000000000000A0C00A000000A000000000000000000A00A9E000C0B000000000090A9C009000D0A900000900000000000000000000009000C90900F00DA900000000000000000000000000E00000000000000000AC00B09A9AD0DA00000000F000000000090009A0090C090000000A0000000A90009009000BCB00000000B000E0000000000B00000090E0000900900090900009000C009000000900B0000000000000000000000000000000000000000000909A00B00CA0C0A0A0000000A00F000000000A000000000B0E00000000000000000A0A00000EBC00000CB0000090000CB000A0C0009C00A09000000000000000900000090000A9E0BC0BC00000000000000000000000000A0900000000009A9AC0E00B0E9A090A90000B000000F0000000E9000DA000000000090C00000000000000900000A90A9A00B000B000A090B000BC9090A000B0D00009C09C000000000900000A900D00900000000000000000000000000000000000A00000000AC000AB0B0C00000A000000000000000F0900090000A000000000000A09A00000000000000000009E9C00F0000C0090C0AC0ADA0ACA090DA0C0000C0A000000B00000000D09000CA000000000000000000000000000000000000000000A00B000B0E9C00CB09A090000000000000000F00000A000AD00000000000000000000000000000000000000A0B00000B000A09A00BC00D090CA000900B09090090009000900F00A0A00090000000000000000000000000000A0000000000009000000B0009A0B0A00A00A0000000A000A00000A0000000000000000000000000000000000A900000000000B0BC0A0000000000090009A0A0A900900A9C0A000C0A0000C0E0B00BC9C0000000000000000000000000000000000000000000A00A090A0009A00000000000000000000000000A0F000A00009000000000000000000000000000000000000A900C0A9C90009E000000E0A000C9C0AC0AC00000C0A90C0000A909C0F0A000A0000000000000000000000000000000000000000000000A0090A00A90A09A000000000000900000000F0F000CB000A00000000AC00000000000000000000000000B0B00A0A00A009090A09090E9A0009000090A90B00000000900A0B00F00000DA00000000000000000000000000000000000000000000000A000000000000000000000000A0000000F00009A00A00900000000090000000000000000000000A0C0000F000000000A0090A0E00000B00A900A00000000A90000000C0E9000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00AC00C9000000000000A00000000000000009000900900ADA000000000B0CBCBCA900000000000900DA000090009A00090B00000C0B000A000A00000BC000000000000000000000000000000000000000A000000000000000000000000000F0090A90A0000A0000000000000000000000000A000A000A900000B0000B0CB00A09ACB00BC00000A00A00000000000000000090000B0C000000D00000009AC000000000000000000000000000000A000A9000000A0000000000000000000000ADA0000000E09000000000000A00000090DA9AC00C000000000090000900B00B09A09000000009000000009000000000000A00E0A900A90090DA00000000000BC0000000000000000000000000000C00000000000000000000000000000A0000F000000A9090C00A0090A000000000A90AA0C009A9009A000A9A0000A0000AD0CAC9E000000B00A090090A000000000009090B09000F00A00A000000000A0900000000000000000000000000000B0900000000A00000000000000000000000000AC0000000A0A00000A090090000090CA9C9A09A00A0000000000A0900A9E9A0B09A0000000000C000E00000000000B0CA0CAC0ACB0000000000000000000A00A09000000000000000000000090C0A00000A0000000000000000000000000000F09A0000000000D0000000A000000A9A90A00000C000000900C0000000000000000009A09A0009A9A00000000000000900090BC900E90000000000000000000000A0C00000000000000000000A0BC000000000000000000000A0000000000000F0000000000090A000000000A90000C0AD0F00B0B000000ACB0A90A00000B0F000BC00C00C9A0000C90B000B0000000A09A000A0B00A000000000000000000000000A000000000000000000000009E00000000000000000000000000000000000F0000000000A00000000000000A9A9ADA0000000000000000000000000000000000B00B0A00000B0A0000A0000000000000B09C0CBC00000000000000000000000000A000000000000000000000A00000000000000000000000000000000000F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010500000000000089AD05FE,'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',NULL,'http://accweb/emmployees/fuller.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(3,'Leverling','Janet','Sales Representative','Ms.','08/30/1963','04/01/1992','722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000080540000424D80540000000000007600000028000000C0000000E0000000010004000000000000540000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFB009A00A9009A9AA9A900009AA9ABE9EB0B0BB09A0AB0A9A9B0FA0FA0CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFE9A09A9EBEBFBB0BB0AB09AC9090AB0BCB0BA9E9AA9A90B000009AAB09009BEB0BAD0EB9E9F9B0C0B0FADB0F0BEB0FCBC0BCBFB0F0BBE0B09BA0BBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFA9DABEBFFFADFFADBF0BEBBAFAF0FBBAB9ADABADBE0AB0BCBFBC090E0A9AFA9BC90BB9AFABEE0BB0FA9ABEBE9B0FBA9AB9A9A0FB09E0BDAFA0DBE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB0FABFFFAFAFEABCBAA9F09AF0B9BBCBE9EBE9ADA9A990FAB0000BFA9090B09E0BAF00A9ADAB9BCBE9F0BCF0BE9FA9EB9CA90FBEAF0BFBA9ADBA9ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FE99A9FAFFFFEBDA9ADBCBFA9BA9EAFACB0B9AF9A9AFAEB0900BB9A0000A9AF0BBCB0B9E9BADAFAB0BABEBBBC9EAA9EBEABBE90B9B0B0BCBE9A9FADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBAFBA9BEBE09ABFEBABAB0F0F0F9DBFBBAFAB0FAF0B090BCBC00090B0B0A0BBE9B0BCA9AF9A9BC9E9FAD00ABAB9FA9CB9C90B0FABFF09ADBFEB00B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBE9ABDEFBDBBFFCAB0F0D0FB0BBA0ABF0FDA9F0A90009A09A0B00000000D0BDA9AFADA9BDBEBFABABBADABFBDA9E0BEB9EBABE9A9EB0FE9AB09FAFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9E9FABADAFEB0BBDE9BABBA9FEDBBF0BFABC0A900BFE0BC0900B090B0B0BFAFE9A9A900A0B0E9CF0C0B0F0CADABF0F0ABBCB0B0BCBEB0A9AFA9A9E9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA9F9FAF0FCBCAB0BE90EDABBABCBFA090B090FBFEF009A0B00A000F0B00B0BE9EBAF9FBFBBBBABB09FABB0F9AFA9FBCFBCB0E9B9A9FAC9F0BC9F0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBF0DA0A0FBEBABBDEF9AFBBADA9CB0A0BCA00BAF0BFFE9BA9009090B09ACBBAFF0BADB0A0BADACBDE9CA0BC0BAAF0FBAEB00B0B9A0F9EB9ABAFABABBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0BA9BFBACB9EDAB0BAF9AE9A9FA90900090B0F0BFBFE000CB0A00009A9B0ADB0BE900A99ADABFBABEA99A0BF0F9AF0FF0BFADA0E9BABBEBC90BC9E0BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9E9AF00FBFEBA9EBBC9A09BCA000A09A9ABCB9BFFEE9AF0B009090BAFBEB9BAF0BAFF9ACB0BFACBDBBE0DBFAF9EB0B0BE909A99B00BF0B0AABCBABDBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0BA9AFBCBCBBEBBCABAD000090909009AC90B0AA9FF090B0B00A0BC90F090F9EBCB0AF9ABF0B9BAA9CB0A00FAABCBEBDAFAF0E09BE90FBF9CBB0BCA0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0FBDA0BABE90CB9B0FA9AB000A00B0A9A9A9F9EBFE0BC00090900BA9BEB0BABCB0FB0BCB0FBEBDBFA9E9BFADBCBA9A0BE90BBB0E9AFA90FA00BE9A9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A0B0EBFBCB9EBBAF0F0BC90B0090000909A9E0BBFEE900B0DA000900FA0B0B0BBE9B0BEB0B0AB0A0F0BBC0A99ABAD0BFF9EB0C009A909EBA9E9F0BCADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9BDBFBB00BE0BAC9AFA9ABFE09A00909A0BCBA9AEBE90AB00A90A9ABFBE9F00FC9AEBC909ADB9EBFB0BC0B09AE9CB0F0A0A90B9EB090FAB0FA9A0FA90ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A000CBE9BE99BFA90F090AB00000009090F0BFBFE0B0DA900090BCBA90AB0BEB90BAFADBA0FB0EBEBABEBC9AA9A9ABF90FA009A9EB09E9AFADA9CA9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB9FB9A9AE9BEFAF9A9ABEB9EBCB00000A0B0BE9AFF0FA090B00A90B0FADB009BAE9ADBAB0FFB0FBF09BF00B0D0F0EB00AB09EB0DA90A9AF0B0B0CB00B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A00EBCB9BEB0BA0F0B09AE90B00B00090A909FFF09009A00090A0F9A9BAB0B0BFADA0D0F0B0BA9A9E00AF0A0BA9BC9E909AB09A09A9CA9ADACA90B0BCFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B9BB0BE9E9E909F0BCBEB90B9CB00900BB0FAABEE0B9E090B0BDBBAF0E90C9AE90B0BAB09AFDABE9ADB9A909A9E00A90E90D0A09E0B09A9A090A00009BFE000909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CACBE0BA9A9AB00B0B0BC0BCAB0B0000009AFBE9A9E090A0009ABEFABBAB009BADAF09ABE9ABBDAFBAFA9E9AD090B0A90A0A9CB0900B0DADB0B000900BC90000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB9ADBE9FA9E9EB00F0F9A9E900BCB0B900F90FBEDA9A09090A9A90BC0DB0B09AFB00BCBCB0BCBEB0BDA9E0BC0A0BC090A9090B09A9B00B0A00009000900000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A9AA9A0BF0B0BFBA90ACB0B0F0B0B00A90ABAFE90ADA0A0090DAFB0BA0BC0AFAC0BCB0BADAB0B0FEBA90B00B0900BCA9CB0A00A0000B09090900000000009000009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9BF0F9FADA0BBFF0E90A99ABCB090B0E9000B9FE90E9009009AFAA9A9A9F0A909BBB0B0BC9A9EBDB0B9E0BCA9000BA009A0090B0909A900A0000000000000000090009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9AB0BBF0F0B0B9EBDAE90B0E0BC9AF0B00E9F0A9A9A090A9A9FAFCBB0B0B00FAF0E9AB0B0BAB0F0BBF0B0A9A909A9090A0000000009090000000000090009000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBE9AF0F09AFAF0A9EA90A90B090B09A90B0BAF090009A0909BE9BA9AFBBC0A90F0B0A9CB0F0DAFABE0000900000000A0A9090A9A900A0000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09A9ADBF0BBE9B0BBE90BBCA909A009A9AC9A0BEBA0F0009A0BEBBE09F0009A90BABE090B0B0BABBCB090B000090009090900A090000900009000000090000000009009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9A9F0A00ABE9B0FA09ABC0B9E0A9F9ADA9A9E9D00C90A9000F0BDA0DA0FBBE9E09F9FA0B0E0BCBCBAD0A009000000000000009000000090000000000000000000900000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA9A0B9DA9CB9EB0BDAD0BBC0B09000A90BF0BAA9A9A9009A90BAAFFABBA0A9A9A0A0BDAC9B09A9BE9A909000000000000009000900900000090000000000000000000900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9ADA0A09AB0A0BE0B0A9E0B00B0B0B0A900F09E09000B000B0BFF0B0F9F9BE9A9E9BEA9BA0DA9E09E9000000000000000000000000000000000000000000000900000009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE09A9BC9A9CBE9E9F0F0B09A9AD00B09C0B0B0BC9AA9A009A9ADABFADAABABCBCB09EB9C009A9A09B0A00000000009000000000000900000000000000000090000000909C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09A9C00A90A09A9A0A0BCBA0D0A0BC9A9A900BE9AC90090BCBFAFABCBADA9BA9A0A9BCAB0F0B090A0090000090900000009000000000090000000009000900000000000BE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFE90A9A90A90B090909A9A0DBA0990B00B9E09F0A9A09A000B0BFDEBE9FBEBEFAD9000B0090A0F0BCB000009000000009000000000000000000000900000000000009000BF0BFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFA09000090090000000909A009A0A00B00A90A0F009A09A9ADA0BADBB0A9F09B9A0F0BADB0A990BCB0000900000000000000000000000000009000000000000000000009FE0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA909090009000000000000000009A00909A09BC0BFF09AC090090BFF0FAE0BF9ABBEE0B0A9F00A900A090090900000090000000000000000000000000000000000009000900BF09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090000000000000000000000900090BF009E00B0BA0A90B0A9AFA9ABA9BFABAD00BFF0900BA9DA0F0B0B00000090900000000000000000000000000000000900000000009A9ED0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000090000000000000900000009000000B0B0B0BECBDA0090CB9EBFF0F009CBBAB0BEBE909E0A9009000B00090000000900000000000000000000000000000000000090000900BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00909000000000900000000000000000009009009A09BF0A090A0B0ABBEBEFAFEBBCB9ADAF00A9AF090A9A9E9009000900000000000000000000000000000000000000900000090009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09000000900000000000000000000000000000A9A009FEA9BCA9090BB0FFFFABF0BCBEAB0BFEB09E9A0A90009000009000000000000000000000000000000000000000000090090090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000090000000009000909AF0DA090E0F0FFFEBEDFA9EBA99AF0BF09ABE09009A9A09090000000000000000000000000000000090000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00009009000000900000000900000000000000009A00BF0BA09A99BBFAABFFBB0BE9BCBA90F0FE090BCA9A0009A000000000000000000000000000090000000000900900000000090D0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9000000000090000000000000000000000000000090A0BC9AD00A000BFBCBCBEF0BAFBCBAB0BABCBAF09009A9A0900900000000000000090000000000000000000000000000000900A9FEFFFFFFFFFFFFFFCBF9FF9FFFFFFFFD99F9FFFFFFFF000900090000000000000900000000000000000000009BEBE90A909E9F0BBFFA9EBC9B0B0BCF09EF0BC9A09A00090000000000000000000000090000000000000000000000090090A99EBFFFFFFFEF9A9BF9FF9F9F0F0BDBFFFB0FB9F09FFFFE00000900000000000000000000000000000000000090BAE900A90BABBAFAFEA9EB0BAAF0FEB00AFBE9A0900909A00000000000000000000000000000000000000000000000000009C0A9FFFFFFFB9DBDFDBFDBFBF9FBDBE999DDB9CB99A990FF090000900000000000000000000000000000000900009FBAF09A09E9E9E90BCB0E9EBDAB0DAF9CAFFE9E0B0A0090909000000000000000000000000000000000000000009000000B0900BFFFE90DB0FBFFDBFDF9FBD9F9BFFABDBFBDBDB0F90900000009090009000900090000000009000000000000A9E90A09F0BFAFAFEBBCB9E9EBF0BAF0AB9BAFA9A0909A00000000000000000000000000000000000000000000000000000000BCBFC9909B0FBDBFFF9FBE9DAF9FDB9DBBDBDBCBF99ADA00000000000000000000000000000000000000000009BEFA09A00BF0BE9A9E0B0A9A9E0B009EF0E0FE9AC90A000900000900000000000000009000000000000000000000000000900B09009ACBF0F9DBDAF9FBDFFBF9ADB9FFBCBDBDBF09F0909090000000000000000000000000000000000000009A9A909AD0B00ADCB0F0900909A9A9E0A90BFFA9EB0A090900090000000090009000000000000000000000000000000009000909009A09909F9FBFFF9F9FF99F9FDF9FB9DBDA9B99DB0B9000000000000000000000000000009000000000000000AF0E90ABCBFBEB0E9A0B00A000900C90000BEF0F9ADA000900000000000000000000000000000090000000000000000000000000090A9F09B9F9BFBFF9BFF9FBBDBDFFB9F9F9FABD9CB0909090000000000000000000000000000000000000909A90A90DA009BCBB0F00F090900B0000B0009AF0AF009A9000000000000000000009000000000000000000900000000000090009009009BFBCBFDBDF9FCB9FBDF9FB9ADF9F9B0D9A9B90000000909009000009009009000000000000009000009E0B0F0A9FAEAB0CB0B000000000900D0009009AF00B000009090000900090090000000000000000000000000090000000000900090BDBC99FBDBFBF9FB9EF9FBFF0F9F0F9ADF9BBD9E9A90900000000000000000000000000000000000000A9A0BCB0ADA009F0EB0009A900B009AC000000000009A0F0090000000000000000000000000009000000000000000000009000000900090B9AFBDBFFDBF9FDBDFF9F9FFDBF9BDB9BD0B09000000900000000000000000000000000009000000900090009009ADA0B90BCB000090900009C0D00000000090B0009000090000000000000000090000000000000000000000000000000090B9CB9DBFF99F9FB9F9B9FFFB9BF9BE9F0BCBD0B9B9090900900000000000000000000000000000000000B0A9A9A9A09A9E0AD0B09009ACA00000090090000009000090000000009000000000000900000000000000000000000000000000090909B9EBDB9FBFFBCFBFFFBDBDFF9EF9F9FDBB9BD0D0B000000009000090000000000000000000000009090090000009A090900A000A9A90909000000C00090000000000000000000090000090000000000009000000900000000000000900900A9DA9F9F9FF0F9BDB9F9BDBEBF9BD9B9E9B9C99A9A09090900000000000000000000000000000090000A00B00B09A9A09A0A9A9090900090000090090900000000009000009000000000900009000000000000000000000900000000000000099A99F9B0F9BF9FDB9F9FFF9F9FFFFBEDBCF9B0F9C9B09A00090000900000009000900000090000000000900090A00090009000000009090B090000000E000000000000000000900900900000000000000900000000000000000000900000000009E9ADBBDF9B9B9F0BF9B9FBF9B99F9F9B9EDBCB909C090900000000000090000000000900000000009009A0009090009000900909A00A0000000900009000000000000900000000090000900009000000000000000000000000000000000909AD9BDB9DB0F9E9F9F9BDF9BDBFDEF9F0FDB9B9B9CB0B9090090900000000000000000000000000000000A000A0000000000000000009090900900C0D09C09000000000000900000000009000900000000000900000000000000000000000000099BDB9EB9F9F9B0B9F9FB0F9F0BB9ADB9B09E9E9A9090A00900000009000000000000900000000000009009090000000000000900090000009A090A00C0000009000090000000009000000000000009009000000000000000000000000090099A9A9E99DB9B9BDBDB9E99F9A9BDBDF9AFDF9B99C9B0090900000900000000000000000000000000090009000000900000000000090000909A000C0D0D0F0909000900000000090000090000000009000000009000000000900000000090000009DB99FB90DADA9B9F9FB9B9F9BDBA9F99A9EDB0B0D9A900900900000000009000000000000000000000000900900000000090000009090009090900CAC0C0000000000000000000000000000000000000000000000000000000000000000009A9A9F990F9B99BD0B9090D0F9FCBD9F0BE9F990F9B0A9CA90000000000000000090000000009000000000000000000000000000090000009000E0C0C9C909000900009000900000000000009000000000000000000000000000900000000000909D9ADAF9AD0BD0BD0BDB9F9A9B90B0DF990BAF090D9009009000000009000000000909000000000000009000000000000000000000090B00F0D009A000C090000000009000009000000000009009000000900000000090000000000000000909A9BDB99099F0B90BD9B0B0BD0F9F9B9ADABD99BDA9A9009000090000000000000000000000000000000000000900900000000090090000900DE900D0D000000090090000000000009000000000000000000000090000000000000009000000BC9BC9B0BDA9090F90B0C9D90B90B09CB99D0B09CB90D0B00909000000000000000000000000000000000000090000000000000000000009ADAD00C000009C00000000000090000090000900000000000000000000000000000000000000000909B0B9C99090B9F9AB9F9B0BBD0B9F9B90B0F0F0B0F0B0909000000000000000000000000000900000000000000000000000000000000900C0DAD090C90C00000000000000009090000000000900000090000900000000000000000000000090B90D9A9ACB0BD0909C90B0BD90BD00A9CBDA999099909000000000090000000000000000900000000000000000000000000000000000000009ECF0E00C09000090090000900000000900900000000900000000000000000000000000000090090F9BC90999D9A9ADA9A90D09A9A9FBD0B909F0AD00BCB09090909000000009000090000000000000000000000000000000000000000000090009C90D0900009000000090000000000000000900090000000000000000900000000000000000009090B0B0B00B90999909A9B09C9090BD0F9A9990B00909A00000000000000000000000000000000000000000000000000000000000000000009E9C00CAC09C00000000000000090000900900000000090009000900000000000900000900000B0B090099C9BD0F0B0F9F990DB9BDA909B90D0F09090A9C9090000000000000000000000000000000000000000000000000000000090000000900C09E9090000090900000900900000000900900900900000000000000000000000000000000990D009BDA9A90B9BDB90B0F9B9ADADB9E9EB9B09ADA990B0000900900000000000000000000000000000000000009000000000000000000000000FC000C0C0090C0A009000000000900000000000000000000000000090000000000900000090090B9090999B9C999CBD99BC9F9BDBDE909DADA99090090090000000090000000000000000000009000000000900000900009000000090090000909C9090090009C0D000000000900000009009090909009000900000000000000000000000090B009BE90F0DB9BE9B9ADF9B9BDBBDBFFF0B9BDAC9A9A090090090000000000000000000000000000000000000000000000000900000000009000C00AC0C000C9009000000000000000000009000000000000000000000000000000000000009A099B099B9B90F99B9F9B9BDBDBDFFF9F0FDADA99A9C900B0000000000000000000000000000000000000900000000000000000009000000000909C9C9A90C9000C0E90090000900009000000009000009000000000000000000000000000090990B0D0BC9F9F99BDF9BDFDB9BFFFBDFFFB099F9AD90B09009009000000000000000000000900900000000000000000000900090000090909000CCAC00C00000CB0D0C00000000009000900000000900000000000000000009000000090009A90E909B999B09BDBDB9F9BBFFDF9FDFBF9FDFCB0F90A9000900000009000000000000000000000000000000000000000900000009090000000090B0C9E90D0D0B0C0CBC900090000000000090090000900900900009009000000000000000009099BD09FBDF9BDB9BDB9FD99BFFFFFFDFFFBFBDB0F99E9A909090000000000000000000000000000000000000000000000000000000909009A000C9F0C0CAC00C09C9C0E090000090009000000000900000000000000000000000000000000909F09A9B09B9F9F9F9B9DBBFFFDBFDBFFFFBDFDEDB9E9909C00000900000090000000000000000000000000000000000000009000000000000090C9CC0C90909C9CE9E0C9C00009000900009009A0000000000000000000000000000000000900B09BDBD9F0F9FB9BDBDBFD9BDBDFFFFF9FDFFBDB0F9BCB0B0090000000000000000000000000000000000000000000000000000009000090900CBCA0F0CAC0CAC90C9CBC9E9000000009000000090090900090000000000000009009000000B9DB09B09B99B9D9F9BDB99BFDBFBFFFFFFFBF9FE9F0F0BC9090009000000000000000000000000000000000000000000000000090000090000909C0DC0F090D090E9CAC0C0C0C900900000009000000000000000000000090000000000000090B09F0DBF0BD0BB99F9BDBD9BBDBDBF0DB99FFFDBFF9BD9B0BC9000000900000000000000000000900000000000009000000000000000000900000FC0FC0C0C0E0C9C0D0F09C9A0000000090000900090000000009000000000000000000009A999B9B9099DB9D9E90BDA9B9D99F9E9FBDFFF9FBFDBFCBADBC9A09000000000000000000000000000000000000000000000000000009000000000C0DEC0DAD009C9CA9E0C0CA0C09000900009000000009000000000000090000000000000909ADAD9E9F9FB0B9B99B909909A9B0999BDBBBDBFF9E9E9BD909B090000000000000000000000000000000090000000000000000900000090000909C9E90FC0E9EC0E9C09C9009C9CAD000A00009000090009000000009000090000000000000BD9B90B9B9B09DBE9DBCBB90F990D9F0F9FDFDBF9FFBF9F9EB9FC9E0000000000000090000000000000000000000000000000900000000000000000BCCDC0F0D0DAD0E9CA0C9C0009CAD0909000090900000000000000000000000000090000D0B09F9DA99BDB999B0999CBB9EBB0B9B9E9BFF9FBDF9FDAD9E9AB099900000000000000000000000000090000000000000000000000000000900000C9ACBCCADEADE0D0AD0AC00D0C0D0A000090000A000000000000000000000000000000090B9F9A9B9F0DB9ADBC9BCB99D099D9F9F9BF9F9FFDFB9EBDBBDBD9FCA0000900000000000000090000000000000000000000000000009000000009090EDCCCBDE0D0C9CAD0CD0BC00E9E0D009A00000909000000000000000000000090000090B9DB9DBDA99B9F9B99BF9B9F0BDA9B09FFFDFFFFFFBDFF9FBCBDBF0B90D0000000000000000000090090000000000000000000000000009000000000CD0BB0CE0FCADAD00F000C0C90C9E0F000900900000000900000000000000000000000BD9EB90B09B9F9F09F9F999D099999999F99FFFFFF9FFFBDB9F9FBC9F9E900000000090000000000000009000000000000000000000000000000000000DACCC9E9C0FC0CAD00DAD09ACBC0D00BC00B00090009000000000000900000000000000B99B9F9BD9F9B9F9BB9F9A9B9BD9BDF99F99FFFFFFFDFF0F09BCBF9CBDA900000000000000000000000000009000000009000000000000000000000090DAD9E9CAD0BCF0DAD0C0C0C90CB0E9C9A000900009000000000000000000000000009BDAD9E9BF0B0BDB9BDD99999D9D9F999DB9DBDFFFFFDFF9F9BFFBDBFBF0F0F090000000000000000000000000000000000000000000000000000000090C0DCC0E0D0EC90CAC0E0DAC90E90C9C0E90900A0900000000000000000000900000099E9B9B99F99BDB9BDB9B99F9990909999099FDFDFFFFFB9FB9F9BDBF0F9F990000000000000000000000090000000090000000000000000000090009000CBC0AD0F0D09ECBCBC9C0DA0D0EDA0BC900A009000009000000000000000000000090B9F9FDBF9BF99DBDA99CB09999B9B09BF99999FFFDFFDFD90B9FFBDF9DBDBE90000000000000000000000000000000000000000000000000000000000009CF09EC0E0C090C9CA0F0CD0E90CDC00E9009000B090000000000090000000000000BDA9F9BDBD9BE999BDF9999900B9F9BFFFF099099DFDFBFBDBDB9FFBFFBDADF0F0900000000000000000000000000000000000000000000000000000000900CDC9E9C90F0E9E0DC0CB0C9CE9A9AD00F00A9000000000000000000000000000909F9F9AF9BFBD9BE9B9909090B9BFBFFFBFFFFFF9D9B9FD90B90BFFDFDBFFFFBF0000000000000000000000000900000000000000000000000000000000000F0C9E9E0AC0C9C0F0909CC9E090C0D00F0090009000000000000000000000000009F99BDF99F9DBAD99CB090B9F9FFFFFBFFFFFFFFF00999BFBD9F9FFFFFFDBDFC9C90000000000000000000090000000000000000000000000009000000900D0CBECCD0D09E0F0C0CAC0BC0F0E9E0BC0900090009090000000000000000000009A9AF9B9BF9BBD9B9B909009BFF9FFFF9FFFFBFFFFF0000999A99BDBFBF9FFFFFFB0A000000009000000090000000000000000000000000000000000900000EDFC9E9AC0DA9C0F0F009C0BC0D009C0BCE9000090000000000000000000000000BDBDBDBF9BFDFBD0F090009BDBF9BFBC0BDBD09B90B909000990BDBDFDFFFFF9FDF99000000000000000000000000000900090009000090090000090000090000FE9EC9E0CCBDCD00DA9CC9E0F0E0FC090090000900009000000000000000000DB99BDB99F9B9DB9090000B090090909990909909D0000009A09F9BFFFBFFDBFFE9E0000000000000000000000000000000000000009000000000000009000DED09CC9E0D0BCCA0AD0CCE9A0D0C9D009E0000090000000000000000000000099A9FBDB9DA9B9FB009000909909B90999B0F9BDEF90999F9A9C9999BF9BDFDBFFF9F090000000000000000000000000000000000000000000000000009A000DAD0FECBC9CADE0BCDCADA90CDCADACACFC90009000090000000000000000000009F909F9FBDBDF9DB90B9F090909099090999099999F9FFFFDB09F0BDBFDFBBF9FDFBDA900009000000009000000090000000000000000000000000900009000C0F00BCACBC0DCCB0D00CE9A0F0CD0D00E0900009000000000000000000000000B9FB99A99B9B9B99E90B9F9BCB9DA9DB9FDBDF9FFFFFFF9FFDB09BDBDBB9FDDBFBEDBD00000000000000000009000009009000000000000000900000900009A9DCFDC9C9C0F0E9CCA0D09CC90CB0F0FC900000000900000000000000000000090F9DBD9BD9F0F9BC9BD9B9DB99F999B9F9BDBFFBFDFFFFFF9A9DB099BDDB9FBFDFFDBCB0000000000000000000000000000090000000000000000900000090CCAD0CA0F0CBC0D0E90DA0CA9ACF0CC0C000090900000009000000000009BF0099BB9B9BFDBB9B9B99B90BC9B99F9DBF9F9BDBF9DF9FFFF9F0F99B9DBBDABFDBDFBFFFE90090000000000000000000000009000000000090000000000900000C9AD0F0DC0F0C9CAD0CA09C90CD00DA9EDE90000000900000000000000000BF000BD0F0F09B9C9F9DA90BD99A9F9B9B99B9DB999BBFFFFDFF9F9F0D0B9DB9D9FBFD9FDBDF900000000000000000000900000000000090000009000900000009CBCDED000F00F0E9CAD0D0E0E9A0F0CC090C00090090000000000000000000909090B99B9BD9BB99A9D9F9B09D09BC99F9DA90F9D09B9FDBDF99A99B99F9DBF9DFBFFFFFBEDA900000009000009000000000000000000000000009000000000C0C0E9EFC90C90C9C0D00A0909C0D0DA9ECE90000000000000000000000000000000BDBD9F9B0D9F9DB9B909BF9BD09B0B9B99F90B9FDFBDFA9F9F9F0DB9B9F9FFBDFFFFDFDB00090000000000000000000900900900000090000000000090090D0D9C9C0AC9ACB0E90CBC9CACADACE9CC900009000000090000000000000000909B99CB9AD9F9F09B9AD09BD9090B999D99CB09B9FFFFDBFDF0BD09BB9F9FBDFFDFFFFDFFED0900000000000000000000000000000000000000000009000000C0F0CADECD0C900D00F00CA909C0D09CB0C909000900000000000000000000000009CBB9F9DB9B99F9D99B909B9B99E99A9B9090D9BD9FFDBDBDB9B99DB9F9DBDFFFFFFFFDBBC00900000000000000009000000900000900000090000009009E9C0FCDA9AC9E0FC0F0CF09CEDA9E0DE0CDA00000000000000009000009000009090F9DFF9B99F9F99B9BD9F909D9F99A99009B090B0B90FBDF9BD90F9BDBDBFFFFFFFFFFFFDE9900000000000000000000000000009000009000000900000000C9C0BCFCD0E9C09E0DA0DE0900C9CA9CB09000090000090000000000000000000090BB99BDBF9F99F9BDA99090B0990900990990BC90099DB9BDB0999F9F9F9FDFFFFFFFFDFBCA0909000000000009000000090090000000000000000090090D0E9CC9CBCAD0E9E0DACDE0DACAD0E9C0C000900000000000000000000000000909A9BD9BDBD9BDFBDBDB9DA9B909B09C90B099CB99F0909B9BC909B9F9B9FBFFFFFFFFFFFFED0900000000009000000000000000000900000009000009009AC0C90C9EBC0DAC9C0F0C9E0F0C9DAD0CADA90000000900000000900000000000000090DBF9F9FBDB9DBDBDB9D09AD909B00D9B0B99F999BDFFD9B9B99F99FFFDFFFFFFFFFFFFDFF00090000000000000000000000900000000000000090000C0DCBCDACDCF9C9ACBC0F0E9C0F0AC0AD0D0C0090009000000000000000000000000009B99B9FBDFBDBF9BDBDBBD990B0999B09D99B99BDFFFFFF0D09DB9F99FFFFFFFFFFFFFFFFCDA90000000000000000000000000009000000000090000909C09C0CDA9E0CA0CD09E0D0CBC0DC9ED0E0F090000900000000000000009000000090909FFF9BDBDBDBDBDB9F9D9A999099BD9B9BDDF9FFFFFFFC9B9F9BDBFFFDFFFFFFFFFFFFFFFB00000900000000000000000000000000000900000009000A9EC9EBCDE9F09C9A0E0DACBC0DA9AC0F0DC00009000000000000000000000000900009BF9BDF9FBDBDBDBDF9F9B9DB099AD9BDBF9FBFFFFFFFFDB9DB9F9BDBDFFFFFFFFFFFFFFD90D0090000900000000009000000000009000000000000000DCDAF0D0F0FCC0AC0D0BC90C9E0CCDAD0E9AD090A00009009000000000000000000009A99F9F9FBDB9BDBDB9FBF9F90B0999BDBD9BBDFFFFFFFF0D9B9FFFFFFFBFFFFFFFFFFFFFFFF00000000000000000000000000009000000000000000009ADADC9EF0FCB0D09E0D0ED0F090B00DADCE0C0A09009000000000000000000000000909F9BFBF9DBDF9F9BDF9D9F9BD990F90BDBD9FBFFFFFFFF9BDF9BDBDF9FDFFFFFFFFFFFFFFCBF000000000000009000000000090000000000009000000000DAFE9EF0FE000C0DAD00E0CAC0DA0D0BCDE909000000000000900000000000000000B0BD9F9FBDB9B9F9F9FBF9BDB9E999BDB9BD99FFFFFFFD9BBBFDFFFBFFFFFFFFFFFFFFFFFBD0900000000000000000000000000009000000000000000009ED0FF0FFAD0C9ADAC0DE9C9C9A0C9CACDA9C000090000000000000000000900900099F9FFF9F9F9F9F9BDBF9DBDBDB99A9D99F9B9FFFFFFFFFFDFDFFBFDFDBDBDFFFFFFFFFFFDF9E00090000000000000000000000000000900000000900900CB0FE0FF0FF90C00D0F00C0A00D0BCADF0CF09090000090000000000000000000009A99F99FBDBDBDBFDB9F9FBDB9BDBD9B0FB9DBDBDFFFFFFFFFFFBFDFBFFFFFFFFFFFFFFFFFFDE9000000000009000000000000000000000000000000000909CFF9FDAFDAC90E9E00DA0D0C9AC09C00F0CE00000090000090000900000000000009A9FFBDF9F9FDFDF9F9F9BDBF9B9BF999DBD9BDBFFFFFFFFFFFDFFFDF9F99FBDFFFFFFFFFFFF0900000000000000090000000909000000000000000090CAC9CAFAFDAFF00C9C9EDAC90CB0C9ACBCFCE90900090000090000000000000000000009F9FDFBF9B9BD9FB9F9F9BD9F9F90BDB99B9DBDFFFFFFFFFDFFFFFF9F9FFBDFFFFFFFFFFFDE90000000000000000000000000000000000000000000009C9EBDCF0BFCB0E9E0E9C0D0E90C9AC9CBC090000900000000000000000900000000099BDBDBBDDBDBDBFD9B9B99F9F9B99F9A99F9F9BFFFFFFFFFFFFFB9F9F9F9BDBFBFDFFFFFFFE9000000009090000000000900000000000000000009090DE9ECD0EBCFCBFD00D0D0ADAD00DA0D0E9CADE90000000000000000000000000090090009BDBFDBBDBDBDB9FDDBDB99BF9DF9F9DB999F9BFFFFFFFFFFDEDF0F9FBFFFDFDFFFFFFFF9F000000090000000000000000900000900000000000000000C90BC9CDABCF0CF0ACD0C0ECD0DAC9CE9C0000900000090000009000000000000000090BBDBFDBF9F9BDA9BBDA9F099A9B09B99F9F9FDFFFFFFFFFCB9B9F9F9DFFFFBFFFFFBFFFE9090090000000000000009000000900000000000090000090FCDCBCBCDCBC090DC9ADAD09AC0C9E0DCBDE900009000000000000000000000000000009FFBDBDBBDBDB9D0909D09E9D99F9D9F9BDB9BFFFFFFF99BDBC9090B90B9BDFFDFFFFFFD000000000000000000000000000000000000090000009000C0000C0C9E9EFCAC0A0CC0CBCC9E9E0D0AC00000000000000000000000000000000000909B9F9B9BDB9BD9A9A990B0990B0B9AB9BDBDFFFFFFDD0BC990A90B090B9FEFF9FBFDFA9000000000000000000000000000000000000000000000000090DAD0DAD0FC99C9C9CB0F0C0BC0C0DACD0FC9090000000090000000000000000900000909FCBF9F90F9A99D99A9090A90909D0D9BDBF9FFFFEB909A09909C99F9F9F9FFFDBFBDB00090000000000090000000000900000000000000900000900C0C00CDAC9EF0CAC00C90DAC0BCBC0DACD00E000900090000090000000900000000000090BBDBCBFB9D9B0B09099A9909090B9B9DBDBFFFFFD0E909000909A09B0FDFBDEBCBDBC09000000900000000000000090000000000000000000000000900DA0CDAD0FF0D09E9CA0D0D0D0DE0D9ADF090000900000000000000000000000000090099B9B99DB9A9D090B009000A909099FBFBDFFFFDA9909090B9A999CDFBF0F9999B9A0900000000000000000009000000000000000000000009000000C90CD00DE9EC0CAC9C0CDACACACA0D0ECC000009000000000000000000000000000000090B9F0B0B0BD909BC90BD09990B090F99BDFFFFDF090B009090000AFB0D099A09ADBC900000000000000000000000000900000000009000000000000000C90EDE9ED0F0D00ADA0C9C9C9CDAC9E9ED09A0000090000000000000000000000000000909D090900B0F00090BFA00909A99BFDBFFFFE99F00090F0009090DF000099F9B0B0000090000000090000000000000009090000000900000000909C90CC9C0DEBD0CAC9C0D09AC0FCBCDAC9E9CA0D09000000090009000000000090000090090B0B90909090B0900009DF00909099BBDBFFF9E099090BC9000000A9009B090F0D0900000000000000000900000900000000009000000009090C0000C9A0CBCBCDCAD09C09A0E09E00C0ADF0CCB0DA000900909000000000000000000000000000990B0B000BC0000F0BE009A909A9F9FFFFFF99A09009A00909090009E909B90B000000000000000000000000000000000000009000090000C90F0D0C0D0CDCBE09C0E0BC0D0D0C9EDADC0EDBCDE090B0C9A000000000000000000000000000909AD090900900909A090990090B9DBBDBFFF9E009009000000000009E909E9CB009000000000009000000000000009090A90900000900000DA0C0C000D0CBCBED0CBC9C0BC0CA9E090DCAFDAC0E9E000AB0C0000000000000000000000000000909A90099C000000900000900099B9FFBF9FF90909009009000009FE90A99A90900090000000000000000000900000009000000000000090009009E9C0E9CBC9FE9CAC9C0DA9C09CECA9C0EDBE9C9F0DDEB090000000000000000000000000000909ADB0B09090000099B009090F9B9F9FFBDF9CA090090009C9FBD00990BCB009000000090000000000009000900000009009009000000090C9C00C9C0C9CF0F90D0DA9CADC0FCA90DCBC9E0DE9ECBFAFC000090000000000000000000000000090909009BDAD9CB9A0009A09B99FFBFF9F0B9B0900909B0B9A0009BCBF0909000000000000000000000000000009000000000900090000C00009C000DACBCFCCACAC0CE9CAFC09CFCAC9ECDE9ECBDAFC090A000000090000000000000900000909A90B09009A0B000909009B09FB99F9FF9F00900900000900909A09009000000000000000000000009000000000009000900000900909090D0C090D0C9CBCB0D0DAD09CAD0ADE009CBED0F0EDBEFFF900D9C90000000000000000000000000090990D9E0909900900909909DB99FBFF9F90DB0090909090090B09090900000000090000000090000000000090000000900090000000C00C000900E0DACF0FE0E9C0ADAD0FCFADEDE9C9ADAF9EDFBEFEF0A9A009000000000000000000000000000A9A990B000990900000B090F99F9B9E9B0900000009090090000000000000000000009000000900000000000090000000009009090D09C0C0AD0D0D0DE9FC9CADCC00E0F0DADACADEFFDEFBFAFFBDADFED0000000000000000000000009009099090A9090900000900009FB9BF9FFF9F9DAD000000000090909000000090000000000000000000000090000090009090900000000E0C00909C000C0F0DE99CAD00BCF0D0FEF0E9DEBEBEBFEFFFFFEDFADA09A09000000000000000000000000000909090000090000999B999F9FBF9DA9B99A90900000000000000000000009000090000000000009000090000900000000000009C909C00C09CF0F0DE9EE9C0FCC90DAD0D0ED0E9FDFFFFBFFFEFFADFAD009000000090000000000000000909B0009000900009090BE9DADB9F9F9FB9F0F09000090090000000000000000000000000090009009000000000B00900090090009C000C00D090C00D0CF0FFCBED0BCE0C0ADADBEDE0CBEFFEFFEFFBFFEBDA0009009000000000000000000000909B9A09000090CA9C9D9B9B9F9FBDF9F9DB9F9BD9F090090000000000000000009000000000000000000900D00D00A90000009009CD09C00C0C9C0C9E0F0FADCBEC90DADC0CAC9ADCBCBFBFFFFFFEFFBFE0D000A900000000000000000000000909C99A9DBDA999B9FB9FDF9BDBDBFF9BBDB9E90B00090000000000900900000000000000000000000000C9A9FA9ED009090000C0A00C09C00B00BCE9CDADDFAFC9EDE0C9E9C9EDCBCFDFEFFFFBFFFFEFE9000900000000000000009000009090B9B9B9DB9BF9FBDFB9DB9B9FBFFFF9FFDBDF9B9009000900900000000000000000009000000000009000FADFCBDE90F000090090D0D00C090C0DC09CFADFEADBFE9E9CBC0E9E9EADC9AFFFEFFEFFFFFF9E90009A090000000000000000000009099ADB09F99BF9FBDFFBFDF9F9F9FFF9BF0B9FC9009000000090000000000000000000009000000000900DEBFEFBEF0DCB0000C0000D090C09C00FCB0DFA9DECBFEBEDCBC90C0DCACFC9FFFFFFFFEBFEFEFE9009000000000000000000009090B0D9BDBDBF9DBF9FB9BD9FBFBF9FB9FF9F9F09B00000000000000000000000000000009000000090000090DFBFFE9EDACC9CA909C000C090C00D00DCF0DFCADBF0FFFABC0EDADA9CBCBEBFFFFFFFFFFFBFC9000009009000000000000000000909B90B9B99FBD9FBDFFBFBDBDBDBCB9DA9BDB0009000000000000000000009009000000000000000000000FAFFFBFDAD0F0C9C0C09C900C09CDACD0E9EBC9C9ECFFF0FCDE90CC9EFC9EDFEFFEFFEFFFFFCB000909A00000090000000900000909B09F9FF9FB9FBDBDB99F9FDFFBDBD9A9D090909000000000000000000000000009000000000900009000DBDFAFCFADAD0C9C0C90C000D09C000DAC9CBCFCBCF9E9EF0FA9EDEBCC0BCDADBFFFFFFFFFEFBC0900000000000000090000000090909DA9B99B9DBDFBDBDBF9F9B9BDBDBC9B09A90000009009000000900009000000000000000900009000090FAFFBF0FC0C9CAC90C090D000CA0DC0DADEDF0EDACBCF9EFDECBC9CBDCCADCADFBFFFFFEFFFEF00009009000000000000000000009A999F0F9FBBDB9FB9BDB9F9F9CB9A9B00909090000000000000900000000000000000000900000000C0000DFFFFFF0FDE0DC0CB0C000D0D0D00F0CD0F0FFFADFCF0F9FAFBCFACCADADADCFAFFFEFBFFFFFF0F09009000900000000000000000009A99B9B0DDBDBDBDBF9DB9EB99F9D0090B000000000000000000000000000000900900000009000900909EBFFEBCF0C0D009C0C90D000C00C9C9CAD0F0FFFFAFBFEF0FFCF0CDADAD0C0DADFEFFFFFBEFBEF0000000000000900000000000090909DA9DBDBBB9B9F9F99BBD99DB09B0909009090090000000000009000000090000000000000009000000CBFFFBDF0DAD0E9C009C00C0D00D0C0CADCF0FFFBFFFEFBFFEBE9EF0D0DE0F9EDADBFFFEFFFFFFDF0909009000000000000000090009A9BDB9F9F9DBDBDB9DBC99A9B0F09A000900000000000000900000000090000000000090090000009000BDFFFFEBEDC0D0C09C00D09E09E0DAD0DADADF0FEFFFFFEFBDF9E9EBCE0DCCC00DECBFFFFFFFFFAFC0A090000000000000000000000090090B9B9BBDB9BDBB9B9BD0990909090090000000000090000000000000000090000000000000000090CBFFFFFCBCBC0D0C09C00E09C0D00D0E0D0F0FFFFFEBFFDFEEBEFFDEDBDADA9FCAD9FCBFFEFFEFFF090000000000000000900000000909B9BDBDBC9B9F9BD0F9F9A9F09A900090009000900000000090000000000000000090000009009000009EFFFFFBCBCCBC0BCC09C9C00D0CD0C9DE9CF0FFFBFFDAFADBDFBFAFACECADCC0D0ECBEFFBFFFFADAC090009000000000000000009009B0D099B99BDB9BE9B9B0D9900900909090000000000000000000000000009000000000000000B009CC9FFFFEFBCFCC90C9C0A9C000CD00F00FCE0DE9FC9EFCBEDADAFAFEFFFFBDBDADADE9C9CD0FFFFFFFEF9C00900000000000000000000090099BCBDBBDBDAD99BC99A009B09000000000000000000000000000090000000900000090009000000BCFBFFBFEF9E9ED0C0D0C09CD0A9C0CD0D0DE9EFBE9EBC9EDEDFFFBFFFFFEFEDADADE9E0FC9EFBEFFFAFBC00000000000000000000000090A09B09C9B9B9BBD9BC999A090090900090000000000000000000000000000000900000000000900009EFFFFFBFE9C00D0C0C9C00AD0C9C9ACADA9E9CFCFC9EF0FBFAFFFEBFEFFBFFFFFE9EDBCBCBDFFFFBFFCA9000009000000000000000090999009B9BC9BD0D0B90B00900090000900009000090090009000900000090000000900000909000900CBFFFFFFCBEDED0E90D0AD0D0C9CACD0DCDE9EFB0F0FE9FBEFFFAFFFFFBFFFAFFAFFFBEDF0FEFBFEFEDA90090000000000000000090000000A990D09BD9B9B9A900B09090090000000009000000000000000000000000000000000900000000DBFFFFFFEBF0D00D0CC00D0C0C9E0C9C9E9E9EDBCF0F9FFEFFFBFFFFFFFFEFFFFFFFBEFFBEFDBEFFFFBFFC0000000000009000000000009090900B9B099A909C9090900000000090090000000000000000000900900009009000900000000900ADBFFFFFFFCF0CF0D09AD0D0F0C9C9CADCF0DEAFFFFEFAF9FAFEFFFFFFFFFFFFFFFFFFFFFFBEFFBFFFEFBF090000090000000000000000000909009CB0D9BDA99A090090090090000000000000000900000000000090000000000000000900090EFFFFFFFBF0F0C0CC0C0C0C0D0C9E9C0E9EBDF0FFAFBFFEFFFBFFEFBEFFFFBFEFFEFFFEFFFFBFFEFFFBCF00090000000000000000000009000090B099A9C9900900090090000000000009000900000009000000000090090090009000900090DBFFFFFFFFFE9E9CB0D0DAD0D0E9C0C9E9C9CE9FFFDFFCFBFFFFFFFFFFFFFEFFFBFFFFBFFEFFFEFFFBFCFB0900000000000000000000000000090090B090B09A9009000000000090000000000000000000090009000000000000900090000B0EFFFFFFFFFFE9CD0D0C0C0D0E0C9C0CDADCFEFBFFAAF0FBEFFAFFFFFFFFFBFFFFFFFFFFFFFFFFFFFBFEFBFC0A0900000900000000000009000900900909A90B00900090090009000090000000000900000000000000900009000A0090090AD0FDBFFFFFFFFFFFE0C0C9CBC00D0D0D0F0CDA0DADADFFBFEFFBFFFFEBFFFBFFFFFFFFFFFFFFBFFBFFFFFFFEBF09000009000090000000000000000000900090909000900000000000000090009000000090000000000000000009090000000DADAFFFFFFFFFFFFF9F0F0C0C9C90C0CAD0DACDE9CFFAFFEFFBFEFFFFFFFEFFEFFFFBFEFBFFEFFFFEFFFFFFFFFC90090900000000090009000000000900009000090909000900090000000000000000000000090090000000900000000009009AFFFFFFFFFFFFFFFFECD0C9C90CAC9E9C0C0D0F0FBCBDFFFBFFFFFFFBFFFFFFFBFEFFFFFEFBFFEFFFFFEFBFAFCBC0B0000000000000000000000000000000009090000000000000009000000000000000000000000090900000909AC9090009EFFFBFFFFFFFFFFFFE9F00DAC0C9C9C0C0D0F0F0DECBFFAFFFEFFFBFEFFFFFBFFFFBFFFFFFFFFFFBFFFBFFFFFFBE9000B00000900000000000900000000909000000090009000090000000000000000900009000000000000900000900009000BFFFFFFFFFFFFFFFFFC0FC0D0D0C0C9C9CAD0CCFADBFCBFFFFFFFFFFFFFEBFFFFFFFFFFFBFFFFBFFFFFFFFFFFEFF0900090000000000000000000000000000000009000000000000000000000009000000000000009000000000900009000090BDAFFFFFFFFFFFFFFBFC0D0C0CB0CBC0E9C0DA9CDACBFCFFFBFFBEFFBFFFFFEFBEFFFFAFFFFFEFFFFFEFFFAFFBDAC009000900000090000000000009000000000000009000009000000900000900000000900009000000000009009000009000CBFFFFFFFFFFFFFFFEDAD0F0D0C0D0C9C0D0EDCB0FDADBFFFFFFFFFFFFFFFFFFFFFBFFFFFEFBFFFEBFFFFFFFEFFE90900090000000000000000000000000000000000000000000000000000000000000000000000000090009000AC0090B000DBFFFFFFFFFFFFFFFADAD0C0C0C0D0C9C0DAC9CADEDAFFFAFFFAFFFBFEFBFFBFFFFFEFFFFFFFFFFFFFFFFAFFFFFAD00009A00000000000000000000000000000090000000009000000000000000000009000000000009000000090909A000000BCBFFFFFFFFFFFFFFF0DC0D0DAD0CB0CBC0D0E9DCB0FDADFFFFFFFFFFFFFFEFFFFFFFFFFFBFFFFFFFFFBFFFFFFFFEFC00090B09090000000900000000000000000009000000000000900000900000900000009000090000900000000009090900BFFFFFFFFFFFFFFEFF0DAC9C0C9CC9C0D0C9CCADEDAFFAFFFFFFBEFFBFFFFFFEBFFFFBEFFFFFFEBFFFFFFFFEFFFF0B0900000000009000000000900000000000000000900000000000000000090000000009009000000000909000909000000DFFFFFFFFFFFFFFFFBCF0C9E0D0E09C0D0F0E9AD0F0FCBDFFFFFFFFFFFFFFBFFFFFBFFFFFFEFBFFFFFEFFBFFBFFF0FC000909000000000000000000000000000000000000000000000000000000000000000000000000900000009000000B09FBFFFFFFFFFFFFFFFFDE9ED0C9C0C9C0F0C0C9CDCF0FCBFFAFBEFFFFFFFEFFFFFFFFFFFFFBFFFFFFFFFFFFEFFFFEFFBDE9000009000000000000000000000000900000000009000000000090000000009009000000900000000000000009000AFFFFFFFFFFFFFFFFFEF0CD0C9C0D0C0D0C9C9CE0F0FCBF0FFFFFFBFFFBFFFFFEFFFFEFFFFFFFFFFFFFFBFFFFFFFBFEFBCA9090000900000000000000000000900000900000000000000090000900009000000009000000009000B0090900009FFFFFFFFFFFFFFFFFFFBF0ADAC9E0DAC0DAC9E90F0F0FCFF0FFFFFFEFFEFFBFFFBFFFFFBEFFFFFFEBFEFFFFFBFFFFFFBCF9C0A09000000009009000000009000000000009000000090090000000000900000900000000000000900000000099FFFFFFFFFFFFFFFFFFFFFCFD0C9C0D0C9C0D0C0CDC9CF9ADAFFFFFFFFFFFFFFFFFFFBFFFFFBEFBFFFFFFFFFFFFEFFFFBEFBCA909000000900000009000000000000000000000000000000000000000000000000900000009009000909009090FFFFFFFFFFFFFFFFFFFFFEBC0C9CAD0C9C0F0C9CBCADEBCFFFFBFFFBFFBFFBFFFBFFFEFFFFFFFFEFFFFFBFFEFFFFFBEFFFFCF90C009090000000000000000000000000000000000000000009000000900009009000009090090000000000000BFFFFFFFFFFFFFFFFFFFFFBCBCBC9C0D0E9C0D0E9C9DE9CFBCBCFFBEFFFFFFFEFFEFFFFFFBFFFFFFFBFFFFFFBFFFFFFFFFFBFAFB0900000009009000000900000000000900000000090000000000000000000000000900000000009000090909FFFFFFFFFFFFFFFFFFFFFFDFC9C0C9C0D0C9C0D0CAC0DE9CFBFBFFFFFFFEFFFFBFFFBFFBFEFFBFFFFFFFEFFFFFFBFFFFFAFFFFDE9E0909000000000000000000009000000000090900009000000000000090000009000000900900009090000FFFFFFFFFFFFFFFFFFFFFFFFADE9CBC0D00D0E9C9C9CFA9EF0FCFFFFFFBFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFFEBFFFEFBEBE09000090000000900000090000000000009000000000000009009000000000000000900000009A9000000FBFFFFFFFFFFFFFFFFFFFFFEBCD0C9C0DACDAC9C0E9ED0DCF0FBFFAFFFFFFFFBFFFFBFEFFFFFFFFFFFFEFFFBFFAFFFFFFFFFFFFFFDBDA09000009000000009000000009000000000000000000000000000000000900009000909090000000090FFFFFFFFFFFFFFFFFFFFFFFDFCADAC9C0D00D0C9C9CCBCEB0FEDADFFFFFFFBFFFFEFFFFFFBFFBFFFFEFFFBFFFFFFFFFFFFFFFFBEFEFADBC09000009000900000000000000090000000000000000000000000000000090000000000C90C9C90CBFFFFFFFFFFFFFFFFFFFFFFFBE9D0D0CBC0D0C9CAD0D0C9CDE9FBFBFFFBEFFFFEFFFFFFFBFEFFFFFFFFBFFFFEFFFFFBFFBFEFBFFFBFBDBCA9000000000000900000000000000000000900090000900000009000900000000090000B000B0A00BFFFFFFFFFFFFFFFFFFFFFFFFEFCED0E9C0DAD0E9C0F0ADE9ADE9EDEFFFFFFEFFFFBFFFFFFFFFEFFFBFFFFBFFFBFFFFFEFFFFFEFFFFFFEFE9009000000000000090090000000000900000000000000900000000000000000900009000BC0009FFFFFFFFFFFFFFFFFFFFFFFFFFF9E90C9C0D0C0C9C0D0CDC9EDE9EFBFBFFFFBFFFFFFFFEBFFFFFBFFFEFFFFEFFFFFEFFFFFFFBFFFEBFEFBF9EF0090000900000000000909090900000000000000000000000000000000900000090090009090AFFFFFFFFFFFFFFFFFFFFFFFFFFFE9CF0C9E0C9C9C0DAC9CBC9E9FF0FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFBFFFBFCFF9EDA0090000000900000000000000000000000000090000000000000009000090000000090000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9CD0C9C0E9CBC0D0E9CFCBC0FFBFFFFFFFFFBFFFFBFFFFAFFFFFFFFFBFFFFFFFFFFFBFFEFFFFFFFFFFBEFFAD090000009000000090000000900090000090000000009009000090000000000909000090FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCF0E9C0D0D0C0D0C9CCBCBCFF0FCBFFFBEFFFFFFEFFFFFFFFFBFEBFFFEFFFFEFBFFFEFFBFFFFFFFEFFAFFDBCF0C000000000000900000090000000090000000000000000000000000090009000009090CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF0C9CAD0E0D0D0ADACBC9CBF0FBFFFFFFFFBEFFFFFFFEFFFFFFFFFFBFFFFBFFFFFFFFFFFFFFEFBFFBFFFBEFBFA909090000090000009000000000000000000000090000000090000000000000090000BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FD00D0C9C0DACD0C9C0FED0FDE9EBFFFFFFFFFBFFFBFFBFFFFFFFFFFFFFFFFFFFFBFFFFFFBFFFFFFFFFFFBCFCBCA000000000000900900900090000000000000000000000000000900090090000090CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC0CF0C9C0D0C90C9CADD09EF0FBFFFFFFFFFFFFFFFFFFFFFFAFFFFFFFBFFFFFFFEFFFFEFFFFFFFFFFEBFFEFFBFCB09090000000000000A000900009000009000000000009000009000000000090900BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9F0C9E0D00F0CDAC9D0EDE9CFADE9FFFFFBFFBFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFEFFFFFEFFBFFCBC9C0009000090009090900000000009000000000090000000000000900909000ACBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E0C9C0DACD0CF00DACE9CBCBE9FBFFFFFFFFFFFEFFFFFFEFFFFFEFBFFFFFFFBFFFFFFFFFBEFFBFFBFFFFBFFEBFFFFBE9009000000000000B00900000000000000900000000009000900000000909BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAED0DAC90C90C90CD0C9DE9CF0DFCFBFFFFEFFFEFFFFFFBFFBFFFFFFFFFFFFBFEFFBFEFBFFFFFFFFFFFFFFFFFFFEBCBCBCBC0000000090090000009000000000900000000900900900E0009000000CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBCD0D0ED0CBCC90E9CA0DE9EFAFBDEFFFBFFFBFFBFFBEFFFFFFFFBFFFBFFFFFFFFFFFFFFFFFBFFFFFEFBFFEBFFBFFFFFBE9AD0900900A9009090000090000000000000000000000090900009000DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEDADE0D00D0C90E9C0DCDE9E9CDBCFBFFFFFFFFFFFFFFFFFFFFEFFFFFFFFBFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFBFBFFFF0B009A0990C9AC00090000090000090090090009090000009000C9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDAD0C9C0DE0D0C9C0DA9E9CBDEBEFBFFFEFFBFFFFFFFFFFFFFFBFFFEBFFEFFFFBFFFFFFFEBFFFFFFFBFFFFFFFFFFAFFFFFBFBFEBC09FACB9E9BC9000900009090000000000900000909000090B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBC9CBC09C0F0C0F0CD0DE9E9F9EDAFFFFFFFEBFFEBFFFBFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFBFFFFFFBFFFFFFBFFBFFFFFBFB9A9DACB9EBFA9E0C0900000000000900000900000090090CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9E0C9CC9C0D0D0DACF0DE9ECFBFFFFFBFFFFFFFFFFFFFEFFFFFBFFFFBFFFFFFFBFFFBFFFEBFFFFFEFFFEFFEBFFFFBFFFFBFFFFEDABDBFEFDADE9FBCA9A909009090009000009000000F0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC9C9E09C09CBC0D0D0DADE9BCF0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFEFBFFFBFFFFFBFBFDE9FBFBFFBFFCBDAC00A09000000000090009090F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9E0D0C9EC9C0C0F0CBCBCF0FCFBFFFFFFEBFFFFFBFFBFFFBFFAFFFBFFFEFFFFFFFFFEFFFFFFFEFFBFFFFFFFFFFBFFFBFFFFFBFFFFAFBEFFFEDAFEBFFEDBF09C0009A90900000000ACBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC0D9E0D009CAD0D0C9CE9E9EDBBCFBFFFFFFFFFAFFFFEFFFFFFFFFFEFBFFFFFFFFFFBFFFFFFFFBFFFFFFFFFFFFFFFBFFFFBFFFFFBFFFFBFBFBFDBDFAFBE9EF0BDAD00C0AD09000D09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE0D0CDCC9C0DAD0F0DCDE9ECFBDEFFFBFFFBFFFFFFFFBFFFFFFFFFFFFFBFEBFFEFFFFFAFFFFFFFEFFFEFFFFFEFBFFBFFFFFFFBFFBFBFFFEFFAFFBFFFFFF0FCADAF0BFCAACC99AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0BD0C9A009C09C0D0CDADA9E9F0FBFBFFFFFFFFFFFBFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFBFFFFFFFBFFFBFFFFFFFBFFBFFFBFFFFFFEFBFBFBFFAFFFBEF0FFADBFCBFCBFDFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FCCCBCDCFC0BCC9CADADADCFDAFDEFFFFFFFEFFBFFEFFFFEFBFFFFFFFFBFFFFFFBFFFBFFFFFFEFFBFFFFFFFEFFBFBFFFFFFBFFFFBFBFBFFEFFEBFFFBFFBFFBCFBCEBDEBCFAFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9A9C00000DC9AC0D0C9CFADADEBDBFFFBFFFFFFFFFFFFBFFFFFEFFFFEFFFBFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFBFBFFFFFFFFFFFFFFBFBFFFFBFFFFFFADBCFBDEBDFBFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FCD0DEDCD00CC9CBCBCF0DCBCBDEBFFFFFFFBFFFFBFFFFFFFFFBFFFBFFFFEFFFEFFFFFFFBEFFFFFEFFFEFFFFFFEFFFFFFBFFBFBFFFFBFBFFFFBFFFFFFFFEFFEBEDEBCAFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E9E0909AC909C90CD0CF0BCBDEBDEBFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFFFBFFFFBFFFBFFFFFBFFBFFFFFFFFFBFBFFFFFFFFFFFFFFFFFBE9E9EBCBFDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F9C0DCCCC9ECCACC9ACF9EDEDE9EBFFFFFBFFFBFFFFFFBFFBFFFFFFFFFFFBFFBFFBFFFFFFFFFFFFFFFFFFFFFFFFFBFFBFFFFFFFFFFFFFFFFFFFFFFFFFFAFE9EDBCF9EDAFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9C00B09C909C9BCD90CF09E9FDFBFFFFEFFFFEFBFEFFEFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFEFBFFFBFBFBFBFFFFFFFFFFFFFFFFFFDBDE9ECBCE9EDADEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0FCDCC0CCD0CC00ECF0CFCBCBE9FFFFFFFFFFFFFFFFFFFFFEFFBFFBFEFFFEFFFEFFFEFFEBFFEBFFEFBFEBFFFFBFFFBFFFFFFFFFBFFFFFFFFFFFFFEFBEF0FCBDE9FCBCFBFFEFBEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBECF00090B09A090DD09CF9CBCFE9FEBFFFBFFBFFFFFFBFFBFFBFFFFFFFFBFFBFFBFFBFFBFFFFFFFFBFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFBCF9EDADA0F0ADA9E9ADBEDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED90DCFCCCCCCDECCACDE9CADCB9EDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFFFFBFBFBFBFFFFFFFFFFFFBFEFFBECB0DCEDCEDCEDCEFCE9EDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EC0009090900909CBC0CED0FCFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFFFFFFFFFFFFFFFFBFFBFBEDBFCFAD9E9DAD9E9DADBC9ECBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DEDCCDCCCDCCD0DCBDBDADADADEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9E9CAC9E0DAC9E0DAC9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CA900B00B00B00E00C0C0DADADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFDEFDEFDEFDFFFFFFFFFFFFFFF000000000000000000000105000000000000A9AD05FE,'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.',2,'http://accweb/emmployees/leverling.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(4,'Peacock','Margaret','Sales Representative','Mrs.','09/19/1937','05/03/1993','4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D20540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDB9BFBFFBFB9FBDBBBFDBF9FBFBFBFBFBFBDBFBDBFBBFBFBFFD0000000000000000000000000000000000000000000000000000000000000000BBDBF9BDBF9BB9BFB9FBFB9FB9BBFBBBBFBBFB9F9B9FB9BF9BF9BFBBFBBFBDBF9FBDBF9F9BDBFBFBF9FBB9BDBB9BBF9BBFBFBFBFBFBFBFBFBFBFBFBFFBFBFBBA00000000000000000000000000000000000000000000000000000000000000009BFB9FBB9BBDBFB9BFB9BFFBDBF9BDBDBBDBBFFBFBFBFFBBFFBBF9F9BDB9BBFBBFBBFBFBFBBFFB9F9BB9FBFBB9FBDBFBFBFBF9FBFBDBF9BFBFBFBFBF9FFBFBD00000000000000000000000000000000000000000000000000000000000000000BFB9FBB9FBDBB9BBFBDBF9BBBFBBFBBB9FBBDBB9BFBF9BBDBB9FBFBBFBFBFF9BDB9FB9BDB9F9FBFBBFBFBDB9FB9BB9BFBF9FBFBDBFBFBFBF9FBFBFBFBFBF9FB000000000000000000000000000000000000000000000000000000000000000009BFFBBDBB9B9FBDBDBBFBBF9FBDF9BDBFBDFBBFBF9BFBFFBFBFBDBFF9BFB9BBFBFB9FBFBBFBBF9BDB9FBBBFBBDBDBF9BDBFBFBFBFBFBFBFBFBFBDBFBFBFBFBF0000000000000000000000000000000000000000000000000000000000000000009BBF9BDBF9B9FBBBDB9F9BF9BBBFBB9BBBBF9BFBFB9BB9FBDBFBB9BFB9FBF9BDBFB9F9F9BDBFBFBBFBDBFB9FBBB9BBFBBBDBFBFBDBF9FBFBF9FBFBFBFBFFB0000000000000000000000000000000000000000000000000000000000000000000BDB9FBB9BBFB9BDBBBFBBFBFBDB9BDBF9F9BFF9FBDBFFBFBBFBDBFB9FBBDBFBBB9BFBBBBFBBFB9BDB9BF9BFB9F9FBF9BFFBFBDBFBFBFBDBFBFBFBFBFFBF9BF0000000000000000000000000000000000000000000000000000000000000000009BBFBB9FBDB9BFBBBDB9F9B9FBBBFBB9FBBF9BBBFBFB9BB9F9BBFB9FBBDBBBDBDBFB9FBDB9FFBFBBFBFBFB9FBBBB9BBF9BFBFBFBFBFBFBFBFBFBFBDFBFBFF90000000000000000000000000000000000000000000000000000000000000000000BF9BDB9BB9FB9F9FBBFBFBFBDF9B9FBBF9BBFBF9B9FBFBFBF9F9FBBDBBF9FBFBF9FBDBBFB9FDB9F9B9F9FBBDBDBF9FBFBDBBFBDBF9FBF9FBFBFBFBFBFBBBE00000000000000000000000000000000000000000000000000000000000000000009BFBBFBDBB9FBBB9F9B9BDBBBBBDB9F9BF9FBDBFBFBB9F9BBFBB9FBBDBBF9B9BBB9BBDB9FBFBBFBFBFBBBDBFBBB9BB9BFBF9BBFBFBFBFBFBDBFBFBFFBDFF90000000000000000000000000000000000000000000000000000000000000000000BDBDB90B9FBB9F9FBBFBFBF9F9FBBFBBFBBFBBF9F9F9FBFBDBDBFB9FBBDBBFBF9FBF9BAF9BFBDB9BDB9BDBFB9BDBBDBFBFBFFFBFBFBFBFBFBFBDBFBFBFB9A00000000000000000000000000000000000000000000000000000000000000000009BBBBBFBF9B9FBBB9F9F9B9FBBB9F9BDB9F9BDBBBBBFBB9FBBBFB9FBBDBBDBB9EBB9FBF9BFFBBFBFBFBFBB9BFBBF9BB9FBDBBBDBFBDBF9FBFBFBFBFBFBFF000000000000000000000000000000000000000000000000000000000000000000000BDBDB9B0BFB9F9FBBBBFBFBDBDBBBFBBFBBFBDBDBDBDBF9F9F9FBBDBBDBBDBF9F9E9B9FA9FDB9F9B9F9FBFB9F9BF9FB9BBFFBFBDBFBFBFBFBFBFBFBFBBF0000000000000000000000000000000000000000000000000000000000000000000009BBBDBDB9BDBBB9F9BDBB9BB9BDB9BBDBDB9BBBBFBBB9BBBFBB9FBBDBB9FB9BBBBBF0B9FBFBBFBBFBFBBDB9FBBF9B9BFFFB9FBFBFBFBFBFBDBFBF9FBDF9A000000000000000000000000000000000000000000000000000000000000000000000BDBBBB9FB9BDBFBBFBBDBF9F9BBFBDBBBBFBDBDB9F9FBDB9BDBB9FBF9FB9F9F9E9BBFA00F9FB9F9FB9FBBFBFDBBBFB9B9BFBBFBF9FBDBFBFBFBFBFBFBB0000000000000000000000000090BCBC9F0A9E000000000000000000000000000000009BF9F0FB9BFB9B9F9BDBB9B9BBF9BBFBDFBDBBB9FBFB9BBF9AF9FAB9AB9FAB0B9FBC0000FB9FFBB9FB9F9BDBB9F9BDBFBFBBF9FBFBFBF9FBF9FBFBFBF9000000000000000000000000DA0F0BCBF0FDF9FBFEB00000000000000000000000000009BB9BB9FB9BFBFBFBBDBF9BF9BBDB9BB9BBF9FBB9B9F9E9FB9B9F9FBDAB9DBFA0000000F0B0BDAF9FBBFBBFBFBFBB9BFBDFBFBFBFBFBFBFBFBF9FBDBE00000000000000000000009ABDFDFFBDFF9FAFDF9FDFFAF00000000000000000000000009F9F9A9FBDBB9BBDBB9BF9BF9FBFBDBF9B9B9FBF9ABB9B9FBFA9B0BBDBEB0000000000F0000090B0BDADB9F9B9F9FB9FBBDBBDBBDBFBFBFBFBFBFBF9000000000000000000009EFFDBFA9FDFB9FDF9FAFFBF9F9E9090000000000000000000000BB0BF9B9BBDBF9BBDB99BB9BB9B9BB0BFBFA9A9BDBCBFA9A9BF9FBCA0000000000000B000000000000B0FBFFFBFB9BFBFBFFBFFBFBFBDBFBFBFBFB0000000000000000009BBFFBCBEBDFFFADFEBBFBDF9F9FFFBFFAC000000000000000000000BDBF9BBFBDB9BBE9B0BFBDBF9F9FBDBF09B9BDBCBBB9B9BDBF0A00000000000000000F00000A00000000009A9BDBFFBF9FBBF9BFBDBFBF9FBFBF9BC0000000000000000BEDF9FDFDBDFBF9FF9BDFDFBFFFFDBDFCBDBCB00000000000000000000B9BBDB9BBFBDB9F9F9B9BB9BBB9AB9BBF9E9A9B0F9FBE9A000000000000000000000F000A0000000000000000B0B9FBFBF9FFBFBFBFBFBFF9FBFBB00000000000000BC9BFFEBFBFDAFDFF9FFDBEBDF9E9FFFBFFDBDBCBDAC00000000000000000F0BBDB9FB9BFB9B9BDBBDBDBDBD9E99A9BDBFBF9A00000000000000000000000000D000000000000000000000000B0FBDBBBF9FBF9FBFBBFBFBD00000000000000BCBFFDBDBDE9BF9FADFBCBDBDFBFFBF0BDF9BEBCBDADB0D0000000000000099BD9BBFB9FB99E9BB9BD9BB0B0BB9BFBF0B00000000000000000000000000000000A000000000000000000000000009BFBFDBBF9FBFBF9FBFBDA0000000000000ADBDFDAFFDFBFFDFBDBADBFBDB9FF9FDFFF9FFD9F9A9F0F0A90000000000000BFBBBF9BFBDBFB9F0FB0BADBDBBDBE0000000000000000000000000000000000000F00000000000A0000000000000000BFBBFFBFBFBFBFBF9FA000000000009C9F0FBFBFDBE9FDAFBDFFDBDBCBFF0FFFBF9FF0FBF0F9E9F9F9E90000000000000B9F9BF9B9BB09B9BBDBF9A9BE9A000000000000000000000000000000000000000F000000000000000000000000000000FB9FBFBFB9FBFBFBF00000000000A9E9F9EDFBFDBF0FDBFADBFFF9FDADF9FDFBFBDF9F9F9F90BCBCBCB0000000000009A9FB9FBBC9F0FBDA0000000000000000000000000000000000000000000000000D0000000000000000000000000000009FBBDBF9FBFBDBBF00000000009BCB9BCFBFBDFBDBFBFFDFBD9E9F9BDBBFFBFDFDBFBCB9E9EBDB9F9AD0F00000000009FBB9FB9FBB0B00000000000000000000000000000000000000000000000000000A0000000000000000000000000000000BFFBFBFBFBFBFF90000000000FCBDEFF9FDFEBDAFDFBDFBDAFBF9ADB0FDBFDBFBF0DBDE9F9D0BCBCBDA09E00000000B9B9FB9F0000000000000000000000000000000000000000000000000000000000F000000000000000000000000000000009BFBDBFBDBFBB000000000009BCFBCBFAF9F9FDBBDEBBCBDBD0BDA9F9BDFBEDADBF0B9F9AFBDB9F0B9F09C00000000FBF9FBA0000000000000000000000000000000000000000000000000000000000F000000000000A000000000000000000000BFBFBFBF9FFE0000000000E9BDFBDFDBFFFBFDFBDFDBDADBF0BD00F0B0DBDB0DBDADAD99E9E9BD0F0F0B0000000099BB9F00000000000000000000000000000000000000000000000000000000000D000000000A00000000000000000000000099FBDBFBFBB000000000909FEBFDAFBFDBDF9BFCBFAFBDBC9BCB9F09CB09A9DA09099A9E9B9F0BF9B9E9E0000000BF9FB000000000000000000000000000000000000000000000000000000000000A00000000000000000000000000000000000BFBFBFBFBD00000000000BCBDAFFFDFAFFAFFDBF9F9C9E9BC90F09FBDBE9DA9BDBFA9F090F09F90FCB90D000000B9BB0000000000000000000000000000000000000000000000000000000000000F0000000000000000000000000000000000000BFFBDBFB0000000000C9FFFDBDBFBDBDF9FAD9F0FBF9E9FBF9FF09A909A9C9A90D0BBDB9F9ADB9B9E9AD000000FBC0000000000000000000000000000000000000000000000000000000000000F000000000000000000000000000000000000009BFBFBFC00000000B0A9BFFEFFDFFFBFF9FBEFBD0F9FBDBDA99F0DBDBDA9F9E9B9C9ADB0F9ADADA9F0AC0000B9A000000000000000000000000000000000000000000000000000000000000009000000000000000000000000000000000000000FBFBDBA00000000009FFE9F9FAF9FDBFF9F9F0FBFBDFADADBE9FBCBDBDF9E9BCF9BDBCB9E9BDB9E9BDA00000F000000000000000000000000000000000000000000000000000000000000000E00000000000000A00C090C000000000000000009BFBFBD000000009CFEF9FBFFFDFFBFD9E9E9F9FBDEBDBF9FDBC9FBCBF0BDBDB9BCBCB9F9BC9ADB9CA90000B00000000000000000000C0000000000000000000000000000000000000000000F0C00A000000A0900A000A0000000C0000000000009FBDA000000000B9BFFFCF9FBFBDBAFBDBFFBDFF9DBFDF0BFBFDBFD9FDBDADADB9B0F0BDBF9ADAB9E0000000000000000000000CA000000000000000000000000000000000000000000000F0A000C00AC090C0000A000AC0AC000A0A0000AC000BFBF00000000A0FDBCBFBFFF9FFDBDAF9BDFBCBFBCBBDFD9F9FDBFDBFDBDBDADF9F9F0F0F9F9DE99E0000000000A000000C0A0000000E0000000A0C0000000000000000000000000000009000000A000000A00C9C0C900090A0900C9AC00000E9AFB000000000DAFFFFDFF9FFF0FDBDBFFFBDF9FDBFDBFBFFFFBDFBF9F9F9F9B0F0F9F9F9FCBB9FA900000000000000000000000C0A000CA000C000A00000000000000000000000000000E000A000000A00000A0A0A0C0AC00C0C00000B00A000DBF000000000BFFADBFE9FFDBFBBEBFFCBDFBFFBFDBDBFDBDBDFBFDF0F9FBCBDBDBCB0B0FBBCDAD00000000000000AC0A000C0A000000000CA0000000000000000000000000000000000F0000000000000000000000A000A00A0A0AC00C0C90A09BE00000000FBDFFF9FFBFADBDF9F9FBFBDF9FDFBFFDBFFFFFFFDBDBFDE9FDBCB9F9F9F9FDBBDBE000000000000000000A00000000CA0C00000AC000000000000000000000000000000F00000000000000000000000000000000000A00A00C00C0B000000009EBFCBFBDFDFBCBFFFFBDFFBFFBFDF9FFDF9FFF9FBFFDBF9F9ADBDE9E9E9B0FCBBD9F0000000000000000C000000AC00000A00AC00000000000000000000000000000000B0000000A00000A00000000000000000000000000A00A00C00000000FDFFBFDFFBE9FBF9F9FDBF9F9FDFBFFF9FBFF9FFFDF9FDBF9FDBCB9F9F9F0F9BDDAF9E00000000AC00000000E00C000A0000C0C00A000000000000A00000000000000000C0000000000000000000000000000000000000000000000A00000009BFFADFFBCF9FBFDFBFFBF9FFFFFBFDF9FFDFDFFF9FBFF9FDBCB9F9F9CBDADB9FFBF9E9000000C00000CA0000000A0000C0E00A0A0C000000000A00000000000000000000F0000000000000000000000000000000000000000000000000000000FBDFFBDFBFFBDFBFF9FDFFF9F9FDFBFFDBFFBF9FFFDBDBE9F9FFDBCBF0F9F0F0BC9FBDF0000A0000A00000E0000000E000000C00000000A0000000000000000000000000B0000000000000000000000000000000000000000000000000000000FEFBDFF9F9FFBDF9FFBF9FFFFFBFDF9FBDBDFFF9F9F9FDBDBD9ABF9DBDBCBDBDBFBDBBCBC0000000000000000E00C000A00A000C00A00000C0009000000A000000000000F000000000000000000000000000000000000000000000000000000ADBFFEBFEBFF9FFBFF9FFFF9F9FDFBFFFDFFF9F9FFFFF9F9FDAFDF9FBCBDBDBCBD9FEDFBDA00000000000A0000000A00C0C0C0A0A000000000A00E00A00000000000A0000C0000000000000000000000000000000000000000000000000000009FFDF9FDBDF9FBFFDBFFBDBFFFFFBFDF9FBDBFFFFF9F9FFBCBF9F9FE9F9F0F0F9EBF9FBDAD00000A00CA0C0A0C000000000A00C0000000A000000000C00A000A000000000B000000000000000000000000000000000000000000000000000000BBFAFFBFFFBFFFDBFDBDFFFDBF9FDFBFFDFFDF9F9FFFF9FDBD9F0FDBDBCBDBF9F9F9FBDFBDA0000C00000000000AC0CA0A000A00000000000000000000000C00000000A00F000000000000A000000000000000000000000000000000000000000FFDBDE9FBDBDBFDBFFBF9FFDFFBFFDBFBFBFFFFFFBDFF9FFBFBDBF9FBDBE9FBCF9E9FBDFBDBE000000000C000000000C0C0C000000A00000A00A000A0C0000000A000000F0000000000000000000000000000000000000000000000000000009FBFFFBFBDFFFFFBF9FFFFFBFBDFDBFFDFDFDBFFDFDFBDFBDFDFBDADBCBDBDADBDBFDBDBFDAD00000AC000A00E000A009A0B000A900000000000C000000A00A00000000000000000000000000000000000000000000000000000000000000009EFDE9BFDFFFBF9FDFFFDBDBDFDBFBFDFBFFBFFDBFBFBDFBDB0FBDBDBDBDADBDBDBF9F0FFDBF9E000000A0000000E00CA0C0C0E0C0E00CA0B0C0000000000000000000A000F000000000000000000000000000000000000000000000000000000BFBFEDFBF9FDFFBF9FBFFFFFBFFFDFBFDBFDFBFFDFDFBDEBDF9DAF9F0F9F9EBDBCDBFF0BFF9E9E0A0000000C000000000A0A000A00CA00C0A0A0A0A0A0000000C00000000F0000000000000000000000000000000000000000000000000000000FDBFF9FFFBFBDFFFFDF9FDBDBDBFFDBFDBFDF9FBFF9FBDFBFFBD9E9F0F0F9DBFBFDBDF9FFF9F90C000C00A00A00C0A0C9C0BC0D0A9CA9A0C0D0C9C0D0E0E00A00A000000B0000000000000000000000000000000000000000000000000000009BFE9BFF9FDFFFBDBFFBFFBFFFFFDBFFFFFFBFFFDF9FFDBDF9DFFBDBDBDBDAF0FDBFFBDBDBFF9EB000A000000C00A00CA0A0C0A0AC0A0C0CB0A0A0A0A00009C000C0A00E0C000000000000000000000000000000000000000000000000000000FEF9FDF9FFBFF9FFFDBF9FDF9F9FBFFDFBDFFDBDFBFFDBFF0FBA9CBF0F0F0BDBDBF9FDBCBFDBCBD00000000000000009000D0A90C9AC90A00C0C00C00C0BCA0ACA0BC0D00B000000000000000000000000000000000000000000000000000000BDBFFBFFBDF9FFBDBFDFFBFBFFFFDFFBFFBFFFFBFFDBFFDBF9FDFBD9F9F9BDBDBDFFBFF9DBFFF9E9AC00AC0A00B000A0000A00C0A000AC9E0B0ADA0E9AC000C900C00A0A0F000000000000000000000000000000000000000000000000000009EBCBDF9FFBFF9FFFDBFDBDFDFBDBFBDFFDFDBFDFDBFDBFFDBF9BDBEBCBCBDADADB9FDBFBE9FF9F9E90000000C000C000E00000A000C0000000000090000ACA0AC9A0C00C0F00000000000000000000000000000000000000000000000000000E9FFBFBFF9FDBFF9FBF9BFFBFBDFFDFFFBFFBFDBFBDFBDF9FDAFCBD9DBDBDAD9F9EFBFFDF9BDBFFDBCA0000000000A0000000000000A000A0C0AC0AC0AC9009C00AC0B0E9A00000000000000000000000000000000000000000000000000000A9BF9FFDF9FFBFF9FFFDFFDBFDFFBFBFBDFF9FDBFDDAD0F99E99DBDEBFADBCB9F0BF9FDFB9EDFDF9ADA9C00A00A00000000000A000A00000000000000000AC0000000000000F00000000000000000000000000000000000000000000000000000FDEF9FBFFF9F9FFBDBF9FBDBFBDFDFDFBDBEDBF9FBDBD9AD99E9099C99E9BDADBD9FFBDFF9BABFFDBF009000000A000000A0000000000A000A00000000000A00AC00AC0000F00000000000000000000000000000000000000000000000000090BBDBFFDF9FFFFBDFFDBFDFFFDFFBFBFFDEDBD0DFDFFFFDDAD99DBC9BC9F0DBDADBF9FFBDFFDDBDBFD9FAC00000000000A000000000000000000000A0000000000009000A0000000000000000000000000000000000000000000000000000000ADEBFDBFBFF9F9FFBDBDBFBDBFBDFFDF9F9D9FDBFFFDF9F9D9AD0D9BC9A9DBCB9BCBDBDFFBDBBDBFCBE9DA0000000000000000000000000000000A0000A00000000A0000000F0000000000000000000000000000000000000000000000000009FF9FDBFFDF9FFFFBDFBFFBDFFBDFE9FBD0F9E99F9C9090D0B0D09A0C9C9D00BDADBDBFBDBDBFCDBDBF9DA000A00000000000000000000000000000000000A000A0000000000A000000000000000000000000000000000000000000000000000ADBFBFFDFBFFBDBDFFBDF9FFBDFFBDF0DBD0D9FD09B9FDB9BDFBFBDF9AB00BD09DBDBE9FFFFBDBBDBDBEBDBC0000000A0000000000000000000000000000000000000000A000D0000000000000000000000000000000000000000000000000009ADFDBFBFDF9FFFBDBDBFF9FFBDFF9DF0D0B09BFFDFFBFFFFFFFDFBFFDFF009E909BD9F9BDFFFDEBDFD9F0B0C000000000000000000000000000000000000000000000A00000F000000000000000000000000000000000000000000000000000FFBEBFDFFFBFF9FFFFAD9FFF9FF0DF0900BDFFFFFBFFFFDBFFFFBFFFFBF0F0090DBCBFDFDBF9FB9F0BBF0FDB0000A00000000000000000000000000000000000000000000000A00000000000000000000000000000000000000000000000009BF9F9FDBFF9FF9FF9F9DFAFF9FF9F9090F9FFBFFFFFFFFFBEFFFFFFFFBDFFB0900B09BDB0BFDFBDFDBDEDBDA00A00000000000000000000000000000000000000000000000000D0000000000000000000000000000000000000000000000000ADAFFFBFF9FFDBFBDF9FB9F9FFBC90E9EF0FBFDFFFFFBFFFF9BFFFFFFFFFFFC9E090DBCBFFDBF9FF9ADB9BDA9FC000000000000000000000000000000000000000000000000000A00000000000000000000000000000000000000000000000000BDBDFF9FFBFFDFFBFBDE99F9EDBD90B9FF9FFBBFFFDFBFCF0DB9F9BDBDADBF090C0099099F9FF9FFDBCF0FDA9AC0000A000000000000000000000000000000000000000000000F0000000000000000000000000000000000000000000000000BCBFBF9FFFDFBFBDFDF9BDBBF9F00A9FFF9EFFCF9E9B0D9B9DBC90C90DADBC900A909CADBF0FBDFBDBDB9F9AD9F0A000000000000000000000000000000000000000A00000A0000000000000000000000000000000000000000000000000000BDBFDFDFF9FBFDFDF9F9ADAFC9F090DFFE9E9B990BD90D9E9CB09AD99E909090E9909A99BE9DF9F9F0FA9DADF9E0000000000000000000000000000000000000000000000000000F0000000000000000000000000000000000000000000000000ADBFBFBFFFDBFBFBFBDF9D9B90C00B09F099C9E9DADF0BDDBDFDDBAD9BDADBF9F0F0DBC99FB0BDBDBD9EBDA9E9BC00000000000000000000000000000000000000000000000000E000000000A000000000000000000000000000000000000009FADFFDF9FFFFDF9FDFBDBAD0F99BD0F09FE9BF9F9F9FDFBFDBFBFDFBCF9F9CBDAD9B0DBDA9DFDBCBDBD90BDA9EDA90A0000A00000000000000000000000000000A0000000000009000000000000A0000000000000000000000000000000000CABDFBDBFFFBDBFBFFBF9E9DB9ADADBF9FF9BFDFFFFFFFBFDFBFDF9F9FF9F0FBDADBC9F09A9FB9ADBDA9AF9DA9F9A9C000000000000000000000000000000000000000000A000000E0000000000000000000000000000000000000000000909A9BDFBFFFFF9FFFFDFBDF9F9BCBDBDBE9FF9FFDFBF9FDBDFDFBFDFBFFFDBDADF0F9DA9E9BF9DF0FDBDB9FD99A9E9E9CA0000A00000000000000000000000000000A000000000A0000900000000000000000000000000000000000000000000BFFFFBFDF9F9FFFBDBF9FF9E90FBDBCBDFFDAFDBFBDFFBFFBFBFDFBDE9F9ADBDBDBD0BDB90D0FA9F0B9F0F9BCBD990F0BCB00000000000000000000000000000000000000A000000000E000000000000000000000000000000000000000009ADBF9F9EBFFFBF9FDFBDFF9E9FBD9DADBDB9FBDBFDFFBDFDBDFDFBF9FBDFFFFF0FB0FBFCBCB9BD9F99F9E9F9E9BDADA9AD00CA00000000000000000000000000000000000000000000000B00000000000000000000000000000000000000000ADFFDFEFFDF9FDFFFBFDBF9F9F9C9ABD9F9EF9DFF9FBDFFBFFFBFBDFFFDBF9F9DB9DF9C9BD9DE9A90F0BDBDBDBDBC9BC9CBCB0D00000A0000000000000000000000000000000000A000A00C0000000000000000000000000000000000000000BDFBFFBF9FBFFFFBF9FDBF9F9F9E9B9D9BE9F9FBF9FFDFFBDFDBDFDFFBDBF9FF9FADE90FBDA9A9BDBF9BD9F9E9F0F9BCB0B0BC9A00A0000000000000000000000000000000A000000000000B0000000000000000000000000000000000000009FBFFFFDFFDFBF9FDFFBFD9F9F0F9BDA9AD9F9F9E9FDBFBDFFBFFFBF9FDAD9F09E9DB9BF90BDBD9DAD0F0FBDBDBDBDAD9BC9E00FC00000000000000000000000000000000000000000000000E00000000000000000000000000000000000000ADFDFBFFBFBEFDFFBF9FDBEFF0FBDFCBDF9A90F9F9FBFDBDB9DF9F9FFFBDB9E9F99E9FC90FD09CB0BDB99F9EDBFDBDBDADCB09CB0BC0000000000000000000000000000000000000A000B0000900000000000000000000000000000000000009FFBFBFDFFDFFBFBDFFFFBF9F9F9DBB9F9AD9DB9E9F9E9FFFFFBFFFFF9DFBCBBDADA990B9F9A9F9DBD0DAF9DBBDBCBD9F9BBC9EBC0DA00000000000000000000000000000000000A0000000000E000000000000000000000000000000000000BBFBDFFFFBFFBDFDFFF9F9FDF9FBFFBDFDBDF0B0F9F9F9FBDBDBDBD9F9FFADBDCBF9F9E09C909F0BAD0BBD9FFBDFDBDAF0F9C9A900BA00A000000000000000000000000000000000000000000009000000000000000000000000000000000000DFDFFBDFFFDFFBFFFBFFFFBFBFDBDBDF9BF9BF9D0BDBDF9FBDADF9FB9F9F9FDFBF9F0F9F0B0F09D9DBBD9FBDBDF9BF9F9F9E9AD0F00D000000000000000000000000000000000A0000000A00A00E000000000000000000000000000000000000BFBFDFFBFFBFCFFBFDF9F9FDF9FFFDBFFDFFDFBF9CB0BDBDFFF9AD0DADADFBF9FDFF9F09F0F9FA9A9D0BC9FBDBFFDBF9F9F9F9AD0ADAD00A00000000000000000000000000000000000A0000000B000000000000000000000000000000000009F9FDBFFFDFFFBF9FFFBFFEFBFFDBDBDBDBF9F9F9FB9DF9FBC99FDBFFBDBFBDFFFBF9F0F9E99E99C9F0BDFBFDBFDBFD9EDADADADA0D00A0000000000000000000000000000000000A00000090C00C00000000000000000000000000000000000BFFFBFF9FFFF9FFFF9FFDBDBDBDBFBFFFFDBFFF9FD9E9A9F9FBFFBFDBDFFFDFFFFDFFF9F090FB9E9B0F9F9FDBFDBFDBFF9F9F9F90F00BC00000000000000000000000000000000000000000A00A0B00000000000000000000000000000000000FDBDFFFFFBFFF9FAFFFBFFFFFFFFDFDBDBFDF9FFFBF9F9CBD9F9FDBFFFF9FBFFDBF9F9E9F0F0DE90DB9F9FBFDBC90BDB9F9F0F0E90BC0900000000000000000000000000000000000000A0000900E00000000000000000000000000000000000BFFBF9FFFFF9FEFDFBFDBDBF9F9FBFFFFDBFFFBFDF9F9B9EB9CFBFDFBDBFDF9FFDFF9F9F0D0B99E90F9FFD0900BCBC0D0BCBD9F9E90B0E0E0000000000000000000000000000000A000000000000900000000000000000000000000000000009FBDFDFFBFDAFBDBFFCFFFFFDFFFFFDBFBFFDFFDFFFFFFDF9DA9BDFBFDFDAF9FE9FBDFCBCB0BCBC09F9E90BCBDBDBDBF0BC90FADA9CAC09000000000000000000000000000000000000A000A00A00E0000000000000000000000000000000000FDFFBFBFFDFBDFFFFFBFBF9FBFBDBDBFDFFFFBFFBFF9F9F99ADBDF9FDBEBD9FF9FFDBDBDBC9C90B9F0F9CBDBDBDBFDF9FFD0F09DBCB909E0000000000000000000000000000000000000000000000B0000000000000000000000000000000000BFBDFDFDBF9FFF9EBDFFDFFDFFFFFFFFBDF9FFDFFDFFFFBFFDBCB0F9BDBDBFF9FBDBCBDADB09E9C9AD0F9E9F0FBDFBFFD9FBDE9A0BCCA00000A000000000000000000000000000000000000000000C00000000000000000000000000000000000FFBFBDBDADBFFFFFBFBEBFFBDF9FFBDFBFFFFFFBF9F0FDBDBDBDBCF0FDBDADFDFBDBDBDADA90B0F09BCBDBDBDFBDF9FBE9F0BC9C0B9DAC0BC0000000000000000000000000000000000000000000F0000000000000000000000000000000000BDFDFFFFBDBFFBF9FEDFDFDBFFFFFDFFFDFFF9F9CDADF9EDBCBDADB9F9F0FDBFBDFBFDADBC9E9C909E9F9F9FF9BDFBFF9FF9FDBF0BCA0090000000000000000000000000000000000000000000000A0000000000000000000000000000000009FFBFFBDBDBFFFDEFFFBFBFBFDFBFFBFFFBFB9FCFFBF9BDFBDFFF9F9F0FBFDBF9DF9EDBDBC9A9DA90F9F9FF0F9FFFBDF9FF9FFBDCBC090F0ACA0000000000000000000000000000000000000000000D0000000000000000000000000000000000BDF9FFFCBDFDBFBFBDFFFDFFFFDFDFFBDFCDCBBF9FDFFFBDF9FFFDEBDBDFBFDEFBFDBDADA9D0E9E9BDBE9BDBFDBDFBFF9FF9BCBBDBDE0000000000000000000000000000000000000000000000000A0000000000000000000000000000000000BFFFFDBDBFBFFDFDFAF9EBF9FBFFBFDFF0BBFDF9F9F9F9FBFBDBFFFDBDBCDBF9FDBFDBDBDE9B909E9E9DFDBDBFFBDF9FF9FFDFDE9EBFCB0F000000000000000000000000000000000000000000000F0000000000000000000000000000000000FDBFBFFF9FFFEBEBFDFFFDFFFFFFFFFE9FDF9F9FFFBFFFFDFDFBDBDFEBCBBDBF9FFDADADA90C0F99F9FBFBFFF9FFFBFF9FF0FBDBFDBDF0C00000000000000000000000000000000000000000000000000000000000000000000000000000000BFBFDFFF9BFFFBDFFDFBDBFFBDBDFF9E9FBF9FBF9FBDFDBDBFFBDFFBFFD9F9CBDFFDBF9F909E9B0BE9FBDBDBDBFFDBFDBFF9FBDBFCBCBE00AC00000000000000000000000000000000000000000000F0000000000000000000000000000000009FDFFFF9FC9F9EBDABFEFFBDFFFFBEF9FDF9F9FDBDFFBFFFFBDFFBDFF9EBCFBCBF0FF9F0FDA90C9D9F9FFFFFFFDBFFFFFDBFBDFCFBDAD9E0900000000000000000000000000000000000000000000000000000000000000000000000000000000BFBF9FFBFB0F9EFDF9FBDFFBDFFFD0FBFFFFFBFFBFDF9FBDFBFDFF9FFFDBFDBDFF9FFDB00DA9ADADAF9F9FF9FFF9FDBCBDADBBF9E9FACBC0A00000000000000000000000000000000000000000000F000000000000000000000000000000000FFDFDFFDF9DBC9B0BEFFDEBDFFBFDBFFDFBDB9F9FDFBFFFFFBFFBFBFF9FFFCBFBDBFDADFDBAD0DABDBDFBFF9FF9FFFBFFBFDBCF9E9E9DBC00000000000000000000000000000000000000000000A00A000000000000000000000000000000000BDFBFBFFBCADABCFDF9FBFFFBFFDAFDBFBDFFFFFFBFDFBFDBDFDFDFF9FFBCBDBCBFDBFF0B0D00BDDBDBBCF9FDAFFBDFF9F9ADB9E9F9EBE9009C0000000000000000000000000000000000000000000D000000000000000000000000000000009FBFFFFF9F99A9CB0BFFFFBDFFDBFDBFFDFFBDBDBDFBFFDBFFFBFBF9FFBDFFF0DBDBFDBDBCB00D0BADADDF9EBFDBDFBD0F0FDAD0B9E9F09EC00A0000000000000000000000000000000000000000000E000000000000000000000000000000000FDBDFFFFFFF0A9ED0FBFDFBFBFFADFFFBFBFFFBFFBDFBFDBFDF9FFF9FFBBDFCBCBFDBCF9F0DAADDBDBA9BF9F9FFBDFFBDB0BDAD0F9E9F09A0000000000000000000000000000000000000000000000B000000000000000000000000000000000BFFFBDFFFFAD009ABFDEBFDFDFCDAF9FFDFDBDFDBDFBDBFFDBFF9F9FBDFDBFF9FBDBFFBDADA9DABCBDFFF9FFFFFFEBDFADFC09B0BCBDADAC0000000000000000000000000000000000000000000000C00000000000000000000000000000000BFDBFFFF9FDF09AFADFFBFEFBFBFBFFFFFBFBFFFBFBFFFFFDBF99E9FBCBDBEF0DADFFDBDE9F09E9DFFF9F9EFDBF9DBDF0FDA9BF0FC9FADA900000000000000000000000000000000000000000000000B000000000000000000000000000000009FFFDFFFFFBDE000DA9FFDBDFFFC9F9F9FDFDBDBDFF9FFFFBDBFFBF9DBFFF9BE9FB0FBFBDB09E9EB9F0FBD9FBCFFEF0BD0BC9C9F0BF0DBC000000000000000000000000000000000000000000000000F000000000000000000000000000000000B9FABFFFFFADA0F0DAFFFFFBDBFEFFBF9BBFFBFBDFFFFBDFFCBD9FAF9F9FFDF0DFF9FDF9EFDAD0DAD90CAF9E90909CA9FCB0BCBD0BF0CBC000000000000000A0000000000000000000000000000000E000000000000000000000000000000009FF9FDFFDBFDF0000BF9EFFBFEFC9BDE9EDF9FFDFFBDBDFFADBDBE99DFFFF0F0FFBDFBF9E90000B0F0ADB9C00E0E0009CA90D0BC0F09BF0000000000000000000000000000000000000000000000000900000000000000000000000000000000BD09FBFBFFCB0000BF0FFBDFFDBFBCFBFB9AFFDBFBDFEFCBDBCBC99EB09B9FBDA9CFBFDA00090BCD9FDB0CF0F0900E9CA9C00BD0B09EC0C000000000000000000000000000000000000000000000000E000000000000000000000000000000000FBF09FFDBFBE900C0FBFFFFBFF0DBFDFDFDBDADBDFBDBFDA9F9F0F99FEDE9FE9EBFDFFD09ADADBE9BFFFB0CADE0000AD09A9CAC9CA99A0E00000000000000000A00C00000000000000000000000000F00000000000000000000000000000000BDF9F09BED0D0E00B00FDBEDFBFFE9FBFAF9AF9FFFCBC000C0CBCB0F09B9BDADBDFBFFBFFF9F9E9FFFFFFDA900000000000DA90B09CAC0900000000000000000900A0A0000000000000000000000000B000000000000000000000000000000000FBFCBC09A9A900000BDAFDBED009EBDF9FFD9AD0A0C0A90A0BDF0D0BCF0DAD0FFBDFBFDBDE9FBDADFBFFC0EDAD0AC09ADA00CBCBCB000E00000000000000090C0090000000000000000000000000A0C000000000000000000000000000000000BFCB009AD0000000ADAF9FAD0BFFBDE9FF0BED0BFDB09CAD0DA0DA9E9B9EBCBF9FFFDFBFFBF9EDBFFFDB0F90BCAD09ADAC9CBC09000DA00000000000000000A00E00000A0000000000000000000000B0000000000000000000000000000000000FBC0000000000000000A0FBFCFFCFBFE9FD9BFDFFFFE0000AD009F9FCF9CBDFFFBFBFFDBD9F9BDBDBFEDACBCBDACBC090A909E00E9AC9C000000000000CA00090000000000000000000000C0A00C0F000000000000000000000000000000000009A0000000000000000CBDEBFEBF0F9FFAFE90BFFFF0F00000BCBCF9BCB0FBF9FDFF9FFFFADF9E9F0F9FF0F0CADBCBCAD0E0000F0F9A0A0000000000000909E000000000000000000000A000000A0C00000000000A0000000000000000000000AC000000000000000BDBDAFDE9FFF0FDADF9EF9FBFDFDADADBCBCB9EDAC9FDFFFBFDFF9BDF9BE9F9BDA9CE9E9C0000000090F9F9F0C9C000000000000000E0000A00A00000000000000C00A0CA000B000000000A00000000000000000000000090000000000000009E9EBFFFBFFDADEBFF9E99EDFFEFADF9F0F9F9EDA99FBFBDBDFBF9FDFBFFDBF0F0F9F9BC0A00F0DBCBCF0F9E9EB0A00000000000009A000000000000000000000A0A0D00000C0F0000000000000000000000000000000000000000000000000009FFFFCFF9EBFCBCF0F9EFDBE9DBDAFD0F0E0F09CBE9F9FFFBFDFFBFBDBDBDF9FF9F0BCB9D9F9E9AF9FBF0F9E90C900000000000000C09A00000000A000000000000A0AC0A0A0E000000000000000000000000000000000A0000000000000000A00BCFBFEFDFBFCBCF0E9EADBEBCFDAE9F9F00E9BDFBDF9FDFBF9FDBDFFBFBFF9F0F9F9EFADADBC9AD0DADA09E9A0E000000000000A900000000000000000000000C000A00D00D000000000000000000000000000000000000900000000000009CBFFBFDBFFADBBCBDFBDFDFEDCB9AD9E0C00F0FCB9FFBFBFBDFFFBFFBDFDFDBFBF9E9E999BDADBC9A9BF09F0000090000000000000000000AC00000000000000000AC009E0A0B00000000000000000000000000000000A0000A00000000000000BDADFEFDADFCFFFAFDEBFFFDBFCEDAC90BDBDB9FFF9FDFDFFF9FFDBDBFBFBFDFDF9FB9FEF0F9ADADAC09E0E0DA9E000000000000000000000A00000000000000A090ACA000CE000000000000000000000000000000009E00000000000000000BCBFFBFBFFBFBDBDFCBDEF0FFFCBDADBCBC9A9FFF9FFBFFBDBFFDBFFFFFFFDFBFBFFDFF9F9F9FF9F9F9BC909A0C0000000000000000A000000000A000000000000CAC90C0CA0F00000000000000000000000000000000009E00000000000000009CBCFDEDBDEDBCBDBFBD9F9ADBCBCB0BDBFDF9FFFBDF9FFFFDBFF9F9FBDFBFDFDBFBDFFFFFF0FF9FEDBADAC9A9E9E0000000000CA00000A000000000A0000000000A0A0A900B000000000000000000000000000000000A00000000000000000A0BFFBFBFEFBFFBFBCBCBE9EDADBDBDFDBF9FBFF9FDFFFF9F9FFDFFFFFFFFFFBFFFDFFBDBDBDFF9EF9FCDADBC9E9C0000000000B0000000000A0000A00000000A0000C0900E0E00000000000000000000000000000000AD00BC00000000000000DADAFDFFBDF0FDEDBDFBDBFBDBFBDFBFFFFFFDFFFFFBF9FFFBFBFBF9FFFF9FFFFDBFBDFFFDBF9FF9E9BBF9ACB00A000000000000900000000000A0C9000ACA0000E0A0E0E00F0000000000000000000000000000000000A00000000000000009ADBDFFADFBFFBFBFFBCFFFDFFDFFFFFFDFFDFBF9FBFDFFF9FDFDFDFFFDFFFFDBFFFDFFBDBFDBFCBDBEDC9EDBCBD0000000000000000A00000000000ACAC0009CA009C0009A0F00000000000000000000000000000000B0C0009A00000000000000FB0FFBFE9FFDF9FFBDBFFFBFFDBFFFBFFBFFFFFDFF9FBFBFBFBFBDBFBFFFFFFFBFBDFADBFCBDFADBFBE9E9ACAC000000000000A000000000000000000A0A0000A0ADAC0C090000000000600000000000A00000000000A9A000000000000000A90FFBDEDBFF0FBE9FDFFFBDFFBFFFDFFFFFFDFFBFBFFFDFDFDFDFFFFFFDFBFF9FFFDFBDFDFBDBFDBCBDBF9EF90B00000000000000000000000A0DA0A000C0CA00C00000A0AE00000A000000A000A0000000A000000A9AD00C000000000000009CBDBCFFBFDFFFFDFBFFBDFFFDFFFFFBFDFFFBFDFFDF9FBFBFFBFBDBFDFBFFDFFFDBFBDFBFBDFE9ADF9ED0F090AC0000000000000000000A0000000D0C0A90A0C0A0AC0F0C0F00000000A00000000000A00000000000000A0A000000000000000A9EBFF9EFFBF9FBFFFDFBFDFBFF9FFFFFBDFFFFFFFFFFDFDBDFDFFFFBFF9FBFBFFDFDBF9FDAF9FFCBDFBF0DAC90000000000000000000000F00000A0AC0E0C0A90C9A000B0F0000000000A000000000000000000000E00C90000000000000000009E9BF9FFFFFFFF9FFFFFBFFFFFFDFFFFFFFDBF9FBDBFBFFBFBFBDFFFFFFFFDFBFBFDFF9FDBF9FBEB9E9FA9A0000000000000000000B0C000ACA0009A00A90CA0A0CAC0C0B00A000000000A00000A000A00000000909A0000A000000000000009E9EDFFF0FFF9FFFFBDFFFFDBDFBFFBDFFFBFFFFFFFFDF9FFDFDFFBFDBFDFFFBDFDFBF9FFBFCF9F9DE9FC9C0000000000000000000000A000009C9E0C0F0CA00C0CB09A0AE0000A00AC00000000000000000000A0C0AC9A0000000000000000B0A9FBE9FFF9FFFFFFFFFBDFFFFFFFFFFFBFDFFDBDBDBFBFDBFBFBDFFFFFBF9FFFBFBF9FF0FDB9E9FEBDA9A00000000000000000000C0000A9C0A0A000A00A0CB00A0CAC0CF0000000000A0000A0000A0000000000A00000C09000000000000000D9E9FFBFFFFF9FBDFFFFFBFFBFFBDFFFDFFFBFFFFFDFDBFFDFFFFFFF9FFFFF9FDFDFFDBFDBEF9F9BDA9C0000000000000000A00000AD0000A0C00E9E9E0CB0CA9CA000B0F0000000000000000000000000A000009E9A000A00E00000000000000A9E9EDBDBFFFFFFF9FFFFFDFFDFFBDBFFBFDBDFBFBFFF9FBFFDBF9FFF9FFFFBFBF9FBDBBDBDADE9FDA900000000000000000000A00000C009A900A000B0CA0CA0DACAC0900A00000A0000A0000A000A0000000A000C0B000090009000000000B0F9FBFFFFDBFDFBFFFFDFFFFFFFFFFFF9FDFFFFDFDF9FFFDFDBFFFFFFFF9FFFDFFFFDEDFBDADBFF0A9C0000000000000000000AC90A0A0A0E0CAD0F0E0CAD0A0CA0900AE0000A00000AC000000000000C00000009A9AC000000A00A000000000C9AFE9FBFFFFBFFFFFBFFFBFFBFFDFFFFFFBFFBFFFBFFDBFBFFFFFBDBFFFF9FFF9F9FBB9CBDBDB09D0A0000000000000000000000C00D00000B00A0E00B00A9CB00E0BCF000000AC00000000A0C00F000000A00AC0C900B0A000C00000000000BCBDBFCF9FFFFFDFFDFFFDFFFDFBFFF9FFFFFFDFBDFDBFFFFFFBDFFFFF9FFFFBFFFFBDDFBCBDADF0A900000000000000000000000A0000BCBC0E0C00BC0E0CA00CB0E0AF00000C00000000A00900000A00A000C90A00A0C090090090000000090B0F9FBFFFBDFFBFBFFFBFFBFFFFFBFFFFFFDFFFFFBFDFBDFFDFFFFF9FFFFFFFDFBDFBE9F9FF9B0D0C9A00000000000000000A000000A0000A90B0F00A00B0CA0AC09C0B00A000000A000C0000A0A00C00000000A00A09A0C0A00A000000000000DADADBF9FFBFFFFFFFFFFDFFFDFFFFFBDFBFFFDBFFBFFFFBFFFBFDFFFBDFFFBFDFBDBFDB0BCF0A9A0000000000000000000000000000CAC0E0CA0CAD0E0CB0F00ACA0E000000A0000A00000000000000000A90C90C0000A000000000000000ADA9FBFDFFFFFDFFDFBDFFFFFBFFFDFFFFFFFFFBFFDFFFDBFDFBFDFFFBDFFBFDFFBF9FF9ADFDB0F90C0000000000000000000000A9C090A90B00BC0B00A90A0C00ADA0DF0000000000000000AC000C0A0000000A0A9000B0900009C0000000009A9F0FDBEBF9FFFBFFFFFDBFFFFFFFBDFFFFFFDFBFF9FFFFFFFFFFFBFFBFFDBF9FDFFDBDFA9A09C0B0090000000000000000000000A0E00CAC9E00E0DAC0E9CA0E00C0AF000A0000000000A000000A00CA00C00000A9AC00CB0DA00B0000000000CBDAFFDFFFFBFFFFFFBFFFFFFFBFFFFFFFFFFFDFFFFFFFBFFFFFFFDFFFBFFFFFBDFBEBDF9D09B000000000000000000000000000000B000A00F00A0CB00A09E9ADAD0D0000C0000A0C000000A009000000A0009C00C9A0A00000000000000000B0BF9FBFFBDFFDBFDFFFF9FFDFFFFFFFFFDBFFFBFFF9FDFF9FFFFFBFDFFF9FF9FFBDF9F0B00AC000A00000000000000000000000000C0F0DAC0E9CA00E0CAC00CA00AA000000A0000A00000000E00A000090BCA00B000900000000000000009C90F9EFDF9FFFFFFFBFFFFFFFFFDFFFBFFBFFF9FFDBFFFBFFFFFBDFFFBF9FFF9FFBDFBFDBCF99000900000000000000000000000A09A0A00A00A00AC9E90B00F0A90E0F000A000000000000A00000C0000E00000B0C0A00000B0000000000000A0F0F9FBFFFF9FBFFFFDBFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFDFFBDFFFFF9FFBDFFBDFADF0B00000000000000000000000A000000C09C9E0CBCBC9A00AC0E00E0CA9CF00000000000000A00C000A0000900E00000B0900E90000B0000000000090BCBCBDBFFFFFDFFBFFDBFFBFFFFFFFFDFFFFFFFFFFFFDBFBFFFFFBFDBFF9FFBFDFBD009D9E9000000A000000000000000000000A00A00F0000AC0AC9A09E09A0CA0F000000000A0000C0000A000A00A00900F0F0CA000000000000090000090A09F9FFF9FBDBFBDFFFFFFFFDFBFFFFBFBFDBFF9FFFDFFFDFFF9FFFDBFDBFF9FDBF0F0EB0A00000009000A000000A900F000000000A0CA00E9E0B0DAC0E00BC0E90EA00000A000000A0000A000C00000000A00000B0090000000000A000A0000D9F0BE90FEDFFFFFFFFBFDFFFFFDBFDFFFFFFDBFFBFBFBFFF9FFF9FBFDBFF9FFBF0BFB9C09000A0000009000000000A0000A000000D0B00F0A0C0CA00A90AC0A9CA9F00A0000A0000000000000A0C000E000D0BCBC9C0A0000000000000090A00A0BC9FF9BFADBDBFBDFFFFFBFFFFBFFFDFBFFFFFFDFFF9FFFF9FFFDFBFDBF9FDB0DBCF9AC0000900A0000000E00000000C000090A0E0CA00CBA0A0CBC0E90F0CAC0F00000000000000A00000900000090A0A0000A0A009A0900000000000009090DB09AD0BDBFFDFFFFFFBFDFBDFFDBFBFDFBDF9FBF9FFBDBFF9FBFFDBFFDFBAD0F0B0C900900A0009E00090000A09E0A00C000E900A9CAD0C0D0B00AD0AC0A90B0D00000C0000A000000AC0000A00000090CB0BC9090C000000000000000000ACA0DADAF9EFDBFBDBF9FFFFFFFBFBFDFFFBDFFFFFDFF9FFFDBFFDB9FF9EBDFD0D9D09A00A00D00D000090E0009C0C09000A00A00E9CA00A0A0AAC0E00AC9ACAC0EA000A000A000000000000E0000A00E00A00C0BC0A0A0000A00000000009AD0909A0909CB9BEBDFFFFFF9FBDFFDFFFF9FFFFBF9FBF9FFBDBDBDBEFF9F9DA90B0A0AC00D00A000A0000A00000A09A0ACB009000F00A09E0F0D0C9A90AD0AC900F0F0000000000000E000000000C00000000A9ADAAD0090C0000000000000000A0000F0F0BDEDBDAF9FF9FFFFFBFFBDBFFBDBFDFFDE9FDBDAFDAF9F99E9AF9E9C09C9090A90D0B0000B0C900A00000D000E0E0F00AC9E0000A0A0AC0E00E90ACA00F0000000000000000A0000A0000000009C000D0AC000B000000000000000000F00090F0B9E9F9FF0FFBDBFDF9FFFF9FFEDBF0BF9FBF9FDBF9E9FE9FFD0F09A0000AC90CA00C00000000090D0AD0A000900A0BC0A00E9E0CAD0CA09E00E00BCB0F0000A00000A00000000A0C0A0000A0C000A0AD9A9A00000000000000000009009A0F00DA9BCBD0FBDFEFDBFFF9E9E9F9BC9FD0BD09F0BF0F9F09F09AD00E090A0000A909A0009000A0ACA0A00A0D0A0E9C0C0AD0E9A09A0A0B0F00BCBCBC00EA0000000A0000000000000000000000A0A090F0A0C0000000000000000AD00000AC900FADDE9E9FBDADBDBF9F0F9F9F0BCBCB0BDAFF0FF09E9ADFADBCB0900000D09AD0AC009A0CA90C900C900000AC0000A0BC0A0C0CAC90E0C00AC0000ACB0F00A0000000000A000E000A0000A0900090ADAFC9A000000000000000000A000009EF0900B9B9E90F9BDBCFADBC9ACB9CB0BCBDA909F09DF90DA900090E0000000A000C900000000C9A009A00E900009A0E9E00AC9A0A9ACA90A0E9A0E0F0AC0F000000000000000000000C000000E0000C0090AC9ADACA000000000009009AC00090E0DAC0CA9E9ADACB90F00BF900E9C909E9CBF09FAA0F09CA9F0A9000900090F00A000000090A0C0AC00000E09A0C9000F09AC0F00C0CAD0B0C9A9A0C9A0D00000A0000A00000000A000A000000ADA09ACBDB0C009090000000000AC000090BE909A09A90090F0DB0E909F00CBC90B0F090BC90F0D9F09E09C00D00A0000A0000900000A00A0009090BC000000C0A00E000E0A00ADA9A00E0E0E0C0F0E0DA00000000000CA000A00000000000000000AC90A0E9A9E0AC000000000009000A0C90E0000000F0E90B0C9A9E0C9B09AF0F0F0AD9ADADBE0A009A00B0009C00C90F0000C0A09C90C90A0E000B000B00BC0E900E090DAC00AC0E909A009A0A90AF00A0000A0000000000009E000000A900A09A0E9E9ADE9C90A9000000F00AC0000BFE900000F0009CADABC9CB0BC0E9C0DB00F9A0DB00090D000090CA0000A90E0000A9A0D00000A0C00000000000000B00ACA9ACA00B0E0B00ACAC9EAC9CAC0F00000000000000000000000000000CA9C00CB009E09AFAE9CA0000D000000009000FEC09E00090A9C0D0BE9CB0BC9A9E0CB00C9A0CBCBCA09000E90000BC00B0F009C000000A0900B000BC000000CAC0E90BC009CA0CA9C0AD0A9A00DA0BCB0D0000000000A000A000CA00A000000000A0A90CBE9AE9C9F0B0DA00000000000AC9E9A9000000A000B0AD0DA0F0CBADA9B00DA90D0B09090CA00900009C009AD000F0000B0AD00E0000F000A00A0A900B00E00BCAA0F00E0AD0AC0CBCA0CA00CA0000A000000000000000000000A00A0009C00A090C90BAF0FCA00A00A0000BC09A9FC0A00000C9CBCAD0E9ADADB0D0D0C0B090E0BC0A0E9000000000A0B0E000B000A9C00000000000000000009C0CAC0E09AC009C00F0BC0ACB0B0A9CB00FAF0000000A000000000A0000C0000009CACA9E09CBEB0E9C0F0BDAD00000000000ACBCBC0000B00A00909A9AD09E0DA0A9AD0CA090009C90A000000000D0C09000C9A9CA9AC900A9000A00E009C0A0A090A90E0A0E0BCA0C00E90E0CAC0AC9E00F000000000000A000000000A0000000090009A0000CB0EB0FE0F0FAD00000000090E9E9E9000090F0A0E0C0BE09A0DAD000B0D0E90A0000000000000A009A00DA00CA90C00AC000C000900000A9CBCA0C0E00D0B0C0ADA0E90E09A0DA9CA00F0D00A00000000000000000A000000000A0A0A0C00BCB0F00F09F0F0DA0F0000000009E9E00C00CAC00D090B0C09E0F090ADAC0A0000D00AD00000000090A00DA00900000B09000000A0CA000A000A009E0B0F0A0CA9AC00E90E0BC0F00E09EA00A000000000000000000A0C00000000A0D09C0B0BCA0F00F0AF0E9EBED0A90A00000F0E900A0B0090B0ACA0DA9E0900E0D0090090000000000000090AC0D0DA090CA90AC00CA00A000090009C0F00D0E000C0AC0B00CA9E9CA9AC0A00E90E090FF0000A00000A0000A0000000A0000090ACA9E0C09ADADA00D0BDE9C9AD0C00900000A9EE090CBCAC0C090F0C09E0F090A000B00CB00B0000000000009A0A0000A000C900A0C09000000A0C0A00E0A90ACB0AC9E0E0BCA00AC0CBC9CB0CA9E0E0F00000000000000000000000000000C0900A9A0E090F0F0E0E0B0FACBE9A0C0A000AD0900E9A0090A9E000B0E0900CA9CB0C0CB0000000000000A0000D0D000C000A0A09090AC0E0000D0A09A090CAC9AC09A09C9E00DA0DA9A0AA0CA9CA0DA0D0000000A00000A0000A00A0000A09A00AD0C0900E00DAD09AD0E9CBC9AC90AC00000ACA090D0F0AD009E9C090E0B000000B000000000000000000F0A0A00A9000D09C0E00A900000A00000C0CA0B0A0CA9E0CA0A0BE00F0CAC9C9E9CA0DA00CB00000000000000000000000C0000A00F000B0E0A9AFA9E0AD0E9AF00AC9A09090C0BC9000E0A00DA09E00A00E90C09E000000000000000000000000D0000000A9A0A0900C000B00900A000B0A9C0C0CB0E00B0E90C09E00A90E0A0AA9CA0BCBE0A00000000000000000C000A0009C0000A0C0900C009EDBCA09AD0BC9AC000C0A0000E00009C9E00F09AD0F00090A00000000000000000000A09A00000000C00C0D0CA0A9000C00AC000BC00C0A0B0AC00DAC00E9ACA0CBCAC9E0C9C0AD0E00F0000A000000A0000000A0000000A000BC0B0E0F0A9E00ADADBC0AD0AC9A9E0A0900009E9000A09AC0FE0A009E00000000000000000000000090C0DA000090A09A00A90C00ADA0000000C00A9A0C0CB0ADA00ADA0C0BCB0CA9A00B0A0F0A09E0D000000000000000A0000000000AC0B00090090009009F0AD0E9ADA9CBAC0090CACA00000A0000C09A09C9CA0000000000000000000000A00000000000A00009C00000A900C000BC0B0B0000C00B0A0C0A0CBCA0F0BC0ACBC0CAD0E9CAC9E00BB00000000A00000000A000A000090000C0ACA0E0A0E0E0ADAADADA0DA0D0B0CA000900A000009A09AC9E0A09C0000000000000000000090C0CA09A000C00CA00A09E9C00A9A0AC00000C00A90A0C00E9A0DA009C0AC0AD00A0BC0A0CA90A09E0E000000000000000000000000000E000B0009000D0909ADA9CBCBDA0CB0ACB009000A000C0000C00CBE9C00000A000000000000000000000B09A0C09A090009C0000A0BC0C0909A9E000A0C00CB0E90AD0AD0EA0E90F00AF0E09E9CBCAC9CA9CF0000A00000000A0000000000A0000E0000A0E9A00E0000DA00E0EDA00F00CB0E0AC90C9A0000A0B000A000A000000000000000000000A00000C9A0C9ACA90A09A0D000A9A0E0C0009A0900A00000AC0AC0A90DA0E00E90090E00A00A9A0ACA0D00000000000000000000A00000000000CB0C00C0B00A00A0DA909ADAC00F00C90000A000000009C0F0D000000D000000000000000000C090E9A0C9A0C90CA000C0A0E90C0D00A0000C0E0BC0A0CBC9ACB0CACAC90E09E0E0E9CBCBC0C0F09E0B00000000000000000A000000000A000A000B00B0C09C0B0DAC0FACAD09A00B0A0DA0C0000000000B000A00C00A0000000000000000090B0E90C9A0C900A09C90A90900CB0A0B0CA0E0A9000000A00AC90CB009A0E90E0B0F00A0AC0B0A0CA09E000000000A000000000000000000000000C0AC0A0A000C0A0BA0DA9EE0D00C0CA00000A0000000000F0D0000000000000000000C0BCAD0E9E9AC9A0A009CA0AC00CACB00C0C09009090C0E00AD0CAD0E0ACBCACB0CA9AC00F0F0CB0CBC9AD0EF000000000000000000000A00000000000A00000D000A0000C0DA0F09AF0F0B009ADA00C00A000A0CA0A0F0A000000900000009A0BCB9AD9A9E9AC90C9E000090B0A90CA90B0E0ACACA0A000C00A90A90AD00A90CA9C09ACA000B00E00A0CA00F00000A0000000A000000C0000A0000009000E0A00009CA9A0B0C90FAD0A0ACAF0C000900000000009C0000000000E00C0DAC0E0D000C0A0C00000000A00AD00AC0D0A00CA000090000D000A90AC0E0CADACBCACBCA0AC0BCBCACAD0BC0E90F090000000A0000000A000A0000000000000E900900AC00000C00CBAE0C0ADDF0D00FADA0A000000000A09E0AD0CA0000A0B009A900ADA9A9C9A9C09A0000900A0CB00AC90B0C9ACACB0A00A000000A90BC00A00DA009AD0BC00AC900AC0B00E00E000000000000000000000000000000000000AC0000A0A0A9E9AC9C9AF0A0ADACB0DAC00D000000000000D00A9C900090CA0C00E90000C0A0CA0A0CA900CA0CB000090AC00A009000C000C000CA90E0CB0F0F0A0F0E0AC0A0E90E9E90E0DA09EF0000000000000000000000A00000000A00A000A000000D000E9A0AC00D0F0E9ACA0DADA0AC0CA0000000A0F0A0E0F0E90DA9E90ADADA90DA9C900000E0009000BCAC09AC0DACA00000C000A0000E9AA0E000E900A9C0BC0B0EA0A0E90A0CA00F000A0000000000000A0000000000000000000000000000A0D0E9E9A9E0A009ADADA0DA9C90A0000000A00000D09A0BCADACB0E0D00000E000A0E09CB09E0A0E0009A9E09A0090C0A000B00C090E00C9C0ADA0E0F0E0AC0F0C90D0E00E9E90F0900000000000000000000000000000000000000000000A000A0BC0ADE09CADAC09A0DA0E0A000000AC00C00C0A0E09C09AC90E09A0CBCB090F0090A000E09C090F0AC000AC0AC0A000A000000A000F0A0F0AC90B0C0BC9A00A0E0A90E9A00E00E000000000A000A000000A000000000000000A000000000000000F00BE0B0A0BCAC9ACB0D0F0D0E00000000A9009CA0AC00A0900CB000C0E00C0AD00E0900B0E00D00CA900900090C00C00A0000F0A0DA0C9ACAC0BE0AC0E9CB0F0CB0C0CB0CAF000000000000000000000000000000000A0000000000000000000E909C0F09CB00E90C0A000A09000A9A0900E0000D0A90D00CA00F0A0090A900A0090A0E090F0ACA90C00E00A00A00000C00000C9A0CB0E090AC00D0A90A0C00A0CA9A0CA90F00000A000000000000A000000000000000000000000000000000000ACAF00E00CB00E9AD0E00000E00C00A0000AC9A0D0E0A0A9000090A0000AC0DA00C900E00009000A00000C00000A0000ACA0A0CB00E90EADACA0AD0E9E0AD0F00E0DA0CA900000000000000000000000000000000000000000000000000000A0DA909E09EB0FE9AC0A90E0A009000C00C9000AC00A0BC90C0E00E0D0E9C09A00C0B00F00BC00CA000A000A0000000A0000900DAC0E90E9000B09CACA00BC0A00E90A0DACE000000000000000000000A0000000000000A000000000000000000000E0E9E00C009E0BD0E090C000A0A000A0E0900F09C00E0A90F090A000A00000B00E00000A0A0009C0009000CA000000000E0A09A0CA0CADACACA090DAC9E0CB0CAD0A90FA000000000000000000000000000000000000000000000000000000A00B0E9E9ADA09E0A09ACA90AC9C00B00000E000E0AC909C0000E000A90AC9E00F00BCAC0000B0CA00A0C00A00000000A000D0E00F09E90AD00ADA0E00A00F0CB00AC0E0D000000000000A0000A000000000000000A00000000000000000000000D0090A0CA0DE0F0F0C90CAD0A0BC0CBCB000F00090ACA0A0A000D00C090A00C0000009AC00C0A000000A00000CA0000CA0A09AD0AC0AC0A0F000E90F0DA00A0CBC9A00B000000000000000000000000000000000000000000000000000000000A0A0E9CB0DA090E0F0ADA90AC9CADA000E0F00BC0ACB0D0D0C9A0A0A00AC09A0AC0B0E00A90000000000000000000000090CAC0AC0BC9A9C0A9E90E00A00E9CA00AC9EE0000A000000000000000A00000000000000000000000000000000000000C900AC0A9CAC900BCA0CBC9EB009E9E900AC0AD0000A0A9AC00D0DAD09AC009A0C00900CA000C0A000000A00000000ACB09AC0B0CAC0E0F0C0E00AC9E90A0DAC9A00F00000000A000000000000000000000000000000000000000000000000000A009AD0A09A0E009C0BCA09CF0E000E0D0000ACBC0C0C09ADA0A000A000A0C0B0AC0000000000000A000000000A0000CAC0BC0A09A0900A900F09A00E0DA00AC0F0D000000000000000000000000000000000A00000000000000000000000A000C0AC0ADAC0F09E0A9E0DACA009ADA9A0ADA0090A9A9A0C000C000AC0F00DA0C000A000000A00000000000A00000000A90AC0F0DAC0E0E9E0E0CAC0F00A0CBC9A00B00000000000000000A00000000000000000000000000000000000000000000000BC009A00E009E90A0B0ADAC000CBC00DACA0C00C0A0A00B0E90000A00000900CA0000000000000000000000A9E0CAD0B00A00F0B000A90A90B00F0CB00AC0EE00000000000000000000A00000000000000A000000000000000000000000A00000B0E00CB0BCA0E09C0D0009ADA00BCA000C900A0000D0000000A0000000ACA0000A0000000A000A0000A000000B000AC0E0DA00CACBC0E0E0CAC0A0CAC0A90F000000000000A0000000000000000000000000000000000000000000000000A000090E9AC00BC09E0A0AE90C00090090F00A0E0DA09000AC00C000000CA0000000000000A0000000000000000000E9C0B09A0CB0AD00A0900B00BC9A09AD0E0D00000000000000000000000000000000000000000000000000000000000000000C0AE9C00AC00A000D0D00A0A00E0E0E00F0000000E000000A0000E0000000000000000000000000000000000E0E9A0AC0E0DA0C0A0E9CACAC0E00AC0E00A00B000000000000000000000000000000000A000000000000000000000000000000A00D00A00900B0D0B0A000C90C000900000000A00000A000000000000000000A000000000000C0000000000A00900CAD0A09A0C0B0D00A0B00B00BC0B00AD0FE0000000A00000000A0000000000000000000000000000000000000000000000000A0F009ACA0C0AC0C000A0000B0000ADA000000CA00000000000000000A00000000A000000A00A000A0000000ACA90AC9E0CA9AC0A0E9C0F0CAC0A0CAD0A00F000A0000000000000000A0000000000000000000000000000000000000000000000000E000000000A00A0000A0000E0000CA00000000000A000A0000000000000000000000000000000000000C09CAC9A00B0CA09E090A000A09AC9A00AC9E0D000000000000000000000000000000000000000000000000000000000000000000000A000000A000000000000C000000A0000000000000000000000A000000000000000A0000000000000A000A00A0A0C9E0CAD0E0CAC0F0E9CAC0AC9E00A00A00000000000000000000000000000000000A000000000000000000000000000000000000000000000000000A00A00000C0000000A00000000000000000000000000000000000000000000000090E9C9C0A00B00A00B09A000A00A9C0A09AC9EF00000000000000000000000000000000A000000000000000000000000000000000000000A0000000000000000000A00A00000A00000A000000000000000000A000A00000000A0000000000000E00A0A9E9E0CAC0F0CAC0CAC9E9CA0BCAC0A00F000000000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A00000000000000000A0000000A00000000000000000000A000000000F0C0A000B09A00A90A909A000A0C009AC9E0D000000000000000A0000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000000000000000000000A00000000000000000A000A9ACACAC0E0DAC0E0E0E0E0E9E9ACA0A000A00000000000000000A0000000000000000A000000000000000000000000000000000000000000000000A000000000000000000000000000000000000A0000000000000000000000000000000009E0C09090A090A09A090009090000000D0C9EF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000000000000000000000000A000000000000000000A0000E009ACACAD0E0E0E0CACADACACACBCADA0A0A0F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A00000A00000000000000000000000000000000000000000000A000A000000000000E0090A00A90090A090000A00000A00CBC0D0D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000000000A0000A000A00000000A000000000000000000000000009A00E0E9CAC0E0E0DACACAD0DADAC0DA000A0AA000000000000000000A00000000000000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000000000A0000000000000000000AC0DA9000A09A0900A000B000A00090A00CA9C0F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0CADAC9E0CACAD0CBC0CAC0E0E0E0E0BCA0AF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090A000A000B000A000A090B090900090000D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ACADACBCADACADACBCADACACACACADACADACA0F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010500000000000020AD05FE,'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.',2,'http://accweb/emmployees/peacock.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(5,'Buchanan','Steven','Sales Manager','Mr.','03/04/1955','10/17/1993','14 Garrett Hill','London',NULL,'SW1 8JR','UK','(71) 555-4848','3453',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D20540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00000000000000A0000000000000000000000E900000000C9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D000C000000000000000000000000000000000E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000A90000000000000000000000CA0000000E900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000000C00000000C00000000000000090000000000000000C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000000000A000000000000000000000CA00000000000000000A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00000000000000000000000000000000909000000000000000C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090000000000000000CA0000C000000000000000000C000000E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000C90000000000000000CA9000000E90900000000000000D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A00000000000000000AC0000000000009000000A0000E0E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000900CA0000000000000000B00E900CB0900000000C00000C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000000E000000000000000000CA00F0000DA00000000000000000CACA90000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009CA0000000000000000C0000000A90CA9C9090000009000C0C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0000C0B0000000000CA000E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000000000000000000000000000CA09009000000000000E9000000000000000000000000000000000000000000000000000009A0000000000000000000000000000000000000000000000000000000000000000000000000000000000C0000C90000000000000000000000000C000DA09000000000000C9CE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000000000000C0CA00000000CB0D000000000000000EA9000000000000000000000000000000000000000000000000000A0B000000000000000000000000000000000000000000000000000000000000000000000000000B00000000000A000000000C0000C0000C0D00C0F09CB0B09000000000000DE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D0000000000000CA9E9F0B0F0B9CBCB0D0000000000000000CF0000000000000000000000000000000000000000000000000000A00000000000000000000000000000000000000000000000000000000000000000000000000000C00000000000000000000000CB9C0D0A9C9ADCB9AD0B090000000000000EFA9000000000000000000000000000000000000000000000000000090000000000000000000000000000000000000000000000000000000000000000000000000C0A90000000000A00000000E0DE90CB9AD9CB0DB0F0DBC900000000000000000C000000000000000000000000000000000000000000000000000E00000000000000000000000000000000000000000000000000000000000000000000090000B0000000000000C0000000C9CA90F9AD0DA9AD9AD90F00BCB09000000000000C00000000000000000000000000000000000000000000000000000A9A0000000000B000A00000000000000000000000000000000000000000000000000000000000000000000000009000E0F0BDCB0F9A9A9C90BC9AD0F9C909000000000000000E000000000000000000000000000000000000000000000000000000000000000000A0000000000000000000000000000000000000000000000000000000000000000000000000000C0C90DAD0B0D0C9C9CBCBC9A9CB9CB0E900000000000000E0900000000000000000000000000000000000000000000000000B00B00000000A000900A00000000000000000000000000000000000000000000000000E00000000000000000000A0B0E9A9AD0F0B9A9A90909ADF99CBC99CA900000000000C0C0000000000000000000000000000000000000000000000000B00A0000000000000A0000B0000000000000000000000000000000000000000000000A000900000000C0000000000C0CB0D0D9A99C0D0D9E9E9C900FCBDBE99C09000000000000A0000000000000000000000000000000000000000000000090C00900000000000090000C000000A0000000000000000000000000000000000000000C0900000000000000C0000C09090DA9AC9CA9B0B009090B0F90BC0D9E9B00000000000000D0000000000000000000000000000000000000000009A900A0090A0000000000A0A00000A000000000000000000000000000000000000000000000000E0E000000000000000C000ADADA90DB9A9D0C90F9E0F0D90F0DBFADAC9000000000000CA000000000000000000000000000000000000000900000000DA0000000A0A0B0090000000000A0000E90000000000000000000000000000000000ACB000900000000000C0000AD090090DA9C0D00B9E900990B0E90DBC0DBDBC90000000000DAD000000000000000000000000000000000000C0A000000CB0090000C0F090000A000000A900009A000A900000000000000000000000000000000C90000000000000000000CA9000ADADA9CB9A9BC0090B00E90D9EBC9F9EDADB0900000000CACA0000000000000000000000000000000090A0B0000B0DA000A000ECBA00A0A009000000000A0000000C0000000000000000000000000000000000000000A0000000000000000090D09090B0C9009A90C0D090F0A9C9ACB9ADBCF000000000000D00000000000000000000000000A0B0CB0C000090000000090D00FF0C9E9090A00000000000000000CB00000900000000000000000000000000CB000000C900000000000090CBCB0BCBC9C9B00F0D00B909AD009C9BC9FCDBE9B0900000000EDA00000000000000000000000ADAC90090009000ACB000090E00A00EBEA0ACA9000000A00A009A00000E90000EB000000000000000000000000000000000000000000900E0090009C909A9A00C909A9D00AD009F0BC0ADA9BC9FCB000000000000000000000000000000000EFDFBDADA00A009A9000009A009A90000C9EF9ACA0000A90090000000000ACB0000F000000000000000000000000CA0000000000000E000E9000A9F0B0F00D09DA9AC900A9D0A9E00D0BD9ADE9FE9FC9000000000C0000000000000000009EFFFFEBCB0090090A0009009A000000C0000AEF0E090000A000A000A0000000CB00000CB0000000000000000000000009000000000000009E0000909C09C909A09CA9C900F90CA9C099F0F00ED09E0DBCBB00000000CA000000000000000CEFEFFFFFBDF0DA0000090C0A0000090E09A00000DEBC9A00B0000A90A000000000FE90000A90000000000000000000000000000000000900000090F0BCB0B0B09AD9A09090B900A99090F0009AD9A9E9F9EDE90000000CA90000000000000CFFFFFFFEFDEFA0B090E9000B0090A9000900090000A0EB00A009A9000009000000000FF00000E0000000000000000000000CA000000000A09A9E00000D0909C90BC900C9ADA9CAD09000F90E9F0DA0DAD0FADBDE90000000C000000000000CEFFFFFFFFFFBF9FD00A900A0000000C00A0009E00000000000DAE000A0A9A000000000ECBC90000B00000000000000000000090900000000C0C0000F09B0B0DA09C0B09A900900900BC9F0009000B0DA9DAD0F0E9F0000000000000000000CFFFFFFFFFFFFFFEF0BC9000090900F09000900A09000900000A0E09ACA090000000000000FFB00000CB0000000000000000000E0E0000000009A0000909E909C909A900D090F90E9A09090090BC990C9A9CBCBCDBFDA90000000E000000CFEFFFFFFFFFFFFEFFFF9FA9A09A9C0A0000A090009C0A0000A09A00FA9AC90B0A00000000000EFE9A0000A00A0000000000000000C0900000000000090ADA9E90DA9A9C90F90AC900090C909A09AD000E09E9CBCBCB0EDADB000000C0000CFFFFFFFEFFFFFFFFFFFEDFAC0D09000000900900A0CA000D000000000000CFFEAC00900000000000FFF9000009000A00000000000000ADA9000000000E000909099A909090A90A99B00B009000C09C009A90900F0F09EDF9EDFC000000000EFFFFFFFFFFFFFFFFEFFFFFBFDBB0A00000B000A00900090B0A0A0000A00000ACADB0A0A0000900000C0FFEB0000A0000000000000000000C0E000000000900DA9CBC9C9AC9A90C90C0090090A90B09A90BC0090F0090F09A0F9A9B000000E0CFFFFFFFFFFFFEFFFFFFFFFFFEBC9D00DA90000900A009000009000A0090000000F0E09000000A000000FEFF900B00000000000000000000CA9000000000000B909B09A90990C90B09A90F090C900000000009AC009E0F0FCFDADFCF900000D0FFFFFFFFFFFFFFFFFFFFFEFDF9FFA0B0000090F009C9000A0D0E000900A00000A000A9A000000000000CEFFE9A00000A900000000000000CB00000000000ACBD0F0C9099A90A900900900000A900090900900000ADA090D0B9A9E9E900000CAEFFFFFFFFFFFEFFFFFFFFFFFEBEF00D09A09A000000000A0900A900A00009000900A00000000090000000FFDB00000000A0000000000000000F0000000000990B99B90BC0DAC90B0C0BC909090009000000090909000D0E9EDEDE9E9F000000CFFFFFFFFFFFFFFFFFFFFFFFFFFDBF9A000000900090A00900090000000A0A00000090000C0000E0900000E0B000A09A0D0B0000000000000AC0F00000000CADBCBC0BC99A0990009A90909A009000090090000000000A90B00B0FCBCFB0000CFFFFFFFFFFFFFFFFFFFFFFFFFFFADAD0B0909CA09A09090000A09E0090A0900000A0A00000A90000A00000B000B0000000A00000000000000DE900000000C9B90999909A090A09090900A0009000900000000000009000C0C9EDE9F0F090000EFFFFFFFFFFFFFFFFFFFFFFFEFBFFFB0B00CA0009000000A0DA9C0090A00000A9A00000000A9000B000000000000000000000000000000000CE9A0000000E9BD0F9A0E9AD90D090BC0009090900900000000000000000909A9AD09AE9E9E900CFFFFFFFFFFFFFFFEFFFFFFFFFFEDB9CBC90090900009A009000000B000090A0C00000B000000A000D09A00A00A0000EB00A0EB00000000000CBC09C000099F09B9C99909009A900090B000000000000000000000000000000C0A0FD9E9E9000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA900B000A90B0009009000B0C00A0A009A9A90000A00000000A00000900000CAF0B00CFFF9000000000ACBE000000E99F9CB9E9A909A900F09A0090900090000090000000000000000000DA0AD0F9E90CEFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDBCB000900000C900E00A9000B0090000A00000A0090009A0E909A0B00A090EBE90000FFFFB00000000C0F0900000F9BF9B99090D0B0D0990900900000000009000000000000000000900900D0AD0EDA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADB009A00C9A90A0909000C09000A090A00000009A0000E0F9ACA00000000A0090000EFFFFFF00000000FE9E0009DB9E9DADADA9A9C90B0000090090090900000000000000000000000000C00BC9E9B0DEFFFFFFFFFFFFFFFEFFFFFFFFFFEFBEBF0CB0090B000009A000000BC00000A09090A00A0C0A000F0ECBDADA0A9000B000A0CFFFFFFFFB00000E0F00900CAFDBDB99909C909A90090B0000000000000000000000000000000000009AC00E9ECFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9B0C0000000090000090B000B00B000A0A000000A9000000B0CA009000A0000A000FFFFFFFFFFFF9000C0FA0009F9F9BCBDA9A90B090DB000909090000009009000000000000000000000009C09A909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBE9B909A9009A0B0090A0090000000B000000009000E900A000A9E0AC0A09A09000EFFFFFFFFFFFFF000AF09000F9FBF9B9A9D090D00B000900000A0909090000000000009090000000000000A9C0DACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCBC00A000A9000C0B00900CA09000A000A90000A0A00A00C90A9CA900B00000000FFFFFFFFFFFFFFFB00C90000FFFBD9F09D9A90B0B9090900900909A00000000000090000000000900000E090C0B00FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBD0B09090D009090C0000A090A0A09009000A00000B0DA00AC00ADEFA09E0B00EFFFFFFFFFFFFFFFFF90CA000CF9F9FB9F0BC9AD09C0090A900900000909000900090009009A90900A90090C00B0CAD0CFFFFFFFFFFFFFFFFFEFFFFFFFFFFFBFBA90000A000A00A009A090009009E00A00A90090000A00000B00000EDF0000EFFFFFFFFFFFFFFFFFFFFB0D0009FFFBDBDBD9B090B09B009009A090900000090090009C0090000DA90009009A9C09000B0CFFFFFFFFFFFFFFFFFFFFFFFFFFEFDEDADBCB090B0909090090090A000A90B00A000A00A0009A9000CA9A90AA0FFFFFFFFFFFFFFFFFFFFFFFFF9A000EFBFDBDB09AD9E909009009000900009090B00900DA09090D090000909C9C09CA9E9AD0DAFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFBDA090C000000A00A000A0009009CA00009A0D0000B0ACA000A9C00AC9CBEFFFFFFEFFFFFFFFFFFFFFFFBC090FFFDBBCBDBD0A9090090A90909009090A09009009009A909A9E9099AD0B0A9CA9C00C00ADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBC9A00B090B090909090C900A9A09E09A0000A900C009C0000E0BC9A0ACBDFFFFBFFFFFFFFFFFFFFFFFFBC00FFFBFDB909A9909ACB0C90A00090A00909E990A9A90C90BC9090B0C9090D9E09CBCB0BC90DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB0B009000A000CA000A000A09009E09E00A0A9C0B00A0A0B0009E0A0D0F0AEBEFBCFFFFFFFFFFFFFFFFA90B0CFFFF9BDFBD9E9909009009090BC9090F090AD90D09B9AD0BCBD0DB0DB0F0B9FE9CBCD0BCA0FFFFFFFFFFFFFFFEFFFFFFFFFFFBEFF09A090909C909009009000000C90E9A90900A9C0B0900000A00F0DA000D00CB0EFFFFFFFFFFF9FA90000C0BFFDBFDB9CB090E90090A9090000909A90F990ADA9E9C99F9BD0B0C9B0D0FDE9DEBDA9AC90DEFFFFFFFFFFFFFFFFFFFFFFFFFAFDB0DA90A0000A000A9000A090A9090A9A000A00D0A90C0A09A000E0EA9CBFABCB0B09E9CAD0A900A00000000BCFFBFDBBDB99E990B9090900F909A0F0DB09CBD99C90BDA90D0BD09B0DBF9CBDEBDECBC9ADA0FFFFFFFFFFFFFFFFFFFFFFFFFFDBADB0C0909A909A9000090000000A9C0C9A00A0A09E9A90A0090900D0A0C0DEB0C00A00B0A900000090009000CFFFDBFDA9E990A900A9000900F0990B9CBCB9ADA9BD09DBDBD9ADBCB0D0FBCFFDADBCBC90DACFFFFFFFFFFFFFFFFFFFFFFFFFBFDA009A00C000000D09A009A9090CA90AC909090E00C0E9000A0A00AFCB0E0F9A0FFCB00000A9A90000CFA900CFFBFBDBDB90E9090D0090B09009E0D0A99BC99AD90BDA9090BC90D9D9AD0D0F0FDADF0BCB09ACFFFFFFFFFFFEFFFFFFFFFFFFFAFDB00909A90B0900A0090000E00090A90A0A00090B0B00B0A0000AD09E09A00CFFFFFFBCB0000CA9ACB900000FFFFDFBDBCB99C0B090A9C90B9A99A9DBC9B9E9B0F9B9DBDBDBDB9A9E99F9F9FFADF0FDADAD09EFFFFFFFFFFFFFFFFFFFFFFEDF9ADA90A000000A090900A0909009E0D0A09000A0E09C0F0C909A000AFE9AC90FFFFFFFFFFFFFFB9D0DA000000FFBDBBDB09900A909090900B0C9DA9DB09F9C909D90D9A9ADBC9BC9F99E9E9EDADF0FF0BC909E9FFFFFFFFFFFFFFFFFFFFFFFBFAD0900090090909000A0D00A00B090A0D0A0A9009CA9A00B0E009A9C0BE90A0CBEFFFFFFFFFFFFF0BEF90000CFFFFFDB9DBCB09090A090A9C99B0DB09F090B9F9ADB9F9D909B0D9F9EF9F9F9F9E9FE9EDB0F09ACFFFFFFFFFFFFFFFFFFFFFFF9F0B0AD0A9A0A0000B09009090900E900AD0000A0A0D090C0B0F00CA0C0FEFDA009ADAFFFFFFFADA0CFFF90000FBF9FBDA909090DA99C0990B0F0B09F0BDBD090F990F9A9F90DB0B0D9EBD0FCBCBD0DF9EDB9E0D9AFFFFFFFFFFFFFFFFFFFFBFE9F0D00900909C9A000000A00E00090E900A9E00C0B0A0CA9C00BCBCBFFFFFFFFBC00000CB0BC9A9CFFFF00000FFFFFDBDBCB0F009009B0C90909DBC990909BDB9ADB90D909F00D0DA9990F99F9DAFF0F90FC9F0ACDFFFFFFFFEFFFFFFFFFFFFBF0B0B00090000A09C9A9090909A9E090A0D009A0B0C90A9CA9FCBCBFFEFFFFFFFFFFFFEBCFE9E9EBFFDA9000CFFBDB9A9090900B90B000B0F0BCB0B9E9A9F0B09D99C9A90900900B0D9EDBDE9FCBD0FD0F09B00D9EFFFFFFFFFFFFFFFFFFFF0F0BC900A9A0A90900A0000AC0A09090AD09A9A0D0C9A0BCA0DA09EFDEFFFFFFFFFFFFFFFFFFFFFFBCFFBDA0000FFFBFD90F0B0090C9090909099909D099D09D9DB0B0B900F009A90D0B09BC9BCBBCBF9AF0FADADA09EFFFFFFFFFFFFFFFFFFFFFF90A090009C0A09090909090D00CA900AC00DA0B0C9C09CB0DAC9AFFFFFFFFFFFFFFFFFFFFFBDFF9CFFF99000FFDFBBC909090090A9CB0DA9E9ADA9BCB0B0B909D9D0D9009000C9A9C9E9BCBDDBD0FCDBD09090DA9CFFFFFFFFFFFFFFFFFFFFBDE9DA09C0090900A000A000A0B0A90E909A900D09A0B0F00FADAFCFEFFFFFFFFFFFFFFFFFFFFFF9EBFFF0000CFBFBDB9A90F09A090900909090D90D099D9D9CB9A909A0900090900CB090DBDAF0FF9FADA9E9E9BCF09EFFFFFFFFFFFFFFFFF9EB9A009A0B0A00A9090909A090009C090A0C0E9A0E0D0E00F0D0F0FFFFFFFFFFFFFFFFFFFFFFFFEBDFFF0B0000FFDFB9C0DA9090DB09A90B909A9A9A9E9A9A9B9C99A9090909000009090DADAD9FF9F0DB9E9C9AC90BCFFFFFFFFFFFFFFFFFFFF9E909009000909000A00C0900F00BCA0D0B090C909A090F00FADEFFFFFFFFFFFFFFFFFFFFFFFBDF9ACB90000CFFF9F09B09090B000090D0A00D09C9999D99C09BD09C90000C9090900F0BC9DFFD9E9FF9E90B0D9E9CBCFFFFFFFFFFFFFFFFBF0B0F00B000900A0DA909A900E90900900A9C0A0B0E0DACB0F00F0FEFFFFFFFFFFFFFFFFFFFFFDFFEFBDEF90000FFBF9F09BCB0D099BC0B090D0A90B0E0B0DB99C90B090B9090A9090F90D0FA90FAFDF9AD9E9CB0A9E9CBEFFFFFFFFFFFFFFFFFFF90B009E0A90D00000000B000A09E0AD00A9C9C090A09C00F09EFFFFFFFFFFFFFFFFFFFFFFFFADBD0B090000EFFFDA9BC9999A9A00990909090909999D9B090B9F9DB900D099CBDA90F9F9DFF9FDBDEDB090B0D9E9EBD0FFFFFFFFFFFFFFFFFBDAF00900900A00B09A090009AD0000909E90A09ACBC9CB0F0FEFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9C00000DFB9B99C90F0AD90D09A09A09A9E9E90F0B0D9BC909A9CBDB9BCB90DBDF9E9FBCFDBCBB90BCBCB0E9CBD0FFFFFFFFFFFFFFFFFBCF900BCA90A900900009A009E000E90CA000C9AC900B0A0F00F9EFFFFFFFFFFFFFFFFFFFFFFFFFFBDA09A0000EFFF9CA9A90990090900D009C90909A999D9BC9BDBD9F9909C99C9F9CB0DBDEDBF0FF9DAD09F0C99BCADADEFFFFFFFFFFFFFFFFBA9E9090090090A90B0009A009A990B09C9A0C90E9C0D090F00EDFFFFFFFFFFFFFFFFFFFFFFFFFFCBDB009000DFBDBBD99F9E9B090B90B09A90B0909CA9B09BD099A99E9DB9DA9F0F9DBEDBDFDFF9FE990F09F9EADBCBCB9FFFFFFFFFFFFFFFFFDA9A0090A9CA900C09A009000C00E000A009A0A90A9A0F00F0FBEFFFFFFFFFFFFFFFFFFFFFFFFBFF0F090000EFF90DA9E9099C90B0C9090909D0BC9B9D0DBCBDBD9DB99A9CB9D090DAD9FCFADE9F99DA90DADA9DADBDBCFEFFFFFFFFFFFFFFF0F9C90B0A9009009A9009C0A9A900909AD0F00C90E9C0F00F0FDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF900000CFF9ADBD990BDA9B0D09B09E90B0090B0909A99909BCB900909000090909CADF9F9F0BCA9DA9BDBDADACBCB0FFFFFFFFFFFFFFF9FB0B0BC0900B00B000090A09C00B0AC000000B0E900B00E90F0EFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDE900000FFBDA9ADAD9AD09B0B00909AD09B0909CB99DADBC9909090000990000000909C000D0990090DA9CBC9FDBCF09EFFFFFFFFFFFFFEDAD00900F00B0CB090A09000BC0D09ADA9AC090E9C0F09E00F9EFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFF90000FFBDF9DB9AD9BD0D09BCB090B0D000DB00F099009000000909C0AD0BC909C0A909000009A0F9FA99F0F0F9F0F9EFFFFFFFFFFFFBF9A9A0B009009000A90009A90B00A00000C9AC090A900E99F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFF99E9A090CFBCB9FB0D9BC9A9B9C990DA99DA9B900990900090090D09C9C999909009A99C9E9A900000D009D0F0F0F9E9F0FDFFFFFFFFFFFBF9E9C0900B009A9090C0B000C00009C90F09A00B0E9C0F09E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EF0909000F9DBDA9DBBC9B9D0A9A09A9C9A900009000000909B0B0909A9B0F0F9F9FD9E9BDAD0B090DB0BF0F0F9F9EDBCFFFFFFFFFFFFFFFCB090B0A900B000A09A90CB0B09E0A0A00000D0C900A90BC0F9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0BE90B900AFF9F9BC99BD0B9D09BC99A9909909000909BCB09D9BDBD9D0909909E9AF9FCBDB0D0DAD09C9B9DADADFADBCFDFFFFFFFFFFFBFBDA90D00B0CA90D000090000A09D09C9A9E0A9A0F0C0E0B0E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD99FD099C9BCBDADBDADBD0B99E99E99E90000000009C990F0BC909A9A9E90E909D9CF9F0FDB0A90BF09EDAF9FDADF0F9FFFFFFFFFFFFFFADADA0A90C9090A09A90A9090DA00A000C00900C900B09C0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9B9B909FDBDBDB0BF9B0BC0B90B90B9090D0A909E0B0F99999B9C90D090900BCBCBDADFCB0D9DED09E9BD9E9EDBEDBCBDFFFFFFFFFFFFDBB09C90A9A9A909A00A90AC009009C9A90B0CA9A0F0CE9E9ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD09CFBDBDADBD9FCBD9BD0F90F9090A909C00990D09AD0AD0B09000009D09CBDADBCB9E9ACB9B099EDAF9F9EDBCBDBFFFFFFFFFFFBFBC9A9A0900000A0900D0009A9AC00A0CA0C0900D009A9A0DE9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDB99B0BDB9EBDBDBE9B09A9A99E909CB090909A9009A9090D909090090900ADADAD9ECBDE9D9BD0C9EF9BD0DAFDBEDE9FFDFFFFFFFFFFCBAD009B0A9E90D009A009A00009F090909A0ADA0BC0D0DA0ADFEFFFFFFFFFFFFFFFFFFFFFFFFFFBFB9F9F999FFFBDB9E9F9F9F9D0DA99B9B9090DA90909AD0BDA909E99A90000909090DADBDA9DA0FCB90990F0FBFD0BCBF9E9FFFFFFFFFFFFBDBAB00C9C090A0BC090A0909CA000E0AC00D000D09A0A0D0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB9F9F9CFBDFBDA9F0F9F0B0B99F0D09090009C909E9090990B0900D0909000C9E9AD0DADF0D9090090F99F9C9EFDFD0FDFF9FFFFFFFFFFFF0D09B0A9A0B0900B009C0A0A900A90909A00E9A0E0D0F0F0FBDFFFFFFFFFFFFFFFFFFFFFFFFFFBDB9F9FB9FBDFBDBDF9F9FBD9F9CB09B9F9A0900B0A9090B0DAD0990B0090090DB090DCBCBD0B9CA90BCB9CFADBFBDADAFF0F9FEFFFFFFFFB0B9A9E009009C00A900B00A9C9009C00CA0D0900D09A0F00F0DEFFFFFFFFFFFFFFFFFFFFFFFFFF9DBDBDB9DBDFFBDBCB9BDAF9A90B99F0D0909909009D0909C9090900D0900C90000D0F0BDAD0BCA990C90C9B9DBCD0FDBDADFB0DFFFFFFFFFFFCBD09CB0BCA9A90A9C0090000F0A90B090A0E9A0E0D00F0BE0FEFFFFFFFFFFFFFFFFFFFFFFFFBA9F9FBDB9BDFBFF9F9F0F9DF9F9CB09B9B0900F0900009E09A90B0DB0909A909090A90DCBDADD9DA9909B9C9E9FBFDBEFFDBCFF0DFFFFFFFFFBF0BA0900090090D0A900A90B000000C0AC9090C909ACB0C0DADBFFFFFFFFFFFFFFFFFFFFFFFF9D990D9BDBDFFFDBF9F0F9FB9F9B99F90D0DB99090090B0990D09090090909090909D0F0BD0DB0B09CA90D0B9DBCDFBCF9CBEF909FFFFFFFFFBFDBC90A9E9A0B0A0900A900C00B00F0A90900E0B00E090E9FADEFFFFFFFFFFFFFFFFFFFFFFFF9B0B0FBBF99BFFFBF9E9F9FB0F9AD9E9F99B90CA9009009C90B09F9099090D090BD0F0F99C0FF0F9D099C90BCDADFBEDF9FBFD9FBDEFFFFFFFFFCBA09AD0900D0C09A09000A90BC900900ACB0900F09CAD0A0DADEFFFFFFFFFFFFFFFFFFFFFFFF9909DBD9BFFFFFF9F9F9FBDF9F9BDB99AD0B9990990B009A9C900090009A9B9D0B99D9EDB9099090B009A9D9BDBFDF9FFCF0FADF9DFFFFFFFFFBD9F00B0A9B0B0B09CA9090000009A09C900CAD009E09AD0F0FAFFFFFFFFFFFFFFFFFFFFFFFFB90909FBD90DFFFFF9F9F0DBFF9F0BDAD9B9C9A9D009090009099909099C90DA9D9E9ADBFDAD0F9E90900DA9E9FD9FFF0FF9FDB0FBFFFFFFFFBFBEB0B009C000090CA900E090F0B00C90A0CB090ADA09E0ADAD0DEFFFFFFFFFFFFFFFFFFFFFFF90DBDB9090DBFFF9FF0F9FBDB9FBDB9F9BD9B9D9A9B0909090B000B0DADB9F9DB0F9FFDFDFDFB909090F909D9F0FFF9FDF9EDADFF9CFFFFFFFFFF9BC9CB0B0F0B0B0909090A000000B0E90B00AC9009E90DA9EBEFFFFFFFFFFFFFFFFFFFFFFFB9DB909090B0FFFFFF9FDBFDBDFF9F9F9BDB0D9A999C90C909090DB9DB9BDBDBB9DBDBDBFFFFBD0DA90990DF0BDFFFDFFFBEDBF9F9DBFFFFFFFFF9BCA9A900909C0000A0A000909AD0009C009C90E0F00ADA0DBCFFFFFFFFFFFFFFFFFFFFFFFF90999909090DFFFFFBF9BDFBFF99F9F9BD0DBBD9F0909990B000909DBD9F9DB9DFBDBDFFDFFFDFB990DACBB9FDBDFFFDFDFDBDE9EFBDFFFFFFFFBFEB9000E9A0A0B0F09090B0CA0009E00A9A0A090009E90DAE0F0FFFFFFFFFFFFFFFFFFFFFFFB9CBCB090909FFFFFDFFFBDF9FFBDF9F9BB9D9B09DBDA9A909D909A99BD9FBDB99DBDBDFFFDFFF90DA999D0DADFFDFFFBFFBDBDB9FD0FFFFFFFFE9BCBDB9009C900900AC000909CB000909C9C9CA0F0E09EAD0F0FFFFFFFFFFFFFFFFFFFFFFFF99B99990909FFFFFFBF9FDBFF9FDBFDB9DDBBD9F9A999D09D0A09C9DBD0BD9F9F9BDBDBDFFFFDBDA99CBCBDBDBFDFFFFFDEDFEF0DFB9FFFFFFFFBFF9A00CB9A9A9E0A9090B00A000009AC0A0A0B0D0009E090F0FFEFFFFFFFFFFFFFFFFFFFFFB9C9DB90090F9FFFFFFDFFBDF9F9BF9BDF9B9D9B9D9BC9A99A999B09A9B9DBF9F9BDADFDFFDBDBD090DB9F9F9FDFFFFFDFFBFDB9DBF9CFFFFFFFFFF0BC90B00000090909A00009090BAC0B09C90C0A90F00F0F0F0FFFFFFFFFFFFFFFFFFFFFFF999FB909900DBDFFFFFBDBDBFFBFF9FDB9F9F9BD9AD9B99C9090D099D0DB9C9F9F99DB9FFFFFEDBDBF0FDBDBCFFDFDFFFDFDBFDEBDFB9DFFFFFFFF9F09AD0ADA9E9A0A0C009E000E00909C0A00B009E00F00F0F0FEFFFFFFFFFFFFFFFFFFFFFBF909DBD0990FBFFFFFFFFFFF9F9FDB9FDB9F9F9BD9BD9E9B9DB9A9CB9B9CB9F9F9F9BDFDFDFDBDAD9DB9F0FDBDFBFFDFBFFFDAF9E9FFBCFFFFFFBFFAF09A90090009C90A90090B00900A00909AC0F090F09ECA9E9FFFFFFFFFFFFFFFFFFFFFFF999FB909009CBDFFFFFFFFF9FF9FBDF9BDF9F9BD9BD9A99C9A9D99B9C9DB9DBDB9DBDB9FFFBFFFDBEBDEDBDBDBDFDFFFDFDFFFDF9FF999FFFFFFFF0F9CB00F9A9A90A0090A000009A00D0BCAC00900CA00E0B9E9EFEFFFFFFFFFFFFFFFFFFFFB9ADBD9B9090FFFFFFFFF9F9FF9FF9F9BDB9B9BD9F90B9DB9B9DA9E9DBDB9FBDB9FB99DFDFDFDFDBF9DF9BDBDFDFFFFBDFFFBD9F0FFFB0FDFFFFFFBFB0B0E9000C90A90B0009009A0000A00090B0ACB0DAD0D0E0F0FFFFFFFFFFFFFFFFFFFFFF9D99FBD9A9090FFFFFFFFFFFDBDB9F9BD9BDDBDBB0DBDB9D0DA99990B9BD9C99FD9DBFBDFFFFFFFFDFF9FCBDE9FBDBDFFDFDFFEBFDFFD99FFFFFFFFF0F0900B0B0A9C0000000A009C9090DA000C9090A09A9ADAD0FCFFFFFFFFFFFFFFFFFFFFFB90F9FB9D09009BFFFFFFFFBFFFDB9FDBDB9BD9D9B999CB9B9DBCBD9D9CBB9FB9BF9D9F9FDBDFFF9FDADBF9F9F0DFFF9FFFBDBD9EFFFBDADFFFFFFF9F0F0B9C00900B0F00B0900C00A00A00D0B00CAC9CAC0DA9ADAFFFFFFFFFFFFFFFFFFFFFF9999DBDB9B909CFFFFFFFFFFDB9BDF9BE9DBDB9B9DBDB99D09B0990B0B9D9F9DBD9BBD9FDFFFF9FFFBDBD9F9BDBF9F9FF9FFEFFFDFFFF99FFFFFFF0FBA90C0B0F0A900009000090A9000D090AC0B0090A90FA9EDADEFFFFFFFFFFFFFFFFFFFF99E9FBFBD9909A9FFFFFFFFFDBFFDB9BD99B999F0DB099BCB9F99F9F9D9F9BD9BDBF9D9F9FFFDFFDDADBDFAD0F0F9FDFFDFFDFDADAFFF99EDFFFFFFFF09CB0B09009C90B000000A000000A0E9090CB0AD0CB00D0ADEFFFFFFFFFFFFFFFFFFFFFB9999DBDBF9F99C9FFFFFFFFFFF9BDBDBDBDBDB9B99DAD99D90F09090B99F0BBDBD9F9BDFFDFBDBFBDBF09DBD9F9CBE9FFFFFBFFFF9FFF09FFFFFFFBDFA90900CB0A0A0000A09000909090900CA900D0A9ACBCAF0B0FFFFFFFFFFFFFFFFFFFFFF99E99FBDBF9BF9FFFFFFFFFBDFF9F9BDB99DAD9DB999A9B0B99F9BDBDAD9D9DA9F9BD9BDFFDFFDEDBD9F0B0A90FBDFF9FDFDFDBDFFF9F909FFFFFFFADAB0E9A00D09090900000900CA00C0B0B00A9A9C0C9CBC0FCFEFFFFFFFFFFFFFFFFFFFFB9099F9DB9DBD9B9DFFFFFFFFFBFDB9DB9F0B99B09CB99D09D0B09C99099B9BD9F9F99FDFFFFF9F9BDA909C9DAD9CFBDFFBFFFFFF0FCF9F90FFFFFFBFBD0C9090B0A0E0A00900A00A0000B00C09C90C0A0B0B0DB0FAFFFFFFFFFFFFFFFFFFFFF9D90F9FBFDBB9F0FBFFFFFFFDBFDBBDB0D9BD9F9D9B9CB0B9A9C909B0F9BCBD9B99F9F9BFF9F0FA9D00D0B09A90ADBCF0DFDBCF9009FB090FEFFFFFFE90B9A0E0090909C00000000909000B090A0E9AD0D0E9EA0F0FDFFFFFFFFFFFFFFFFFFFFBB99099F9B9DF9F09000FFFFFFFBFDBD9BD0B090B0DA9090C9090B0C99C999B9F9F9B9DFDFFBD990099AD09C9E9DADF9FBFFFFFFB0EDFF909FFFFFF9F9E00090B0AC000090090090000090C0AD09000A9A90C9EDADAEFFFFFFFFFFFFFFFFFFFFF909AD9BDB9B9B9F09000FFFBDFDBF9BD0B99DB9090909C909A09C9000B09E909F9FDB9FFFDFBCBDA09009A9090BDADEDE9FDF9FC90FFFF90DFFFFBFEB9E9E09C909A9A00A0000000E000F09000A0D0D0C0FA090F0DFFFFFFFFFFFFFFFFFFFFFFF99D9ADBDBDFBD90009DFFFFFBBF9FB9B9C9A0DB0909A909009090B0909C99F99F9BDBDFFF9990090009090BCBDADBDBDF0FFFFB0E9FFFFFFFFFFFF9BC9090A000A00090000000A90900000ACBC9A0A09A90DAE9EBEFFFFFFFFFFFFFFFFFFFFFB90909090F9B99A0BCBEFFFFFDFDBD9C9CB999909AD090A9090000090090B09BF9BDBDFF9B0F009090909E9C9CADBCBEDADFBCF0D90BFFFFFFFFFFBFCA9A0A90BC90D0000900090000090B09000090DAC9ECBC9ACFFFFFFFFFFFFFFFFFFFFFFFF99090BDB9F9F00D000DFFFFFFBB9BB9B90BC9A909A90990D09090909A090F9C9BDBDBDFFD90090000000009A9D0FBC9ADAFDFFB0EFDBDFFFFFFFFDA9B0C900C0A000A0900000000A00AC0CA90B0E009A09A0F0F9A9EFFFFFFFFFFFFFFFFFFFFFFB9BDDBDB990900F0F0FF9FBFDBD9C90099B0DBD09DA0D0900B0000090090B9F9F9F9FFBFB9ADB90D0BD9BC90A90DBD90DEBEDF9EFFFFFFFFFFFBFF0F0B0DA9090B090A0009000009009A90C0C090BC0DAC9AD0EDEFFFFFFFFFFFFFFFFFFFFFFFFFDBB9B9F00009000FFFFFFFBDBA9B9000C9B09B0099A0B0D090909C900909BDBDBDFDF90D9000909000000F0DE9CA0CBDFDFB0CFFFFFFFFFFFFEBF0900A00AC000C0090000A0D0000000B0B09AC009AC9AD0AF0FFFFFFFFFFFFFFFFFFFFFFFFFFB9DBD900000A00F9FFFF9FDB9D9D09009B0D900900090909090009A99E9FDB9F9FFFBC9A09090A00000000DA9A090BCFBEFC0FFFFFFFFFFFFF9F090E90D090B09A90000009000A09A9C000A09ADAC90BC0F90F0FFFFFFFFFFFFFFFFFFFFFFFFFFFB90009000C90CFFFFFFFBD0B0B90900090A9000000CA90000900900909B9FBDBDF9B0DB000009000000CAD09000CBCDFFB9EFFFFFFFFFFFFFADA900A0A000C000C0A9000000900C0B0D09C0009ADACB00E09E9EFFFFFFFFFFFFFFFFFFFFFFFFFF090000090000FFFFFFFFBD9F0BD090000900000000DEB900090090BD0FD9DBDFFF9B00900900000000ACB00C09CFBE9FF0CFFFFFFFFFFFFBDBCA9090DA90B00A9000000000000B000A0E0BCBC00090F090E9EFFFFFFFFFFFFFFFFFFFFFFFFFF90000000000F0FFFF9F9FB9A99C9B0900000000000DA9000900090AC9B9BBF9FBDF9C900090000000000900090CBD0DEF00FFFFFFFFFFFFBDEB090E00000A009000900900B000000AD09090009ACB0E090E90FADFFFFFFFFFFFFFFFFFFFFFFFFB000900000000FFFFFFFF9F9D0BB0D000900000000000009009000999ADFD9FFDFB09A0900009000000000090E9FCBF0F90CFFFFFFFFFFFFFB09CA90B09C90CA00A00000000E09C9000A00E9AC90C909E09AD0FFEFFFFFFFFFFFFFFFFFFFFFFF90000000009C9EFFFFBDFF90B90D9B0900900000000009000000909E9F9BBF9FBFDBD90090000000900009ACBDF0F0CFDA9EFFFFFFFFFFFBCBDA9000C00A009000900A000009000A90D0900090A90AC09AC0AD0FFFFFFFFFFFFFFFFFFFFFFFFF900000000000A9FFFFDFBFBD0F0BCBDBD000090000090000B009009090F9D9F9F9F9A9D0A990090000D0C099EFBF9F0EF90CFFFFFFFFFFFFFDADA9CB0B0900A0D0009000090000B0CA0ACA90E0D0BC9AC090DADADFFFFFFFFFFFFFFFFFFFFFFFB000900900000CFFFFBFDFFB909090909B99DA0909A0C9A9009A09A0BD9FBFDBFF9E90A90CA9D00909A9BF0FDBC9E0DF9A0CFFFFFFFFFFFFBE900000000CA9000A0000090A0000C0090909C009A0000009ACA0FFFFFFFFFFFFFFFFFFFFFFFFFF9000000000900FFFFBDFFBD9CB0CB0F9E9CB099B0D09B0900900909D09AD9DBDF9B990909090A09ADADAD0DA9E9E0DEBE900FFFFFFFFFFFBE90E9A90D0A90C00090000000C0B090B00AC00A9A00F09ADA0909FADFFFFFFFFFFFFFFFFFFFFFFFF90000000000000FFFFFFFFFB900909009A90BCBCB0B0090900900900F9FBAF9B9F0F0F000009090909090B0D00009ADF900CEFFFFFFFFFFFBDB00CA0A900000B00009000000000009090BC90D000AC0090E00CFAFFFFFFFFFFFFFFFFFFFFFFFFB000000000CA90CFFFFBFFFFF9B00A9009009090909090009009009A090D99F9E9F99099A90000000000000090DAC9EEF000FFFFFFFFFFFDFADB009000CB0B0000A00000090000B0CA00000A0AD090B00C90FADFFFFFFFFFFFFFFFFFFFFFFFFF90000090009000FFFFFFDFF9F9C90900900900000000000000000BC9DBDA9E9E9FDBDB0D0090000000000000A0009EDF9000EFFFFFFFFFFFADA0DA0C0B000000D0900090A000000009C90B09C900AC0CA9ADADBFFFFFFFFFFFFFFFFFFFFFFFFFB000000000000E9FFFFFFFFFFB90D0000000000000000000909C9090B099F9BDBDB0BC9A99C0900000000C90C9ADEDFB0000FFFFFFFFFFFBFDA9090A90090C90A000000000A909CB00A00C0A00AD09A900CBEFEFFFFFFFFFFFFFFFFFFFFFFFFF900000000000900FFFFFBFFFF9FB09909A90090900000090C0B0BCBD9FAD0FDBDADBD9F9F0B909C90900900F0FCFFFFF9000EFFFFFFFFFFF9A9CA0D000E0A0A00000000090000000909CB09CB00A0C0A9E9C9FFFFFFFFFFFFFFFFFFFFFFFFFFF9000000000000900FFFFFFFFFF9F9AD9C90900A009090009BC9F990BC9DB9BCBF9BCBF9E9F0F9EBE9CBCADADFFFFFFFFA900DFFFFFFFFFFFEDA900A09090090090B0900000000090E00A00000C9C9A9C00EAFEFFFFFFFFFFFFFFFFFFFFFFFFFF900000000009AC0BDFFFFFFFFFBDBDB0B0F0BD909CB09F9E9FBCBDBDBFBCFDBFDFDBDBF9BF9FF9F9FBDBDFFFFFFFFFF90000EFFFFFFFFFFFBF9CB090CA00C00A00000000000900A0909009E90B0A00C0BCBDFFFFFFFFFFFFFFFFFFFFFFFFFFFB00000000000C090D0FFFFBFFFFDBDFBDBD9BC90F9BCBDBDBDB9F9BDADBDBDBF9B9BDBDFDFDFF9FFFDFFFFFDFFFFFFFDE900CFFFFFFFFFFFBC9A0000A9000B00D0000000009A000900A0DA00E00D0F0B0CBCEBFFFFFFFFFFFFFFFFFFFFFFFFFFF900000000009A90A9FFFFFFFFFBFBBDBDBF9BF9BCB9BF9E9F9F9EDBDBDBF9F9FFDFFBFBFBF9FFF9FFFFFDFFFFFFFFBFB0000FFFFFFFFFFFFFAD0F0D000B009A00C9000900000000C9C0090909A000009ACBDEFFFFFFFFFFFFFFFFFFFFFFFFFFB000000000000C09CA9BFFDBFFFFDF9F9BDBDDBFDBDFDADBDBCB9BDBF9FDBF9F9FB9FDFDBDFFDBDF9FFFFFFFFFFFFFDFFB000EFFFFFFFFFFBDAB000A90C00C00090A09000000000B000B0C0A00C9A9E9E09EAFFFFFFFFFFFFFFFFFFFFFFFFFFFF9000000000909A090FDFFFFFFFFBFBDBF9FBBDBBDB9BDB9BDBDBDBDF9FBDFFFF9FF9F9FFFBDBFFBFFFDFFFFFFFFFFFF9C90CFFFFFFFFFFFFF9CB0900A90B0090A000000000090000B000A90DA9AC00009E9DFEFFFFFFFFFFFFFFFFFFFFFFFFFB000000000000AC90FCBF9FFDFF9F9DBF9F9FDB9DB9FDB9FDBDBDF9F9FBDFBDBDBF9FBFF9FDFF9FDFDFFFFFFFFFFFDFBCB000FFFFFFFFFFBEBCB00CAC900000E0009000000B00009009C90C000C909E9E00EADFFFFFFFFFFFFFFFFFFFFFFFFFFF90090000000009E09ADFFFBFFFF9FBF9F9F9BDBF9F9BDF9B9ADB9FBDF9FBDBDBDBF9F9FFBF9FFFBFBFFFFFFFFFFFFEDBD00CFFFFFFFFFFFDB9CB00900A0CB09090000090000000AC00A00B0B000E0009E9DAEFFFFFFFFFFFFFFFFFFFFFFFFFFF900000000000D09C09ADBDFFFFFBD9F9F9BFDBD9F9F9BDF9FDBDBDBF9F9F9FBDBD9F9FDBDFFDBFDFDFFFFFFFFFFFFFFFAD000FFFFFFFFFFFEB0C9A0009000000A00A900000000009A909000C0B090F0000E9DAFFFFFFFFFFFFFFFFFFFFFFFFFF000000000900000B0F9FFFBDBF9FBB9F9F9BBDBF9B9FDB9DB9F9F9F9FBCBF9FBDBFBDBBDFBDBF9FBFFFFFFFFFFFFDFFFB000EFFFFFFFFFFBF9CB0C90BC0B00AC09000000000900900000E90A9C0E000ADADAEFFFFFFFFFFFFFFFFFFFFFFFFFFF90000000000B00F0D9E9FBDFFFFB9DDBF9FDF9BDBDF9B9FB9F9F9F9FF9DBDF9F9F9DBFDFBDBFDFFFDFFFFFFFFFFFFFFD0900FFFFFFFFFFFDBCB009A00000C90900000000090000CA0CB000D00A909AD00DADBFFFFFFFFFFFFFFFFFFFFFFFFFFF90000000000C0090ADBF9FFBF9F9FBBD9F9B9FDB9B9F9F99F9F9BDBF9FBF9BF9F9FBD9FBDBF9FBDBFFDFFFFFFFFFFFFFF000CFFFFFFFFFBF0F09A0C90B09A00A000009000A000A90900090A9C00AC0A9E0AEDEFFFFFFFFFFFFFFFFFFFFFFFFFFB900E00000009E0BCBC9F9FDFFBF9DBBDBFDB9BDFDBDB9FF9F9FDBDDBD9FF9DBDBDBFBDBFDFBDFFDBFFFFFFFFFFFFFFF0F000EBFFFFFFFFFF0BC90A00C0009000B000000000000000090A000A9C909C009C9EFFFFFFFFFFFFFFFFFFFFFFFFFFF900090000009009C9FBFFBFBF9F9FBD9F9B9FF9B9BDBDBF9F9F9BDBBDBF9FFBDBDBDBDBDBBFDBBDBFDFFFFFFFFFFFFFF9000ADEFFFFFFFFF9BCA0090E09AC0C9000900009009000B00E0C90D00A0E0A0F0FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0000000900E09E9EBDF9FDFDFBF9DBB9BDF99BDBDB9B9DF9F9BDBBD9F9F9B9F9F9F9BDBDFDBFDFF9FFFFFFFFFFFFFFE0000DFFFFFFFFFBCBC909E00900090A0000000000000000C909000A0B0D090D0009DEFFFFFFFFFFFFFFFFFFFFFFFFFFFB000C0000009E90BDFBFFBFBFBD9FB9DFDB9FF9FDB9F9F9B9BDBF9FBF9FBFDFBDBF9FDBDB9BDBF9FFFFFFFFFFFFFFFF99000EF9EFFFFFFFBF0B000B00B00A090E900000000000B00A000B000C0A0E0ADACA0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFB000D0000000F0DADF9FDFDFFBF9FB9B9FB9F9B9F9FB9F9F9F99FBDBDBDBF9FBDBF9FBDFF9FDBF9FDFFFFFFFFFFFFFF00000EFDFFFFFFF9F0DA90C00C09000000A90009009000090C0900D09090909009F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9000A00000CB0F0FBFFBFBFBDF9F9FBDF9F9BDBFDB99F9F9F9FBDBF9F9DBDBDBFD9FBDBF9F9FFDFFFFFFFFFFFFFFFF0B000CFBEFFFFFFBEFB00CA90B00AC9A900000000000A000009A000A0A0E00E0E9E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9000090000000DBFDF9FDFDFFBF9F9DB9BDBDBF99BDFB9B9F9BDBD9FBDBFBDFBDBFF9FF9FFFF9F9FFFFFFFFFFFFFFB9000DBF9EFFFFFFFF90CB090000090000000000000000090B0000F090D090909000FDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0000000000D0BCFBFFBFBFFBD9F9FBDBDBFBD9FBDB9DF9F9BDBDBBDBFF9DF9FBDBDF9BF9F9FFFFDFFFFFFFFFFFFFC00000EF0DFFFFFBF0FB00A00AD0A00A00A9009000000900C000D0000A00A0E0E9E0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9000000090A9CBDF9FFDFBDFBF9F9FBDBD9FBF9F9FBB9F9FDBDBDF9D9BFB9F9FBDBFFDFFFFDBDBFFFFFFFFFFFFFDB900000CBEFFFFFFFF0F9D090000D0900D00000000900000009A000B0D0D0D09000DCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009C0000000000FFFFBFFFFBDBF9F9DBDBF9F9F9F9F9F9F9BDBD9BFBFDBDFBFDBFDBDBF9F9FFFFDFFFFFFFFFFFFB000000FF0FFFFFFFF9F0A00CA90A00AC90000000000000009A00090C000A00A00E9EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB900000000009EDBDBFDFFFBDBF9F9FBFBF9BDB9F9F9F9BDBF9E9FF9F9BDBDBDBFDBFFDBFDBF9FDFFFFFFFFFFFFD000000FE9FCFFFFFF9EF0DA900C090090A00B0000000090000009C0B00A90B09E900EDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A0000000009A9FDBFDBDFFF9F9FBD9F9FDBDBDB9F9BDBF9F9FA9F9FF9FBDFBDBFDBFDFBDFFBFFFFFFFFFFFFFB00000C0FEBFFFFFFFFB9B00A09A00AC0009000900000000000D00A0009C0C0C000F09AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9090000000000CBADBFFBDBDFBF9FBF9FB9FBDBF9BDFBD9F9F9DBDB9FF9FBDFBDBBDBF9FBDFFDFFFFFFFFFFFF0900000F0DFEFFFFFFFEDAD09C090009A00000000000000000B009000000B09A0BC00EDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C000000000909DBDBDFBFBDF9F9F9F9FFBDBDBFDB9FBF9DBFBDBDF9FF9DBBDFFDFF9FFDFBDBFFFFFFFFFFF900000000BEFFFFFFFFFB9E9A00A0CB0009CA90000900900000000009ADA000A09C00BCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB00000000000000DA9F0FBDBDB9FBF9FBFDB9F9F9DB9F9F9FBF99F9FBFB9FBFDFB9FB9FF9FBDFFFDFFFFFFFBD00000000FEDBFFFFFFFBDE900090900000000C0000000009000009E0000909C9C00B0CBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9000000000009ADA9DBDBDBFFBDBF9F9BFF9FBFB9F9F9BDBDBF9F9F9DF9F9FBDFBDFF9FFDBF9FFFFFFFFCF00000000D0FFFFFFFFFFFA9AC9AC0A009E9A900A900000000000900900000E0A09A00CBCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB00900B000000009C9ADB9E99E9FDBF9FDB9F9F9FDBF9FDBDBDBDBDBFBDFBF9FBDFBF9F9BFDFF9FDADFFFFB90000000ACFBEFFFFFFBFDF9A00900D000000A900000000000000A000B0009000C0D0B0ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB00E000000000000BC90F9FF9DBBD9FBBDFBF9F9B9FB9BDB9F9FBF9DBFBD9F9FBDF9FBFDBF9FFFFFFF0F9000000000CFBCFFFFFFFFFBAC9C9A00A0A900C00000000090090009000C0BC00D0B00A0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90000C900000090900BC90B99FBDFBF9DB9F9BDBDF9DBDBDF9FBD9FBF9DBFBFBDB9F9FDBF9FFE9F9F0F9090000000ADADEFFFFFFFBF0DB0A0C09090C00B000090000000000000A90000B0A00A9C9EAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0090000000000000909AD9CB9CB9D9FBDBDBDBDB9FBDBDB9BFDBFBDDBF9FDBDBFEBFDBD9E9F9F0F090000000000C9EF9FFFFFFFFFFFAC90090AC000B0009A00000000000000900A900090D0C0A09CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90C000000000000000090A9CB9FBAD9FBDADBADBF0F9F9FF99BC9FBBDBF9ADF9BD9DBEBF9E9F0F0F090000000000CBEEFFFFFFFFF9F9BCB0A090A900C0A000000000090009AC000C00C00A090D0EBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0009009000000000900090B0D09DB099B9BD9BD9F9F9F99FFDBF9CFBD9FDBBFDBFB9D90F09CB090000000000000FC9FFFFFFFFFFFBE900C900000A90900090000000000000009000B0A090CA00FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9000CA0000000000009009090BDB0BCBC9D0BD0BDB9F0BFB09B90B990B09AD09AD0DA0F09CA0000000000000CCEFBFEFFFFFFFFF9E90E900CA0D0000A000000009000000009000B0009C0A90DA9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0000C0000000000000000000000909090AD00BDA9E9F009DBC0F9CBC9CBDB0F00B0900000909000000000000BFBCFFFFFFFFFFFFBE90A0B0900BC090C9A0000000000000000A0000C009C0A0C0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9000900900000000000000900900900A909A90090909F0B00B90B009A000900900009009000000000000000CEFDEFFFFFFFFFFFEDBE9C00000000A000000900000090009A009C009A0A0090CBEFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF90000000000000000900000900000900009090000000900900000900900000009000000000000000000000FB0FFFFFFFFFFFFBFBC9A090ACB009000A000000000000000000009AC090DA0E9EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB000C00000000000000009000009090009000000900090090009090090090090000000000000000000009CEBCFFFFFFFFFFFFFFDE9A90AC9000A0C090900000000000000009A000000000900FEFFFFFFFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFF009A00000000000000000000000009009009000090000000000000000000000000000000000000000E0FFFFEFFFFFFFFFFFFFBBF0C9000009009A00000000000000000900000900F0ACADA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A0C0000000000000000009009000000000000000000000000000000000000000000000000000000C0F09CFFFFFFFFFFFFFFFFD0B0A09A0AC0A000A090090000090000A00C9A009009000CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF900900000000000000000000009000000000000000000000000000000000000000000000000000000CEFEFFFFFFFFFFFFFFF9EBC9C0C09009000D0000000000000000009000C0A00C0BCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000ACFFFFFFFFFFFFFFFFFFFFFEBD0A9000000009A0000000000000000090A000090C0B000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC00000000000000000000000000000000000000000000000000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFFBDBA90A9A00B0AC0000A90000000900000000009A009000CB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDAC9000000000000000000000000000000000000000000000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFFFFFDAD0C009C00900009000000000000000009000000AC90B0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFFFFFBAF0B009A00000B0000000000000000090000000C900A0C0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFBCD9000000090E000C00900000000000000000E09A00900BCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9A000000000000000000000000000000000000000000000000000000000000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFBAE9A9E000A009009A0000000000900000B0090000A0C000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD00000000000000000000000000000000000000000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB0C0090C09000A0000A000009000000000000009C0A90E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA0B00000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AD0B00A0900E000090090000000000009000009000900C9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D9C000000000000000000000000000000000000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEDA900000000090000000000000000000000900A000A90A0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A9E090000000000000000000000000000000000000000000000000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDB9CA09C900B000AD0A00000000009000000A0000C9000C9C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0090C00000000000000000000000000000000000000000000000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB90CA00AC0000000000900000000000090000900A0C0A00FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E90A9A09000000000000000000000000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFBDADA9000000090000900000000000000000000009009000FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9CAD00D00A90000000000000000000000000000000000000000000CFFFFFFFFFFFFFFFFFFFFFFFBEFFFFFFFFFFBFDAD000090090AC0900000000000000000000090A0000A09E0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDA9009A0A900D0E000000000000C00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB0B9000E0000000A0000000000000000009000000D00000D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9E9E0D0C0F0A9009C90000C90CA000C0000000000000000C00DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC0E9A00000900000900000000090000900000900A00C0A0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA900B0B9A0D0E0F0A0CBCBADA90C90000CBC9000000000CBFDAFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFB9B0000900000900000000000000000000000000000909C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9CAD0C0C0F0B090B0DBE9FDA9BCBEFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFBFFB0DAC09000A000A0000000000000000000000090009000A00E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDA09A9A9A900C9E0C9A0DAB0BC0F9FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFBFFB09000000900000900000000000000000090000000000009E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBC00C0DADA9A9A90DA0DEBDB9A9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEFFFFFFFFFFDBDE9E9A090000090000000000000000000000000000090000C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA09ADA9A009C0C90E09EB9E9E9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFBFEB9A900000000000000000000000000000000000000000090BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC09E0090C0F0A0B0E90F0DEDBF9EBFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF0FFBFFFFFBFFEFB9E900000000000000000000000000000000000090000000C0CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0090E9A909C9C900F0FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF9FBDBC9E09000090000900000000000000000000000000000000A9ACBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9E0E900DACA9A0ADA9E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCFFFFF9FFFFBFB09A009000000000000000000000000000000000000090000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD09090E9A909C9C900CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF9FFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBDFFEBF9E9E9E9000000000000000000000000000000000000000000000FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADA0E090C00E0A0ADAF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FEFFBEFFFFFFFFFFFFFFFFFFFBFCFBFFFBFBDFFBF9A900009900000000000000000000000000000000000000DADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB90909ACB0B0909C909CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E90DADFBFFFFFFFFFFFFFFFFFFFDFBCF0FBEDFBE9E9AD00000000000000000000000000000000000000000000000ADFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E0C900C0DACA9E0A9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB0DADF0FBFFFFFFFFFFFFFFFFEBFBFFFDBBEDBF9F9A9090000000000000000000000000000000000000000000ADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B09A0ADA9A090009C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9CA9A0F0DEBEFFFFFFFFFFFFBFDFCBFBFFDBBDBE9AD0A00000000000000000000000000000000000000000000D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00E90D0000D0E0BCAF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDA0A90CBCBEBDFFFFFFFFFFFFFFFBEBFDFADBFCBE9BDA0900000000000000000000000000000000000000000000ADADBFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA9E900A0A9E9A90D090DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9CB009009E9ADBFFFFFFFFF9EDBDAF9FADBBF9E90900000000000000000000000000000000000000000000000BCBDBDEBFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF09A9C09C000CA0ACA0ACDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9E90DA0BC9ACBEDBEBFBFFDFFBF0F9AFDBFCBCB9E9A90900000000000000000000000000000000000000000090C0BCBFBDBF9FFFBFFDFFFFFFFFFFFFFFFFFFFFFFBFFFFFBDB0F0C0A9A0BCB09C909C9ABFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9FDA9E09C000C909ADBDEFEBFBCF0F0FD9AD0BDB9E9AD000000000000000000000000000000000000000000000009ADAF0DAD0BCB0F9EBF9FBEDFBFFFFFBFFBFFFFFFFFBFBFEBC90B09C0D000C0A00E9ACDEDBFFFBFAFEBFFFEFFFBFFFFFBFDBEDA9E99A90B09ADADADE9FBDFCB0B90F0AF0BF0BCB090A0000000000000000000000000000000000000000000000000909A09ADA9E9E9E0FADBDADAD0F0F0F0F9CBC9E9CBC9090A00E0B0A0F0B0DA90009A9AC9E9CBD99E9ADB0F0F0F0B0F0BCB0F09A0C000C000000A9A0DAB09C0E90BD9AD0FCBC9E90900000000000000000000000000000000000000000000000000090000000000900000A009A09A09AD0A09A00B00BCB0C9C90C09C90C0900CBCA0D09A09A00ACB0F0ACB0F0F0F0F0F0BCB0F0D0B0D0B0D0BC90C9E9C0F0B090E0AD0B0B09B090000000000000000000000000000000000000000000000000000000009009000900900900900000900000900900000000B0A0A9A0A0A9A0ADA0090A0009009000000090000000000000000000A000A000A000A09A00A900000A9090BCBCBC0F0A9000000000000000000000000000000000000000000000000000000000000000000000000009000000900000000900BC009C90C90C90C090009C0090000000900090009009009009009009009009009009009000009009009000E0C09A90B0090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009E0ACB0E9ACA9E0E9E0A90000000000000000000000000000000000000000000000000009000000000090B0BC9E9CB000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090009009000900090000000000000000000000000000000000000000000000000000000000000000000090B09A9090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFADFBCFBDEBDFADFBCFBDFBEDBF00000000000000000000010500000000000076AD05FE,'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.',2,'http://accweb/emmployees/buchanan.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(6,'Suyama','Michael','Sales Representative','Mr.','07/02/1963','10/17/1993','Coventry House
Miner Rd.','London',NULL,'EC2 7JR','UK','(71) 555-7773','428',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D16540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9A9FBCBFFD0000000000000C0BCF9BDF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FCF0EFDE9A00000000000000BCB0FCA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A9A9F9EBFC0000000000000AD0BCF0BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DACBE9F0A000000000000090BCB0BCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0F0DA0FD000000000000000ADADE90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC909A9F0A000000000000000000B0EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A0C0000000000000000000BCBC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0DA9E9000000000000000000009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000B00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF900B0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000009AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A0009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000A0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000BF9ED0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000900A0A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF090FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000B0E909000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000009A0A00000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90090F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000A0BC0900B0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC009090000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000090A9A0A00000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE909A0DA9B0900DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000009A090000009000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF090B09909009A90BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A0000000000000BE9A000000009A9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD09A09090A9090909009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0090000000000A009E9E000000000AA90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00909D09A9909A090090009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA0F0A000B000000090A09A9A9000000009AF0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09A9A09A900090900B00B0009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000F009A0000000000000ACB0A00A00009AD0A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0B0D09900909A00009009090900BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000900F00A000000000000090B0E9E900009A0BA90B0ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9090909B0090B00900B0090900A000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A9A0A0F0000000000000000A009A9A0A000009F0BC090900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90B090B000B0009009009000A09909009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB0B000000F09A000000000000000000090CB000A0ADABA0A00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0909A90990090000000009A09000909009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B0A0FA9A90F0A0900000000A90000A00A00B0000090A0C9ADA9A000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0909F0909A0090A909A090000900B000A9000FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A090F0B00E00AF090E0000000000A00000000B0000000A909A0000000A9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFF0909A090B0D0B0090900900B0900900B9900B09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A90BCAA9E9A09A0F00B0B0A900000000090000000A00000000A0B0B000BCBAA90FFFFFFFFFFFFFFFFFFFFFFFFF009F099A909A90BC00A09A90C9A9AC90000090900BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA090AC0B0DA0ADA000F0A0DAF9EBCB00000000000000900000000090E09A0090DA00009FFFFFFFFFFFFFFFFFFFFF09B09B099E909AC09A900000B000909A9C90B09CB090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE90DA009A00A00F0A9AF0F000A90F0B00000000A00000000A0000000B0A9A0000ABA900900FBFFFFFFFFFFFFFFFFFF09B09B09AD09E09000000B00900B0A9A90B0909A909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A9A0A000A0DADAB0ADAC0AF0009AFAF0A00000000000000A09000009A00F00A00B0D00A00A9B0FFFFFFFFFFFFFFFFFF0B0DB0DA9B0B0900B009000900900D09CA9A900090B0DA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A90CB090090A00000F0A0B0F00000090F0A00000000A00009A00000000BB0B00900A0BC00000F0B00BFFFFFFFFFFFFF0999A99A9DAD00A90090A090A00A09A0B090DA9B9A90B90909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009A9EBBF00000ADABADA00B00AF00A09A00009A0000A900900000B00000A00DACB00009A0B0A09A0F0B0000FFFFFFFFFFE9BE99AF9A909A90090A09000900900900B0B09E099090B0B90BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A000B0F0FFA00A000C0A9A0CAD0F0900000B00000000000000000BCA9A009AFA900000000BA90900BA000000BFFFFFFFFF9BC90BD9ADA9A900B009000B000900900909C9A9BCA9F09909B09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00A9000A9FBFFF0009CA9ABC0CBA9A0F0A0000000B0090A000A00A00B0A90090A9090A00A000B9E9A00E900000B0F0FFFFFFFA9F9BBF0B09090DA900900090009A09A9ADA90B090B9B099A9F09BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000ADFFFFF00000A90E00AB0000AF00000000000A00090009000000BCA0A00A0A000900FADA9E0A090A9000090BFFFFFFFDB0BC90BCB9E9A909B90B0B0909009009090B00B0F09E9AD909B0909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000A90000009AFFFFFF00000A000B00A9EB0F0000000000000000A00000000B0B9000B09000A0A90BADA909A0BCA00000B0BFFFFFFBF9FBAD9B0B909A9C0B0909A09A9CB9A90B09B0D90B09B9A9B09B9B90FFFFFFFFFFFFFFFFFFFFFFFFFD0000A000000A0009BFFFFF000A9CA9A0F0E00CAF00B0000000000000000A000000BCA00900A000909EBDBA9A0009A09000A000FFFFFF9F9A90DB0F09A9F9AB99A9B0D9A90B09D0B09AD9A0BC9ADADBC9AD09A9BDFFFFFFFFFFFFFFFFFFFFF000A0090000A090000AFFFFFF00090A90CA009ABA9F0000000A000000A0000000000BDA9000AB0B00A0A90A0000000A09A00000B0BFFFFFBCBF9FB0B09F9A9AD99E9F090B0DB09A0B0FA99A9B90B9099A9B99BE999AFFFFFFFFFFFFFFFFFFF0000090000900000000BDFFFFF0000AC0A0A90A0E0C0F00A9A0000900000009A0900000A00A0B000000000A9000000A90F0000000009FFFF9FB90B09F99B09DB9BEB99ADBB09B09BDB9999DA90DA99EB0F9F0B099B0F90FFFFFFFFFFFFFFFFF0000A000A000A00000000BFFFFFE0000B0CB00E9A90BAF09009A090A00A09A000A0A000B0B0000BFA9A0B090009A00000A0BCA090A000FFFFE9EBD0B09AD0BA9AD99EB9B90DB09F09A9AFA9A9B9A9E090B0B9F0F099B9B9BFFFFFFFFFFFFFFFE0009000000A0090A00A000BFFFFFA0000B00F0000A000F000A0A9AE90B00009A0900000000000B0A9A9A00A0A000009009FA900000009FFFF9B99ABDB09A99DB9A9A99E9AB0BDA9BBDBD99BBD0B909B9F090A9B9B9E9ADA99FFFFFFFFFFFFFF000A000A00900000000090FFFFFF9009A00A00AB0E09E0F0A09090A90A009A000000009000000B0F9B0F00F0900000000FAA90A9A09000FFFCB0FAD900F99B0A909099A99D9990B9D0BB0BBC90BDA9B090B9F9BDADA90B9B9EBFFFFFFFFFFFF0A900000900000A00000000BFFFFFE0000CAD0BC0090A00F0000A0AD0B0B0A0FA00A0000A00A000B0BEB0BB0CA000000A9AD9A00000A000BFFBDB990B9B0A9C9909A9B0D0B0ADA9DA9BC9BC9B0B00900F0BC9A90B9B9B9DBDBBDBFFFFFFFFFFF000A09A0000A0000090A00ADFFFFF9000A90A0A0FA0A0A0F09A09A9AB0A09A90B0900A000B009000B0B0BCBB0000000000BAF0F0B0000A00F0B0FB0BC0999A9A9E090D0B099099A99A9B90B09F9B9B99099B09F90F0BCB09AD9B9BFFFFFFFFFFC0000000A00000000A00009ABFFFFF00000B009000F0C90F0A0000000F0BADABCBAF000F9ADA00A009A9AB0FA00000A00BDF090000B0900B9F9F90F9B9A9E9B0999A909090A9009099090B99A909E9A9B0B0B09AF09F9F9B9BBCBDBFFFFFFFF00A90A00900090000000090ADFFFFFE0000E0A0E0B00A0A0FA9CB00B0B09A90BCB9E909B9ADA9A090BAB0F0F090000090BEBA00A09A00A0B0F9A9AB9090DA9909B0A90B009090099A9E99B09E9A9B90DB09DB9DB999BB0B0BCBDB9B0FFFFFFFC9A00E90A000A00A0B000A000BFFFFF0000B00C09A0CA900AF9AB0B00B0BADAF0B0F0FAACAFB0A90A0090B0B9A090A000ADBC9A09A009A9BDB0F9F9CB0A9A9B0BD09990909A009A00909B0DB99B9C9A9B09A900B0F0BC9DBD9B9B9FBDBFFFFFF0A9A90A0000000000000900A9FFFFFFF0000A0B0A00A00E90F09ADADA0C90B0BB00A9090B9ADBDABCB0AB0B0A9E0009A00A9A00000B0000EBDB9A9B9990909090B9ADA909090009090909B09A90B9B0909A9B99B99B0B0B0BE9E9F0BB9BFFFFFAC0CA09E9A000000000A000000FFFFDA0000D00ACB09A00A0F00A9A009A0ADBC00000A0000F0A000B0A90B0ADA9ABDA0090009000000A0F9FBCBDB0BE9BCB0F9B9099090A00090000A90909BD9BDA9DB0F90DA90FA9F9BDB99BB9BBDF0FFFFF00B0B0F000000000B000000000BFFFFFF000A0A0090E009A00F009009A0009A00B0A9000A0B0A90BB09B0A0090B0BDA0D0A00A0A00B0090B0B0B9A9F99009099AD0B9A9A909090009090B09B09A9A99A099A9A9DB999B0B09EBC9DBDBB9BFFFE0F0A0A0A00009000000000000BFFFFFF0009009CB0A000A09EF000A00000000B00000A09000000A0CBA00900A00BFADBA00009E9B00A0A9FBDBDBDB0B0B9A9A999B9C9090909A909A0090B0DB99B9B099A90999A90BE9DBDB99BAB0B9FADFFF000AD0D090A000A0000B0009A00FFFFFFA000E0A00E00B0C0A0F0000000900B00A0B0F9A00000000B00DBA0B000009BE9F0B0B09EBF0900B9CB9A9A9BD90909DAB0DBB9BDB9F9DB99D9B090B09E9CBDB0F0BDA9A9B999BA9A9E9D9F9FB99BFFDB0B0A0A000000000000000A00009FFFFDF0000B0A90B0CA9A9AF0000000000000090FBADA00A00000BBA09A00000A0F9A0A000BFBDFA00BDBB9F9F9F0B0F0B0B9DB909ADB9E9B09F0B999B99B99B99A9B990909D90F0B09BDB9A9A9A9BEBFFFE00CBCB00A0900000A0000000009AFFFFFA00000C0AACA0000C0F0009A00A0000090BBADB0B000009AD009A0000B0DB0000900BFFFFADA9F0F0DA9B9A99909C990B9ADBDB9F9BDBF9B9E9F9CB90B09A9909A9A99A9B9BD9F9A909BDBDBDB9FFF00AB0A0000000A00900A0000000AFFFFFE0000B0A9E90090A0BAF000000000B000A0ADBEFBC0900A00BAFA900000A00A00000BDBFFFDA9A9B9BB9BCBDABA909A9F0B9B99BDB9F9F9F9F9B0B9C9BDB9DA9F09090B9ADA9A9A99BDB09A9A9FBFF09AD0E90F0BCA900000009A000009BFFFFFD0000D0A00A0AC9AC0F000000900000000B0BB9ABA0000000900A0B0009A09000000ADBFFFFDBDA9CBDB9B99D00B09099C90F9F0F9B999BDBDBDBB9B0B0BB9A9B0B0F099B9F9B9F0B09F09F9B9BFFAC0A9AE00A0BCACA0A0B00000A00ADFFFFFA0000A9CB09A00A0B0F0000000000000900B0DAF09A0090B0A0900000B0000000000BFFFFBFA9B9B9B0BDABB0B909A0B0B9F9B09990090099BDB9D9F99F909D909C909B0B9B9E90BD9B09B09E9FF090B0E909ADBCA9090000CB0A09000BFFFFFD00A00AA00E09A0000F000A900A0000000B0BAB9FA000000000A000000000000000BDFFFFEF9F0F0F0BDA9D090000090909090990BC9A090009BDBB09B0B9B0A9A9A9B0F9E90B9B90B09B0DB9BE0ACA0E9A0E0A0A90A00000A0000000BEFFFFA00009E90CB00E00FABF0000000009000A90A90FB0FB000000900000B000000A00000BFFFFBDA9B9B9B9B99A9A900900000090C0A90B990F0B9090D9F9D90D0990909A9B9B9FB99C9B9BC9B0BCB90009A9E0B09AD0A0CA09A0900B00A09FFFFFF0000A00BA00B09A000F000000000A00000B0A90FBF0FA000A0000000A9A0000900000DBFFDBDA9E9ADB0FB90DA9A000000009B90F90E9A9BCB909099A9A9B0A90B099CB9A99BEB9A9C9B0999BCB0B00CA9E0AC0A9C9000000A00000000BFFFFFF0009A0CA9E0AE0BE0F0090A0900000090A9A0BBCBF00900000000B0000090000000BFFFFFB9BDB9DB0B909A909090000000000B00B909099BE90B00909009000090A99F9BAD99F9B9B09F0B0B9A0CB0BCB0D0B00A0A0000000000000ADFFFFF0000ACB09A0B09A00BF000000009000A0A9090BCBF0B00000000B000900000000009FFFFF09E9A9AB0BD0B0909000090B09A909099000090BC90B09000009009090B99B09F99BBA90B0DB090B9C09A0BCBE9AA0DA0909A000000000009FFFFFE0000090EACB0CA0DA0F000000A00009009A0A90B0B00A0A090000090A000A000000A9FFFFFB9BDBD990B9DA9A9A9A9090BC90909009099A90B009000000000000A909ADBB0BB0D99F9B099B9C9B0A9ADADAF9CBADA0E09A0000A00000AFFFFFF000B0AB09AC0A90A0AF000009000A0009A9B0A000DA900900A0000A0000000000009EBFFF9E9A90B0F90B0909C9090B099B9A9A990B909009090A909090000000909A990F90FBA9A909B0BCB9A9B0CBAFBCAFBCBADA9AC009009000009BFFFFFF0000C0A09A90A0090F000B0000900A000A09A9A9A9ACB0AD00B0F0900090000A0009FFFDB9BDBB9B90B9B09A9A90B09F0B9D990BC90F09909099900B00A0009009E90B99BB999BDBBD09B99A9C9A90DADBDACBFCB0FA9A00A00000000FFFFFF00000B0CA000E0BCA0F00000A90A0090A9B9E9C9E09090C90BC0900A00000090000BFFFBA9F0B0D090BD090B0999A90B09E9BB0B9B9B99B09A9F9A9B909000B00B090F9ABC99AF0B090B9F9AD9BADAEBFEBEBF9EB0F0C0000000A00B0FBFFFF00009A00B0F0A900A00F0A0090A009A009A0A90A90B0F0A9A009A0BC090A0A00090A9BFFFDB9BD9B9F90B0BC9B0F09E90B99AD9F9E9F9FBDBBDB0B9D009009009090B90B99B0F99B99BBDB0B9B099ADBCBFDBCFEDFE9AB000A9A090000BFFFFFF00000F00A000A0B09AF009A00900000A0909A90A900090090B0900B00090900A0900AFFFBDA9B09A9A99B9B0990B09BD0A99A9B99B0B9A9DB9BDBA9B0A900900B090B99E99B0B09AD09A9BDB0B0F9ABFCBEFBFBFADAD0F000000A00000FFFFFFF000A0BC0ADA000E00F0000000A909A90ABA0009009A0000000A0B00A0000A090A0BDFFF9A9F0FB999F0909B9A99B090BD0BDB0DA9D00DBA9E909D0099CB0A9A9DA90DA9BA99F9BDBBD9BCB0F9B09FDEBFFBCFDEDADAA0000000000A09BFFFFF000A000A90A09EB00AF00009A090A090A9009A000A000009A0B09009090A0090A909FBF0B9F9B90DAB09B9A9E9CBC9AB90B0909A90A99B0D99B9B0B9B0B099909A909A990D9A9A9A990B0B9B9BC9BFEBFF0FFBEBAF0F09A00A0000900FFFFFF000090FA90A90A000B0F00B00CB0B0B0ADA0B0900900900A099C000000A0090A0000BEFFBDB0B0B9B999BC999B9B9BBD0F90B0B90909A009B0B0BCB90C9090F0B909B99A9B0B9B9F9A9BDB9BDA99B0BFFFFFFEFFDF0B0E000009A00000BFFFFFF0000A000E00E0B0E00FB000B0BCF9ADB0B00A0A009A00900A9B0B00B009000090009BDF9A9F9F9F0BDA9B0F090BC99B9A9F99CB0B0090B09B0D090B9B0B0B0B0F90DA99A990F090BDA9A9F0BDABCB0DBEFFF9FAF0F0B9A09000000A000BFFFFFA0009A0B0B0900B0B0F09A909FBBCB00B09B09090A90B00900000000000A000A000A9FABDB9A9A9B9A9F9B9B9F9BBEBDB9A9A909C0B0C90F09B0B9CB0BDBD99F9A9A9BC99A99BBB90B99B9B9B99B9BAFDBEBFEDBE9ACAC00A00000000BDFFFFF000A0AD0A0A0AC000AF9F09EBE9DA90B00A000B0A90B00B0A90B00B00B0009000A99FB9DB0BDBDB0DB990B09A90BD99ABC90D00B09090B090B0BD0B9F99A9BA909B99099E99A9C90B9DABCBCBCB0DADFBEDFE9BE0BCB09A00000A9000FFFFFF00000D00AC09A9AADA9FA9A0B9BFA90B0F09A90009AD090009000000000000A09000FBCBB9F9B0B9BBDAFB99F99B0BFBD9B9A9A900B00900B0D909F9F9EBDA9DB9B0DA9B09AD99B9F90B99B9B9B99B0B0FFBCBFE9F0ADA0000900000B0BFFFFFF0000A0B0B0E0090A00FBE9B0F9ADA00B0B00A09009A9A9000B09A90B00B0000A00B9FBDA9ADB9F0DB999BFA9A9C990BBD0900909009A90909A9B0BB0B9B9FA90B09A909B99A9A9A9BB0F0BDBA9F0BD0F0FFBCBDADA9ADA00A0A00A0000FFFFFFB0009AC00B0A0E09A0F0900F0BCB09E0000B00A00909009A900000A000009090090BF9B9F9B9F9BB9FBAD99B99B9A9900B0090A090900A09A90DB9DBDBDB99BBD9B99BD0B09BD9B90DB9B9B0F9A9B0BAFBCFBFAFA9E9A090000900000BFFFFFE000A00B0A009A90AC0F0B0B0B0909A090B000000B0DA090090B0B0909A9A0A0A00BF9B9FB9BE9BF9FAD9BABD0B009D0B900000900A009090090B9FAB9ABA9BC90B09A90BDB9A9AD0BB0B9E9F99F9E9ADBCFAF0F09E9AD0A00000A09A0BFFFFF900000F0AD00E00A0BAF00000000A090A00B009000B09A0B0A900000A000000909ADBBCBB0F99BF0BB9BF9D9BD99B9A9909000009909000090090099DBD9D099BB9BD99B99AD9B99BD9BDB9B9AB0B9B9AFFBDAF9EB0E9A000A9A00000BDFFFFFE0009A00A0AB00AD000F0090009000A0900000A0009AD9909DA909A09A9A0B00A09BDB9F9FBFBDBDBDBDBBB0B9A90990BDB09000A0909A900000900B09B0B9A909D0B0BDA99B0DBA9A9A9BCB9DBDA9E9DAFCBDAF0F9ADADA900009A000ABFFFFF900A0F09000A90A0B0F00A090A09090A000000090A90A0B0A90A0090000900B00BEFBF9B9B9FBFBFBFB0F9F9A9F9A0B9A99A9F999A990000A99BDB09A09099B9B0B9B9A9BE9BB9DB9F9B0B9AB9B9F9B0B9BFAF0F0ADA9A00A00A0000ADFFFFFE000000A0EB0DA09AC0F0900000000000000A09A0A90B09009A009A0A09A00B009F9B09BFBCFBDB9F9F9F9B9BDB90999F9FA9B90BC90B09A990B09099099B0F9E9B9F9F9FB99BD0BB0B9E9BDBDA9F0B0BD0F0BDA9ADABCA0B09A90A9A9BFFFFF9000BCA9A900A00A00AF0009009000A09009000909A09A00B009A0909A09B009A9BBDBF09FB9FBFFBFBFBF9EB90B9B0BFB99D0B9B9B99F99BDBD9B90A9BC9B99B0F9B90B9DBE9BF9DBDB9B9A9B9B9B9F9BB9BCBADA9E9AD00A00000000FFFFFFE000090E00EA90F00B0F00A00000B09000A00B0A9ADA09A00B009A00A9A00B000B0DB9BFB9FBBDB9F9F9F9F9FB9F0D909FFAB9BC9B0FA9B0B0BBF0BD909B09A9B9B9EBDBAB9BF9BB99A9BDB9F0F9E9A9BDBF9BC9ACB0F9ABC9A00A00000FFFFFF0000A90B090E00BC0AF0900900A0000A09000090B09A09A90B0A09B009A90B0BDB9AF9B9FBDFBFFBFBFBFBB9FB9B9A9FB9F9FDBBDB99F9F9FBDBF9A9909BDBDBDBF9BB9F9FB9E9FABDBCB9FB9B0B9F9FADBBDBE9A0F0AD00A09009A09BFFFFFB000A00A0EA090A0A90F00090A9090A9090A90B0B09A09AD0B0B09A00BA9A0009B0BF9B9FBDB9BF9F9F9F9BDF09F0B99BDF9FFBBDBFBFBFBFBDFB9909A9B9B9B0BB9FBDF9FB9F9BBD9BB9B0B09F9BDA9B9B9F9A9ADB0ADA0A000A0000AFFFFFFC0009CBCB009AACB00AF0B0A9909A900000000090A09A09AB0B09A09B0D00B0BF9F9BDAF9FBBFDBFBFBFBFFBBFBBDBCB9BBFBBDFBF9F9F9F9FB9FF0B99BDBCBF9F9F9FBBBDBFBDBDBBC9F9F9FB0B0B9F9F9F9FBDA0E9FA90090000A090FFFFFFB000A0A00B0E09A0AD0F9099EBB09A9B9A90090A9DA09A090B0B09A00A0B00909B9FBBDBB9F9BF9FBDBDB9BFDBDBB9B9E9FFDFBF9FBFFBFFB9FB9090BDA9BBDBBBFBFBDFBF9FBFBBDBB9AB9B9B9F9A9B90B9A9B0F9A09EAD0A0A0900A09FFFFFF00009A9E0B0A09E0AAF0B9A9B0BF9000000A0A90A90A90A9CB0B09A90909A0BF0F9F9BDBEBFB9FBDBFBFFF9BFBDBF9F9B9BFBDBFF9FBFBDFF9DB9B99B9F9FBDBDBDBDBBF9FBDBDFADBF9DBE9F9B9DBCBBBDBDBF0ADAF09A00090A0900BFFFFFC000A0CA0BCADA00B00F90B9B9BB0BA9B0909090A9B090A9AB09A9A900A0A09F99BB9FFBF99F9FBDBBDBDB9FFD9FADBBFBFDFFBFDBFFDFDBB9AB9E9DABFBFBDBFBFBFFBDFBF9FBFB9B9B9BB9B0BCBAB9BD09B9B9E90B0DA0090A00000BFFFFFFA0009CB0F0A9A9EB0CBFA9AFBBCBB09000A000A0900A0909099A9A90B09090A9B9F0F9BDBBFBF9BF9FBFBFF9BBFB9BBDBDBB9FDBFFBFBFBF9FBDB9BBDF9B9FBF9F9FBDBF9FFBF9BDBDBDBE9F9F9B990F9BBBDAF9BCADAA900A00090A09FFFFFFD000A0A00BCACA0CBA0F9090B9B90B0B0900B090A9090A0B0AA9A9A90B0B090BDA9FBFBFDBF9FBDBF9A9B9BFDB9FF9FBCBDFBFBFFBDFFBF9FBDBFBDBB9FFBF9FBFF9FBFBFB9FBFBBDBA9B9B9A9B0BF9B09DA99BCBB0BD0E900000A0000AFFFFFE00009CBCA9A90B009AF0A9A90B0B0000A09000090B0A900B999A9E9B0B00A9F09FB9F9BBF9BBDBB0F9F9E9BB9FB9FF9BFBBDBFDBFFBDBDBF9BF9FBDBFB9F9BF9FBFBDBDBDFBDBDFBDBF9F9F9F9F90BDB0B9FBDB9CACAF00000B00000B9FFFFFB0000A0A09E0AC0AF00F09000A00000000000000A000900B90AA9B0BA9B0B9B9B9B9FBF9F9BFDBB9DB9B099B0FB9FB9BF9BDBFBFFBFFFFBF9BFDBBDBFBDBFBF9FBBDBFFFBF9BF9BB9BF9B0BB9B9A9BDB099FB0B99AB9B00A0000000900FFFFFF0009AD00DA0090A900FFA0900090000000900009009A00B00B99A9BB9EB9A0F90FBFBDBBFBDBBBDAB9A9B9AD9A9EBDAF9FBFBDFBFDBF9BDBBDBBDFB0BDBDB9FFBDFBDB9BDBBDBBFDBF9BFBD9BCB9A9B9F0B9BD90F90E0F0090000000A9FFFFFFC00000B0A09E0B0E0A0F9A0A90000000900090A09B09A90B00A90B0BA90B9B0B909FBBFDBFBFCBBDB9F0DB9A9999B9F9B9D0FBBDBFFFFFBDBFDBB9FBDBBBFB9FBBDBFFFBBDFBDBBBDBF99BBE9B9F9E9A9F9FBBB90BDB0A00A000000000BFFFFFBA000AC09A00AC09A90FA9900000B00A000A0090A00B00B0B09AB9BB9BA00BDB9BFBDF9BF9F9BF9B9A99B0990F0B0B9BDBBB9F9FFBF9B9FBF9BF9FB9B9F9BDA9F9B9B9BDFBBDBDF9BF9EBD9BBDA99B9FB9A99C99B9A0F0F000000B0009FFFFFFC000A9A9E09A90B00CAF90A00B0B009000090B0B09B00B0009ABDBE9A099B099CBF9FBBF9FBBD9F0F99B099A9090D9BE9A99FBFFBDFBFFBF9AF9EB9F9F0BCB9B9ADBDAFB9BDBBB9BF9BB9BFBD9B9BE9B909009BE9A9F0B00000B000A9AFFFFFF00090C0A09AC0A0E0B0FA09A00009A000B0A00B09A00B0A9A009A9BADBA00B09B9BFBFDBE9BDBBB9B0B09E909A90B099F9FB9F9BFBF9B9F9FB9B9F9BA9B9B9BCB9A9B9BDBFBDBDBF9BF9FB99AB9E99F9FB09B099F9A0F00A9A000A90A9FFFFFFA000A9E90E09AD0B000F9A0900B009A00000B00B0BBA09000B0A9A9B00B0BD909F9F9BF9BFBBDADBDBDB90B0909090B0B90BDBFF9FBFFB9B9DBF9BD9B0D909B9BDB9F9FB9BDBFBDBFDBB9FBF9F9BB0BB09F099A99F9B0F0000B0B0EB0A9FFFFDF0000A0A90AA0A00BE0F0900A90B0009009000B0B0090A0B0009ADA0B0090B09ABFBFF9F9909A9B0B0000909A90B09090B99BB9BFBDB9FADBB0B9A9AD9B0BD090B9AB9BDBFBBDBBF9BF9F9B9B9BDBDBC9B090009A90F0B0B0000ADB0DBFFFFFFA00009E9E0D09CBC00BF00A090A90B00A0000B0009A0A90000B0A9A90A9AB0909F9BF9AB9A090909009A900000000B09B9FAD9FF9FFBF99BB9DB0DB90B0900B9F09BDAFBDBFDBBFDBF9BBE9BFBCB0B99B090A999F9B0B0E00A0A9A0FAFFFFFFF000B0EB0B0A0AB0A0B0F9009A99E009090A00009A09000000000900A9000D9009BFDBFBDB9F000000000A00000090000D099BA9BFB9F9BF9DAB0B9009090B9909BDB9B9BBDBBFDBBBDBF9BF909B9B0F00B00900B9BCBCA9000900DBE90FFFFFFC00009EBCB0BC0A9AC0FA9000A909A00000000A09A00000000000B00A9A9AB09A0BF9BDB090B00000009000000000009A9A99F9F9FFBF9BA99D90B9A900000A909B0BDBCBBDBBBDFBBF9F9BFBFB9F9B9009009009B9A9E0A9000A00BEBBFFFFFB000AD9EB0E0B0CA0B0F000A9CA9A09A900090000000000000000000000090909DB9FFF0FB9090000000000000000000990DA9BBFB9B9BC9B0B0000009A90909A90F9BB9BDBFDFBBDBDBBFDB9B0F09F090009099F9A9E9A00A0000B000FFFFFFC0009AE0BE9A0A90F0AF00090A90090000000000000000000000000B000000000BBFFB9B9909A900000000000000000B009B9BBDB9F0F09B0B9000090000000000B9B0DBFBF9BBBDBFBBF9B9F9F9BB000009090B09F0BC00000000009BFFFFFB000A0E9BC000F00A000F09A0000000A000000000000000000000A90000B0000009EB9F0FADB90B0909A00000000000909B090D9ADB9B9B09D0090000B0000000900009A9909BF9FB9F9F9BE9BB0B0DB90090B0999A9E0B0B00000000A0FFFFFF00009A0A0A9A0AC9ADAF0000A90A9009A00000000000000000000000B0000000099DBFB9BB0F90B0B090D99A90900900009A9A9B9AD09DB0B90A000000000000000000000B090B9EBBFBF9BF9BDB9B09B9A90B0F990BDAC000009A0009BFFFFFF0000D0CB000900A000F0090000000000090000000000000000000A00000000000FB9BDBD0B9A999090B000900A09A090909990D099B0B09009090000000000000000009A99B9FB9F9BDBBDBBCB9A9FBC99F999B09B0A90A0000000000FFFFFF000A0A0A00E0A0A00A0F000090A00A00000000000000000000000090000000000BB9E9FA9BF09DA09A909A90090900909A9AD0B9B9A0909009090090000000000000090099ADBB9BFBDBBDBBDB9ADB099B090FB099E0BCB0000000000BFFFFFE000900B00B00CA9CB09F000A000090000000000000000000000000000000000000DBBF99F09B0B9B0DA90900B00009000909A9900099B09A9A9A9009090909A9A9A9909B0B90BCBDB9BDBBF9A9E90B9A90B9B9090B9E9AC90A0000000BFFFFFDA000E00AC00B000A0A0F0A90009000090000000000000000000000000000000009AD9FA90B0DB0D0B090B099090B00B0909090B9BDA9090909090B00A9A9A9D09090CB09D0B9B9BBFFBBCB9BDB9B90BDB090FB0090B0E9A00000000000BFFFFFD0000BC0B0A0B0B0C9AF00000A00000000000000000000000000000000000000009BB090009A9B0B90B090A000909009A9B09B090909A90090009090909C90B9A9A9B09A9B9E9BC9B9ADBDBF9AD0AD0909AD900999E9A9CB0000A0000BDFFFFFA00B00A90AD0E00A9A0F00009000A0000000000000000000000000000000000000BE9F0000000000000000090B009A900909BC90B9B9C9A90A90B00909A9A900909909B9B0B9BDBBFBDBBBB09B0B990B9099B0909A9A9EA000B000A90FFFFFF000000F0ACB0A09ADA0FF090A0000900000000000000000000000000A000000000099B9F00000000000000000009A090B9CB09B9F909A909009090090B0909A9B0F0B9AD0BD9F0BF9BDB9DBDBE9900A90A9B00000B9ADA09A000009000BFFFFFF0000A09A9A0B0A0A0B0F00000090000A09000000000000000000000900000000000F9B0B000000000000000000090B90B99B09A9BD09B0B090A090A909A909A99990B9B99AB9F9BE9BFBA9B99A9A9009009900099E90FBC09A00A00B00BFFFFFF0009ACB0F9CBCB0F0BF000900A00009000000000000000000000000000000000009ADBD00000000000000000000BD0B90BCB9B90B9B090D0B0900900909E990B0BF9E9AD99A9BF9FB9BDBDA00000000000A099DA00A00B0000900000BFFFFFE0009E0B0E0A0A00E0ACF000009009000000000000000000000000900000000000009B9A9A000000000000000009090B9EB9B9D09F9BCB09A90900B00B0A909CB9F0909A909ADBD9BBDADB9A90000000000009B0B00BCBF0A00000B00BDFFFFFB00000B0F9A9E90B0B0BF090A000000000000000000009000000000A00000000000000F9F9C000000000000900A0F9B0B99F9AB9A9A999F90B00B00900090B0B0B0B0B090B09B9ABF9B9B9B900000000000000090000B00D009A000000BFFFFFF000A9E00ACA00AC0AC0F0A090A90A9A90A900000009000000000000000000000000009A9AB90900000000A009909AD9EB9AD9BDB9DB0B0B90900000000000090090000000009F9F9E9BCBCB00000000000000000090AFA0B0000000000FFFFFCB00009E9A90AD0A90B0F009000000000000000900000000000000000000000000000099F99ADA9A9F0F0B99B0F9B9BB99F9BBDA9B9A9F99E9A9000000000000000000000009A9B9BB9F9B90000000000000000009A0D09E000000B000BFFFFFF0000A0A00A0CA00E00AF00A0090090009000000000000000000000000000000000009A9A9E9B9F9F0B99BDAFDB9ADA9DBA9BC9B9E9BDB0B909000000000000000000000009FBDBCBDBB090000000000000000000AC9ABE0000000000BCFFFFFA0000090CBC0B09A00BCF0900000A009A090090A00000A900A009009000000000000009F9B9BDA9E9BDAF9BF9A9FB9DBAD9F9BBDB9F9B9F0B9F0990000000000000000909A9A9B9B9B0D9A000000000000000000009AD00B0000000000BFFFFFF000B0E9A0A00A0CB00AF00090A900A000A00000900000000090000A0000000000000009ADA9BDBBF9BDBE9BF9F9FBBDBB9BF9BADB9F0B9BDA9BA9A900900900000000009DBDBCBF9F9A9000000000000000000000A0ABC0B0000000000FFFFFDB00000A009AC0A00E90F00A000000909A900A00000900000900A00000000000000000A99B9B0B9DABFB9FBF9BFB0F9F9F0F9BDFBBCBBDBDB9F0DB9F0B00000090000B9FAB9B9B99A9A900000000000000000000009E9CB000000A0000BFFFFFE0000F00DA009A00A00AF0000A90A00A0000009000A0090B000090090000000000000090BC9E9F0BBDB9F9BDAFB9F9FA9BF9BCBB9DBBDB0B9FB9BBCB9D09ADA90009B9EB99E9F9BE99000000000000000000000009A00B0E0000000009FFFFFFB000A000A0C0A0DA90E0F090900909000909000A090000009A00000A00000000000000090B9909BD9BDABF9BF9DBFB9FBF9FBB9FBBF9BF9FB09FADBDABBF9B90FBDB0F99FB9B9E990000000000000000000000000ADA9E09A000000000BFFFFFC00090E90A9A0A00A09AF00A00A0000BCA0A000000090A00009A0900000000000000009A90B0B09A90B9DAF9BBBDBDB9B9F0F9B9CB9E9BBDBBF9BB9BDBD9FBFB9B0F9BFB0BDAB9B0B000000000000000000000000000A9AC00000000000FFFFFFB000A00E00C90AC0A00F0009000A000090909000A000900000000000000000000000000000090B09F9FB9BF9F0B9ABDBDBB9BDBB9F9BDBA9F9BD9FBF9AFBCBDAF9BBDB0F9B9F9E900000000000000000000000000BAD0F0B000000000BFFFFFE000009A09A0A090B0CAF090000900B0B0A00A0B0900A00A90000000000000000000000000000009B0B09BDB0B9FB9DB0BB99E9ADBBBDBB9F9BDBFA99BFBDBDBF9FBDA9F9BCB9A900000000000000000000000000F0C0B0A00000000A9FFFFFF9000BCA00A0000CA00B0F0A0A0A000000909000000B090000A0000A0000000000000000000000000099BF9ADBDB9C9A9B09CB99B99C9A9DB9FBA9BDBFB9DBBBB9BA9BF9B9B99F90900000000000000000000000000B0B0E9000A000000BFFFFFE0000900BCACA9A0E00AF00909009A9ADA000900000000900000000000000000000000000000000000090B9B9A9A99909F9B0B09A9B99BADB0DBF9B9BFBBDBD9F9DB9BDBCBB0B9A00000000000000000000000000A0F0B0AC0000000000FFFFFF900A0AC000900090BC0F00000A90000009A0A09A9A9A0A0090009000000000000000000000000000009FBCB09090A0B090099F99B0BC99B9BB9B9FBC9DAB9AB9BBBCBB9B9DBDA90000000000000000000000000B0F00AD0B000000000FFFFFFE000009A0B0A0E0A000AF00B0A90000B0B009090000C0909A00A00000000000000000000009A0000009A909000000090909BDA90B0D9B9BADBDB0FB9BBBB9FBDAF9DBBDADBA9A9000000000000000000000000000F00BDAA000000000B9FFFFF9000BCA00CA009AC00A9F0009000A900009A000A00A9A0A0000000000000000000000000000090900009B000000000000B09099BD9AB9AD9B0BDBBCBF9F9FB9BB9ABF9B9B9DB9000000000000000000000000000B0B00A9C0000000000FFFFFFE0000000B00DA00B0BCAF900A9E000A9AC090B09090090DA900000A00000000000000000000000A90000000000000009009A9A90B99BDBB9FB9BDB9B9F9B9F9F9F9B9E9F9AB0F9B0000000000000000000000000CA0F0CA9A000000000AFFFFFF000A9AC0A000A000000F0090009000009A0000A000A0A000A0900900000000000000000000009009A900000009000000090990B0BCB09CB99E9B9FBDABDA9A9B9BDB9B0BD990000000000000000000000000000B0F09A9E00000000009FFFFFB0000C09A09A0D0E0A9AF0A00B00A9009A00B0B09A90909A09000000000000000000000000090A090000000000000000900B9CB999909BB90B9B0F90B9DBB9FBF0FB9BDB9A9A900000000000000000000000000BCB0AA9E09A0000000BFFFFFFC00B0B0A0E00A0A090E0F0090000009A0000000000000A09C0A0000B000000000000000000000090B000000000000000A009A990F0B9F909BDBDB9BBDBBBDB9B9BB0F9AD0909A000000000000000000000000000BCB0DA9AC90000A000FFFFFFA00000C009E00090A000F90A00A90A00B0BC9A9E909A900A90009A0000000000000000000000000900000000A0009A00900090A99B0B0BDB0B0BDADBBDB0BFBCBDB9BB9A9A0090000000000000000000000000000BCA09E9A00B0009A9BFFFFFF000A0B0A00BCAA0CB0AF00909000090C000000000A00E900A9000000000000000000000000000900090909A9000090000090B99A9D9B9A9F9B9B9B9CB9F999B9B9F9CB9090000000000000000000000000000000E9BCA9E9EB0E9AC00FFFFFFF0009CAC9AF0A9CB0AC9F0A00A0B09A00B00B0B0B009090A0900009A00000000000000000000090A00A0000000000000000A90DA9A9A9E9B9BCB9FBDBBF9BBEB9E9B0B90B0000000000000000000000000000000B9ACA9E9A9CA90F0BFFFFFFF00000A9BEF0AFCBE9E9AF09AC00C000B00900000090A0A090000B000000000000000000000000009009000009090000000909B099DB99BD9E9BDBA9BF99AD9BDB9E9B9AD909000000000000000000000000000000E9A9E9E9EBDAF0BCBFFFFFFF00ADAECB0FDABE9E9AFF000B09A09009A0B09E90009090A90A00000B00000000000000000000000090B090B09E900900000099A9A9E90BB9B9AD9F0BF9FBF9BF9BE9D9A9A000000000000000000000000000000B0F00A9ADACBCBCA9CBFFFFDA000099EFFAFDADAFEDAF09000009A0909000A00A9000000009000B0000000000000000000000000000000090B09A00000009A090909B990BCB9BB9BDBB9B9AD9B99B0B9090000000000000000000000000000000F0BCBCBE9FADA9FAFFFFFFFF0000AE9F0F9EFBF0BFFF0A0A9A9009A0E0A900900A00A9CA0009000C000000000000000000000000090009A000900000000009A09A9ADAF99BDBCBDBE9F0BF9BADB090000000000000000000000000000000000BCBCB0AF9FADAFFE9FFFFFFF000B0F9FAFFAF0FCBFE0F909C000B0009090C0A0A00090A09C00A00B00000000000000000000000000000009090A90000000000900909999ADB0B99BF9B9F99A990090A9000000000000000000000000000000000B0A0BDAF0FBF9E9F0FFFFFFE0000EBCF0FDFFBFEDBFF0B0B0F009A00B00B00C09000000A090000000000000000000000000000000000000009000000000000000000A099A9DB0B0BDA9ABD9E9B0A900000000000000000000000000000000000CBDACB9EBCF0FBEBFFFFFFFB000B0FBFFBEBCF0FADFF0000000B009000000B000A0009000A00900B000000000000000000000000000000000000000000000000000090A090B0F9F9B9D990B90909000000000000000000000000000000000000BA09A0CBCBAFBCF0FBFFFFFC0000BCFEBCFFFBFFFFAF00B00B00000000B0000B00900A0090000A0000000000000000000000000000000000000000000000000000000009A0909A900B09A900A000000000000000000000000000000000000009E09E0FBE9ADE9E9ADFFFFFF000A9EBF9FFBCBEF0F0FF00090000090A9000B0000000000A0000000000000000000000000000000000000000000000000000000000000000090B090B90B09A909000000000000000000000000000000000000000BCA0B009E9A9EBCBAFFFFFFA000CBCFAF0FFFDBFFFFF900000090A00000000000000909000000090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0B00CBE0ACBE9E00DBFFFFFD009A0BCDAF0FAFCBE9EF0CB0B09AC900009090BC900A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F0CBA09ADADEBCB0AFFFFFFA0000BEBAE9EBDEBE9EBFAB9EDAB09A9B0B0FAF0B0BF90B09A9F0ADAF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F09A00DAF0BFADA00FFFFFFF0000F0CBC9E9FEBF0FADFDFFFBDFFBFCB09FBDBFDFF0FFCB0DADF9FF9F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0A09ABDAFE9FA0A0BFFFFFF00000ABCAEBEF9E0F0FAFBFFFFFBDFBFFFADFFFFBFFFBDBFBFBFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ADADA0C0ADBFEDE90D0FFFFFFF00A9CA90BCBEF9EAF0FFFFFFFFFFFFFFBDBFFFFFFFFFFFDBCFFFFFFFFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0B00F0BFAFCBFA0EABFFFFFF00000A9EADAFDAADADAFFFDFFFFFEBFDBDAFFFFFFFFFFFFAFFBFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BCAC0B00BCFFFFE9FADFFFFFFF0009CBCA9E9FAEDA0FAFFBEBFFBDBDFAF09FBFFFDFFF9F9F9BDFFFFBFBF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B9BC0A9EBDEBE9EADADFFFFFF000A0A0F0BEDE9A9FADFF9BC9F0F0B9F0B00DADAF0FBE9E9A9A9FADFCFDA00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E0A090E9EBFCBE9EBEBFFFFFFF0009CA0FCBEBE0E0FAFF00B00A90000900B09A90B0090B0D00B09A9A9A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F0F0BACB0BCBADAE9E9FFFFFFF0000A0BCABFCF0F0FADFF00000000A9000000000000000000A9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0B0BC090ADABCEBDA9EFFFFFFCA0090BCAFDEBABCBADFAF0900090000A000900900009A0090909A0900A090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F0E09A0BDACE9A0ACABFFFFFFF000ACAFDBEBDEDACFAFFF000B00090000900A00A09A0090A00A00000900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00B0BC9E0A9B0E9E9AD0BFFFFFFF00090AAFDEBAFFAFDAFF0A0000A000900A009000000000000909000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009A9ACBCAA0BCACB0E0ACAFEFFFFFF0000A0FDAFBCF0ADBEFFF090909009000009000000000000900A00A0000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009E0E0B0A90D0B0F0F0BCBF9FFFFFFB000ADBFADFCFBEFFE9E0F0000A00000A0000000900900B000A0909090090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A09AD0F00A0ACB0A9ACB0EBFFFFFFF00000E0FEAFACBDAFFBFF09A900B0B00900000A0000A00000900A000A000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FA09A00BC0B09ADACBACBCA9FFFFFFE009A9F9FDBFBEFDADEBF0000090000000A900000A00000000090909000A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B09E00F00A900ACA9AC0B09EFFFFFFE90000EAEFAE0E9EBFEBCF000B000000000000900000000900B0A00A009000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F0CA09A0A9000E9A9E00B00E9BFFFFF9000ACB9F9ADB9FAFCB9EF00000B0090A00000000900900A000090909A0009000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AB09A0C90ACA900CA0B0CA00ADFFFFFF0009A0E0ACACACA9ACA0F0090009A00000090A000000A00000000A9090900A000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0DAE0CB0A09000A9090CA009A9AFFFFFEF0009A9E9A9A9ADA9ADAF00A0900000090A00090A0000000900B090000A00000900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009A90B00090A00A00ACA090A000FFFFFFF000A0CA0ACACACA0E0A0F0009A0009000000000000A009000A0000A0B090A900A0BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0EACA0A00E000900B00000AC00ADBFFFF90000CB09E90A9A9E9E0FF0900009A00A00900900909000A00090909000090000009FF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009AD00A90000000C00B0000A09FFFFFFE000B0ACA0ADACACA0B00F00B09A000900000A00A000000000000A0090B0000B09A0BFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0F00A0D00A9A00A0A0000A0090A0FFFFFF9A0090BCB0A9A0BCA0FAF000000909009A00009000A09000900090A0000B0000009FFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000E9090AF00A00000009009000090000FFFFFFF000CACA0AC0E0F0A9E00F9009A90A0A00009000009000C000A900009A9000900A9ADFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000009A00A0AF00B00BC0A000000A0000A0A9FBFFFF0000A0B09E9A09A0BCA0FFADBE9AD909F9B0F9ADB0E9AB0BBC9ADA9AD0F9B0CBC90FBFFFFFA00000000000000000000000000000000000000000000000000000000000000000000000000A000A009ADAD0BACB00A9090A0A0000A00000FFFFFFF000900EA00B0E9E0ADA0FB0F9FFAFBCBCFDAFDADB9FDFF0FBE9FFF9ABF0F9A9BFADFFFFFFDB00000000000000000000000000000000000000000000000000000000000000000000A0000000ADACA00BAFC9A0E90A0E0090A9A0D0A90A9FFFFFF90A0E90DA0CB0A9E9ADAFFFFFF9FDAFBFBFFDBFBEFFBFDFFDFFF9FEDF0FBE9FE9FBFFFFFF0E0B000000000A000000000000000000000000000000000000000000000000000000A00000009E9A0B0FACB0BE9E9AE9A09A0E90CB0A9CA9FFFFFFE00009A0A0B00E9E0BCADFFFFFFFFBFDFFFFFFFFDFFFFFFBFFFFFFFBFBFFDFBDBFFFFFFFF0FBDE0000000000000000000000000000000000000000000000000000000000A9000000000A0BE0A9CBCBCB0FE9E9AF90F0ADA90EBACBCA9EFFFFFFB0000ACB0F0EA9A0BCA9AF9FBFFFFFBFFFFDBFFFBF9FFFFFFFBFFFFDFFFBF9EFFFDBFFFFFF00A9FAC00000000000000000000000000000000000000000000000000000A9CA0A0090A9C9E90F0FAFADA9EB9EB0F0AE9F0A9EFBCFBEBFEBFFFFFFC000B0BCA0A90E9E0A9E0FFFDFBFFDFFDBFFFFFFFFFFFFFFFFFFFFFBF9FFFF9FBBEFFFFFFFFBCACBA000000000000000000000000000000000000000000000000000000AA900BCA09AA0AEB0BCBCFAFE9EF0FE0F9A0A9E90AFBCF9E9F0FFFFFFFB000CA9E9EA9A0BC0A9AFFBFFFFFBFBFFFFFFFFDFBFFFFFFFFFFFBFFFFFFBFBCF9BFFFFFF0CB0BCF00000000000000000000000000000000000000000000000000000F0DACBCA9EAC9E900F0FBFADA9E9AFA9B0E9E9E0AF9EFBEFFAFFFFFFFFE0000B0CBA9CBCBCBADACFBFFFFFFFFFFFFBFFFFBFFFFFFFFBFFFFFFDFBFFFDBFBFFFFFFF0FB0ACB0AC00000000000000000000000000000000000000000000000000FA0A0B0A9E909AB0EFBEBCE9E9EBEDA9CACB0B0A9F9EDBCBDAFCBFFFFFF9009E0FBEDEBEAE9ADA0BFFDBFFFFF9FBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBCBDBDFFFFFF00F0B0F0BA000000000000000000000000000000000000000000000000B0BCBE0F9E0BEAD0FB0F0FBBFBEBDFADAA9A0E09CA0ABAFBFADBBFBFFFFFE0000B0E9A9E9BDAE9AF0FFFF9FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFBF00F0F0E9CB0000000000000000000000000000000000000000000000BCBCB09E0A9E09ABE0EBCBEDE9E9EA0FADAC9A9A0B0F0CBCBCBEDEFFFFFFFF00A0CB0FAF0ECBDBEDAFFFBFFFBFFBFBFFFFFFFBFFFFFFFFFFFFFFFFBDFBFBDBCFFFFFFFFCBF0F0FBEBCB0C000000000000000000000000000000000000000000BCBE0EBE9E9E9BE9E9FBCAF9AFEBE9FFADA9A00000000BADBEBE9AB0FFFFFFB0000B0F0F0FBBEACBADAFFFFFFFFBDFFFFDFBFFFFFFFFFFFFFFFBFBFFFFDFDABFBFFFFFFF0B0FBEBCF0F0FA900000000000000000000000000000000000000ACBCBCA9BC9A9EB0E0F0FACBFDAFF9F0FAE9EBCBC0B0CA9A9CBE0F0FADFFFFFFFC000B0E0B0E9ACA9FADADFFF9FBDFFFBFBFBFFDFFFFFFFFFDBFFFFFDFFFBFBFFDBDFFFFF9E9EF0FDFBFBFF9EDAD0000000000000000000000000000000000A90B0A9ADACBEDABCBDBEBCBF0FAFDAFAFBDBFADA0B00A900EAFADBCBADABFFFFFFB00009ABCA9ACB9EA9EB0FFFFFFFFBFFDFFFFBFBFFFFFFFFFFFFFFFFFBFFFFFBFBFBFFFFFFA90FAFBCFCBEFBEBEFBE90000A000000000000000000A9009AC0AF0F0EDA9A9A9EDAEADAFBCAF0FAFFCBCAE9EDADA0F00AB09ADFAFBCB0F0FFFFFFF00A0C0A9E0B00E9CB0FAFFFFBFBFDF9FBFFFFFFFFBFFFFBFFFFDBFBFFDFFBFDFF9FFFFFFEDAF9F9EBFBFDADBDF0E9EBE9E9000A000A009A00090AC0AA00B0D0A0B0A9EFCAF0BDBDADADBF9EBDA9FEFBDEBAFADA0AF0CBE9EBDACBEA9FBFFFFFE009CBADA9ACAF0AB0E00FFFFDFFFFAFFFF9FF9FFFFFFFFFFFFBFFDFFFFBDFFBF0FFFFFFF9BADAFEFFCFCBFFEFAFBFDADAF0E9E09009CAC09A0A090A9C9AC00A09E0F0E9ABDAFAEAFADAF0EBDAFFE9BCAF0FC9ADAF09BE9EBCBEB9E9FEFFFFFF9000A0CBCAD0B00F0E90BFFFBFF9FBFBF9FFBFFFFFFFFBDFFFFFFFBFFFFFFFFFFFBBFFFFFE0DAF9F0FBFBEDADBDF0BEFBCBDBE9FADA0A99A09000A900A009A09E00B0B9ADFEBCDBDADADAF9FADBCBFEBDAF0BACB09EAE0BCBFE9FEBEBFFFFFFFE0000FBCB0AACAF0EBCA0FFFFFFFFDFDFFBFFFBFFFFFFFFBFFFFFFFFBFFFFBFDBFDFFFFFFBF09EBFF0FDEBFFAFAFFCBEDBEBCBE9EBCBCAE9EACBC0E0B09A00000B00E0E0B00BAA0F0FAF0AF0FAFBE9E0F9EBCB0FEADB0F0BCBFEADFBCBFFFFFFB00B00EBCF09ADAF90BCAFFFFFFBFBFBFFDF9FFFFFFFFFFFFFFFFDBFFFFFFFFBFFBFFFFFDF0BFBCFAFBEBDADFDF0FBF9EF9EBDBADA9A9F9E9F9A9B0BC0A000A0000F0B0BCAF0DADAA9E9F9EAF9EF9EBDAE9E9AF0BDA0DA9EBE9BDBEDFFFFFFFFC000CB0EB0FADADAEBCA9FFFFFFFDFFFFBFBFFFFFFFFFFFFFFFBFFFFFFFFFFDFF9FBFFFFFA0F0CFBDFEDFEFBEBEBFADAF9EBCBEDADACF0EBF0EDAE0F0BC0B090A9A000A00900A90A9CB0AE0BDAF0FADAADB0EF0BCAADA0E9ADFEFEBFAFFFFFFFB00A9ADB0FADAFADBCA9EFFFFFFFBF9FFDFFFFFFFFFFFFFFFFFFFBFDFFFFFBFFBEDFFFFFF0F0FB0FADBE9FBCFDBCFDADFADBFCBBCBDBAF9FCFB0F9F0F0BC00A00C90A9C9A0A90A9C0A0E90F0E9FACB0E9AEF9AFCBC9A9A9EFEBFBFCFF0FFFFFFC000ACA0F0FADADAE9AF0FFFFFFFFFFFBFBDBFFFFFFFFFBFFFFFFFFBFFFFFFFBDBFBFFFFFF0B0FBEDADBE9FBEBEBEBFADBEDABCE9EAD9EBABCFBCB0F0F0B090B0ACBCA0A9C0AC0A0B090A00B0ADB0E90F9ACF0B0BAC0ACB0B9EDEBFAFFFFFFFFB0090BCBEBCBEBE9EBCAFFFFFFFFFFBFFFFBFFBFFFFFFFFFFFFFFDFFFFFFFDFFFFDFFFFFF9E9EDADBFEBDACDBCBDBCBDADABDE9BE9BAF0FDEBF0FADAF0BCACAC9A9A90BCA0B0B09000E090BC09A0F0A0ACBA9E0E0CB0DA0FFEFBFDEF0FBFFFFFE000A0BCBCBE9E9E9CBDAFFFFFFFBDFDBF9FDBFFFFFFFFFFFFFFBFBFFBFFFFBFBFBFFFFF9EB0FBFFFEBCBEBBAF9EAF9EBEBDEBBEDACF0F9EBF0FADAF0BCB09A9ADADAFC9ADAC0F0E0B09A00ABE0F0A0DA9AD0A9A0B0A0BDE0FBEDAF9FFFFFFFF00A0C9EBCBE9E9EBEABEBFFFFFFFFBFBDEBFBDFFFFFFBFFFFFFFFFFFFFFBFFFFFDFFFFFFE90FEDFEBDFBE9FCF0E9F0EB0FDABDE9ADB0FBE9F0F0F0BCBCBCA0DACADAF0BEDA9AB0A9ACA00E90090A9CA00E00F00D0009E0ABF9CBEB0FAFFFFFFF9009AB0FADAFAE9E9FCFCFFFFFFFFDBFBFDBFBFDBFFFDFFFFFFFFBF9FFFFFFF9FBFBFFFFFFA9FBFDFFFDFFAF9FBE9F0DA0ADABCFAADB0CBEBFAF0F0BCB0BCB09B0F09E9ABCBC9E9E90BCB0A9E0F0A90A90B00A0A0F0A09C0AAF00FACB0FFFFFFE0000CBCBE9CB0F0EBABFFFFFFFFFBE9FBFF9FBFFFFBFFBFFFFFFFDFFBDFFBFFFE9FFFFFF0DADEFBEFAFBDFFEFFDEFBADBDAD0B0D9ACBBDBCBDBCBE9BF0F00F0E9AFA9EDABCBADA9EBCB0E9E9AB0F0A90A00B09000009A0BC90AD00B0FFFFFFFF000A9EBCBEBCFAFBCFCAFFFFFBDBFDBFDF9EBDFFBDFFFFFFFBF9FBFBFFBFFFFF9FFFFFFE9A9FBFFFFFFEFEFBDEBF0FCB0EA9EBCBAE9BCBEBCBEBCBCE0F00B0A9ADADE9A9CBCF0BE9CA9E9A9AF0F0BC0BC9E00A0A000000000A000B0CBFFFFFF000BCAB0F0ADABCBCFAB9FFFFFFFFBFFFBFBDBFBFFFFBFFFFFFFFFFFDFFFFFFDBFBFFFFF9E0FEFCFFDFFFFFFFFFFFFBFFF9FFADAC09ACB0BDADA9E9BBDA9AC9EBCBCB0F0FADA9AD0BA9E9ADAD0FAD0BCA0A9AD0D00B0A0900090A000A9FFFFFF00009C9E9ADAFCBEB0FCAFFFFFFFDF9FFDFFFBDFDBFFFFFFFFFFFDBFBFFFFFFFFFDBFFFFF9A9BFBFAFADFF9EFBDEFDEBCBF0FDBFBF0F9EDAF9ADA9ECBE9E9A09A9EBCB0F0F0F0FAF0F0BCB0FAF0FAF0BCBDA0A0A900C0000A00090090AFFFFFFF000A0A0ACA9ABCBCB0BCFFFFFFBFBFFBFBDBDBFBFFFFFFFFFFFBFFFFFFFFFFBF9FFFFFFCBC0F0FFFFFFAFFFFEFBFFFFFFEFFAFCBCB0A9A9E0F0BCBBCBCBC0F0F0F0BCBE9AF0BCB0F0BCB0F0BCBDADACBCA9E9E9EB0B0B0A90A00A0009FFFFFFA00A9CB0DA9CBCBCBCBCBFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFB00BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0F0BCBCB00B0B0F0BCBCB0F0BCB0F0BCB0F0BCBFADA9A9A9E9A9A00000000000000000BFFFFFF00000A00A00A00A0A0A0A000000000000000000000105000000000000D4AD05FE,'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',5,'http://accweb/emmployees/davolio.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(7,'King','Robert','Sales Representative','Mr.','05/29/1960','01/02/1994','Edgeham Hollow
Winchester Way','London',NULL,'RG1 9SP','UK','(71) 555-5598','465',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D16540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FEDECDACFEFCEADE0ECECBCE0CEFEFECFFEFCFEEEDEFEFEFCDEBCEFFEFCFEDEFCFEFECFDEFFC000C0A0C0CE0EDFE0FCE9FDFCBF9F9FCFCEFCF0FC000000EFCE0CE0CE0FCBE0F0EDECACBCAECACEF0FCE0FCCACE9E0FEEDE0E0E0EEDACEC0CEDEFCACAECE0CAEDEECFCACFCEDEFE0EDEFECFCFEDFFEFFFCFEEECEEFCE0EFEDFEDEFFEDFEFEFE900000C9E9CADEFE0FCBDFCBDBD0FCF9F9FFDEFFCAF0000C0CADCAC0E9ECACCFCECACADECEDEFCF0EECACECAEDE0ECECEDACFCFCEDEACF0FEF0EEFACEDCADEFED0ECBCADEEEFAEEDEFEEFCFEEFEFEEFEFEFEDACBCF0EFEDE0FEFEFECFEEFEFFF00C0CE0EC0EDEFACFCBDBCBDFE9FDB9E9E90EFFCAC0CA00C0EFCACCECEC0ECACE0FCEDECBCAC0E0ED0CEDEBCDE0FCF0E9EEFEE0E9E0DE0ECACEFDFCCCAFCEECFEEFCECECE9ECFCFEFCE9EEFEDEDEFDEFFFEDEDECEEFEDFEFEFEFFCFFEFDEFDEFF00000DE9ECEFEDE9EDADFDAF9F09EDF99CF9EFFFCAC0900CC0EC0E9CACE9CF0EC0F0E0ECFCFECFCEEBCACCEACECACECECFCBCFCECEECFCEDEDEEFEBCECBC0FCFCAF0F0ECEDEEFCFEFEFEDEFEFEFEFFEEFFEACEFCFCEEFFCFEFCFEEFEEFFEFFEFB0C0E0F00DEBCE9E9FDADBDCF0F99ADEB90D0FEFFDECA000ACDAC0ECDACE0EC9ECECFCFE0ECBECADCECEBCCE9ECECADEACECFACBEC9EE0FCEADEF0CEFECEFEEBEFCECEDACAEDEAFCEDECFEDACFEFEEDFEDFCE9EE0EDFEEFEDEFEFDEDFEFFEFFF00000C0CFEFCDAD9E9EDBCFBDF9CBD99C9F0FCFDEFBCC000CCACFC0EACCACCACCACAC0E0FCECCBCEADACCE9ECE9E9ECEDEFEDEFCCBECDEEBEDEFFCAC0CEFEFDECCCAC0EECEDECFCFFEFFEFEFFEDEFFFEFEAEDEECFEFEEFFFFEBEDEEFEFFCFEFCF000CAEEDEBCBC9E9CBDADBDE9A9C9CE9E09D0FEFCFE9A00CACF00E0CCADCADEADEDEEDECE0FEECFCECFE0ECE0ECECF0ECADEECFEECFAEDEDEFEFFCBCAC0CEEFEBEDEF0CBCAEFEFEEF0EDEDECFEFEFEFDEDCAEDACFEFFDEFEFCFEFFFEEFFEDEFFBC00CDFAFCBDAD9CBD0FDCBFDF90A99C9FCBCBCEFCFED000CACECCEDACE0E0CCACAC0EDAFCAC9E0E9E0DECACFCACACEDEFEE9E0F9EECFEEFEEDFFFEFCBC0C0CECEACEFECECCECEFDEFEEFEFEFEFDEFEFEEFCCECEFFCFEFEDEEDEECFFDEFFFEFEFBC0EEDCBC9C9E9D0FDAF9CBDAD9C0BD090D0D90EE9EFE900CBCBC0EC0CECE0ECECFE0ECECFECEFCECEACEDE0ECFCE0ECE9EEDEEEDEF0FCFFFAFFEDFEFEFBCAD0CCE0EDF0FACFFEEFCFCFCEDEDEFEFFEF0EEF0EFDEFEFEDEFFEFFFEFEFEFEDEFFC00CB0BC9E9E9E9F09D9EDDADBC90C0FCF0F0E0DCEDEF000CCEC0E0CE0C9CECBCACCFCBCBC0F0CACADCE9CACC9E0FCFADECFECFCEBCEEFEB00FEFEEDFCFCEDEECA9CCEEECCFECEDEFEFAEFEFEFEFFEDFEDACEFFEFFFEFFEFCEFCEFEFEFCFEFFEFFCE0FC9E9E9CDBC9E9E9FADF09A90B9090D099CAFEEDA900EF0E0CE0CACE0DECFCBEECECEECEECDECE0CECFAEECE0ECEEFACBCEFCEDFFB000FFCFFEEFEEFEE9FCEF0C0CFE0EFFEFEDEDE0FEFEFFEFE0ECEDEFEFEFEDFEDEFFEFFEFCFFEFFFCFEFF0D09E9D0F9ACBD0F9E9DE9F99C9C0DAD0BC09C0CFEF00CECFCE0C0ECACEACACEED0EDAC0F0DAE0E9EACACC0CBCECFEDEDEEFACFFEF0C0E0FEFECFFCFDEDEEEFCEEBCE0EDEEDEEFEFEFECFCFEFFFFECBCEFEFFFEFEFEFECFFEFCFFEDEEFEFEFCAF0F0DADBCF9DADBC9F0F9E9E0909A0DAD09E00E0CFEB00CFAD0E0C0CC0DEDEF0EEFCACECCECCECECCCFCACECCACBCF0EEDECFCEFFEB000EFFEDFECBEEBEFDECBEDEE9C0ECFEFDEFEDEDEEFEFEDECFECEFCFEFCFCFEDEFFEDFEFFEFFFFFCFEDAD0D0F0DAD90F0D0DBC0F09F09DA00D0090F0909CEFED000FEDEC0CACACECACECED0CACDACACAC0F0E0E0ECACACFCEEEFE9E0FEFFBC90E0F0FEFEEFFEEDEDAEEFEDEEDEFE0CE0FEEDEFEEFCFEFFEFFACEFFFEFEFFEFEFEFEFEEFFEFEFEFEFBCADAD0F0DE9DADF9E9F0DBD9FC9F09C909F0D0900CEFF0CACFEF0E0E0C0CE9ECF0F0ECACEACEDACCE0ECE0EC0CCE0E0FCBCFCEFEFFACA0E0E00FCFCFCEDFEFEDEDECE9EFEDEF0ECEFFEFCADEFEFEFFECF0FEFEFDEFEFCFEFCFEFFFEDEFCFEDECFC0D0F0DBC9E9E0D9F0DBC9E99F0F0BC0000B0C9000CEFFCFE9EF0C0C0E0CEDACECF0EDACCCACCE0EC00CC9EDEBCFCFEFCE0EFDE9E9000000A0FFEFAFEEDECFEFAFEFEDEFACFE9E0CEFEFDECEDEDEFFECEFDEFEFEFCFEFCEFEDEFEFFEFEFFEFCA9CBC9F0F9F9F9F0F0F0DBC9E0D90D09B0D0C90A900FCEFFEFECCFE0E0CE0ECFCACAC0ECA0FCAC0C0ECEBEECACCE0ECCACFFDEFFFA0A00A0000FEFCFCF0EF0ECEDEDEEFECFFECFEFCACFEEEBEFEFFEF0FEFEFDFEDEFEDEFFEFFFEFDEFCFCEFCB0C9CF0DF9EF0FCBDBD9F0D0F9F9E9A9C0D009A90C000EDEFCFCBE0C0CCACEF0E0DECCE0CCEC0C0EFE0C0CC0BC0E0CCBEFFEFEFEA00000000000FFFEEEFEFCEFE9EEFEDECBCECFEDE9C0EFFDEDEFFEFCEFCFEFEEFEFCFEFFEDFEEFFEEFEFEFCF0F9EB9DEBCF9DF9F0F0F0F0F9C9E9C9CA90A900C0900CEBCFEBEEDE0CA0CE9CE0EE0E00CCAC0E0EC0C0E0E0ECEECFFEFEDEFCFF0900000000000FCFFFDEDEEFCEEDE0FEFFEEFEFEFEFFFCCEEEFEFEFFEFEFCFEFFEDEFEFCFEFEFDFEFFCFEDE0909C9DEBDDB0FADE9FDBDBD99E9E9F0F99C900D0900000CEEFDEDECAC0CE0CEACC0CC0ECA0C0ECE0CACECEDEDEDAFE0FCFEFEF00A00A000000000FACFEFEFE9EF9ECEFCEEDEDEDACFCEEFAF0DEEDEFEDEFFEEDFCFEFFCFEFEFEDEFEFCFEDEFBCBCADADDEBCDFDDBDE9E9E9EDAD0D09D0F0B0D00A0090000DCEFECBEDAC0CFC0CACE0EC0ECEEC0C0CACBCBCE0E0EDEDEFECFCFEB00A000000000A0FCF0FFEFCFECEFE9CEDAEFEFEFFEFFDEFCECADEFFEFEFCFFEEFFFEFEFFEDFEFFEFEFEFFE009C99FDBE9DBF0FADF9FDF9F9BDF9ADADB0D0DA90D090000CEAFCADECEC0CACACC0C0E00E0C0C0EADEDECCECADECEEFEFCFFEBA0A0A0000000000C0FE900EFFFECFFEDEFAEDEDEDEDECFEEFFEF0CEEFEFFCFEFEFFFEEDEFCEFEEFFEFDEFCFE09FCBCFCBD9FFEDFFDFBEDF9EF9ED09CBC90D0F09C000000000EDCEFE9E90EEDAC0AC0ECDECC0E9EFCCACADACBCECFADEDEFEAE0000000A000000000AF0F0000FEFFECFAECFCEEFEEFEFFCFFEFFEFF0CCFEFFEDEFCFEDFEFEFFCFFFCFFEFEF0C9C09CBDBDEFE9FBDFBDFDBEDBCFDBDE9D9ADBD0F09090C00000CEBCFCECEC0C0C0CCECF0E0CADCE0CBEDECECECEDAEDEBEDAFC9A0A0A0000A00B00A90BE0A000CFEFFFCFEFCFDECF0EFEFFEDEFCFEDEACCFFEFEFFFEFEFEDEFEFEFEFEFEDEEF9A9CBDEDEDBDFFDFEDFE9FDBFDBDADB9E9CDADAD0F0CA90900000CE0EF0F0FCACACA0CA0C0E0EE0FECCAE0F0E9E0ECFECEEFCAA0C9000A0000000A00A0F09000000DFEFEFCAFEAFEEFEDEFEFEFEFEFEFD0EFEFEDEFEFEFCEFFCFEFEFEFCFEFD00D0FCBDBFBDFBCFFBFFFFFFDEBDF9FCF9FA9D0DAD0990000000000CFE0FCECAC0C0CCACCACECD0EC0FEDCFCEDECFCBC0FFCEA9C0A0A00000000A009A0AF0A000000FEFFEDEFFCFCF0FCFEFDEFFCFCFEFFEFFFCFEFEFCFEFFEEFEFCFFCFEFA90E9CBCBDEFDEFFFFFFDFBDFBCFBDE9E9F9F0DDADBD09F0009000000CE0CFCEAD0CACACACCADE9E0EDACE0CEACE0E0E0ECFECA9000BC0000000000000A090FF0C0090009EFFFECEFEFEFEEFEFEFCFEFEDFEEFFEEFFFEDFEDEFEDFEFFEDEFEFCFC09E9FDFF9FFDFEDFFFFFFFDFBFDBDBDF0F0DB09E9CBC0AD0C090000ACFEE0FCE0C0CCCCADE0CECE0ECBCFACCBCCFCECFEF0B0A0A00A900000000000000A0FEB09A00A0000AFFFECFCFCFFEDEFEFEFEFEFDEFFDEFEFFEEFEFCFEFDEFFEFEDEF0BC90F0F0FFDFBFFFFFFFFFFFFDFADFCBDF9FBCFD9E9DBD9090000000C0C9EF0E9E0CAF0FCACE0F0EDACE0CE9ECAE0CFE9EACA0900AC0A000000000000A000FEDA000090000ECFEDEFAEFECFEEDEFEDFEFEEFEFEFEFDEFDEFFFEFEFFEFEDEFE09C9EFCFDFFEBFFDFFFDFFDFFBCBFDBDBDADAD0B9AC9AD00F0E90000000E0ECECFCC0ECCACACDACCEC0CE0EC0ECADCEFE9E90000A0900A00B0A0A00A0A00000F9A000900000000EFFFEDEDEFFEFFEDEFEDEFFFFCFFFEFEFEFEFEFEFFEDEFEF090D0F9DBFFFFDFDEFFFFFFFFFDFFFDBDEDADBD9FC0D9FDADF9090090000CC0E0FCACACFCACEDCAC0E00CE0CC0ECADEEBCB0A0A9000000A09A000000000000000BE90900A00000000EEFFEFEFEFFCEFEF0EEFCFEFFEDEFEFFEFFEFDEFEFEFCFE9CBCBCFEFDF0FFFFFFFFFFFFBFFBF9FEB9BDBC9E99F9E90F09AD0D000000CACFCADEFCAC0DE0CACEC0ECE0EF0E9ECECFDA000000AD00E000A0A0A000A0E0F0B00F0A00A090000000000CFEDFEFCFFFCFEFDEFEFFEFFEFFFCFFEFFEFFEFFFEFEDA0D0F9FDFAFFFFFFFFDFFFFFDFFDFF9FDEDADBF9E90F9ED9FC90B0B000000C0CFCAC0FCACACFEC00EC0E0D0CECECFFBE0F0A000E0AF009A000000A00000A00000F90009000000000000ACFEEDEFEFEFEDEEFCFFEDFEFFEEFFEFFEFEFFCFEFED00DADCFCBFDFFDFFFFFFFFFDFFFFFFDEF9F9F9C9E9E9D09AD0BDE9C09000000EE0EDEFCADECE0C0EC0AC0ECEC0FEB00C0FA0000ADFC9EBE0A0B0A000000000A0A000090000000000000000EFFFEFFEDFEFEF0FEFFFEFFEFFFEFFEDFFFEFEFDE90DADBFFFFFFFFFFFDFFFFFFFFFFF9FBF9F9E9E9E999DA9ED9BC09909000000EC0CFCACADE0C0C0EC0ECCF0E0EFE90000A00000AC0A0A00009A0A000A0000000009F000000000000000000000EFFFEFEEFFEDEEFEFEFEFFEDEFEFFEEFEFEDEE00E9DEDEBDFFFFFFFFFFFFFFFFFFDFFDFDF0F9F9F9ECF09C9BCDBDBCBC900000C0FE0ECFCE0CE0E0CAC0DACECFE900000000000000A000E0F0A0000A0000000000A0AB000000000000000000000ACFFFFFCEFEDECFFFFFEFFEFFFEFFFEDFFEDF9C9E9FBDFFFDFFFDFFFFFFFFFFBFFBEFBFFDBDAD09990F0BC0B0DAD909A900000C0ECBCAFCAC0CCE0CEECECFFCB0000000000000000000000A0BA0000AC000000000D00000000000000000000000ACFEFEFFFFEFEFEFEFFFEFFEFDEFEFEFEFE00DADFCFFFFFFFFFFFFFFFFFFFFFFDFDFFCBFEF9FF9EDB9CD9F0F90BCBC9000000EC9CECFC0C0E0E0ED0CEFB00000000A0A000000000000A0E90000A0AC0A00000000A0000000000000000000000000EFFFFEFEDEFFFEFFFEFFEFFEFFFFFEDA90DADEFFFFFFFFFFFFFFFFFFFFFDFFFFBFDBFDF9F99E900DA9A0D90FD9C9000000CC0EEDACACAC0F0CCAEFB000000000C0000000000000000000A00A0009A0000A00A09A000000000000000000000000000EFFFFFEFEFFFEFFEFFEFFEFEFEFE90DADFDBFDFFDFFFFFFFFFFFFFFFFFF9FDFFF9F9EDEF9F9F09C9DACF9A0BCB900000ADC0ECF0CCACCCAFCF0000000000A0A000A000000000A00A00A090ACA0000000000E9000000000000C0B0A00000000000EFFEFFFFFEFFFEFEFDEFFEFFDEF00D0FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF9F9F0F09F0BC99B0D9C99C09000C0E0DADECACCACECFA90000000000C090A0000000000000000900AC90CBCA000A900BE000000000E009A0000000000000000EFFEFEFFFEFFFFFEFFEFEFEF00DAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF09FF9F9F99E99C9E9C9ADBCA99000000C0ECEBC0CACFAF00000000000000AC000000A00000000A0A00000A000090A90000F09000A0A0E9CB00000000000000000C9EFFFFFEFFFFEFEFFEFFFEF09E9EDFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDF9FFF0F0FC9E99E9A9C9AD909D9E00000E0EC0FC0DEEDAD0000000000000A000A0E0000000000000000A00000A00A0000000FCA00000000A00A0000000000000000A0000EFFFEFEFFFFEFFEFEDF000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF9F9FBDB9F9F090D0BC9BCBDA099000C0C0CEACEE9E90000000000000000A0AC000A000000000000A00A0A0000000000000AF0000000A00A000000000000000000000000CFFFFFFEFEFEFFFFEA9CBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAFF9E9DADA909F9E9C9BC9909DBCB0000C0CBCDE9E9000000000000000000000A0A000000A000A000000000A0E0000900000FE9A000000000000000000A00000000C0A0000FEFEFEFFFFFEFEFF900DFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFBFF9FE9FB99F9F09090B0C9ACBCB0909000ACACEA0A0000000000000000000A0AA00000A0A000A0000000A00AC090A00000000FA00000A0A0A00000000A000A0000A0A0C0000CFFFFFFFEFEFFFFC0CFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDF9F99F9C9E0D09ADAD0D9AD9D90DAD0000C0CCAD0000000000000000000000000000A000000000000000000000A0900000000FF00000000000A0A0000000000000000A000A00CFFEFEFFFFFEFCB9ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFBFBDB0F90BC990BC9090B00900BCBD9B000C0E0FCA000A000000A0000000000A0A0A00000A0A0A00A000000000A00A00A000000FEB0000000000000000000A00000000C0A0C0000CFFFFEFEFFFEF00CFFFFFFFFFFFFDFFFFFFFFFFFFFFFFDFFDFDAF9F9E9DBCBC9BCBC9DBC9BC090AD09000C0CE0E000009A00000A0A000000000000000000000000000A000000000000000000FBC00000000000A0000000000A00000A00CA0009EFEFFFFFFEFFE90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF99EDADBE99DB9C9DBDAD9A090C9D0F000C00E0DA9A00FAC9A0000000A000000A00A000A000A0A00000000000000000000A000FEB0000000000000000A000000000000C0B00E00CFFFFFEFEFFE90FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBDBC9EFDBDF9DBDADE9FBC9F9FC99E900A990C0ACCFA000CFAC9AC90A00A00000000000000000000000A00000000000000000A0C0AF000000000000000A000000A00000000AC0E00A00EFFEFFFFEFCE9CFFFFFFFFFFFFFFFFDFFFFFFFFFFDBDBDF9FF9FADF0FF0F9B9F0DFE9E99F090BC9C0000CAC0CA00A0CBE90A0CA000000000000A00000000000000A00000000000000000A00FFB000000000000000000A00000000000A00E0CA09CFFFEFFFFF90FFFFFFFFFFFFFFFFFBFFFFFFFF9FFFF0BCF0FFDFBFF9FFFCFDBFBDBDFF9F9E9090B090C0CEB00A00A000A009ACB0A0A0000000000A0000000000000A00A0000A00000000A0B00000000000000000A000C0A000000000CA9CA9CA0EFFFFEFEB0EFFFFFFFFFFFFFFFDFFFFFDFBDFFF90FFDBFFFDBFDFDFF9FBFBCDFFFFBCF9F9DBC90D0C00F9000000000009A000000000000A00000000000000000000000000000A00000A00F0000000000000000000A0A0000000A000A0EA0CADADFFEFFFFC9CFFFFFFFFFFFFFFFFFFFDFFFFFAF0FFFDBFFDBFFFFBFBDFFDFDFBE9FDFF9EBDA90BCB0B0EC0000000000000000A000B000A00000000000000000000000A00A00A0000A00000AD000000A00000000000000A000000C0A00C00DA0000CFFFFEFB0FFFFFFFFFFFFFFFFFFFFFFBFF9FDFBDBFFDFFFFDFFDFFFFFFFBFDFFBF9FFDDB9F9D09C9CCB00000A0000E0ACB000A000E9000A0000000A000000A000A00E90A000000000000FADA00A000A00000000000000A0A0000DA00ACACB0000CFEFFFE9CFFFFFFFFFFFFFFFFBFFFFFDBFFBDFFFFFFFFFFFFFFFDFFFFFDFBDFDFF9FBFDE9A9F09A9A9000000000A0E9ACB0000A00A000000000A0000A00000000000E00000A000A0000FFA00000000000000000000A9C0000A0A00A000000A000FFFFED0EFFFFFFFFFFFFFFFFFDFBFBFFDBDFFDFFFFFFFFFFFFFFFFDFBFFFFBFF9E9F0F9FDB0DAD0D000A00000A0CBCE90A00A00A00A00A00A00000000000CA000CA00A0A0000000000FA00000A0000000000000A0C00AC0A00000000A0A00000EFFEFB0DFFFFFFFFFFFFFFFFFFFDFDFFFFFFBFFFFFFFFFFFFFFFFFBFDFFDFDF9FFFDBDBF9ADB99CB00000A00000ACA9A00000000000CA00A00000A00000A00000A000000000A000000FF90A00000000000000000A0A00A00C000000000000009CFFFFC00FFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFDFBFBFFDBDBDBC9FDB0DA90D00A000000000AC0A00A00A000A00F0000A000000A00000A0000A0000000000000FCA000000000000A000000000A00A0A0A000000000A000A0DEFFBCFFFFFFFFFFFFFFFFFBDBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFDFDBFDBCF9FF0F9F0DB09A9000000A0000A000000000A00E00A0A000A00A000A00C0000000000000000000AB0000A000000000000A00000000000C000000000000A000EFFED0FFFFFFFFFFFFFFFFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFBFDBFF9F99F9F99BC9F000A0A0A00A0000A00000AC00A00A0000E000A000000A000A0000000000000000F00A00000000A0E0A00000000000A0A0A0000000CB00000CDEFF0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FDBE9DBDADBCBCBCB909DA000000E000A0000A0ACA9A0A000A0A0A0A000A00000A0000000000000000000E0CA0000000C0AC9A000000000000000000A90A0C0F009A0FEFE9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FDFF9F9DBF0F9F9BDB99DADA09000A0A00A0000000000EA000A0000000000A00000A0000000A00000A000000B9A0CB00000A0E9A000A0A00000000A000A000090B000A00ACFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFBF9F9FBD9F9FBCFDADAF099DAD0A00000ACB0A0A00A0000A0000A0A0A00A000000000A00A000000000000000E000AC0A000000A000A0000000000A0000000000A00A0000CBCFEBCFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFDFFFBDF9F9F0DAF9F9CB9BDBD9BDA990B0000A000000000000A0A0A0A0000000A000A00000000000000E0A00000000B00AC0B00000A000A000000000000000A00900A000000000ACAFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FDF9E9F99F999C9B9FCBF9ADA9C9E900A000A0A0A00A00000000000A0A0A00000000A000000000000A000000000E0000AC0B0A000A00C0E0A000000000000000000000000A00ADCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FBDBD9E99F0F9FDCB9D0BDBD9B09D09C00000000A0000A00A0A0A000000A00000A00A000000000A000A00000009A0000AC000000000A900000000000A0000000000A00000000A0EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FBD9F09D0B0B9DEBDDADAD0F0B0A0B0A000000A0A000000000A00A000000000000000000A0000A000000000E0000000A000000A00CACA0000000C00000A000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDBF9F999F9DB99D9D0B9DABDBDB999C9D000000A000000000000A0000000000000A0A000000000000000A000000090000A0000A0000000A009000000E0B00000CA00000A0000000A0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD9D90DF0B909DA90BD0F9D9E9F09E9F0A00000000A0A0000000000000000000000C0A0000000000A0A000000000E0A0000A000000A0AC0F0ECB0A0000EB000A0C00A0000000000009CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBDBF9FDB9D9F9F999D09F09EB9F9F090099000000000000000000000000000000000A90000000A0000000A00A0000B0000A00A000A00A0A000ACE9000A0C0E9C09A0C0A0A0A90A00000AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFFDFF9FDBDF9D9FCB99C9F99DADB9F9F90F0A0A00A00000A00A000000000000000000E0A000000000000000000000CA00000000A00000000EADA9E00000A000A0AC0B0C00C00000000ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFDBD9F9FDB9F0B999CB909CB9DBCF9090F090000000A0A000000000A0000000000A0000000A0000A00A0A0A000000B0000000000000A0A0A000E00A000000A00D00AC00B0A0A000A9E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFDB9BDBF9F9B0D99D090990BDB9EBDF90F9F090A0A00A00000A0A000000000000000000E0ADA0000A0000000000A0000E0000000000000000A0A0A0A00A0000000A0AD00E0C00900A0000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFBFDBFDFD9D9FFFDFBE9B90DB0D09C99CB9FF9099E90000000A0A00000A00000A00000000000000000000000000E0A0000009A0000A0000000000000A000A0000000000000A09A0F00A000A009CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFDFFDB99FFFFFFFBDFFDEFB0D90909E9BDADBF9E99E90A0A000000A0A0000000000000000A00ACA0000000A000A00D0A00A0E9000A00000A00000A0A00A000A0A00000000A0DAC000E00E900A0AFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FDFFDFFFBDBDFFFFFFFFFFFFFBDF9FB0009090DBDBF9E9F090000000A00A00000000000A00000000000000A00A00000A0CA0A00000B0000000000C90A000000A0A0A000000000A000A00B0E90E00CAD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD9DEFFFFFFFFFFF9FFF9EB9E9900009DBC9F9F990DADA0000000A000A00000A00000000A00ACA0A000000000000A0E00CA00E00A0000A0A0A000000A000000A0A0A0000000B0B0000CB09EB0ACBFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FBDF9DAFBFFFBFFFBDFFFBDB9B9C99CB00000099E9E9F0F90900000A0000A000000000000000000000C0000000A0A00000CADA90A0DB00000000CADA0A0000A0A0A00000000A000A0A0A000ACAC9CB0ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEFDFFBF9DFDBFFFDBFFBFB990D0D0900909000000B9F9FDB0F9F0A0A000A000A0000A00A00ACA000000A0CAC0A0000000000ACACA000EACA00000000000000A0900000A0A0A0A090A00000000000A0A000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9FF9009EFBDFF9BD90D9CBD9B9B909F0909090090D0F9B9D090900000000A000A0000000000000A0A000A00B0000000000A000AC9A0F00000A0000A0A000000A00A0A000A00000A00000000A00B09000F0FFFFFFFFFFFFFFFFFFFFFFFFFFF9BDF909090F99FF9F9DBDBDBDB9C9D0BD090D09A99000B90FDA9ADA90A00A0000A000000A000A0A0A0C00000CAC09A00A0000000A00A00EBE0E09A0A0000A000000000000A0000A0A0000A000000000A0000FFFFFFFFFFFFFFFFFFFFFFFFFFFBFDB0F900009F9F9F9FBDBDBDBDFBF9FDB9DB9BD9D0D99CBD9BD9C9CA000000A000A000A000A00C0000A0000A000E0CA000A0CA00000000FCB00E009000000000A00A00E009E9A0000A9A090A0000B000B00ACFFFFFFFFFFFFFFFFFFFFFFFFFFFB9DB99BD9DBDF9FDF9FFFFFF9F9DBF99E9E9C9ADA9A0909AD9B0B9900A0000000000000000000A0A000A0A000A00EADA0C0A00F0000000FBCEB0F0A0A00000A000900F0BE00A00A0B0000A000B0000900000FFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB9CBDBFFFFFFFFFFFFFDBDF0FBD0FBDB9FB9DB9D9990F99E9D9E9B0000A000000000000000A0000A000000000A0CA0F0AC0E00A00000FCB00C0A9C9000009000A0F0AC00B000900E0A000B000A00A00A0FEFFFFFFFFFFFFFFFFFFFFFFFFFFB9A9CBDFFFFFFFFFFFFF9FBFFBDBC9F9C99E9DCB0DBCBCB90F9F9A9C000A00000000000000000000A0000000000000A9E0E09A0A0000000AB0DA9AD0ACA00A00A90000E90B0000A0A09E900000A00900B0900FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9BDFFFFFFFFFFFFFFFFDF9DBD9B099E99A9B9DA9909C990F0D9CB900000A0000000A0000000000A0A00A000000000000A0C90A000000DEA0000A90B00000000A0000A000A00000E00EB0A000F0A000ACBCEFFFFFFFFFFFFFFFFFFFFFFFFFBDB0BD0BDFFFFFFFFFFFFFBFBFBDAD99A0909D09CBDADB9BCBD9B0B90DA000000A090000000000A0000000000A0A00A00A09CA0E090A0000A90000000ACADA00A0AC0B00000000000A0AD00009AE0E90A00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF990FFFFFFFFFFFFFFFFDFDBDBDB9C990F009E990990D0990FDBD0F0900000000A00CADA000000000000000C000000000A00F0A0000000F000A000A909A00000DAF0000000000A09C0A00A0AC9EBCA00A0AFEFFFFFFFFFFFFFFFFFFFFFFFFBDF990FF9FFFFFFFFFFFFBDBFBDBDBD0B909009909E9F0F9B90F9090F99000A00A0A00E9A00000AC0000A0A00A00A000000AC0E00000000009A00900900A0000000AC0A09A0000000A0B00A00000E0EA900000CFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF990F9FFFDFFFDFBDFBD9DBDBFBD9E9099E090909909CBD9F9F990F090000000000AC9A0A000ADA0900000A0009000000B0A00A0000E0E9A00B000090A900000AC9A000A00000000E009A00A0EDEEB000A0FFFFFFFFFFFFFFFFFFFFFFFFFFFDBDF999F9FFBFFBFFFBD9B9BDFFDBF9DB9C990DA99E9F990F90F0F9D0B0F0A00A0A000AA0000A0000ACA0A00CACA00900A00000000B0E9EB000000B00000CA000090A00A000A0A0A0A90E00000CA0E9E9A000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F09FBDFDFFF9FDBFFDFFBDFF9FBDA9AD9BD9C9909E99EDBD9E9BDD0000A0000A0000A0A00A0A0090000A09000A0000000A000C0CACA09A0F00000ADA90000A00CF0E9A00000900E9A0A00A0E9ECA0E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFDF9F90DFFBFDBFFFFFFFFFFFF9FBDBD9D9BCB09A09E99F9B9DB9F0D9A9A00000000A0A0000A00000E0A0A0CA0A900C0EABC90A0A0ACFF0000090A000A000000000A0F0E00A0A0A0B0AC9090000A0BCB0CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF9F9A9FDBFDFFFFFFFFFFFFFFDFF9E9AD9BF99DB9DF0FDFADE9DABD0000000A0A00000A00000009000C0BC9C000B09C0A00000EDAE9A000ACB0F0C90A900000BCEFF0F000000A009A0A0A000000ADB9DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9F9F99AFDBFFFFFFFFFFFFFFFBDFBDBDBCD9E90DB9F9B9D9BDB9DCBDB000A0000A000000A0000A000A000A0ACB00A0BC9A00000ACFE9000DACF09A0AC0090A9CAF0FA00A00B00A0A000000A000FDBDFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DBDFFFFFFFFFFFFFFFFFBDBDADBBF99FBCF9FDEBFDBDE9BDA00A0000A0000A0A000A00000A09A00C090E90000A0000A0CB0B00A0ACB00A000900AC9CAD0F09CB0CA00A90000A0B090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFBDBDBFBDFFFFFFFFFFFFFFBFDF9F9DBD90F0D9BCB9BDDB0F9BDF0B00000A000A090000000A0A900000A0BEE90F0009000000A0ECA0D0000A000000A900A0B0A0E0E0EB0E900A000000CADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FBDFFFFFFFFFFFFFFFFDFBDBC9E9E9F9FBFDBDFDBBDF9FDA9F00000000A000E9E9A00000000A00000C0FFE9A000000000000BDA0A0A000A00A0000900009E9ADADE9A0AC90A09A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFDFBDFF9FFFFFFFFFFFFFFFF9F9B99E9F9F9FDB9FDE9FF0FDADA90000000A000000000A00A00900000AC0EBE9A00000000000CA0000000A000D0B0A0A90000000A0A0000B0AD0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFBFFFFFFFFFFFFFFFF9FBDBC9F9F0F9E9BDF0F9FDBF9BDB0000000A000A0A0A0A000000A00A00009A9C9000900000A00AB000A00AC090A0B0C9C900A0A0A000000CACAD0A0CFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFFFFFFFFFFBDFBDAD9F0F9BDBDBDF9F9F9BC9FC9AD0A0000000A00000000000000000000A0000A090A000A000ACE9000000A0A090009A0E000900000A00A0F0FAF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFBFFFFFFFFFFFFFFFFFBDBDB09F9FDBDBDF0F9F9FDBF99F9AD0A0A00A00A00000900A00900900A9000B09A000A00000000FAB0A0A0E0CA0B0A0090A000E90A000000EEFCB00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFF9FF9BDF9F0BDADFB9F9F9EBD9CFA909A9090A00A000A00A0A000A00A0A00E9E9CAC9A0000000A0A0BD0000009EB000090B0090A000A0000A0ACBCB0CBFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFBFFFDFFFFFFFFFFFFFFFFFFF9FDA9E9F9FDB9CF9F9F9DBFB99F909E0E000A00A000000C0B09009009E000A09A000A0000A0000F0A9A0A0E0009000000A0A00A0000A000CBEB0E9EFF9FFFFFB9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF9F0B9F9F9F9B9FB9BD0F9FAD9CF09CB0B000A00A0A0000A0B00ACBC0A0000A00A000000A00000A0A90000000A90090000000000000A0000A000000ADFFFFFFFF9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF9FFFFDBFFFFFFFFFFFF9FF9F9D09E9E9C90D9CB9E9D9E9B9DA90000A00E00000A9090000909A90A0A000000A00000000A00AFE9A9A0A000A00009000000000000A000A0A0000FFFFF9FFBD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FFDBFF9FFBFFDFFFFFFFFFFFFF9F9A9F99F9B9F90B9099A999E9E99F9A000A00ADA090A0A0B0A0E0E000000000000000000000A00B909000000A0DA9A000000000000000000000A09FFFB9FDFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FF9FFF9FFFFFFFFFFFFFFFFFFBC9D0F990909090D9BC9DADBD9BC90000009E0A0A0AD000C0900909A000000000000000A00000AF0A00000A00DAC0D0000000000000A0A000A000CFF9D9FBFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFB9F9BDBF9FFFFBFFFFFFFFFFFBDBD9B0B90C90D0BC90BC99AD9D0BC9A9A0CA0E000000DAB0A9ACADACA00A0000000000000000A0A0A909A00000A0A9A0B000A000000000000A00000FFF9BDDFFDFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBCBDBC9F9F9FDFFFFFFFFFFFFBDB0D9D0B909BD99BD99AD90B0BDB0D00B0CA00A000A00CBCADADA9000000000000A0000A0000000DA0000000000000000A0000A000000000000A00CFFF9AF9FFFFFFBFFF0FFFFFFFFFFFFFFFFFFFFFFFBDB9DBDB909B90F9FBFFBDBFFFFFFFFDBDB009009F099E9CBD09A99C909DB0F00A0CB000A00A0000CACACA0A00000000000000000A000A0A90090000000A00A00000A000000A0A0000A000FFFB9D9F9BDFFFBDB09DFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9F9C9B909C9FDFFFFFFFFFBFF9099A99099F099B90BD9CB09F090D0F0CFACA0000000A0A0A0A00000A0000000A0000000000000F00A000000000000000A00000000000CA9A00CFFFF9D9B9DFFBDB9E90FEFFFFFFFFFFFFFFFFFFBFFF9FF9F9FDB9F9BD0999B9FBFDFFFFFFDF909F0C9ED9F0F9E9CBD90B0DB09E90B0A0A000A00000000000000A0000000000A0000000000000A0F090A0000000A0A0A000A000000A0A000C9CBFFFFBB9CB9F9FFDF9B09FFFFFFFFFFFFFFFFFFFFF9FFBFFFFFBFF9F99B9F09CBDBFFFFFFFFBF90099990E990909900090900D09E9C00000A000000A00A00A00000A0A0000A00000A0A0A00A000B0A000000000000000A0000000A0000A0A0A0CF9FFFDB990F09FBF0900DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9E9CBC9099DBDBDFFFFFFF9F9F9000A990000000090000090B00909A0A00000A00000000000A000000A0000000A0000000000A0E900000000A0A0A0A000A00A0000A00000000FBFFFFF9F9999F9F9909CFFFFFFFFFFFFFFFFFFF9FFFFFDFFFFF9F9F9B9F9A99E9F9FFFFFFFFA90090D00000000000000C90909F9000000000000A0A00000000000000000000A00000A0A0A0000B000A000000000000A0A00A0000000A00A0DFBDDFFFFFF990FFF9CA90ADFFFFFFFFFFFFFFFBF9FFFF9FFBDB9909090D0909CB9F9FFFFFFFF9D9090000000900000C090B00F0D0000000A000A0A000000000A00A0000A00A000000A0000000A00A0000000000000A0A000A000A0A0000000A0EDBFFFFFFFFB9090B9900DBFFFFFFFFFFFFFBF9FFB999B0090000000009009090D0FFFFFFFF9FB090090900000000909E909090B9B0000000A00000A0A000000E90E0A00000000A000A0A0A00000DA0000000000A0000A0E0F00000000000000FFDFFFFFFBF9E990000900DFFFFFFFFFFFFFDFF9FDBE9DBD0900000000090B090B99FDFFFFFF9F9E900009E909ADBCB9090090D0C090000000A0A000000000000A000CA0000000000000000A0000A00000000000000A000000A0A00000000000E9F9FFFFB090900909000D0FFFFFFFFFFFFFBFFFFBD9FBDBFBD0900B00BC909099CFBFFFFFFFF99909090009CBC90900909BCB09B900000000000A0A00000A0A0C0A0A00A0A0000A00A0A0000A0000000000000000000A0A0A0000000000000ADF9FDBFB0D09009000009AFFFFFFFFFFFFFFFF9F9FFB9CFFDFFFB9D0D9090909E9FBDFBFFFDB0F0F9A90090009090909CAC00909C00000000A00A0000000000C00A0000000000A00000000A0000AF00000000000000000000000000000000000FBDFFFD99000900000000CDFFFFFFFFFFFFFFFFFFFF9F999F99FDFB9A909090F9DBDBFDF9FBFDB90D90090909009ACB0999990DA0900000000A000A0000A0000A000000A0000000000A0A00A0A00A000000000000000000A00000000000000000FB9DBF099900009000009AFFFFFFFFFFFFFFFFFF9FFBF9A9F0B09C990090F99BF9E9FBFF9F99FF9ADB90009090990DBCBCADB0900900000000A0000A00000A00A0A0A000A0A000A0000000000A0F00000000000000000000000000000000000F9DBF999E009A90000909ADFFFFFFFFFFFFFFFFFFFF9FFFDF9F9F9B09DBCB9AD09F9F9F9FF0FF09F990DA90000000909909900900000000000000A000000A0000C000000000000000A0A0A000000000000000000000A00000000000000000000E9BD9C9E99F9900000000CDFFFFFFFFFFFFFFFFDFFFFFDBFBF9F9FDBDA9990D09F0B0F9FF9FF9FF9F0F990900000000000000900009000000000000A00A000ACA0A0A00A000000000000000A00A0A00000000000000000000000000000000000DF9E9BDBDF9E9900000009AFFFFFFFFFFFFFFFFBFBDFFFFDFDFBDA909000090F90D9DBC9FFF9FF9E9F9F0DAD0000000000000000CB0000000000000000000000000000000A0A0A00A00A0A00A0CAB00000A0000000000000000000000A0000000E9990DFBF990009000000D9FFFFFFFFFFFFFFFFDFADBDFBB090090009090DA9E90F0FBF9FDFBDF9FDADB09099A90000000000090990000000000000000A0A0A0A0A000000000000000000000000CA00000000000000000000000000000000000FBDEFFBD90090000000000FFFFFFFFFFFFFFFFFF9DBDA9D090090090000009D9FF9FDFDFFBFDFBFFBDBFDBDAD09C900009000C09C0000000000000000A00000000000A0000A0A000A0A00A0A0A0A0000000000000000A00000000000000000000999990909000000000090FCFFFFFFFFFFFFFFFFFB909009E09C0F0BC9E9FFFFF9FFFFBFDFDBFDFBDBD0BF0F9FDB0D0F9E0909B0A900000000000000000000000B00000A0A0000000000A0000009E00A000000000A000000000000000000000000000090000000000000009FFFFFFFFFFFFFFFFFFFFDF9F99DBBD9FDBDBDF9F9FFDFFFDBFBFFBFDFFFFFFDBDF0BC9A9009D0F00C90000000000000000000A00A000A000000A0A0A000A000A0A00A90000A0A000A000000000000000A00000000000000000000000000000009FFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFBFF9FFFFFFDFFBFDF9F9FDADF9BD99F90B009090900000000000000000000000A000A9A00000000A00A0000000EA0A0000000A0000A0A000000000000009000000000000000000090000000DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFDFDBFFDFFBFFFFFBDB9C9A9E90C9090000000000000000000000000A00000A0000A0A0A0000000A0A000B0000A0000A000A000000000000A000000000000000000000000000000909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFDFF9FDBDBD09BD0900B090009000000000000000000000000A0A0000A00000000000A00000A0E00A00A0A000000000000000A0000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FFDFFFFFFFFBDB09F09090909000B000900000000000000000000A0009A0A000A0A0A0000000A000009A00000000A0A00A0A00000000B00000000900000000000000000000000009CBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFBFF9FFF9DB09909A0C90900090000000000000000000000000A00000A00000000A00000000000E000A00A0A00000000000000A00000000000000000000000000000000000909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFF9FFDFDFFFF99B0909E909DB9000900900000000000000000000000A00A0A000A0A0A00000A00000000B00000000000A000000A0A0000000000000009000000000000000000000000BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFDFB9F0D9F990DA900090C0900900000000000000000000000000000A000000A0000000000000A0000A0A0A000A0A000009A0B000000000000000000000000000000000090D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFDFFFBF9D099B09A909D099009A900000000000000000000000000A00A0A00A00A0000A00000A00A0F000A0000000000000ACA000000000000000000000000000000000000090C90AD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFBFFDFFBB900090D09A99E90009009000000000000000000000000000000A00A000A00000A00000000A000000000A0000000090A0A00000000D000900000000000000000000009A9DBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFBFDFFBF9D90DB9DB90BC9A90090909000000000000000000000000A0A00A000A000A0000A0000000E0F0000A0A0A00000A000A0A0900000009000900000000900000000000900909DA9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFDFFFBFDF9A0DB9CB900D9909090000000000000000000000000000000000000A00A0000A000000A0A90AB00000000000A000A00000A09009000090000009000000000000000009E9E9DEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFFB99DBC9BDA9990A90000909000000000000000000000000000A00A0A0A0000000000A000000ACA0A000000000000000A0A00A00000000000909000000000000000000C0909A99DADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBF00BDBF09900F99090900009000000000000000000000000A000000C000A00A00A0000000A00B0000A0A0A00A00A00000000000000000090000000000000000000900900F0D9EFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FFFFFF99D9F09F9CB909AD0909090000000000000000000000000000A0000A0AE9000000CA00A00000A000000000000000000B0A0A00009000000000000000009000000000DAD9090FBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBDBF99E9E99F9A990F09090000000000000000000000000000000A00000E0CF000A09E0B00000A00AF0000000000000000A000900090000000000000900000000090000000900B0F0DEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF9F099BDA9C90909009A09090000000000000000000000000090A00A00BE0FA0C0E0E09A00000000A00000000000A0A00A00A00A00000000090090000000000000000000B09C90F9FBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBDFF9B0D0BDB9BDA9099090000000000000000000000000000000C0F000000E0DA9ACBCA00A000000F0000A00A00000000A00A00A00900000090000000000000000900000D09A90D0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBDF9C9F909C909C9AC909090000000000000000000000000000ACA0A0A0F0EA000A0A9A000A0A00A00000000000A00A000A09A09000900000009000900000000000000000C000FBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFDBDFB0B9ADBDB9B909090000000000000000000000000000000CACBE090C00A9000A0000000A0000A900A000000000000A0000ACA00000090009000000000000000000090090909C9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBD90D909090DA90900909000000000000000000000000000A9E0FCE0B0ACA0A00000A0A0000A00EA000A0A0A000A0000000090A90000090C00000000000000000090000000CB0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDBDFBF9ADBCB9909CB09000000000000000000000000000000000A0A9AECB000C00A000000A000000B0000000000000000000A0A000000000090900000000000000000000000900DAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBFBDF9F90999CA9099090900000000000000000000000000000A090CEE9A00A0A0A000A0A090A090A000A0A0000000000000000000000000000000000000900000000000009000DAFDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFDFDF0F90DBC909DA90000000900000000000000000000000000C0ACAA9A0A00AC00000000C0A90A00E000000A000A000000000000A00000000000000900000000009009090000009DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFBF9FBDB909A900900900000000000000000000000000000CA0A000000000A00A9A09A00A9E9A00A0B00000000000000000000A0000000000000900000000000000000000009090CADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBDBDFBFDBDF0F909B00900090000000000000000000000000000CE9A00BCA0A00A0C0CA00000A0E9E900CA0000000A0000000A00000000000000090000000000000000009000900000BDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFDFFFFBD9BDB09909C090009000000090000000000000000000009A0AC0A000000A00A0ACACA900EDA9A0AA000A00E090A0000000A000A00000000000000000000000900000090000090D0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBDFAF0F9F0B0090090000000000000000000000000000000A0C09A0A0A90A00A0AD0B000ACB0A0090B0000000AA000A000000000000000000009000000000000000000000090000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFF9FFFDB9D99909D90909009000000000000900000000000000000CA0E000000A00A00000AC9A090E9C9A0ACA0000A000E9000000000000A0090000000900000000000000900000000900909EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFBDBFFFBFF9F090B00000000000090090000009000000000000900B0A90A000A90A0A000AC0A000A00090B0000000AC0A000000000A00000A0000090C090909000000000000000000090DEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FF9E9F09A99AD09009000090090000000000000000000000900E0C00A00E0CA000000A00B00E0E9A0A000A0000AC0A00A000A00900A000090000000BC90C000909000000000090A90ADBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBDBDFF9F9F9DBD9090909000900000000000000000000000000000AC90A9AC0B00A000A00A09AC0ADADA0000E000A0000A9A000A900A0A900000000000090900909000000000000000909C90DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFDFFFFBDBF9F9A909CB0900009000000000900900000000000000009C9A0E0000ACAE09A00009CA00ACACA0E9A0B00000A00C00A0C0A00000A0A0000900000000000000000000000000000C0090BC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FBDBDBE9F9F9B090090900000000090000000900000000000000000009A000009E00E09A00CAC0E0BCB0000E0A0A00CA0A000A000A0A0000000000000C09000000900000000000090090B0C9FFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBCBD99090909009000009090009C0900000000000000000090B0A0A000B0E0E0B000A0CA90B0A9CA00ACBA00C000A00000000A0000000000000000090CA90000009000000000000000C0B9E9FFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFF9FDB0BDB909A9090090900090000000000B009090000000000000000000000A0000B0000FAD0B0CAC00CA0A0CA09E0ADA000A9A0A00000000A00A90000900009000000000000000000000009090C9F9FFDFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFBF9F9090909000090000900909000909000DA9CB0000000000009C900A0A0C0A0E00B0E0CA00E00ADA0000A90AA900A00AC000000A000A0000000909000000090909000000000000000090000090DBDBFFFFFFFFFFFFFFFFFFFFFFFFFDBFFBDBD9F9F90B00090900090000000009000090009009009000000000000A00C0A9AC00E0000FADAE0ED0ADA9A90A00E0A000A00A0A00A00B00000000CA00000000000000090000000000000000000900BCBDF9FBFDFFFFFFFFFFFFFFBFBDFBFDADBCFA9909D09900000900000090909000000000000009000000000090B00E0FCACB0F0F0BE00E09A0AECAAC0CACA0B000A00000000000E00000000A099E90090000000000000000000000000D0090A9C9BCBFFFFFFFFFFFFFFFFFFFDFFFBFDBF9F999DAD9A900090000000909000000000900900900009000000090E90CE0FA0A90E0E0E00CE90E00EDADC0EA0900E0000000A00000A000A00000090C09E9000000090C900900000000000000900C90BC9F0D9F9F9FBFFFFBFFBDFBF9F9F9BD9F0BCB09B090090000000000000900000000000000000009000090090A0A9EEDEDEA9E0F0E9A0E00AC0ACAAE90E0A09A0000A000000000A000000000A9EC90F00090000000000000000000000000000090099AD0FBFDF9F0FDB9FB0DBF9E9F9B099990900909009000000000090000000090090900000000900000009C00E0AEBA9CA9E0F0E0B0A9CACACCDAEC0AC0E0000000000000000000000A000009E900D000900900000000000000090090909C0BD0AD0BD09A9E9F9BCB9CB9099990009000000900000000000000000000000000000000000000000090090B09AC0FCBCCEF0CA0E00E00CA00ACAAAC0ABC0A9A000000000000A000000A900A0A9E900F909000000900000000000000000000009000909009AD9909009009009000000900900900090090000090000000000000900009000000000900000A9C0E09A0ACEAF0AADEDAF000AC0ECCACC0E0C0ACA000000000000000000000009000000909E90D0090009000000000090000000090090900009090009009090090090009000000000000000000000000000000009000090000000000000909C9CBCBCA0ECBCF0E9CACAC0A0F00E0BAC0AE0E0E00F0A00000000000000A00000A0000A090009E9A9A090000000000000000000000000000090000090009000000000009000000000000000000000000000000009000090E9000900000009000B09CACB090ACAEFEADEBEBCA00E0ECCAE0C9A0A0E0A0000000000000000000A0B09A0000A09C090D0D9CA909000000000000000000009009000900900900009090090000000000000000000000000000000000000000900909A9CA00900CA90D0DADEBCA0E9EEDE9EACE00E9CE0E0A0C0EA0C0C000A000000000000000000000000000000000B0DA9A009C00090000000000000000000000000000000000900000000000000000000000000000000000000000000090009000009090009090B09A0E00F0D0E0FAFEFDEB0F00E0ADACE0AC0CA0A0A0F00000000000000000A0900A00A00A0E90DA0D0D9F09AD000900000000000000000000090090009000000000000000090000000000000000000000000009009009CB000090090D090B0D090C09EFAEAE0ECEEDAEBCE00E0ACACA0E00A00000000A00000000000000A000A00000009000A00DB0F0090C9A900C09000000000000090000000000900090090000000000000000000900000000000009000000000900909090000009AD090B0E9A000EDADAF0EFAFFCEBCACADE0CACACBC0ACA0000F000000000000000000A0000000A0A0A9CB00D0DB0F90C0DA900090900000000000090000000000000000000000000000000000000900000000000000000090C9A0000000000B090B0D0D0000EEDAFECAEBCFEEFFE9E0CA0ECAC0AC0AC000A000000000000000000000000000A0000000A00DBCBCD0009B090009A0000000000000000000000000900900000000000000900000000009009000000000900F0090909000000B090E9C9A9A90ADADAEE0F0ECEFEFFACAC0E0ECA0E0E0E0A0A0000A00000000000000A00000A000000A00A0000009CB0F9D0C909C90D9000000900009000000900900000000000000900900000900000000000909000000009009A90000000D09C099A90D00A00ACACE9EACFAFEFFEFFA9E0E0A0DA00000C0000009A0000000000000000000000000000000A9A0E9AD90E9B0F090DA0DA09000000000900000000000909C0090090C000009C00009000900900000000000D0090D0900090B00009BC0DADAD00000E0F0E0E0ECAFEFFEFCA0E0E9E0CACA0A0A00A00E00000000000000000A00000000000000000090DADB9E0D0DAFA9DA99000000009000900000000900090900000009C9000B0000090000000000090900A090B000090C0090B9009B090E0A0CA09E0E0E9E0EFEFFEFE9E00E0E00A0000C0000000000000000000000000000000000000000A0A0ACAD09C9DB0F9C9DA9D000900009009000000090C00C909A0090909000090009A09C000009090900000909AD0900B00090000CB9F09CF009E90CEACAF0E0FECFFEFE9E00E0000E00A00A00AC0A0B000000000000000A00000000000000A000000090BCB0F0D9E9B09CBCB00900000F090090000009A90A0D0900000A09C090D090009009000000000000D09000900090090DB9C909CA0F0E0E0B0CBC0E0E0FEEFFFFEBCA0A0E0000C0000000000E000A00000000A000A0A000A0000000000A0B0A0009C90F090C9E90090D000000009C90C0900900009C909E9090D090900000C9000000009000090090B0090009090900B0DBB0BC9CACADA9E0E0EACADACADEFEFFEDAC0C00A0A00A00A00A000B0A0000000000000000000000000000000000000E0B0F90F0F9090C9CB090900D09A9A90900000900C0B0090F0909E9E9D0B090A90900900090900F090DB090F000A09F0F0D0D090ACBCACE0F0F0CBCACAEEFEFFEDA0A0A000000000A00C00A0A000000A0000A00A00A00A0000000000A0ADA0B0900D00F9F9CBCB9A909AC009A0C9C900090090009090C9CF0D0AD0909A0090C90CA000009E9E0909F090009009C9DB099B09A9A09E0E0E9E0E0EAC0E0EDEFFEFFEAD0C00AC00E00C000A00C0F0000A000A00000000000000000000000000000A0EB0BD0C9A909D0D09C90900090B0F9B0090C090000909A99AD9090F099D0A9009090F0D0909F9F00B0090009A90BC9E9CB090CAC0ACBCACBCAD0EACBCAFEFFEFBC0A0A000A000A0AC00A0A00A0A0000000A0A0000A0A0B0A00A0A0000A0A0A000C9CB9BCDE9E0B0DA9CB09C9AD0D0C9D0A990090900F0D0E90F0F090E0090090090090BCBD090990090A9090DBD0B90F9CBCB09ACF0EACACACAC00E0ACAFEFFEFEF0C0CA000A0000A00C000F00000A0A0A00000A000000000000000A00000D0F0B0A0D0B99F99C9AD0A90CB0D09A9BCBBD00B0C9E9F09A909E909DAD99009000900B9C990B9E9A0D909D0FBDB0A9D0F9E0DA0CACA0E0CBCADACADA0ACEDEFFEFF00A0A000E00CA0000A000AA000A000900000A00000A00A00A00000000BCA0A0AC00F0BDADE9E9AD9A9D090D0B00DCB9C90F0D9E90090D09E9DBDA9900AD090F009C0B9AD9C9ADDBADB0F9C90D9F0BCBCBAC9EAD0ECBACA0E0A0A0C0CAEFFEFFE9E0C00A000A000CA000A009A00000A000A000000A00A00000000A00A000DA9000B00E9ADB9FBD9A0D00BCB090D0B0CF9AD99A09F9BC900090A0BDE9F990F090DB09BCBDA0BD99AD90DB90B0F0F0F90DA0DAE0CAF0ACCACA00D0CA0A0CFEFFFEBE0A0E0C0A0000A000A0C00E00000000A000A00A00090000000000000ACAC0E9A0CA900F0E9C9BC990F909DADA09C9B0F9AC9DF09C9ADB09C99C099A9E990DA90DBC99C9D90BCB9ADB0DA9DB9F9F0FA0FE0CAF0CAC0A000DA0A00000A0EFEFFFEDAC00A000CA0000AC000A09A0000000000000A00A0A0A000000A00A9009A90000000A00090B0CB0E900C0E909CA90C90D99E90F0BD9ADBC9A090009C9000B9CBBC9BCB0BCBDB0D9BCB99CB0E9E0F09E00FACCAAC0BCACA00000A00C0E9EFFEFFADA0E00A0A00E00000A000A0000A00A0A0A00000000000000A090A0000A0A0A0A0A0009A0A00B0D99CB909C9E99009ADA9E9E909D0AD9C9B0D09E900B0909009C9BCB9DF9BCBDBEDBDBCB0ADACBC9EB0EAC0A0D0AC09000ACA000A0ACEFEFFFACAC000AC000000CA0AC0A0E00000000C0000A000A000000000CA0900A0000090000A0A000000000CA90AD0B09A0D0C909C909C90AD9B0B9C90B00DBD09A9CB00B0F90FA9EDBDA99A9A9A9ADA0F0BAC0E9C0BC0AE0A0A0E00000AC00CBEFFFFEFF0ACA0000E0A0A000000009A0000A0A9A00000A000A0E9000000E0A000000A0A0000000A000A00A90C900D0D0D09A909A9CB09E900C09CA909090009AD9009D00D0FD9F9BCB9DB0DB0DA0F0F0ADCBAF0E0E0AC009C00000A00C00A00CEEFEFFE9E900E0A000C00A0A00A00E00A00C90000A00000000000A00A0B090000A000000A00A0A00A00000CA90C9A9A90BC90F0D0BD0F90F9B9090DAD0090DADB0990B9DBF9AF0F9BDA9ADA0FA9F0B0F9ABC0CADA00CB0E0A0A0A000A0A000ACAFFFFEFE0CA00000A0A000C0CA0CE90000A0A00A00000000000B000000C0A00A000A0A00000000000000A0A909A90DC9C00BC990AD0BD0F90C0F0DA90ADE9099CBFCBC9E9CBD9FDADA90F0BDB0FA9EDA0EC0EACA0F0A0000000C00E000000E0EFFFEFFEB0ACA0ACA0000A0A0A0FE0A9000090A0000A000000A00A000A9A000000000000A00A0A90A00000D0CE09C9A9A90900CADD9EDAD0F9BD0F0DE9D09E9CA9C9BDBF9FF9EF0BDB9EB0BCBEBCBE9ACF0AE09AC0AC0ACA0E0A0A000A0CA000CEEFFFFFCE00C0000C0AC0C0ECE0FEEA0A0A0000000000000000000000009A0000000000000090E00A00A0A0A9E0AD0E90F090900ADBCBFBDADAD9F0DA9F0F9FDB0F0F09E9BF99FDACB9E9EB0BCBCADA0EC90E00BC0B00000000000A00A00A0A0FEFFEFCBDA0A0A00A00ACAE9EFEEFB000900A00A0000A00000B0A00000A000A00A00A000000AC0BC90A0000F0AD0A090F0DADCFF90DBC9CAD9F9E9FBDF0BCF0BCF990DF9F090F0ADBE0BA0FADA09E0CB0AAC9AC0A0C0A0A00ACA0000C0000C0EEFFFFFBEACAC0C0A0CACACFEFEFFFC00A0A0000000A000A00A00000A0A0000000000000000AC0BE0A00000A00F0A900E0CBCBA909E9E90B99A9EBDBC9A9DBDBDF99ADB9A909E9ADB00B0DB090A9E0EB0E9C0A00A000A0000E0000CA0A00A00ACFEFEFFEF0900A0ACEBCFEFFEFFFFEBE000000000A0000000000000000090A009000000A0A009AC090A00A00A0000CA009A0B0D0F0909B90DADB9DADBF9CBCBCB9FFDBCBDADA9ADACEBCBACB0ADA0B0CB00A90E00DA00C0A00000A0000A0CA0CAEFFFFFF00E0E0ECBCEEFEFEFEFEFF0B0B0A00A0000A0A0DA0A000000000000A0A000000000000B0A000009000A0B009A0000A000A0E00C90900909E9CBF9BDBDA09EFBCB0FBCB09A9CBC9A0F00F0CB0CB00E00B000A0A00A00A00A000C0000ACFEFFFEFFE0E9E9EEFFEFFFFFFFFEFBC000000000A00900A0000A000000A00900000A00090A0A0C000A0BCA00B0000A000A0000B09090B0A0009E0B09B09E9E9A9FA9ADBCFBCBCBE9EFEBE9EBFFBFBFFBE9A90AC0A0C0000C0AC00C0A0A0A00CBCFFFFFFACBCEEEFFEFFFEFEFFEFFFE0A0A0A00A0000A0BC0B0000000A000CA0000000A0A00C00A0A9C0000CAC0CB0000000A0A000A0A0090A9A09C0E00F0B0BCB09BCBEFBFBFBF9EFADADBFFFFFFFFFFB9A0A00A000A0A0A000A0A000000CA0EEFEFFEFEFEEFFFFEFEFEFFFFEFFEFB00090000000A0000A000000000000B000A000000000B0A09000A0A0A09A9A0E9A00000090A090000A00000A0B0BCADADABCBACBFBFFFFFFBFBDFEFEFFFFFFFFFFFFF90CA90CA000C000A0000A0AC0A00E0FFFEFFFFEFFEFEFFFFFFFFEFFFFFFCB0A0A9A00A00000000A0A00A00A0000B009A0000000009A0A0000D0DAC0E900009A09A00090A00B00A0A090E0F0B0B0BCB009ADFFFFFFFFFFFAFCBFFFFFFFFFFFFFBFA90A000B0A0A0C00E00C00A000E0EEFFFFFFEFEFFFFEFFEFFEFFFEFEFFF0A000000B00A0A00A9000000000CACA00A000A00A0A0000000A0A0AA0B000E9A0000000A0A09000009090E09A0ADAF0FB0B9EBAFFFFFFFFFFFFFFEFFFFFFFFFFFFFF9A0AC0B0C00000A0A00A0A000E0BCEFEFFFFFFFFFEFFFFEFFEFFFEFFFEBA009A000A0000000000A000A0000A0B0CADA000000900A000B0090C9C90A9A9000A00A090090A0000A0E0A90AC9F0F0BBCBDABDFFBFFFFFFBFFFFAFFFFFFFFFFFFFFBA9C90A00A00A0A00C0A000C0E0ECEFFFFFFEFEFEFFFEFFFFFFFFEBFACBCF0A000A0000A0000A0000A0000A0D0CA900DA0000000000A000ACA0A0A0000A0A90090A0BCA00A0A000090A909A0B0BE9BEBDAFBFFFFFBFFFFBFEF0F9FBFFFFFFFFFF9A0A00E00A00C000A00CACAF0FEFFFEFFFFFFFFFFEFFFEFEFEFAFCCFACAA900A000A0000A0000B00000A000A0900A000B000A0A000000A0900000B00000C0A00000009E090000B0AD0A0A9CAD0BE9FBFF9E9FBFBFBFBFFFFFFAFBFBFFFFFFFFBE900E90A00E0A0E00E0ACBCEEFFEFFFFFFFFFFFEFFFEFFFFEFADABA0000F0A0000000A000000000000B000A00A0A90A000A0000000A0A9CA0B0B000A0A00A00A00B0A009A0A0A0CB0A9000A9ABDBFFFBFBFBFBFFFFBFBFFEFECBCBFFFFFFFFFB9A0B0A00DA000000E9ECFEFFFEFFFEFFFFFFFEFFFEFFFEAF0BCAC0C0E0AA0000A0A0000000A0A00A0000000000000009009000A0B00000A000000A00900A90909000900A000900B09000A900FDAFBFBFBFFFFFFBFBFFFFEFF0BFBFFFFFFFFFFBCB0C00CA0090E9EE9EEFEFEFEFFEFFFEFFFFFFFBEFFECAF00E000A0A00CF00A0000A000A00000000ACA0B00A000000A00A0000000A9A0A9A9A0A000ACA900A0A0A0A0A90A9A0A000A9A900B9ABFFFFFFFBFFBFBFBFBFBFFFEFDAFFBFFFFFFFFA900A0A90AE0E0E0FEFFFFFFFFFFFEFFFFFFFFEFEFACABC0EA0E0AC0CACA0B000A0000A0000009000090000000A00A0000009A000000000000000A90000E00000009000A0000090A0900E9E0E9FBFFBFBFFBFFFFFFFFFFFFFBEBF0FFFFFFFFFFBF0B0D0AC90E9EFFEFEFEFFEFFEFFFFFFFFFFFFEF0FAC0A00C00C0ACACACF0A0A0A0A00000A0A0A0A0A0A0A0A0000000A0A0A000A0A0A0A0A0A0B0A0B0B0B0B0B0B0A9A0B0A9A0A90A0F9BB9BFFFFFFFFFFFFBFBFBFBFBFFEFFCBFBFFFFFFFFFF0B0E0ADAEEFEFEFFFFFFFFFFEFFEFEFFFFFFFE9EE0E0E0E0A0E0E0E0ECAA00000000000000000000000000000000000000000000000000000000000000000000000000000000000A9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFBFFFFFFFFFFB9ACBCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE0E0E0E0E0E0E0E0E0A000000000000000000000010500000000000070AD05FE,'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.',5,'http://accweb/emmployees/davolio.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(8,'Callahan','Laura','Inside Sales Coordinator','Ms.','01/09/1958','03/05/1994','4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D16540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00900000000000009090FB0000900000090000000909BFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0009C90C0F9E9BE000090009000D09009009000000000000000B0900000000900000FF009CD00000009000090900000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B0D0900909E9FC9000900900FBFA90000000090000909000000D00B0000000000009000009B00000000090900000909BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0900B00009E9E09000900F9DFFFF090009000090000090090B09090000000000009F00000F0000009000009000000BFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AC90009009090C9000099E00D0FFFE900000000090009000F000000000000000009E90090F00000090090900009C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00900000000900900009F00090909ED009090900000090090000090000000000009E0009F0000000000000909E90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFFFFFFFFFF90D00909090909000900BC90900009BDA90000000000BEFFE00000000000000000090F09A0009000090000900090BFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFCBBF00000000000090009FE00000000FFC000900909DFBD0B0000000000000000000099ED00009000090009F00009BFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFC9F000000909000000099E00000090B0090090000BFC00D00000000909A00000000009000000000000900BF009ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFBFFFFFFFFFFF9E9FF90000009090090009BD0B0909C900000090900900B00000000000900000000000009000090000000900009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFFFFFFFF09F0009000900000000000FBC9000A00909000009F000F0000000090000900000000000000000000900009F009EFBFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFEFFFFF0F009000000900000000090DAFDBD0900009009FE000900000000009000900000000000000000000009090FC9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFBDFBFFFFFBFFFFFFF0000000000000000009000090000000000000090000F000000000000000900000000000000000000000090009FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFBFFFFFFFFFFFF090909090090000000000009000900090000000000B0090000000009000A0000000000000000F00009000900BFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBFFBFDFFFDFBFFBFFFF00000000000000009090090000900000009BF00990F00000000090000909000000000000000900F9E0009009FDFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCBDFFBDBFFFDFFFBFFC000900900000000000000000900090009CFC9FF0EB09090000000900000000000000000009009009A000009BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBFFFEBFFFFDFFFFFD0009009090DBDB00000000000000090FBFFADAD0F90009A00900009090900000000000000F00090D9000000FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBFFFBFDFF9FFFDBFBFFFEF9EB00000000F0FADFBCBC90000090000BCFFCF0F00F0090090900909000000000000000000090000000009009BFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFBFFFFFFFFFFFFBFBFFD000900099A9DF0FFFFBCF000000090BD0B09000B09A90900090A090900000000000000009E00009000009AFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAFFFFFFFFFFF9FBDBFBDFBDFDFBCBA000099FEDFE09F0D0FFBC00000900D0A9C0000F0BDA09A9000900009000000000000000099E000B0090099FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AFDBFFBDBFEFFFFCFBDFAFBCFFDFD00000FFF0F9C009E09CBC00009E9AFD000000F900D009C09009000090900900000000000090000000000BFBFBFBFFFFFFFFFFDFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFDBEF9FFEF9F9F9FBDFADF9FBDBEBFE909009BD009B0F9FE9F0900009C900000000B09F0090B900000900000000000000000000090990000009FFFFFFFFFFFFFFBFFBFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFBFFFFBFF9F099EB9F9FBCBE9FABDBFEFFEFFDFBC00090FE9AFEF9E09F000000000000000000F0900B09000090000009090000009000000000000000009FF9FBFFFDFBFFBDFCBFFFBFFF0FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFFFFBE90FDFADBF9F9FDFCBFDBF9FBFFF00000090DBDFFED00000000000000000000B0B909F090B000000000000000000A90000000000009000BFFFDBFFBFDBDFBFBFDBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFBFFDFBDBE9F9F9B0BDFF0FBEFAFBDBFDFFFFFEFF0009000000909090090000000000000000F9CB00BFC90900900000909009009C0900000000000000099FAFF9FF0FAB0F9FBEF9FFFDBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFBFFDFBFFFFFFFFEFCB0B9FBDF9FDBFFEBFAFFFBDBFF000900090000000000000000000009000F09099E90B00900000000000900909ADA900000000000090BFDB9E90B9D9F9ADBDBFFFBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFBFFFFBFFBFF9FADBDBDBCBCFBAFBBE9F9FFDFBCFFFFFF90000000000000000000000000000000B0A9E099E9C090B090000090009000900000000000000000909BC99BCDBEBFFFFFFFFADFFFFFFFFFFFFFFFFFFBFFFBFFFFFFFFFFFFFFFBFFFBFFCFBFFFFDFBFFDBFFFAF90B9FFDFFDFFFFBFFFFFFFBDAC0000000000000000000000000000000F9090B0090B0009A000000009000C000900000000000000000009AE9BBF9FDBFBFBFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFBFFDFFFDFFBDFBDBFAFDEBFFBCBDEBD9E9FBCBFBFADFFBFFFBFEFF909F0000000000000000000000000090FC909C900909000909009090000B9090C0900000000000000000999E9CBFAFDFDFFFFDBFFFFFFFFFFFFFFFFFFFFBFF9FFFBFFFFFFFFFBFF0FFBFFBFFFEDFBFDFADFBDBDBEF9F0FFF0FDFFBFCFBDEDBDAF009F9F9000000000000000000000000FB09A90A90000900900900009090000A9000000000000000000000B9FBDBDBFBFBFFDBFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFBDFEFBFFBDFADF9FBFBDFBFDBEDAFBCBDAFBF9FFFBF9EDBFFFBFFFF9F000000090000000000000000000000B0F0900900B0900000B009090B00090900000090000000000900099CBCBDBFADFFFFBFFFFFFFFFFFFFFFFFFFFFFDFBFBF9FDFBFFFFFF9FFF9FFBDFBEFF9FEBE9BE9BF9CBFBF9F0FADBCBFFBFFF0FF0F9E0000000000000000000000000000090F09F0A90090000090909E0000000000000900000000000000000000B9BDAF9FFBFBFFFFFFFFFFFFFFFFFFFFFFFFBFFDFFFFBFFDBDFBFF9FBFF0FFBDBDBE9FDFFDBFF0FBF9E9EDBDBFFFDBDFE9FFDBFBC9FA00000000000000000000000000000F90BD9E9009000000000909090909000900000009000000000000090E9BDBF9FFFDF9FBFFFFFFFFFFFFFFFFFFFFFBFFBDFFFFBFFBFCBFFDF0FF9EFADBDBFBB9AF9ADBCBCBDBBEBF09BFAFBDBF0FAD0FBC9D09000000000000000000000009000B090B0909A009000909009A0000000090009000000000000000000099ADADAFBDBFABFFFFFFFFFFFFFFFFFFFFBFDFF9FFB9F9FFFFFBFDABFFBDFB9FBEBDADEFDBEDF0BDBFADF9F0F0F0FDEFF9FBDBF09B0A90000000000000000000000000000F00B0DA9090000000009000090090000000000000000009000000009ADB9BDBCBEDBDFFFFFFFFFFFFFFFFFFFFFFFFBFFE9FEFF9FF9FDBFFCBDAF9FE9F9E9FB9BADB0BDADADBDAFF9F9FFB9B0F9E9F0DBC0900000000000000000000000000000F09CB09AD0B00000000090900900000000009000000090009000000090F9E9FBDBF0BFBFFFFFFFFFFFFFFFFFFFFBFCF9FFDBDBF9FFBFE9FBFBF9EB9F0F9FADEFDBCBCB9F9FABDB0FAF0BDEFF0F9E0B00B9000000000000000000000000000090BE9009090909009000000009009009000000000000000E00009000009B0F9B0FBDBDBDFFBFFFFFFFFFFFFFFFFFFFFBFFBFFFBCBE9FE9FF0DBCBDBDE9FADB9B9BCB9DBCB0F9FDADBDB9F0A90F9ADBC9F000000000000000000000000000000000F90B00F0B0C00900900900900900B09000000900000909000000000000DBC9F9CBF0BFBFFFBFFFFFFFFFFFFFFFFDFFFBFCBDFFFDFB9FB9FBDBFADA9F0DBCFCFCBDAA99ADBE9ADBCBCF099FBBCB099A0900000000000000000000000000000000B0F09B0909B09000000009000009000090000000009000000000900009BA9FADBF09EBDFBFFFFFFFFFFFFFFFFFFFBF9FDBFEBF9FBDFF0FF9E9E9F9F0FB0F9B0BB0F9DADBC9BDBE9F9B9E009C90DA009000000000000000000000000009000000F09BC09A900900900900009A000009B0000000900000909000090F00090DA99ABCB9BEBDFFFFFFFFFFFFFFFFFBFFFFFEBF9BDFF0FBCBFDAF9F9F9ADF09F9ADBC9F09A9A9BADA9DA9E9E9900BCB00900000000000000000000000000000000900F009B09C0B00B0000009000090000009000000000000000090009000009BDAD9DBC9D9FADFBFFFFFFFFFFFFFFFFFDBFDFCFFADBFDFBDBF9FADB0F9A9F0BD9ADBE9F0D0D09DADA9F9B09ACB090090000000000000000000000000000000000000F09A0F099090D0900000090900090090B00000090000000000000900000009A0B0B0BF9FBFFFFBFFFFFFFFFFFFFBFFFBFBF9FBDBF0FBE9FBDBCBDADB0F0BE9F09B0B0B0BDA9BBCBC0F0D90009000000000000000000000000000000000900000B00D990B0009A000009090000900000000000000000000000000000000099B9F9F09ADBFBDBFFFFFFFFFFFFFFFFFFF0FDF0FBCBE9FBD9F0DADBDADB0F9BC9DA9E9E9C9BDA90D0990B909A0000000000000000000000000000000000000000000F09A0A090B00900000000909000000909000000090000000000000000000000909E9DAF9FEFBFFFFFFFFFFFFFFFDBFFFA9F0DBF9FBDBEBFBF0F0B0DB0D0B0B0F9A90B0009CB0F0A9C0B009000000000000000000000000000000000000090000FB09909E9C900900009000000000000009090000000000000000000000000900B090BDBE9BFFFFFFFFFFFFFFFFFFF9FFDFBFBCBDE9E9F9CF9F9F9FADB0F9E9F0D9F099F0B09909D0B00900000000000000000000000000000000000000000000F00009A90B0B000009009000900000000000000000000000000000000000000909A09AD9FF9FBFFFFFFFFFFFFFBEFFF0FADBCBDA9BFBCBB9E9A9E99B0F09B90BAB0BCA09C9ACB0A9090000000000000000000000000000000000000000000000F99E909DA9000900000B0000009009009090009000000000000000000000000009090BDBE9FFFFFFFFFFFFFFFFFF9E9F9DBCB9EBDF0DBFDE9F9F90F0DADBC0F0D0D00990A9090090000000000000000000000000000000900000000009090009BE09A9A0DAD900000900990000000000000900000900000000000000000000000000090B9FBFFFFFFFFFFFFFFFFFFFFBFADB0F9DA9FAD0B9F0DA9F0B90B09B09B0B090AD909A9009000000000000000000000000000000000900000000009000F9F0909B09AB000000900A900000009000000000000000000000000000000000000090BCBCBFBFFFFFFFFFFFFFFBDBDADFADF0B9F0DBF9E9FBADA9F0F9CB0DB0DAD9A9000B000900000000000000000000000000000000090000000000000000F0B0F0000F9C900000090900900000000090900000000000000000000000000000000009B9FDFFFFFFFFFFFFFFFEFEBDB0DB0FAD0BA90FDB0D9BF09B0B99E9ADA90AD09B00090000000000000000000000000000000000000000000900090000B00F90B0B90B0000099AD0000000090900000000090000000000000000000000000000090FFBFFFFFFFFFFFFFFDBDBDB0FB0F9D0F0D9F0B0DBAD0DBCBC0E909090F9000009000000000000000000000000000000000000090900000000000000F909A9090CBC90000000B0909009000000090900000000000000000000000000000000009A9FFFFFFFFFFFFFFFFFBF09F0DB0B0B9B0B0BDBAD0B9A9B09B9BCBCB0000B0900900000000000000000000000000000000000000000000000900000FA9ADA90B9A9A9000090000000000090900000000000000000000000000000000000000009FBFFFFFFFFFFFFFFBDE9FE9B0DBCB0F09C909C9BD0F9C9E9C90909C9B9900090000000000000000000000000000000000009090000000000090000F0009ADA009C900B00009A90090009000000090900900000000000000000000000000000009FFFFFFFFFFFFFFFFFBF09BC9A990D09E9ADA9A9A90B0B9A9ADA9A9AC0009000000000000000000000000000000000000000000000009009000000B09BBD0909A9AC909000090000000009000090000000000000000000000000000000000009BFFFFFFFFFFFFFBEBDBC9BC9AD0E9A9A909B09D0D0BCB9C9AD09C90909A90000000000000000000000000000000000000009000000900000000000F000CBFAD00C9B090A0900000090009A000000900000000000000000000000000000000000BFFFFFFFFFFFDFD9FADBF0B90B990D0D0BC0DA0B0F09CB0F9A9A90F090000000000000000000000000000000000000000000000000000009090000F9A9090B0B0B00F099000000000090090900000090000000000000000000000000000000009FFFFFFFFBD9A9E90D090D0BD0A9A90B099A99C909B090B0D09CB090A9090000000000000000000000000000000000000000000000000000000000F090B0BDBC90090BC009000000000090900000900090000000000000000000000000000009BFFFFFF9FCBFDB9BDB9B0B9C0BD090B0DA090A9A90C9AD90B0B09CB0D0000000000000000000000000000000000000000000000000000009000000B0AF0D0BCB9A90BCB090090000000900A90000000000000000000000000000000000000000BFFFFDFBDBFCB9EDB0FC99CB9900BC90909CB900DA9B090F09C9A90900090000000000000000000000000000000000000000000000009090000090F9090B0F9BC900090F00000000090000909000000000000000000000000000000000000009FFFFFBFFFDBFFFB0FDB9FA90BCB909A90B0900DB090C9E90F0BC90B00B000000000000000000000000000000000000000000000900000000000000FA90BCB0F0BE909A9A9F000000000909000B00090900000000000000000000000000000000BFFFFFDFFFF9FFDFBFE99F9F090CB0DA9CB09A09A9B090B09909A9C900900000000000000000000000000000000000000000000000000900000900F9E0909E9F99AD090DA9090000000000090009000000000000000000000000000000000009BFFFFFBFBDFFF9FBDF9FE9F09E9B090909090900D009A9C9ACB0D0B090000000000000000000000000000000000000000000000000000000090000F09B00A99A9E9B0CB09E900000000000900090000000000000000000000000000000000009FFFFFFFFFFBDBFFFFBFF9FA9F9BC9B0A9A90F09A90F090B90990B09000900000000000000000000000000000000000000000000000090000000009BAC0909ACBE9FCB90A90B09090000000009000909000000000000000000000000000000009FFFFFFFFFFFFFFF9FEDBFDFF0F0BC0D90D0909090090F90CB0E9090E90000000000000000000000000000000000000000000000000000000090900F9B0AD09099A9BCB9C009CA00000000000090000009000000000000000000000000000000BFFFFFFFFFFFFDFFFF9FDAF9FBDF9B9A90B0A9E90B09000B09909E09009000000000000000000000000000000000000000000000000000000000090F0AD90A0B0ADBCB0F9A90B90900000000090009000000000000000000000000000000000BFFFFFFFFFFFFFFBFFBFFBFDBFDA9E9E90F09D0900D00B09090A0909B09A000000000000000000000000000000000000000000000000000000900000B0990A9D009BCB9F00909000000000000009B00000000000000000000000000000000009FFFFFFFFFFFFFFFFDFDF9F9BFCBFDBDB0F909A09A9009090DA0D9A090C09000000000000000000000000000000000000000000000000000000009090F00AC90A9F00BCB09B09E90900090000000009000900000000000000000000000000009BFFFFFFFFFFFFFFFFFBFBFEFDFBDFADBCB00F09B9C90B009A099A09F00900000000000000000000000000000000000000000000000000000000000009AB099A900BD09ADAD0F090000000000000000000000000000000000000000000000000BFFFFFFFFFFFFFFFDBFDEDBDBE9FB9FBCBDBB0F0C0B0909E09000900090A90900000000000000000000000000000000000000000000090000000090900F0A0A09A90A909B9A909A090000000000000009000000000000000000000000000000BFFFFFFFFFFFFFFFBFFDBF9FBDB9EDFBCBDAD0D0B9B0DBC90909A9CB09A090000000000000000000000000000000000000000000000000000009000009BB00909E9E99F0F0E90F09000000000000000000000000000000000000000000000009BFFFFFFFFFFFBDBDFBDAF9FAD9EDB9A9F9E9ADBBDAC9A09A90A09000900D009000000000000000000000000000000000000000000000900009000909A9CF0A0B0009A00B099F00B0000009000000000000000000000000000000000000000009FFFFFFFFFFFFFFFADF9F9E9DA9B0ADBD0F9BDB0DA9BC9B0909090909E0909A000000000000000000000000000000000000000000000000000000000990BB0090B9A09A9CBE09B0D000000090000000000000000000000000000000000000009FFFFFFFFFFFFBDF9F9BE9F9EBDAD9B0DA9AD0BCBBDE9B0DADA9C000B090A0090900000000000000000000000000000000000000000000000000900000AD0F00A00ADA0D0B09BC9DA90000000000000000000009000000000000000000000009BFFFFFFFFFFFFFEBF9F0DB099099A9C9B0D9A9DB0DA9F0DA9090B09000090900000000000000000000000000000000000000000000000000000000000B09BA0009A99090A9CBCB0A90000009090000000000000000000000000000000000000BFFBFFFFFFFFFFDBD0DADB09F0F9AD09BCB9A9CBADB9F09A909E9090090900000900000000000000000000000000000000000000000000000000900090D0BCF0A0A9AA9A09A9A90F900000000000090000000000000000000000000000000009FFFFFFFFFFFFFBFDBFB990F0909C90F09090D0B9DADADFF90F09E9090000A90B000000000000000000000000000000000000000000000000000009000B0B09B009009AD0BC09CB90BD000000000900000000090000000000000000000000000BBFFFBFFFFFFFDFBC90DAD990F90B090BCBCB090E99B9A9DA909A90F09A090000909000000000000000000000000000000000000000000000000000009090F0B00A0A0B0BC9A9A9E9CB000000909000090000000000000000000000000000009FFFFFFFFFFFFFF9DB9F9DBCF99090DAD09090DA990F0F9FADA9AD0B9000900090000000000000000000000000000000000000000000000000000909009ADB00E000090B000B009E9AB900000000009000090090000000000000000000000009FFFDFBFFFFFFDF9FBDFFDBFDBDADA9099A9BC9B0D0B0B9EBDB9C90BCA90900090090000000000000000000000000000000000000000000000000000A0B090009B0000A90BB00DA09BD0E9000000090090000000000000000000000000000000BBFFBFDFFFFFFBFFDFFDBFFDBDBD9DB9009C9A9C9AD09C99FADA9A9099CB009000009000000000000000000000000000000000000000000000000009090F0090BB00A00A000B0A9F00B99A0000000090A0000009000000000000000000000009FFFFFBFBFFFFFFFFFDBC9009090B09CBDB0909A909A9A9ADBDBD0D0BCB0090009000000000000000000000000000000000000000000000000000000090909A090F0A00A9A9A099009F0FAD09000000009090009A00000000000000000000009FFFFF9E9FFFFFFFDBCB09BD9A9AD09E9090DAD090F09C90909BFAB0BC90DB0E90009000900000000000000000000000000000000000000000000000900F00090CBA0000000A09A0E9B0B0909000900009000000000000000000000000000000BFFBF9F9FFFFFFFDBC99FFFFADFF9E909009099ADB09A9ADA9BCF9D090B0B00900000000000000000000000000000000000000000000000000000000009090B09B0B00A00B00B0B09ACBDE9A9E90000000090000909000000000000000000009FBFFDA9BFBFFFBD9BFFFFFFFFFFEFF0F090A900900F0D090909B9EB0F09C90909090009000000000000000000000000000000000000000000000000909A0000000BF0000A0A0000B09B0B9C909A900900000090000000000000000000000000BFFFFBDA9FFFFFD0BFFFFFFFFFFFFFF9BFAD9AD00990B0F0BC9ADBDF90B0B0DA9A009000000000000000000000000000000000000000000000000000090909090900B000A0900A0B0B00F9E90B09C09000000900009900000000000000000009FFBF0F99FFFFF00BFFFFFFFFF9EBFF0BCFDA9F009000909909AD0BEB0F0909A90C90000000000000000000000000000000000000000000000000000000B0000A009AA000000A00000BCB9E9A90C9A90000000000000A0000000000000000009FFFFFF90BF9A9909FFFFFF9F009BDB0F0FBA9CB09AD00909E9A90BDB9D0BDA9090909A900000000000000000000000000000000000000000000000000090009090BA9F0A00A000A0B00B00B09A9B09A000000000900990000000000000000009BFDF990BDFFDF09BFFF9E9E99D000090909C0B0F009A000090DA99ADFA990DA9E9A0000000000000000000000000000000000000000000000000000009A900000009AB00000B00000A90F90F0D09A9D9000000000000E909000000000000000BFFBFE9A9B090900F9F9F9F9E9BD9B0CB090900909009090090090F9B0F00B0909090900900000000000000000000000000000000000000000000000090009009000B0F0000B0000000A9A0B09A9E9E0A9000000000009000000000000000009FFFF0909D09A909B9F9F9F9F9FCB0D99090B09909090000000090B00DFBDBC9ADA9CB00900000000000000000000000000000000000000000000000000090000009BCBB00A000A000A9A9AD09E9F90999C09000009009A90900000000000009FFF90B9F9A9FDFBFFFFFFFFFFFFBFDBF0BDA9CB0A90AD909090909909B90009A9090900900000000000000000000000000000000000000000000000009000000900B0A0A0000A00A00000B0BDA90ADB00A900000000000000000000000000000BFBE9090F9FFBFFFFFFFFFFFBFFDBF09F09DA9BD9E99A09A9A9A9ACB09E9B9AD09A9A09A0000000000000000000000000000000000000000000000090009000009009A9F00000B0000A00A00BCBD9ADBD00B0900009090909000000000000009FDF9900B0FADFFFFFFFFFFBDF9FBCBF09F0BDADA99E9DA9C90D099090B9C0D90B09C90D090900000000000000000000000000000000000000000000000000000009A00AB00A0000A000000B0B9A9ADA9A9009A0000000000000000000000000BFFBBCB099BDBFBFFFFFFBFFFAF9FBD09A0909909F09A99E9A9A90090900B9A0F09A990A90000000000000000000000000000000000000000000000000090000090A0B09F0000A9A0000A0B009ADADA9AD09000000090009090000000000000BFFDBC9909BCBFFFFFFFFFFFDBD9F0D0B9C99ADA9F09AD0F090D09E9B09E9900990D09A09009000000000000000000000000000000000000000000900000000090BC9000AA000000000000000B0DBDB0D09E9E909000000000000000000000099FBFDBF0BC099BDBFBFFFFDFBCA909A9009AC909B0BD0B90B0B0B0990F90B0F9E0B0B0C909A000000000000000000000000000000000000000000000000000900009A9AB0B0A000A000A00B000000BCBADA909A0090000000009000000000000BFFFBDBD9B9A9FADFFFFFFF9F99E09009A99A9B0C9CBD0F0D9C90B0FB0BD0909900909B00C90909000000000000000000000000000000000000000000000000009000A90BF0000A90000000000A9B0BD0B09E909000000000090000000000009FFFFFFFBF09D09FFBDFFFFBE9F099009000090C9B9A9A99B0B9BD9F90D0B9E9A0BDA9009A90000000000000000000000000000000000000000000000000009009ADA90A00B000000A0000A0A00900FF0B0DA90F000000000000000000000009BFFFBFDBD0DBA9BF9FFFFF9FDBE9B00900909009BC0DBD0F09CBC9E90F9BDA909D9009E9090A9000000000000000000000000000000000000000000000009000900900B0FBA0A00B000000000A00A90B9E9A9E90B00000000009090000000000FFFFFFFFBFBD9E99FBFFFFFBFDF9C9BC9B09C9B009B09A90F9BDBFBDB9E90DADB0A9B09A90900900000000000000000000000000000000000000000000000090A90A0B0B0AF00000A000000000009A9CBDAD09AD090000000000000000000009BFFFFFBDFDBE99F0BDBFFFFFFBFFBC9B0DA9A090909F09F90F0F99CBCB9F9B90D9C0D0900F0900090000000909000000000000000000000000000000000009009090B00AB9B0000A0000000A00B0A9A90B9A9E90BC000000000009000000000BFFFFFFFFBFF9FE9BDBFFFFFFFFDBCBD0F09D9F0F09A09E90FBDBEFBDBDA9E9E9A9B9A9A90900B0900009009E9ADA0000000000000000000000000000000000A900AB0A900EA0000900000000000A0B09E9E9F09A900000000000900000000009FFFFFFBFFF9FF9BCBDFFFFFFFFBFDB0B09F0B099009DB9BFBDBF9BDB0F9F9B9F9AD0D09C9009000009000B0909090000000000000000000000000000000090909A9009A9ABF0A0A0A00000000A09000A90BCBCBD09000000000000909000000FFFFFFFFF9FFF9FDBFBFFFFFFFFDFADF9DB0BC9E0D9A9CBD9DBCBFDBDF9E9E9E9C9A9A9A9A9A0900900009C909009B00000000000000000000000000000000900A90ABE0A00B0000A9000000000A0A0B0BC9A9B0AF0000000000000000000009BFFFFFFFFFFFBFBFDBDBFFFFFFFFBDB0F0DBDBB99A09B9EBEBFBF9FE9FBDB9F9B9BDB0D9090900900009009A90B00C90000000000000000000000000000000A909A990B00B0F00009A00A0A0000000900B0BCBCBD00900000000009000000000BFFFFFFFFFBDFFF9FFFFFFFFFFFBDFFDB9A909C9A99FCBDBDF9FDF9BFBC9F9ADE9E90F0BD0B09A00900009090C909B00000000000000000000000000000009009E0A0B00B0AA0A00A0A0909000A9A0A0B0F09A9B0B9E09000000000000000009FFFFFFFFFFFFF9FFFFBFFFFFFFFDFBCB9E9CBCB0D0F0B9F9FBF9FAFFDBDBE9F9B99CB990A9C9000900909A09090F000000000000000000000000000000000090BA90B00B0A0F0000B009AAA0000000000B0A90C9C009A0000000000900000000BFFFFFFFFFBFFFFBFFFFFFFFFFFBDDBDE90B909B0B9BDF9EBDEFBDF9ADBF9F0F0F0BC9E9DA900900000009000B09090000000000000000000000000000009A9AD0A9AA00A00B0A000BAE9000000A000090B9E9A09B90D9000000000000000009FFFFFFFFFFFFFBFFFFFFFFFFFFFFBE9A9F90FBCBD0F9A9F9FBDBFBDFF9F0F9F9F9F9B09A909A90909000009A90BCB00000000000000000000000000000000909A90090B00B0F0000B0B0A0A0A0A000A0A0A09A99AC09A0900000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F9F0BD09909B9CBDADBDBFDFBDBF9F9F09E90BC9F9E9E900A000909009C909000000000000000000000000000000009CADA0B0A000B00A000A0A00000000000000090BBC9E090BCB000000000000000009FFFFFFFFFFFFFFFBFFFFFFFFFFFFBCBD0BD0BDADB0FBDBFFFFDBFBDBF0F9F0BDB0BD9A9090909090900000900000900000000000000000000900000000009A90900A09A000AB000000000000A000A0000A000B09B09090B00000009000000009BFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0BDA0F9A9BCB0DAF9BCBFCBDEBDBFE9F9AD9CBADADA9A9E9000000090B000000000000000000000000000000000009009A0B09A00A0A0F0000000A0A0000A0000A00A9A9F0D009A9C90000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F09DB09D099DBDBDFFBDBFFBDBFDB9F9F9BA9D909B0D09009090000000900000000000000000000000000000000000B00900A00B0009AA000000000009A000A00000000A0B9A9000B0000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBDA09F9A9E9A9ADAF9FFF9FDBFDADFADAD0DB0BDAD9A909A000090000900000000000000000000000000000000009009E0A900A00A9A0B000000A0A00A000A000000B0B9BCAC00090C9000009000000009FFFFFFFFFDBFFBFFFFFFFFFFFFFFDBDA99F0AD0909FDBD9F0B0F0BFCB9FB9DB9FB0BDA9A090F0909000000900B00000000000000000000000000000009009009000A90A0000E00A0A090000000A9000A000A0A0B99090A90A00000000000009BFFFFFFBFFFFFFFFFFFFFFFFFFFFBF909F00990B9FA9ADBEBDBD9BD9BDFBDFADE90F099C9F09090DA90000000900000000000000000000000090000000A09A90A9A900A9A9A0B000000A0000A000A0A00000B0F0ACB0090090900009090000000BFFFFFFFFBDADBDBFFBFFFFFFFFDFFFA9BDADBC09FDBC99DADAF0BE9BDEBDB9BF99F0BB09A9A9A0000000000090000000000000000000000000000000900C0B000A0A000A00F00000A0000A000B0A0000A00BA90B00909000000000000000009FFFFFFFFBCB9B0BC9FDFFFFFFFFFF09D0909099BC9A9B0F0F9D9FD9FCB9DADFC9AD0BD0F0D09C9909000000000000000000000000000000000000000909A9900B00000A900AB0A00B0000A000A0A000A000B000B0DA00A009000009090000009FFFFFFFF9F9F0D99BDAFBFFFFFFFF9F0BCB0BCBC9A9C0F9B0B0A90B0B9FABDA9BDABD0B909A909A0000000000000000000000000000000000000000000090A0B0A00A90A0B0A00A000A0000000090A0000A0A9A9A0D009900000000000000009BFFFFFFFFFFBF9E90B99FDBFFFFF9E90909C909A909B90D0D09909090909DA9DABD09F0CB0D0B0090000000000000000000000000000000009000009099AC9A090B00A0B000F090A00000A00000A9A00009A000A9A0900AC0900900090000000BFFFFFFFFFEDBF9F9CBCBFFFFFFFFDBDB0B90B090DAD0B0B0F0FBCBCBC9A99E9D0F9A9B909A9090000000000000000000000000000000000000000000A09B09A0A00B000A00A9A000000A0000A00A00A00A00A09A90B00990000000900000000FFFFDFFFF9FBCBCBCB99F9FFFFFFFBE909C09C90B090BC9F9BD0090909AD0B9B0B9ADAD0F090CB09000000000000000000000000000000000000000090DA0A090B0A0A9A90AB0000A00A0000090A00000B00009ADAD0C900A000009000000009BFF9BBFF0FBC909099ACBDBFFFFFBD99CB09A9AC9BCBDBBD0F0F9BCB0909ADACBDAD990B090B90000000000000000000000000000000000009000009A9A9009AA00009A0A00FA000000000000A000000A0000A0BA9A9BC9090000000000000009FFFC909FFC0000000990B9BFFFFFADA9090009900909C0FBC900090BCB09099909ADAD09A90009000000000000000000000000000000000000000B0C9A0B0A090B0A000000B0A0A00A0000000A0000000A00000F0F00B0F0900000000000000BFF90090BFF00000000090FDFFFFDFBCB0E99000B090B9F0FE00000090090000090909A9C90DA900000000000000000000000000000000000000090B909A0F9A0A0A9A0B0A0F000000000000A0000000000000A9AA9BD0B09A000090000000009FBCB0009EF0900000090F9BFFFFFBD9099000B9D00900BFF00000000900090B0A9A9A9CB0B0900000000000000000000000000000000000900090900EB09A00B009A9A0000B00000A00000000000000A000A09E090F0ADAD000000000000000FFFFDA9009000000099A9B0FFFFFBC9A090009000BD009FFC0900000000000909D090D9A909000900000000000000000000000000000000000900DAC9B00A9AB0B0A0A9A000F0A0A000A0000000000000A0000ABFAB0F909A9000090900000099FFFBDA9000000900009C9FBFFFFFFE9DA0F009090A9F000F000000000009A0900B09A0900009000000000000000000000000000000000900009A09B00BE9A00A000B000A00B00000A000000000000000000000009AB0F09C00900000A900000ADBFFFFBD0B0900909C9B09FFFFFFBDA9900900D090090900000000009000900B09E99CA909000000000000000000000000000000000000090009000B00B09A90BA00A090A0F000000000000000000A00000000BAA90F9E9A900000009000009BFFFBFDFFBDF0F0A99A9CBFFFFFF9FF9CB09A90A90090F0F090009000090909090C90A900000000000000000000000000000000000000000000900BD0B0A0A9A0000A90A000A00A00000000000000000A00000A0090A9A090090000000000000BFFFFFFBE9E9B9F9DA9DBBDFBFFFFE9CB0C90099009000909CA9900D99CB09AD0B90B909000000000000000000000000000000000000009000000090A0B0A9ACAB0A90A0000B0000000000000000000000000009A0A9ADBE90000090009000090F9FFBFDF9F9E90B099A9FFFFFBFF9FBC9B00900090B0909A99CA990A0909C9A9CA90C00900000000000000000000000000000000000000000090B0A9A0B00AB0000A000000F0000A0000000000000000000000A9A00009009090000000000009FAF9E9ADA0909009AC9E9BFFFFFBFCBB0C9F0F0B09090BC90B99CB990B0B0090900B0900000000000000000000000000000000000000000000000D0A9A0B000B00A9A0A000B0A000000000000000000000000A0A09A90ADB00009B000090009BFF9E9C9090000090D9B9FFFFFDFFFBD0F9A090900000909A9C9A900E90D09F09A9D09A900000000000000000000000000000000000000900009090A9A090A9A00A00000000A000A00000000000000000000000900A0009000909000000000009FFFF9B00000909ADBAFFDFBFFBFFADAF90090000090909AD09ADBCB99E9A000090A00000000000000000000000000000000000000000000000000A9A0B0A9A00A00A0A0000F0A000000000000000000000000A0A000B0009000090900090900BFFFFFFFBDB9FBFFBDF9FBFF9FFFDFBDFE990090900000090BC90090009090909E090909000000000000000000000000000000000000000000909ADA900B000A00000000000B00A000000000000000000000000B0A9000F00B9000A0900000909FFFFFFFFFFFFFF9FBFFFFFFFFFFBFFBF9EBD0A000000000009A9A9CB000000B0900000000000000000000000000000000000000000000000000090A0A9EBA09A0A00000000F00000A00000000000000000000B0000A090090C0909000000000BFFFFFFFFFFFFFFFFFFFBFFFFBFFFFFDFFFDAF99090900900900D00900909090900909090000000000000000000000000000000000000000009A90A9E9A900AA000000A0000A0A00000000000000000000000A000A00000B009B000090000009FFFFFFFFFFFFFFBFFFFFFFFFFFFFFFBFFFBFFFDEF0B009009009009009CB09000000000000000000000000000000000000000000000000000000009A9A0A0A900A000000000F00A00000000000000000000000BA900A00900B00F090009000909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFBDBCBDA09A09A09A90B00000000000090000000000000000000000000000000000000900009090FA00090000A00000000000B00000000000000000000000000000A900009009009E9A0009009FFFFFFFFFFFFFFFFFFFFFFFBFFFBFFFFFFFFFBFFFFBCBDBC9F0900009090000000000000000000000000000000000000000000000000000900A0900B0A00A00000000000000E00000000000000000000000000B0A00A0000090B00909909009ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADFF9E9B0000090900000900000000000000000000000000000000000000000000000090090DA0B0A90A000000000000000B0A00000000000000000000000A0A000000A9B0090B0BCA00A909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFDFFB9EBD0090900000000000000000000000000000000000000000000000000000000090000B09A0090A0000000000000000F000000000000000000000000000000000000099AD0D09090900BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFBF9EF9009009090900000000000000000000000000000000000000000000000000009000090DA00B0A000000000000000000A0000000000000000000000000000000000000AC9A90B000009C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFF9DE900900A090000009000000000000000000000000000000000000000000009000090A909A90B0A00000000000000000F00000000000000000000000000000000000090909CB0D0B0009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFDAF9EB900DA90900000090000000000000000000000000000000000000000000000000000090BC90A00000000000000000000B000000000000000000000000000000000000A90B0B09A90090B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBF9F9000B0900090009000000000000000000000000000000000000000000000090000090A9AD00B000000000000000000000E00000000000000000000000000000000000090090DAD0900009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDFDBCB090090909000000000900000000000000000000000000000000000000000000000009C90BA0A00000000000000000000B00000000000000000000000000000000000009ADA90B00F009A9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0BCBD0090B00B09000900900090000000000000000000000000000000000000900000900A90BD090000000000000000000000F00000000000000000000000000000000000A009090BCBD090009FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFBFFFA90F9DB9A090D00900009000000000000000000000000000000000000000000000000000900090F00A0A000000000000000000000A0000000000000000000000000000000000000B0B0F0900B0099BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FF9DA9C0909A90090000090900900000000000000000000000000000000000009000000000BDA9A9000000000000000000000000B000000000000000000000000000000A00000909C909EBD00B0C9BFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFBD909EBDA90009009009009000000000000000000000000000000000000000000000000090090009C00B00000000000000A00000000E000000000000000000000000000000000000009ADB090AD009A0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FBDB0F0900B900900000909000090000000000000000000000000000000000000000000009BCA9A0000000000000000000A00000B000000000000000000000000000000000000B0A909F9F9A900999FFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFDA9FADF90009C0000900900000900000000000000000000000000000000000009000090000B00990900A0000000000000000000000A00000000000000000000000000000000000000D0BE9A00DAD090BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF090F9F90009A9090B0090090090000009000000000000000000000000000000000000009AD9E90E00A000000000000000000000000F00000000000000000000000000000000000B09A909E9F9A909A9E9FFFFFFFF9FFFFFFFFFFFFFFFFFFFDFF09F9F9A900090009000009090000900000000000000000000000000000000000000000000A09009000000000000000000000000000A000000000000000000000000000000000000009E9E9A9C9E90909BDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9E9ED000909000900900009090000000000000000000000000000000000090000000099D0A9A0A09A00000000000000000000000B00000000000000000000000000000000000A09A909F9E9A90F09BCBFFFFFFFDBFFFFFFFFFFFFFFFFFFFFBC09BDA90909A00090000090900A0900009000000000000000000000000000000000000BCA009C9000A000000000000000000000000E0000000000000000000000000000000000099AD00B0A9E9E90BC0B9FBFFFFFAFFFFFFFFFFFFFFFFFFF9FC99FDA9000090909000909A0009090009000000000000009000000000000090000000090090B0B0A009000000000000000000000000B000000000000000000000000000000000A0A0DAFD099E909E90BD0F9FFFFFFDBFFFFFFFFFFFFFFFFFFFBF009A909009E0009A9000090900000000000090000000000000000000000000000009A0F009CBC000A00A0000000000000000000000B000000000000000000000000000000000090B09A9AC99FA99AD0B9ADABFFFFBFFFFFFFFFFFFFFFFFFFFDE900D0009009900000090900090909009000000000000000009000000000000000000D9009A90B00090000000000000000000000000E000000000000000A000000000000000000000DADADB0E9DAD09BC09BDF9FFFF9FFFFFFFFFFFFFFFFFFFAF099B09000B000909000009090000000000900090000000000000000000090000000B0AD0B0DA00000A000000000000000000000000B00000000000000000000000000000000000A9B0BDB0E9FADA9BCBDBCB9FFFF0FFFFFFFFFFFFFFFFFBF9FD0BC0009009009A900090900A09A9000900000000000000000000000000000000099C090B0DA9A09A00000000000000000000000000A00A0000000000A00000000000000A0000000009CB0F9B09F9E9B0B09ADBFFFFDBFFFFFFFFBFFFFFFFFFF0C0B0B000909000009000009090000900000090000009A0090000000000000000000BDA9C9A000A0000A00000000000000000000000F0000000000000000A0000000000000000000BCA9CBCF0F0BCBCE9CB0DADBFFFADBFFFDFFFFFFBFFFDBDFB09C909009E0900900090900009090000000000000000900009000000009000000B0009A0F9A009A000000000000000000000000000B00000000000000000000A00000A0000000000090B9B0F9E909B99A9CB9A9FFBDBFFDFBFFFFFFFFFFBEFBC9A900000090009000000009090000090009000009000000000000000B0000000909E90D90009A00000000000000000000000000000A0000000000000000000000A000000000A0000B000C0FDA90BCBCAFDB90FDFBDCBFFFFFFFDFFFDFBDFDBC9090B090090909009090909000A9000000000909000A900009000000900000009ADA90F00A0B0000000A00000000000000000000000F00000000000000A000000000000000000000000B0909ADF090DBD9A9E99A9FFB9FFBFFBFBFBFBFDAFBDB0000000090A0000000000000090009000009000A0090000000000000C90000900909E90B00000A00000000000000000000000000000B00000000000000000A00A000A000000000A000000A909ADF0B0FADDA9EBDA9FED9FF9FDFFFFDFAF9DAFCB0090000090900900000900900900000900009090000009000000090A00000009A090E900A9A0000A00000000000000000000000000A000000000000A000A0000000000A000000000A009000A9A0F0F9FAB9C90B9EDB9A9FFFBFADBFFD9EBDB9C090090090000900009000000000000000909000009009000900000090000000AD0F090A90000000000000000000000000000000000F000000000000000000000000000000000000009A009E9C9F9F0F0D0DA9E9C9B9E9FFDBDFDFFDB9A99F9E90000000000900000000009090090009000A000000000000900000090000000990B09A000A00000A0000A0000000A00000000000000A00000000000000A00000000000000000A0000000B0090B00B0F9FAFAD09A9E9E9ADBBEFBF9FBED0FF0F0000900009000000000009000000000000909000009A90000000009A0000900BCAD0A00A00000A00000000000A00000000000000A000B00000000000000000000A0000A00000000000A0000B00090CBCAD9F9A9C90909C9ADF9FDBF0F9A90BD9F00000000090090000000000000000900B00C09090000000900000090000009090A90B009A0000000000000000000000000000000000E000000000000A00A00A0000000000A0000000000A9009E0B09F9AF0DF09ADA9A909B0F9ADAF9E99F9A909090000000000000000000900009000900B000000900090000009000009009E0900A00B0000000A000000A00000000000000A0A0000B000000000000000000000000000000009000A000000B00909ADAD09A09A909C90E90DB0FDBDBC9E9A9DA00000009000000000090000009000A900D09009C90E900000009A0090900DA09A0B09A0000B00000000000000000000000000000000A00000000000000000B00000B000A0000A0A009000B00900C000BEDADBC9CB0009090BC9B0BC9B090DA090000000000000000000000000009090E9A0090A0A900000000000000000B00B0B00A0000A000A0000A0000000000000000000000000B000000000000000A000A0A00000000000009000A000A00B009099A90F0B0CB0B00090BC9D0BC9ADB0900000000000000000000000000900000900900090900900000009000900BC0B0B00F09A9A00000900A000A000A000000000000A000A00E000000000000A0000A00000A0A000A000000A00000000900B00009E90FCB09C0090E909A0BC9A9009000000000000000000000000090000B09A9D0B9E0000B00000009000000F00B000F0A0A000900A0A00090000000000000A000000000000B000000000000000000000000000A000A00A0000000000009009E9E90F0B0D0A900A90000909AD090000900000000000000000000000A09D0DAC9A00000009C00000900A009E900B0BEB0A909A9A0A09000A00A0000000000A00000000000000A0000000000000000A0000A000000090000000A000A000000090090CB0C9CBC9C9FD0009000009E000000000000009000900000009090900B0900090D009E9000000A0909A09A9B0A90090A0A000000A00000000000A000000900000090A0000F0000000000000000000A00000A000A00000009000000A00000B00B0F9B0B09A000AD00000090090000000000900000D009009000A00D0B0090BCBCB00B00000000900000DAD0ACBCA9A0B09000A9A000A00B0000000000000A0A00000000000A00000000000A000000A09000A000A000A000000A00000900000000900C00DAD09FF00000000E9000000000000009CB0000000090909A90DADA90900090000009000009CB090B0B0A90E9ACA0B000009009000A0000000000000000000A00000B0000000000000A00A900A0A000000000000A9A00000000A0000909A0FBC9A90FF000000000090009090000090C9A0000B00BC9A9E9E90CB000000000009009000009B0B0D0A0B009AA900B000A9A00A00A00000A000000000000000A0000000E000000000000000000A90000009A00A0000000000000A09A9000009090B0DCB00F090000090009A0009009000B00909000900BC9009CB0000000000000090A000900C9CB0B0DA9A0900B009A9000000B00A0A000000000A00A0000000000000B0000000000A000000000A00A000000000A0009A0000000000A00000000DAA9CB00009CB00C9AD0909E090CB0000000099E0F9000BCA0000009000000900A90000E9A9A9C9EB0000BCB00A000A0B0A00000900000000000000000000000A0000A0000000A00000A0000A009000A00A09A090A0000A0000000A90000090F09D0BC90B0E90FDBAD0ACBC09A0900D0D0B0F0E90000BC009000090000000900D00090900D0DA9B00B0FB0A00B0B0A090009000A000A000000000000000000A000000F000000000000000A000000A00000000000000A000000000000A0A000A0900A09AD009BE9A0C9AD9C0B0C9009A90BC90090D0E90090000000000090F00B00000A0BDA9A9AC0BCB0000B00000900A00A0A000A0000A0000A00A000A0000000000A00000A0000A000000000A00A000B00A000A0000000000000000000B0900B0D9EDA0D009C9DBC9A0B9CB0EBDADAD00AD000A9000000C009000000A000D000009C9009E9E9A90A0B0B00A9A9A0B00A00090A00000000000000000000000000000B0000000000000A00B00000900A000090A00000000000A00000000000A000A0B0FDAAF0F0A00ADDACB0D90E90000AD000AD00000009A000000000909A0090B00B0F09B09A0A9000A0B0000000000900A0090A90A000000000000000000A00000E0000000A0000B00000A9A0A000000A000000A000009000000000000009A0900B0BDD0D09D099A0BD0E0AD000009000009000000000090000000D0E0090A0C90C90BE0A00900A9A0900B0A0B0A000A000A0000000B0A000A000A0A0A00000000B0000000000A0000A00000000000A0000000000000A00000000000000A0090A0000FABEBEACA0C9C0A9090000000000900000000909000000909A90900C909ADBAF0090B0A0B0009A0A00900009A0009A90A0A00000000000000009000000000A000000000000A0000A9A9A00A000000A00A090A00000000A00000000000A09A9A909C9C9DBD09A09C00CB000000090000000000000000000AC00000D0BCBC9A090B0A000900A9A0009A0A0A9A0009A00A09009A000000000000B0A000000000B00000000000009A000A000B0000000900000A0000000A000000A0000000000000A0A9A0A00BE090A90090F090900A00000000000000000BC9090900A9090BE9AAC090A9A0A90000A00090B0009A000B09A0A000000A00000000009A00A00000E00000000000B0A000009A000000A00A000900000000000000000000000000A00000900909FC9CADC0F00009E000909AD0A000000009CB0000A0AC9E90F0F0B0D0B0A0900900A09000A9E000B0A00A000A0900A00A0000000000A9A000000000B000000000A000000A90A0000A00000000A0A0000000000000000000000000000000A00A0A0BFADB0B09CB0F00C00000009000009ADA00C9CB09C9A90F0BA90A0B0B090A0A0000A0B09A009A00000900B000A90000000000000B0000000000A0A00000000000A0A00000000A000B00A900000000A00A00A00A000000000000000000000009000DADEDE0AC90F9B000000000909BC909F09A90D0B09E9AF0DA09A0000A00000A90000A00B0A90A09A0A00900000000000000000000A0A0000090B00000000000000900A0A090B0000000A00900A000000000000A00A00000000A00000000000B0B0B0BD090000ACBCB09090DADADAFCA9E9CB0AD0FE9E90BA9A09A9A000000000A09A9A00B0AF9A00000A0A000A00000A000A00000900000A000E00000000000000A0A0909A000B0A90000A0000009A000000000000000A0000000A00A0000A0000000ADA0B00D90F0DADAFADADAD9BDE9FADFDAF09A9A00000000009A00000000000A0B00BB0A00B0B00000000000A0000000000A000000000AB0000000000000A000000A0A9A0000A00000A009A00000000000000000000A00000000000000A9A0B0900D0DB0ACB0F9E90D0F9ADAE0BDAD9A0B09A000000B0A00B0A000A90000B0B090A9ACB09A00009000000000000000000A000A000009A9A0000000000A0090B00A9A90000B00090A9000000000A09000000A0000000000A000090A000900000000B09A0D09C9ACBCB0B0ADAD9F0A90A0B0A09A9A9A0000B009000000A0A00000A00A9A0A009A0A0A00A000A0000000000000000000A000B0000000000000A0000000A0A900A00A000A9A0A000000A000000000A00A000000000A00000A00B0A0B00A09A09A009000000D090A009000900000000009A0900A0A0B00000090A9A90A9009009A009000000000000B000000009A90A0000000E000000000000000A000A90090A9000009A9009000A0000000A0009000000000000A0000000000009000900A09A0900A9A009A0A090A0A9A00090A00A00000A000000000A9A9A00000A90A0A00A09A0A9A090000A9A00A000A00A00000000A00B00000000000A00000A900A0A00009A0B00A0A00B00000000000A00A0000000000000000A0000009A0A0A0B09A0A00B00090A09000A909AC0A0A090009A00000009A9A0B0000009A0B00A0909A90A009000A0A090000B000000A90A0000A0000A0000000000000A00000A0900B00A0000A90900000090A00A00000000A00000000000A00009A0A0009090000A909000000A09A00B090A00B009000A000000B00A00000009A0A0A0000B090A0A0A009AA0B000000A00BA0A00000009A00000B00F00000000000000000009A0A00A90B0B00A0A0B000A0000000000000900A0000A00000009000090A0A000B090A000B000000A9A00A0B0B00B0A0B009A000000900A9A0A9A90090A9A00A00000909A090000A90009A0090000000A00000000000A0000000000000000A0A00090B0A00000B090000B00000B0000A00A0000000000000009A0A0900A9000A000A000A000B0B0090000900000B009000A000B0000A00000900A0A9A09A0B090B0B0A0A09A09A090A0A0000A0000A00000000000A00B000000000000000000900B0A0090A0B0000A90A0090A0009A0000000A0000A000000A00000A0A0000009A0090000A00000A0A9A00A0B0B0000A9A9000000A000009A0A9009009A9000A000009009A0BA00A0009000000A0000000A0000A0000E00000000000000000A0B0000B0A0900B0A90A0900A0000A0000090009000090000A900000900900A90A09A000A09000A00090000000000A0A900000B0A00090A0A000000A0A0A0A9A90A0A9A0A0A0BC9A900000A000B000000A0090A00009A0B000000000000000000000A900090A00000000A0000009000000A00A0A0000000A0000000A00A00000000000A000A00900000A000000009090A00A00009000A0900000000090900000A09000000090BA00A0B0A090000A9A00000A000000A000A0000000000000000000A900A9A0A90B0000B000A90A00000A000000900A000A0000A000B00090A90A09A0000090000000A00000B0000A0A0009A90A0A00A000000A09A090A0A0A90B0BA0A0B09A0A09A9000000A000A90000009000000009A0F000000000000000000000A000009A000B00009000000A00900009A000009A00009000A0000A000000000090000A000A000009000000B009009A0009000000B0A00000000A009090A0B0090000A0909A00A9A0A900A0B0A00000000A00000A00A0000000000000000000000A9A9A00B000A0000A00A9000A0000A0000A00000000A000900090A00A09A000A00A000B00000000A00A00000A0A00000A000000000B000A0A0090A00A9B0BA0B0B000A0ADA9000900A09009AB00A00A0000000000B0000000000000000000A09000A9A00A900B00000000000000B0000A900A0090A000A00A0A0000090009A000000000009A00A000000B0000090A9A009A000A0B00A0090900A900A0ABADB00A0B090A900A0B0A0000A0B0BCB000000000000000E000000000000000000000A0009A09A90A000A000000A000000009A000900A000000900900009A0A0A00000A90A900A00000000009000A9000A0009A000A9000BA90A0A0A000A09090BA0AB0000A09A0B000000B00000A9A0000009A00000A00B00000000000000000000000A9A09A00A09000000A0000A00A00A0000A009000000A00A0000A0090090A000000000B00A000000A0A00000A0B090A000000009ABCA0009009A0900A0FA00909A0B09A0B000A09A00A09A9A0A0000A0000000000A0000000000000000000000000DA009A9A0A00000000000000000000900A00A00A9000000A9000000000B0B0A00A00090000A009009A0B00000A90A00000A0A90B009A0A000A0A09A009A0A0900A09AC0B09A09A09A0000090A00000A00A0000B000000000000000000000A9A0A9A000090000A0000A00000000900A00000000000A090A000A9A0A0A00000090090A0A0A00000000000000B0B0A909A000900A9A90A909A09090A09A0A9000A090A09A00A00A0B0000A0B0A00B000000000000E0000000000000000000000009A0009A9A000000000000000A00A0000A900000A0090A009000000900900A0000A00900090B00A0A9A09A0B00A9A0A000A0000000AADA0A00A00A90A0900E9A90AC90A09A90B0900A9A90009AB000A00000A000B0000000000000000000A00A9A009A000000A000000000A0000000A0000A09A0090A00000A900A00A00A900A0090A00B00A009000000A0000A9000000000A0B0A9A90A900000A90A90A0A9A00A9A0A09A00A000A000000A9E000A0000A00000BA000000000000000A000090000B000A00A00000000000000000A09009A00A0000A0000A0000A090900000A09A0A00000A0000A00B0B090B0B0A9A9A9A0090000009AA9A9A9A90A90A09A9A9A900B09A00B090A0009A0B09A9A00000009A00000F000000000000000000000A9A00A0000000000000000000000000A00009090A9000B0900B0090A0A09A9090000090B0009A90000000A0000009A000000A000009A090A00000A90A09A000009A090AA0B00A009000A090A00A9A090000000000AA00000000000000000000A0000000000000000000000000000000000A0A00A00A9A00A0000A000000A00A0A9A9A0A00B0A00A9A9A9A90B0B0B09A9A00B00A00A00B0A9A9A0B00B0B09A9A9A00BA909000B00A0A0B09AB0BA9A000A0B0A0000A9B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000A00A000000000000000000000B00B0A00A000A00B000A0A9A000000000A000000000000000000000000000000000000000000105000000000000DFAD05FE,'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.',2,'http://accweb/emmployees/davolio.bmp')
GO
INSERT "Employees"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","ReportsTo","PhotoPath") VALUES(9,'Dodsworth','Anne','Sales Representative','Ms.','01/27/1966','11/15/1994','7 Houndstooth Rd.','London',NULL,'WG2 7LT','UK','(71) 555-4444','452',0x151C2F00020000000D000E0014002100FFFFFFFF4269746D617020496D616765005061696E742E506963747572650001050000020000000700000050427275736800000000000000000020540000424D16540000000000007600000028000000C0000000DF0000000100040000000000A0530000CE0E0000D80E0000000000000000000000000000000080000080000000808000800000008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D999D999999D9D999DB99DD9F9D9D9D99D99D9F9D999BD9FD9D9D9D9D9DFD9F9F9DBDBD9DBD9DB9FD9FDFFFFFFFFFFFFFFFFFFF9D9F9DB9D9DFD9DB9F9BDF9F9D9DBD9BD9F99DBD99999999D9DBDBD9BDDD9F9DBDBD9F9D9D99D9BD999D99D9D99DB99D999D9F9D9F9D9D9999D9B9BDBD99F9D9999D9DBD9FDBDBDBDBDBD9F9D9DBD9D99FD9F9DD9FDD9FFFFFFFFFFFFFFFFFFDBDF9DBDD9F9DBD9DD9DD9D9DDBD9D9DD9D9D99D99999D99D9F9D9D9DD99BD9D9D9D9F9DBD9FD9DD999DB9DBD99D99D999D999D9BD9D9DBDBDD9D9DD9D9DD999999999FD9F9D9FD9D9D9D9F9D9F9D9DBDF99F9DF9F9F9FFFFFFFFFFFFFFFFFFFFD99DF9DB9DF9D9D9F9F9F9F9BD9F99F9F9DBDF9D99D999D9D9D9D9F99BDD9D9F9F9F9D9D9D99BD999999D9D9F99D999999D9F9D9D99F99DD99B9D999D9B99D999D9D99FD9DBDD9DFDBDBD9D9D9F9F9D99DF9FD9FD9FDFFFFFFFFFFFFFFFFFFFFBDF99D9DFD9F9DBD9D9D9D9DD9D9DD9D9D9D99F99999999B9DBDBD9D9D99DBD9D9D9D9F9F9D9D9BD999D9F9D99DBD9D999BD9D99D9D9D999D9D99F9F9D9DB9D9999BD99F9DDB9F99D9DD9F9F9D9D9DBD99D9DBD9FD9FFFFFFFFFFFFFFFFFFFFFD9DDBDB9DBD9F9DBDBDBDBD99F9F99F9F9F9D99D9999D99D99D9D9DBD9F9D99F9DBDBD9D9DBD9DD9F99999DBD9999999F9D9DBD9BDBD9FD9BD99D9D9D9D9D999999D9DFD9F9DD9DF9F9DBD9D9F9D9D9D9FDF9DFD9FDDFFFFFFFFFFFFFFFFFFFFF9F9D9DDBD9F9D9D9D9D9D9FD9D9DF9D9D9DBD9F999999D99D9DBD9D9D9DBD9D9D9D9DBD9D9D9B9D999D9D9D99D9D9999D9F99D9D9D99D99D99F9D99DB999999D9D9DF99F9DDBDF9D9DBD9D9F9DBDBDBDDB9DBD9F9FFFFFFFFFFFFFFFFFFFFFFFD9FDBDBDBD9D9DBDBDF9F9D9BD9F9D9F9F9D9D999D9D999DBDBD9F9DBD9D9F9DBD9F9D9F9DBD9D9D9999BD9F9B99999D99D9D9BD9D9D9BD99D9D9BD99D99D999F9F99FD9DBD9D9D9F9D9DBD9D9D9D9D99DDBDF9DD9FFFFFFFFFFFFFFFFFFFFFF9F99D9D9DFD9F9D9DD9DD9FDD9D9DBD9D9D9DBD999999D99D9D9D9D9DBD9D9D9DBD9F9D9D9D99D9F999D9D9DD9D99999FD9F9D9D9BDBDD9DF99F9D9D9BD99999D9DD9D9F9DBDBDBD9F9F9D9F9F9F9DBD9BDDBDF9FDFFFFFFFFFFFFFFFFFFFFFFDDF9FDBD9DBD9DBDB9F9BD99F9F9D9D9F9DBD9FD999D9BD99D9F9DBD9D9F9DBD9D9D9DBD9F9D9BD9D99999F99D999D9D99D9DB99FD9D99D99DD9D9DB9D9999DBDDB9DBD9DBDDD9D9D9D9DBD9D9D9DBD9FD9FD9DF9FFFFFFFFFFFFFFFFFFFFFFFFBDD9DD9F9D9D9D9DD9DD9FD9D9D9F9F9D9D9D9999D99D9D99F9D9D9F9D9DBD9F9DBDBD9D9DB9D9F99999D9D999999DBDF9D99D9D99D9F9BDDB9DBD9D99D9D9D9B9DBD9DBDDB9F9F9F9FD9D9F9F9F9D9D9FDBDF9DFFFFFFFFFFFFFFFFFFFFFFFFD99F99F9DBDBDF9F9FDB9D99F9F9D9D9DBD9F9D9999D999BD9D9F9F9D9F9D9D9DBD9D9DBD9DD9D9D999D9D9D999D99D99DB9DBD9D9F9D9D99DBD99D9999B9DBDDD9DDF9DF9DDD9D9DD9BDBD9D9D9DBDBDBDDBDFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9FDDBD9D9D9D9DD9DF9FD9D9F9D9F9D9D9F99D9DB9D9D99BD9D9DBD9DBDBD9DD9DF9DBD99F9F9D9999F999999F99D9D9D9D9DBD9D9D9FD9D9D9BD9D99D9D9BD9B9D999F9F9F9F99DD9DBDBDBD9D9D9DBDD9DDFFFFFFFFFFFFFFFFFFFFFFFFF9FD9BDDBD9F9F9F9BD99D9F9D9D9F9D9DB9D9D99B9D99D9DD99F9D9DBD9D9DBDB9F99D9D9F99D9DB99999D99999D9F9F9DBD9F9D9F9F9D99D9DBD99999D9DBDDD9DDBDFD9D9D9D9DF99F9D9D9D9F9F9F9DF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFD9DFDBDD9D9D9D9DD9DF9D9DBD9D9D9BD9D9F99D9D9F99F99D9D9F9DD9F9F9D9DD9DF9F9D9DD99F9D99D9999D9F9D9D9D9D9D9D9D9D99D9F9D9D9D999D9F9D99B9F99D9D9F9F9F9F99F9D9F9F9F9D9D9DF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD9DB9F9F9FDBDBDB9DBDBD9F9DBDD9D9F9D99999D9D99D9FDBD9F9BD9D9DBDBDB9D9DBD9B9D9D9999BD999D9DBD9DBD9DBD9DBD9D9F9D9BD9999D9BD9F9FDD9DFDBDBDD9DD9D99D9DBD9D9D9DBD9DBDF99FFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBDFDD9D9DD9D9D9DD9D9D9D9D9D99F9D9DB9D9DF9D99DBD99D9D9DDDBDF9D9D9DD9F9D9D9D9F9D999D9999BD9D9F9D9F9D9F9D9DBD9D9D9DF9D99D9D9DD9BD999DD9D99F9DBDFD9D9D9F9F9D9DBDBD9DFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9DB9DBDB9F9F9F9BDBD9F9DBD9D9DDB9DD99999DBDD999D9FDBDBD9D9DBDBDB9FD9D9F9DBD9DBD999D99D9D9D9D9DBD9F9D9DBD9D9F9D999999D9D9F9BDD99DF99DBDF9DBD999F9F9D99D9F9FD9D9F9DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BDBDD9D9DD9D9D9DD9D9F9D9D9F9D99D99F9D9DDD99BD9DBD99D9D9F9F9D9DDDD9DF9F9D9D9DBD999D99D9DBDBD9F9D9D9DF9F9D9F9D9BD9D99D9BDBD9DD999F99FD9D9DBD9D9D9D9D9FD9F9D99F9F9FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDD9DB9F9DBDBDF9F9F9FD9DBD9D9F9D9DF999F9B99DD9D9D9FD9DBD9D9D9FDB9BDB9D9DF9DBD9DD999B9B9D9D99D9F9D9F99D9D9D99D9D999D9BD9D9DD9BD99DDD99F9F9D9DBDBDBDBD9BD9D9FD99DFD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9FD9D9F9D9DD9D9D9DD9F9DBD9D9F9F99D9D99DDF99DB9D999F9DBDBDBDD9DDD9DD9FD9D99DBDBD99D9D99F9DBD99DBDDDBD9DBDD9BD9F999D99D9F9BDD999B9DF9D9D9DBD9D9D9D9FDD9F9F9FDF9FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9FD9D9DBDB9F9F9F9BD9D9D9F9D9D9D9F99D999D9F9D9BDDD9D9D9D9DB9F9BDDBDF9BDBD9D99DBD9999DF9D9D9DF9D9F9D9F9D9BD99D99D999DBD9DD9BD99DD99D9F9F99D9BDBDBD99BD9D9D9D99D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F99F9DBD9DD9D9D9DD9F9F99D999D99DD9DBD9D9D9D9DD9B9DBDBDBD9DD9DDDBD99DD9D9F9DDBD9999DF99DBDBD9D9F9DBD99D9DD9D99D99BD9DDBDBDD999DB9DBD9D9DDBDD9D9D9FDD9F9F9F9BDFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DBD9DBDBDBDBDBD9D9DD9FDF99F9BD9D9DBDBD9F999DD9D9D9D9F9F9F9BD9FDDBDBD9DB9D9D99D99DF9D9D9DBD9D9D9D9F999DB9D99D9D9F9D9D99D99D9D9D9DBDB9D9BDBDBD99BD9D9D9DD9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9F9F9D9F9D9D9DD9D99F9F9BD9999D9DDB99F9D99D99DBD99BD9BDBD9D9DDDDBD9F9DD9DBD9DBDBD9DF9D9DBD9F9DBD9F9DBD9DF99D99F99DBD9DBD9DB999BD9DBD9D9D99D9D9D9DFD9F9F9FDBD9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD99DBD9F9F9F9F9FDD9D9DD9DD9D9999D9D9D9DDBDD9D9FD99DD9DBDBDB99FDBD9F9F9D9D9D9D9D9BDDBD9D9D9D9D9F9D9D9D99D999D99D9D9F9D9BD9D99D999D9F9D9F99D9F9F999D9D9D9DD9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9DBD9D9D9D9D9D9DBDBD99F9BD9F9DDF99DBDB9D9BD9D99DDB9D9D9D9DDF9D9DF9D9DBDBDBDFDBDDDBD9F9F9F9F9F9DBD9F9FD9F9D9D9F9D9D9F9D9999D99DF9D9DBD9DBDBD9D9DDBDBDBDB9F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9F9D9F9F9F9F9F9F9D9D9FD99D9D9DB99D9D9D9D99D9DB9DB99D9F9F9F9F9F9DF9F9DBD9D99D99DBF9DF9DD9DD9DD9D9D9D9D99D99F99D9D9F9D9D99D999BD99DBD99D99D9D9DBDB9D9D9D9DD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DBD9D9D9D9D9D9F9F9D999D9F9999DF99F9D9F9F9D99D9D9DBD9D9D9D9D9FD9D9FDD9F9DDBDFDDDF9DF99F9BDB9F9F9DBD9D99D99DBD9FD9F9D9DB9D99D9D99D9FD9F99F9F9D9D9F9F9F99F9BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9DBDBDBDBD9F9D9D9F9DDF9D9DFD99DF9D9BD9D9DBDDBD9D9D9DBDBDBD9F9BDBD9BD9D9B9D99BDF9DF9DF9DDDDD9D9DD9DBDBD99D9D9D99D9DB999D999D99BD9D99D99D9D9DBDBD9D9D9DF9DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9D9D9D9F9DBD9D9DB99D9D999D99D99DD9F9D9D999DB9D9F9D9DD9DBDDD9D9FDDF9DDDBDFD9DDF9DF9DBDB9BDBDB9F9D9D9D9F9DBD9FD999D9D9999F99D9DB9D99DBDB9F9D9DBDBDBD99F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBD9F9F9F9D9D9DBDBD9DD9F99DDB9DB9DB9D9DBDBD9D99D9D99DBDBDBDDB9F9FD9F9DBDBD9D9F9F9F99FDD9DDD9D9DD9D9D9DBD9D9D9D99F9D9D9BD9D99D9D99D9F9D99DD9DBD9D9D9D9FD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9F9DD9D9F9F9F9D9D9DB9D99DB99D9D99DF9F9D9D9F9FD9F99D9D9D9DF9DD9D99F9F9D9DBDBDDFDDDFD9F9DB9FDBDBDF9F9F9D9DBDBDBD99D999D9999D999BDDBD999D9BDBD9DB9DBDBD9BD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9DBDBD9D9DD9F9F9F9DF9DF9D9D99FD99D9D9F9D9D999D9D9F9BDBD99F9F9FD9DD9F9FD9DDBDDBDBDBD9DBDD9DD9D9DD9D9D9F9D9D9D9D99DBD99D99BD9FD99D9DDB9D99D9F9D9BD9D9FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBDBD9D9F9DB9F9D9D9D99D99D9F99D99D999F9D9F9DBDDB9F99DD9D9FD9D9D9DF9BDD9DBDF9DFFDFDDDFDF9D9F99F9F9BDBD9F9D9F9D9DB9D99D9F99DD9D999F99B99D9D9F9D9BDDDBDBD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99D9D9F9D9F9DD9D9F9DBDDBD9D99DB9D99FD9DBD9D9D999D99D999F9D9F9F9DB9DDDBDBDF9DBD9F9F9F9D9DF9DFD9D9DDD99D9DBD9D9F9D99D9999D999B99DD9D9D9D9DBD999DD9B9D9D9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9DBD9F99D999F9D9D9D99D9B99D99DB9D99F9D9DBD9D9D9D999FD9DBD9D9F9DDBDBD9DD9FDFDFDFDF9FDF9DF9DBDBDB9FDBDD9D9DBD9D9D99F9D9BD9D9D9B9D9D9D9B9D9DDB99DD9F9F9DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBD9D9DDF9DF9D9F9DBDF99DDD9B9D9D99D99DBD9D9F9F9F9DF999D9D9F9D9F99D9DBDBDF9DBDDBDBDFDBDDBDDBDDD9DD99D9BD9DBD9D9F99D9D99D999D99DDB9F9BDD99DB9D9DB9F9D9DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9F9F999D99DBD9D9D99DF99BD9D99D999D9F9D9F9D99D9DB9D9F9F9F9DBD9DFDBDDBDD9FFDFFFDFDF9DDBD9F9DB9FDB9DF9DDBD9D9BD99F9999D999F99D999D99D999F99D9DBDD9DBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBD9D9FDF9FD9DBDBD9FD99DD9D999F99DB9D9F9D9D9D99D9D9D9D9D9DBD9DBD9DDBDDBDBD9F9DFDBDF9FDF9DF9DD99DD99DB9D9D9DD9D99D9DB9D999D99DBD9D9D9D99D9999D99F9D9DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9DBD999D99F9D9DBD99FDB9D9BD9D999D99D9DBD9F9F9F99F99DD9F9D9F9D9F9FDDBDFDFFD009FDFDF9FDF9DF9DFDBDF9DD9F9F9BD9F9D999D9BD9D9D99D99F99B9D9BD9F99F9D9F99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB9DBDDBD9D9D9D9D9D999D9BD99D9D999D9BD9DBD9D9D9DD9DB9BD9F9DD9F9DF9F9DF9FDFF909BDF9FDF9DFD9DBD9D99DB9D9D9DD99D99F9D99D99F99BD9F999D9DB9D9999F9DBD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DD9D99D9FD9F9BD9F9DD99D99D9B9F99DB9D99D9DBD99F9BD9D9D9D9DBDF9FD9FDFD9FDBDF09909FFFDBDFDBDFD9F9FDF9DF9DBD9BD99D9999D99D999D999D9D9D99D99D9D9D9D9FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DB9DBDBD9999D9D9D9DB9DB9D999D99D99D9DF9F9D9F9D9D9D9D9F9DBD99DD9F9DBDFDFDFD90D999DDFDF9FD9DBDD9D99D99D9D99D9DB9D9F99D999D999D9999B9999D9B99F9BD999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99D9D9D99DFD9D9BD999D9D9BD9D9D999D9B99D9F9D9DBD9DBDBD9F9DDFDF9FDDFDBDBFDFF0B00D09B9FFD9FF9DBDBDF9FD9F99FD9D9D99D9D9B9DB9D9B9D9F9D99D99D9D99DDBDF9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DDBD9D9F9999F9D99F9DB99D99999F99D9D9D9D99DBD9D9F9D9D9D9DB9DBDF9FF9FDFDFFDFC9D9099009DFFD9DF9DD99D99D9DF99F9D99D9999D999D99D9999999DB999999D99D99DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BDDB9D9D9D99DBD99D9D9D9D9D9BD9DB999DB9DDBD9D9BD9DBD9F9FDDBD9DFD9FDF9FDFFF9B9099C900BD9FDF9DF9FDF9FD9D99D9D9BD9B9D99999999999D9999999DBD9D9BD99F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D999DB99F99D999D9D99DB99B99D9999D9D99D999D9F9D9DBD9F9D9DBDDFBDBFDBDFDFFFD00E909909009F9FDF9D9D99D99DB9D99D9D99D99D999D9999D9999D99D99999BD99FD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9F9D9D9D9BD9D999BD9DD9D9999D9D9DB9D9BDDB9D9D9D9D9D9FDBDDBDDFDDFDFFDFDFFB990DA9D0900099B9FF9DFD9DBD9DBD9B999999999D999D99999999999999D9D9D99D99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BD999D9999D999DBD9999999D9D9BD9B9D99D99D9D9F9F9F9F9D9FDBD9F9FBFDF9FFDFDF00CB990990DB00009D9F999F9D9D9D99D999D99D9999999999999999999D99999BD9B9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9F99DBD9DBD99999B9999999BD99D99D9BD99DF9D9D9D9D9FD9FDDFDFDDDBDFDFFFFF9DB000990F00009E90BD9FD9D99F999D99D9999999999999999999999D9999BD9D99DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD99BD99F9D999999999D9DBD999D99D999DB9D99F999D9F9F9F9D9FD9F9F9FFFFFDFFDFDFDA909090999000090909999DBD999D9999999999999999999999999999999D9999F999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D99D9999999D999D9999999B99D99D9F99D99D99DDBD9D9DDF9F9DFDFDFDBDFDFDFFFFF09000909090099009000999999D999999999999999999990990999999999999D9D9D99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999D999DB999999D99999D999F9999D999F9D9B9DBDBDB9DF9F9FDBDFDFFDFFFDFFFF909A9090F09D000000900099999999999099999909999999909909999999D99999999DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9F9999D99999D99999D99999999D999F9D999F9D9D9D9DDBDDDFDBDF9FFDFFDFFFFF99000000C990B0900900000009999999999909999999099090909999999999999BD9F9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999D99999D999999999D99D9D999D999999D9D9DBDBDDBDDBF9FDFDFFDFFDFFFFD9D9A0009DB0090000000000000000000099999909999999090909090909999999D99999DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999D99F99D999999999999999999999999D9DBD9BD9D9F9D9FDDF9F9FDFFDFFFF9B9BF9C900E909099009A900000000000000000099909090990000909999999999999999D9BFFFFFFFFFFFFBFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9B99999999999999999999999999999999999D9DBDD9FFD9F9DFDFDFDFFFFF99DC9D0900B090000900000000000000000000000000909090000900909099909999999D999DFFFFFFFFBFFBDF9FFDFF9FBF9FFBFFFFFFFFFFFFFFFFFFFFFFFD9999D99999999999999909999999999099999D99D9D9BD9DBFDFF9FFDFFFF999C9A9FF9909090A0990090900000000000000000000000000000000090909909999999999999FFFFFFFBFFFBFFBBFBFFBFBF9FB9BDBDBF9FFBFFFFFFFFFFFFFFF99999999999D9999909999990990999999D99BDF9F9FDFDBDDDBDFFDFFF909F09FDFF990B00B09000990A000000000000000000000000000000009009990999909099999999FFFFFFDF9FBF9BDFFFBBDBDBFBDBF9BBDBFBDFDBBDBFFFFFFFFFFD99D999999999909999999999090909999999D99D9D9D9BDDBFDFDFFB909909DF9BDFF9D09000B0900B90900000000000000000000000000000000900909090999909999999DFFFFBBFFBDFFFBDBFDFBFBDBFBDBFDBDBDBBBFDBFF9BFBFFFFFFF9999999D99909999990990909090990999999D9F9F9FDDBDDFFFF090900090B9C9B9D909000909E9BC09000000000000000000000000000000000009099909909990990999FFFFB9DB9FFBF9FBFDBBDBDBDBDBF9BFBFBDFDBFF9FFF9FBDBFFFF999999999999999909990999999999999999DBD9D9D99FDBF999099000900B0DB0D0B09090D000900990000000000000000000000000000000000000090099099099909909FFF99FBFFFBF9FBF9FBDBFBFBFBDBBDF9F9FBBBF9FBF9BF9F9FFFF999999999999999099900990999999999D999D9F9DBDFDBD9900900090009099090BD99C09BDA90900B0000000000000000000000000000000000000000900909909999990BFFA9B9BDBDBFBDBFB9F9F9FDBDBDFBFBFFBDFDBFBDBFDBFBF9BFF990999999099999990999999999909999B9D9F9DBD9999990000090909090900909D909B000990000090900000000000000000000000000000000000000090090990990999DF999BDBBFBDBFBDBFFBFBF9BFBFB9F9F9FBFBF9F9F9BBDBDBF9DBF9990999999999099909999909099099D99999999900900009000090000900B90F0AD0909990CF909090000000000000000000000000000000000000000000900909999909FB09B0B9F9FBF9FBF9BDBDBFF9FFFFBFFBFDBDBFBFBFDBBF9F9BB9099999999990999990909099999999999999990900000000000000090F900900099D990D9000B9A0000900000000000000000000000000000000000000000000909909999F0090999FDBFBDBDBDBDFBFBF9FF9FBDF9FDBFBFDBDBDB9F9BF9F990909999990999090999999990999999999900000000000000000009099009099B90909900009090BC900000000000000000000000000000000000000000000000000909099F909B9B9BBDBBFBFBFBBDBDBFBFF9FFBFFBFBDBFFFBFBF9FB9B9A990990990999999990090999999990990900000000090909009000009AD090B000F0F909DB09090C9009090000000000000000000000000000000000000000000000099990DB090090BDBBDBDBDBDFBFBFFFDBFBF9F9FF9FF9FB9F9FB9BDBD99A9909909990909099990990999099990900000000000000000000009099A90099099CB90B00000B90B000000000000000000000000000000000000000000000000000000909000909B9BBDBFBFBFBBDFDBF9BF9F9FBFBDFBFFBDFBF9FFDB9BB99909099909999999090990999090000000000000000009000000000000090990AD0F9D09090909909009009000000000000000000000000000000000000000000000000900900909099BDBDBDFBDBDFBBF9FF9FBFBDF9FBFDBDFBF9FB9B9F99DB0909090990909909009099909000000000000000000000090900000909009A099B9FBD09A000009090090000000000000000000000000000000000000000000000000000000000090BDBBFBF9FBFFBFDBF9BBB9BDBBFBDBFFFBDBF9DBFB99A909000909099990909090909000000000000000000000000000000000090A909900CF0DBD9900900B009A090090000000000000000000000000000000000000000000000090000000090B9F9FBF9F9FB9BDBF9DBF9BDB9FBDB9FBF9FBBD9FB99B9B99090990909009000090000000000000000000000000000090090000900DADB999FB909E90A09090090000000000000000000000000000000000000000000000000000000000009099F9FBDBFBFBDBFB9BBB99BDBDBBDBFFFDFBF9FBF9DB090900009009090900090000000000000000000000000000090900000090090B90D00B9D09999909A90090009090000000000000000000000000000000000000000000000000000000009BBFBDBFBDBDBDB9F9D99FB9B9BDBBDB9BBBDB9F9BB999B00909009909000090000000000000000000000000000000000000090A90990F909DCB9090C90090B0009A0000000000000000000000000000000000000000000000000000000000090DBDBFBDBBDBB9F99BB9B999BDB9F9BFFFDFBDBBF9DB090900009000000090000000000000000000000000000000000000090009090A90F90B90909B9090B009000909009000000000000000000000000000000000000000000000000000000099BF9BFBDBF9F9BBD99B9BDB9B9B9F99B9BF9F99FBBDB090900000900090000000000000000000000000000000000000000009009A9909090DFBA9009A90909009000000000000000000000000000000000000000000000000000000000000900BF9FBDBF99B9BD9B9BDBDB9F9F9F9BF9FB9FBFB9F9B9909000000000000000000000000000000000000000000000000090000A909C0B0F9CB9D900B009C00A9000090B0000000000000000000000000000000000000000000000000000000009B9FBDBB9BBBDB9B9BDBDBDF9BF9F9F99B9F99B9FF9B00900000000000000000000000000000000000000000000000090009090909A9099090DF09009A9B90909090000900000000000000000000000000000000000000000000000000000000BDB9FBF9F9D9B9B9F9BDBDBBFDBF9F9FBDB9FF9F9BF9B9000000000000000000000000000000000000000000000000000000000009099BC9F9AD90090900990900A90090000000000000000000000000000000000000000000000000000000000BFBDB9B9BB99D9F9F9BFFDFBFDBFBF9F9DB9BF9F9BF9090000000000000000000000000000000000000000000000000000009090A9AD09AD99FB0909A9B00A00990B000900000000000000000000000000000000000000000000000000000009BDBBDBDB9DB9BB9FFFFDBFFFFFFDFFFBFBF9F9BB9F9B90000000000000000000000000000000000000000000000090000090000BD090BD9FE9F9C90B9A90999F000909000000000000000000000000000000000000000000000000000000009BDBBDB9B99B9FBDFFBDFBFFBDBFFBFF9FDF9F9BD9FBDB00000000000000000000000000000000000000000900000000000000090900B9DAF990FB90B09090F0B0D0B00090000000000000000000000000000000000000000000000000000000ADBDBB9B9DB9F9FF9FFBFFFFFFFFFFFFFFBFFFBDBB9B9F9000000000000000000000000000000000000000000000900000000090009900F9DFD9D0B90D00A90909B00090000000000000000000000000000000000000000000000000000000009B9BDBDB9B9FBF9FFFFFFFFFFFFFFFFFFFFFBDFBD9BDB9B0000000000000000000000000000000000000000009000000090090A9000BD9DF9FA99909DA9B9E909A909000900000000000000000000000000000000000000000000000000000009BFB9B999BDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDB9F900000000000000000000000000000000000000009000009090000AC900B000B0FDFD9C099A9B00990A909090000000000000000000000000000000000000000000009000000000009F9BDB09BBDBFBFFBFFFFFFFFFFFFFFFFFFFFFFBDBDBDB9000000000000000000000000000000000000009000090900C0000909909090999FFF909BB0900090090090B009000000000000000000000000000000000000000000B0F00000000000BF9BD9BD9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBDB9000000000000000000000000000000000000000090000F9F0090090A09CBDBC9DFDBD99BB99A90B0000A9C90090000000000000000000000000000000000000000009AF000000000B9BDB9B9BFDBDFBFDBFFFFFBFFFFFFFFFFFFFFFFFFFF9F9B0000000000000000000000000000000000000000009000F0900000990B0909909FF9E9B900A90B900090099000000000000000000000000000000000000000000000090F000000009F9B9B9FBDBFFBFFFFFFFFFFFFBFFBFBFFFFFBFFFFFDFBFD00000000900000000000000000000000000000000900909000B09000D09ADF0F9F9E9900BD9DB00900009A009000000000000000000000000000000000000000000AD0FB90000000F9BBDBDBDBFFFFFFBFFBFFBFF9FF9FFFFFFBFFDFBFFBF9FB9000000000000000000000000000000000000909009B000009090009A9ADB9F9C9E9909F0B0B0900B009009000000000000000000000000000000000000000000909A090CF000009BBD9B9FBFFFBFFBDFBDFBFDBFFBFFBF9FBDFFFBFFFFFFF9FF00000000000000000000000000000000000000A900009090000090BD9DBDE9F999BC9D9F9F9FAB009CA90A90000000000000000000000000000000000000000000090FB9BB000009BB9DB9FBFFFBFFBFFBFDBFF9FF9FFFFFFFBFFFFBFFFFFFBDF0000009B0000000000000000000000000000000090000090900090F09DBDFFCBC9BDAF9B09090B0A990900090000000000000000000000000000000000000009AF9A90FF000009F99FBFFFFDBFDFBFBDFFBFDBFFBFF9F9FBFFDBFFDFBF9F9FFB90000000000000000000000000000000900009090090900000090F9B0BDBD9F99DF999D0909BA9E990000900000000000000000000000000000000000000009E09009EF900009BB9FBDBDBFBFFFBDFDBF9FFBFDBDB9FBFFFDBFFDFBFFFFFFFBDF90000D000000000000000000000000000090000000000009090F9909D0FBFF9CB9CBDB99A90DA9A09BB0A9000000000000000000000000000000000000000B9B090FFF00000099F9BFBFFFFFFBFFBFFFFB9DB99B9F9DBDBFFFFBFFBDBFBF9FFBF0000B000000000000000000000000000009000909090900B090B0FCBDFDDBF9E99ABC9D00B999900909000000000000000000000000000000000000000000000A9FF9000000F9BFDBDBF9FBFDBDFBF9BDB99B9DB9B99BDBDBFFFFFFFFFFF9BDBF00090000000000000000000000000000009000000A009009A9099FF9FBD0F9909B99B09B090A099A0009000000000000000000000000000000000000000000000FB0000009B9F9BFBFFFFF9FFBFDBF9B9FDDFBDFDFFDBDBFDBDBDBDBDBFFFFFDA000000000000000000000000000000000000900909009909090F9FFD9E9FF990BDA9DB0B9090B00090000000000000000000000000000000000000000000009B90000000BDFBFF9FBDBF9FFBF9BD99FDFBFBDBDBBDBFFDFBFFFBFBFFFF9F9FB90000000000000000000000000000090090A9009C090B9A90BCB9DBFFFDFD00ADA9BB0990B0090A900090000000000000000000000000000000000000000000000000000DBB9F9BFDFBFBFFBDBDB9FFFBDBDFFBFFDBF99B9DBDBDBDBF9FFFFFFF909000000000000000000000000000000900090B9F99C9BC999CB990FBFFBD9FB0DAB009B9B09009B000000900000000000000000000000000000000000000900000000BDFBFF9FBDFFDBF9F9BDB99DBFFBFFDBFFFFF9F99B9FB9BDBFBFBFBFDF000000000000000000000000000000000900A90B00B909B0A9BDADBDF9FFFDF9BB90DBBFB9009B9A90000000000000000000000000000000000000000000000000000BDB9F9BFBFBF9BF9F9F999FB9FFBFFFBFFF9FFFFBD099909BFFFDFDFFBF00000000000000000000000000000090000BD0909990BD0B9C99DFDBDFF9FBD9A9B0B9FB9B0B00090000000000000000000000000000000000000000000000000000BDBFFFFFFDFFDBF9F9B999BF9FFBDFFB9FBFFFFBFF900099BFFDBFBFBDFF9000000000000000000000009000000009090B09A9CBD0B909B0F9FFDF9F090BBB0B0B9B0B9090B09A000000900000000000000000000000000000000000000000009BDBF9FBFBFBFB99B9900BDBF9F9B9B9999B99F9BB900009F9FBFFFFFFBFB0000000000000000000000000090000009E90BD0B90B990B0D99F9FFBFFD990BEB09099A9B9A9CB0900090000000000000000000000000000000000000009000000FBF9FFBDBDFDBDB9900090BFB9B9999D9B999999999999F9BBFDBFBDBFDFFD0000000000000000000000000000909090BD0A90F90DA90B090F909DBDB09BDB90A9A9B009DA99A9A900000000000000000000000000000000000000000000000BF9FFFBFFFBFBFB990000099999999BD9B9D9F9B9D9DBFB9BDBDBBDFFFFBFFBB000000000000000000000009000000009D0B9B09A9B09A99FD9EBFBCB0900BB0A909B0DB9A99A9B0000009000000000000000000000000000000000000F90000F9FFB9F9FBDBF99F9B9D999999999F9FBFDBF9F9FBDFBFDBDBDBFDBF9F9FFFD000000000000000000000090000090A9F9AF90C9A9090B9B0F9F9D0099D09B9A9BFA9A9B0F9F0900B000000000000000000000000000000000000000000000000BFBFFFFBDBBDBFB9BDBBDB9FDBFFFFBDB9B9FBFFDFBFDFBF9B9B9B9FBBFFFBFD00000000000000000000000009000900FD0DB9B09B0B0BC9FFCBAB9A90B00B00A9B09A9BB909F9A9B09000900000000000000000000000000000000000B00009F9F9FBDBBD9B99FBDBDBFDFBFDBF9B9B09999B9FBFFBFBDBF9BDB9F9FDBBDFFB0000000000000000000000000A9000909BD909DBCBD9F9B00F9D90090B9F09ABDB090990009AB09000009000000000000000000000000000000000000090000BFBFFBDBDBBF9FB9B9B9F9FBFFBF9F0999F9BD9F9F9FFFDBDB99B9F9F9BDFBFF9A0000000000000000000000090000009F09090F0BDAF9F099FF9E9F9EDE90ABDAC900000090B909A909A0000000000000000000000000000000000000000009F9FDBDBFB9F99B9DBDBFBFBFDBDB9B9BDB99F9B9BFFF9FBDB99F9F9F9BFF9FFFBD00000000000000000009009000909B90999CBD9F9B9B00B09DBDF9A9B99B09A9B9A09A000900B00A0009090000000000000000000000000000000000F0000ABFBFBB9F9F9FBDB9B9F99FDBFBF9B999B9FF9F9F999BF9FB9B9BDBFBFDF9FBFFF9000000000000000000009000900000C9E9A90F9F0909090DABC9FDFF9A9000000F9A090000000B090900A000000000000000000000000000000000009B9B9D9FBDFDB9B9F9FBDB99BFFBF9F9B99999F9FFFFF9F9F9FF9F99F9FDBDBFBF9F9FF9000000000000000000000000090009090909900FD00A9A9FDDBDBFDFDFF0000099A9A00090000000A009900000000000000000000000000000000009F9F9FBFBDBB9BDBF9F9FBF9B99BDBFBF9F9FBFFFFFFFFFFFFFDBB99B9FFBFFFDFFFFFFFF00000000000000000000009000009A90909A09F90B09C9F9FBFF9CBFFFD000999AB00000000009009090009000000000000000000000000000000F0FFBFFBDF9FBDBF9F9FFBDF9F99BDBF9F9F9FFDFFFFFFFFFFFFFFBDB9DFDBFDFFBF9FF9FBDA000000000000000000090000000000BDA9090909090B9BCBD9999F9FFF000000090000900000000000090000000000000000000000000000000099FBDFBDBBFBDBF9BFBF9FFBF9F9999FB9FFFFBFFFFFFFFFFFFFFF999BFBFFFFBDFFFFFFFFF900000000000000000000000900909909C90000B009BD0D9FB09A9DFFDF00009000000900000A0009A09A90090000000000000000000000000000B9FFBFFBDBDBF9FFDBDFFBDFFFFFB9B9DB9FFFFFFFFFFFFFFFFFFFB9F9FFFFFFFFFFFFFFFFFF0000000000000000000009000000E99F9E9090DB0D0F999D0BC90BDBBF009000F009A00009A900000900000000000000000000000000000000009FF9FB9DBFBF9FBDBFFBDFFBDFF9FF99B9FFFBDFFFFFFFFFFFFFF999FFFFFFFFFFFFFFFFFBFB000000000000000000000000090090FCB909FA90DB990D09F09BD9ADDF00009A9E00090000000090900000000000000000000000000000000000FFBFB9FBF9FDBFFBFFFFFBFFFBFFF9F999FBDFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFDF90000000000000000009000900090BDBDE9EBD9DBC0099B9F90F9090BF00000909A090000A000000A0900900000000000000000000000000000BDBDBDB9BDBFBF9FFDBFDFF9FFFFFFFFBF99FBFFBFFFFFFFFFFFBF9FFFFFFFFFFFFFFFFFFFFFFB00000000000000000000900000C9090B9F9D909DF9B009D0BD0F9009909A900009909000900000090090000000000000000000000000000000FBFFFBDBDBDBDBFBFFFFBFFFFFFFFFFFFFBF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF0000000000000000000000000B00B09090B0B90BDFDFF0990BDF0B9C900000B09000009A000000909000000900000000000000000000000009BDFB9FB9BBFBFFFDFFFFFFFFFFFFFFFFFFFFF9FBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB00000000000000000090900909900B0D909009CFFDF90B09090909B90000B00A09009A9A0000900A09090000000000000000000000000000BDFBDB9B9FDBDBDBFFBFFFFFFFFFFFFFFFFFDBFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF90000000000000000000009A9009909B09A9F9BB9BB9090909AB0F090000090900B000090090A909000A0000000000000000000000000000FBFFB9FDB9BFFFFFFFFFFBFFBFFFFFFFFFFBFFBDBFDFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFDBF00000000000000009000909A0B00B09DB90909C900A9CB9B090F9B0B000A000900B0B009A09C90090909090000000000000000000000009FF9F9BB99B9BFFBFBFDFFDFFFFFFFFFFFDFFF9FFFBFFFFFFFFFFFFFFFFBFFFFBFFFFFFFFFFFFFFBDB00000000000009000090A909909E9F0DCBDADBBF99CB90C09A9CBD900B0900009A0900B00909A90A000000000000000000000000000000FB9B9BDBB90FFDBFFFFBFBFFFFFFBFDBFFBFFBFFBDFFBFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFF9BD0000000000000000000090F0A9F9909B9FD9F0D90FFDADB9A9FB90B0B0B00B09A09A0B0A9CA90090090B09000000000000000000000009FBDB9F9F90F9FBFDF9FFFFFBFFFFDFBFF9FFBDF9FFF9FFFFFFFFFFFFBF9FBDFFBFBFFFFFFFFFFFF99B0000000000000000900B0909DB9A90B0DFBFFDBDDF9A9B90DFF9CF00009B009090A9A090B0909A0000000000000000000000000000000FF9B90BB099BFFFFBFFBF9FFFDBFBBFFDBFB9FBFF9FBFFFFFFFFFBFDBDBF9FB99F9FBFFFFFFFFFFFB0F900000000000000000900B0A9009C909B0D9DBDFBFDF90DB90FDB9BB0A0B90000B009A00AB090900B09090000000000000000000000009B9B9909B009FBFFFBFFFFBDFFFFDFB9BDBDBDB9BFDFBDFFFFFFFFFBFB9B999B99BDF9FFBFFFFFFFD9B0000000000000000900990990BDB9A9C9B90DFFFDBDB090D99DB0C90000B00909CBA90BFB90B009A00A00000000000000000000000000F9090909009B9FDBDFF9FBFFBF9BB99B9A9B9B9F9BBFDBFFFFFFFDBD9BD9B9BDB9F9BFBFDFFFFFFFB9F9000000000000090009A090AD0B0D90B000BFF9DBDF9D09FD9A9D9A0A9B0BF0BABADBA9A90A9A9A90909000000000000000000000000BB0900090909FFFBFFBFFBFDBF9BD99F999999909BDF9BFFFFFFFBBFBB99B9BD9BDBBFFDFFFFFFFFF90B000000000000000009009DAD9B0909090B9D99DA9DB09BDF9099A900000B09B0F9FBCBB9A90B9A9A0A9A900000000000000000000000990909000000B9FFBFF9FDFBDBF9B9B9A9F9B099B9B9FFDFFFFFFDF999B90990B9A9D9BBFBFFFBFFF9F9B0000000000000090090B09B00B09A9090099CBDFF090D9FF9009A900A9AB0B0BB0FB9A9A00B00B90900A000000000000000000000000990D0909009DB9FDFBFBFBFB9B09B999B9999B9090B9BBBFFFFFBFF0909FB090090B99999B9FFFFF0B900000000000009000BC909E9F90F090B0FA9DBDBDBD090D9DAD0DDFA09A90B0B90BFFA9A9B000B00B00B9000000000000000000000009A9BB9A90000BFFBFB9F9B9999099090909ADB909B99F9FDFFFFFDB9B90BD09000009000DB9F9FFFF9909000000000000000009A90909EB90B09C9909D9EFDB0099FF99BBF909BA9B0B00AFFF900F0A0000B090000000000000000000000000909F9F9090009F9BDF9F9B990000000000009F0009099BDBBFBFFFB909090B00009000009A9DBFFFFF000000000000000000999090F009B9CBC9FBF09F9BD900090FF9CA090B0A0900A9AB0BBFEBBFF0B00B0BA9A9000000000000000000000090B9B09000009BFFBFBFBDBDB000000000000B990090B9BDFFFFBDBDB90900000000000DB9BFFFFFFB00000000000000009000A9A90B9009B9FBC9DBD0D0BDB90B9ADB999E99B000B00A9A90DFFCBFFFCFA9ADBCDA0000000000000000000000909B990900000DBDBDBF9BFB9F900000000000009009CB9B9FBFFFFBD09090900000A9B90999FBFFFF90000000000009000B99C909D0B90D0909FBC99999D90090DFFDBC99A9000A00A9A9ABBB9BFFFFBB0FFFFBB090000000000000000000000990000000000BBF9BFDFF9F9B9090900000009000999B9FBFDF9FBDBB9009909A9B9900B9FBDFFFFD000000000000000090009A9E99C0D0B09A90BD9DAD09D9FFFFDFDBDA900B090BB9A9B9009A9BBBBDFFFF0FD000000000000000000000009000900000009BD9ABDBB9B9B909B00090090000A9B0B9F9F9FBFBDB990B000099000099DBF9FBFFFB0000000000009009009B09090F9DB900090BD90B909FFFFDBFBFBC9D0900FBA9E0F000BA000909BABB9FBFA000C000000000000000000090900000000009BBD9B9090909B909B90900900990999B9FBFBDBDBBDB999990009099A9B90FBDFFF90000000000000000A900909090F909909AD9099D90FFDF9A9009DBDB09A9A9E9BBA9A00B00A0009900A90B909A9A9000000000000000000BA9000000000099B9900000000090909090099099B0DB999F9BFBDB9FBC9A99000900909B990B9FFF900000000000000900B09A9F090F9009C9FFFF09CBDFBDF9FFF0909D900FBFBFADBAC9AD0B00B0A00000000000000000000000000000000990000000009B9B000090090009000000009009A909B9FBF9F9BDB9F99B990090000909090BFDFFB900000000000000B009C90D909BD90F9FDFDF9099DF9FDF9FDBD0F909090BB09A9B0B9AB0B0000000A0090900000900000000000000000000000000000009000099B000090000000000009090DBDB9F9BDBDBDBBDA90909000900009ADFDBFF9F0000000000000900909B0B09F0FFFDFFBBBFD90FF9FBF9BDBC9F9CB099BCBB000A90A9000000000009A00A00090A09000000000000000000000000000000900B0B0F90000000000000000909A9B9F9F9B9B9BD9BD99A90A90A009D099BFF9FB900000000090000900A90D0B009099A999C0DBE9D9FC99C90990F9F9F09BB000000000B00B0000009009A0900009000000000000000000000000000000000000999909B0000000009009A90B99BDB9B9F9F9B9B9BBFBDBD9F99FDA9FBE9BDBDB0900000000000000B009A909B09909DBCB990D90FD9B00BDB0BD9E9F9F90BB000000000000000000A0000F0CB0000B00000000000000000000000000000000090B0B9B0900909909D09BDB909F99BDBDB9B909DAD990BDBF9FF9BDB9099FB0B900000000000000B0090090B099A0F909909A99099BD09D909090BDBD090000000000000000000000000FFFFF0A009000000000000000000000000000000000009099099000090009A9B09909B9B0F9B9B9DA99B99BFBF9F9FB9BDB90B9F099900000000000000900D09B09C9AC9990B9C90D0000BD0BC9E9AD09990090900000000B00000000000009AFFFFFFDA000000000000000000000000000000000000009A9B0B9000009A999090B90909B9BDBDA99900909999B9F90909909909B900900000000000000090A000B9E9BE9E900B0B09B0909D99F9FDBD000B9AD0000000000A000000000000ADFFFFFFFDF0000000000000000000000000000000000000090990900000090B99B9000090090B9B9BB9000B00B9F9BFB9000B09090B9B0000000000000009A99090099099F9E99090909909F90D9F9ADBD900DBD9000000BA9000000000000A9FFFFFFFFFB000000000000000000000000000000000000099090000009000909A909900009099A9D9009909909D0BD99000B99A90B090000000000000090000090DB0F0BD9F9E0A9DA9A0DBDA9909C9FF9A9DBC9B00000B0000000000000B09ABBBFFDEBF0000000000000000000000000000000000000000000000090090009909B00009009F99A90900CB090B9F9B09009909090900900000000000000909B00B0909D0A9FDBD0BC909B009D09DBFDBD09A9990000000B0000000000000A000900BFBD900090000000000000000000000000000000000000000000090099000909F90000909B990090B99B009B99090B090B900009000000000000000B00909099A9909900BDA9F9F0B09B9B90BDFF90B09A90900000A0B00000000000B000000000BA00000F000000000000000000000000000000000000000000909009900B909900090B0DA909009A9C900FB900909A9009090000000000000000009A0B0B090DA90990FFDB0F9BDBC900D90FF9F9DA9DAD9000000000000000000B00000AC09A09009FF000D00000000000000000000000000000000000000B090B9000990B9B0090099B9900099DBB9099900B09090900000090000000000000000909090B0990DA0BFFB0FF09ADBDBDF0990FDFFFDA99000000000A00090000000000BCB0A09009EB09A9A0000000000000000000000000000000000000909099000B0909900000909090009A9A99090B09099B090000009000000000000000090900B0F099A9099FFFFDF99DF9FDFDBD90F9E9FFFF90B0000A0009A00A00000000000B0909A000BDB0000000000000000000000000000000000000000009000000909A9000000009A9000099999090F9009B09000000000000000000000000000A90999CBEDA99E9FF9A9F0BDF9F0BD0B09D90F9FFD9000009A0000B00B00000000009A000090000F09E90000000000000000000000000000000000090009090900909909000009090B00000000BC90B9009B9900000000000000000000000009000E0B99FBDADFEBD099090B90D9DB990B0B0BCBFBCB000000000000B000000000B00000000009B09E900B000000000000000000000000000000000009000000090B000B00009000990009099B9B999009B00000090000000000000000090000090990FCBDAF9B9FA9FA0B09099FF9F99C9909B9C9BD00000B00000B00000000A0000000000000ADA0B000000000000000000000000000000000000000009090909909900009009090900009A9090000009909009000000000000000000009009A000BDBDBF90FFFDFF999009FDF0B90A99A0F0DB9CB0000B0000A00000000A00B0000000000009A9BCBD00000000000000000000000000000000000009000000900000900009000000000009090B09000000000009000000000000000000000009B90FFB090B09FBFFF0A9B099DBDA990BD99F9C9B000000A9000000000000B0000000000A0009AC9BCBE90000000000000000000000000000000000000090000B900000000090000090090000090090000090900000000000000000000000900000B9FDE909FF9DFFFFD00FC9FDBDA99EBE9FFBCF900B0090A0900000000000000000000900009B0FBDB0000000000000000000000000000000000000000090900009000000000000000009090009000000000000090000000000000000090090900FFB90BEFFFFFFDFA9FBDBDBC9F9A9D9FFBCBDA0000A0A9A00000000000000000000B0090000090B000000000000000000000000000000000000000090000909000090A90000909B0000009000000000000090000090000000000900900A00009BFF90B99FFFFFBFDFFDF9D99F909DB0B99F9FD0000000090000000000000000A0A00000000000000000000000000000000000000000000000000000000900009090090D09900A9099009000900000000000000000A900000000000A00090909A09FCB0FA9FF9F9BFDFB9D0D90D9E9FD9FA9CBB00A9A90A0000000000000000090900B09000A00000000000000000000000000000000000000000000000090000B090090B09F9009AC990B090009000000000000000000000000900909000090900BFDFDFFFFFF099F0DB990FDFDBF9F009B090000000A9A00000000000000000A0A900A0B009000000000000000000000000000000000000000000000090000000009A999A90990990B09000900000000000000009000090000000000A900A00009FFFFFFFFDBF0FBDBC9DBDB9AD9FA9B0DBCB0000B0009000000A000000000A9090A90900900B0A900000000000000000000000000000000000000000000009909009900999A009A909009000000000000000000000000000000090090099C9000FFFBFFFFBF09ADF09DB999ADB0B9D09A9A900000B000000000000A9A0000000000000B0A00090C9000000000000000000000000000000000000000000000009090009B0B0D90090090900B00000000000000900000000000000000009A0B00000BFDBFFBCD99DBDFD909E90BCBDBA90909000A0000000000000000B0B000000A090A0090900A9A0A9000000000000000000000000000000000000000000000000990099090B009900A0909090000000000000000000000090090009009C0F9009F0FCB9FB90A99FFBDB09BD999CDB0900F00000B000A00000A09A9A9000000A00009000000B00909000000000000000000000000000000000000000000000000900B0000B09090A9090000000000000000000000000000000000900090B90B000A9BB9ED09BD9E9FD9DBD09E9CB90F09B09000B00A090000009A9A00000000090A0000000000900000000000000000000000000000000000000000000000000000900909909000909000090000000000000000000000000909000009A900AD000D9000B90F0BF9DFF90909F9FF90B90FCBF0000B09A0000000A00000000000000900090A0900000000000000000000000000000000000000000000000000000090090000090B0900000900000000000000000000000000000A000B00009090B00BEFF99099D00FBDFF9A909FDBB09A99BFD000000A9A0000000B0000A000000A00A90A090000000000000000000000000000000000000000000000000000000000009009A900009000000000000000000000000000000000009000090BCB009009FFFE9F0AFBD0FBD9C90F09FD0BC9EB09F00A000900000000000A09090000090090000000090B00000000000000000000000000000000000000000000000000000000900009000090000000000000000000000000000900900090900C9009A09FFFFFF0BDFFFB9DB09DF9909ABDBF90FF9000000A0000000B0BA900A000000000000909090A0000000000000000000000000000900000000000000000000000000000000900000000000000000000000000009000000000009A000A090B0090CFFFFFFF9BFFB09A09DBBD0F9FDFFF0FFDB000000000A9A0000000B9000000000B0B000A9A900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090909A90DA09BFFFFFFB0A9FFFF990B00BDF0BFBDBF9BFD0000000B00000B0B09A0A00A0000A00009A90000090000000000000000000900090000000000000000000000000000000000000000000000000000000000000000000900000000900090000FB0D0CFFFFFFF99C909FBA909BDDFB90DDF09F09F0000A9A00000A000A009000009A90000A0000B0F00009000000000000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000A90BD00FBFFFFFFFF9AFB09BF9B0FBCBFB90FBE9BFADF9000009A9A00B900B000000000A000009090A90C9000000000000000000900009000000000000000000000000000000000000000000000000000000000000000000000000000000009090C90BDBDFFFFFFFFFDF90BE9F9FB9B9B09A9F9FDEDBD9000A9A0009A0AB00000A00000090B000A0900BFAF0900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0B09EFF9FFFFFFFFFFB099FFFFFC9009ADA990B9B0B900000000000900000A090A9000A000A09A0B0FDFBC0000000000000000000900A00000000000000000000000000000000000009000000000000000000000000000000000000000009A9090E9B09FFFFFFFFFFFF909FDFF99F9B0999009009D000009A9A9A00000000900000000900009A900A9EBD9A90000000000000000900009000000000000000000000000000000000000000000000000000000000000000000000000000900000F0B900BE9ADFFFFFFFFFFF09B9A9E9009E000D0DB0A99090A000A000A00000A0A000A000A00A0F00B9F9F0A000000000000000090000900000900000000090000000000000000000900000000000000000000000000000000000000000009C9B009000099FFFFFFFFFFFFFF09A9D9BD9F9B0B0B90D99A0A00BB09000090A09000A9090B009090B0B000A09090000000000000000A0000000000000000000000000000000000000000000A9000000000000000000000000000000000000000B0090009000A9BFFFFFFFFFFFFF0D9AD0F90F090D0909F0900000BA00000A090A0090A0A00B0A000000B099A09A9000000000000000090000000000000090000000000000000000000000000C0900000000000000000000000000000000000009F00900000090CFFFFFFFFFFFFBB0BDB90F90BDABB09F0F00000B09A000090A090B0A900B000000000900A099A000000000000000090000000000000000000000000000000000000000000090B000000000000000000000000000000000A00090090A009000009BFFFFFFFFFF90990BD9F90B909D0BC9F990009A9A90000A009AA09000B00B090000A0009BEA090000000000000000000B0000000000000000000000000000000000000000A0000000000000000000000000000000000090000B90090900090B00B9B9F9BF990A00AD0D00B0D0B0B0BB09A000A000000A900A090B009A09A000A0B009A9A099000000900900000000000000000000000000B00000000000000000000000900000000000000000000000000000000000000900900F000009000090009A9A90A00000999A900B0B0B099CB90900900000000009A00000A9A09BA0900B90009A0A000000000000000000000009000A0000000000900B0000000000000000000009000000000000000000000000000000000000000909900000B09000000009A9000000A09009B0B909A0B90900A00A00A000A0BA90000A9A90A0900A90A0B0A090900909000000000009000900A0900000000000A0000000000000000000000000000000000000000000000000000000000009009A90A00000090B0000000000000000090B9A0BDA90F9EB00B0000000000009A9A00900000B0B0A009A909AD0000000000900000000000000009000C00900000090000000000000000000000000000000000000000000000000000000009A90A900009000099E900000000A0000000900BD00B9BBDBDB9B0B9A0A900000000A9B00A0009A9ADA90B0A9E9A9A09000B0000A900000000000000000009000000000000900000000000000000000000000000000000000000000000000000000009009F09C009A09A000000009A0A0000A0090900A9FBF00B99CB0900A0A000A09AF0B9A90A000B0A9E9B0B0B09A0B00000B0000000000000000000000A00009000000000000000000000000000000000000000000000000000000000000009009090009A909090990000000000900A000909B0909A9B99ACB0900A0B0009A09AB0BB0B00A9A9AB09EB0A9AF0F09000909000009000000000090000090000000000000000000000000000000000000000000000000000000000000000090090A9ACADA9090B0009A0000000000A0A900F90AD090009A90B99090B009A9A9A0BBA9BB0B00B9A9AB9BA90909A9B0A0090A000009000000000000000000000900000000000000000000000000000000000000000000000000000000000000A0B009090909000D090F00900000000009000F0099090A09000B09A90BB09A9A9A9BF09A9A90BA9A9A9BE9BB0BBA9A0909A00009A90A0000000000000000000000000000000000000000000000000000000000000009000000000000000000A909090F0F09A9009A9090B9A900000000A0B0B09B009F000A0009A9C9A99BA9A09AB0BBE9A9A009A9A9A9BA9AF0F0F9A000000900000090000090000000000000000000000000000000000000000000000A000000000A00000000000000000900900C0909F9C9A009CB0B09000000000000000AC09A00F99000009A90DAB09AB0AF9FB0BB9A9A9AA9B0FA99BF9BB9A090A90900A90090000090000090000000000000000000000000000000C0B0000000F000000AD0000000000000000000000000B0B0B090B0D09A90090000000000009A00099B00999A000000F9E9A99BAB90B9BA9BB0A9A9AB9BEBB9BAB0BB00A9000000A090000000900A0000009000000000000000009FD000000009000000009A00C0F0000090000000D0090F00009009E9C90D090BDB0B009090B0000000000A0000B0A0A90DA000009B00B9BDA9F0BFAFB9A0B09A9AB9A9B9BA9B9B009A90A09090900009A909A90090000000900000009000000000A9A90A0000A90000A00C909A00000A000000A009A0009090A9009A9A9A9AD09CB0DA90A090A00000000000B0090900A90DB00000BB0A9A9ABB0B9BA9BA9A0FB9EB9ABA9B0B09ADADA90000A009A90000A000900A9009A0000000000000000009000000900900C000DEF00AC90C900000000009009F0B00A900B00909A9C9A90BDB09A990A909A00000009A0B9A0A90900090B0000DB9E909A9BFBA9B0900BB0BB9A9B9A9A9A09A9A9A009A90A0000009009A0A900000090B090000000000000000000000C0ADBDEFFFFFDFFEFF0E90C09CA900A900909A9C090090B090B90DB9009AD00B00000900000A00BCA09D000999E90000BA9A99BA9ABB09A0A00BBCBB9ABB9A9A000BA9A0B009000000000A0009A00909A0B00000000000009000000000900000B0D0A0B0F9B9BF99B9A90F90CB9C0090E9ADAD0B9A09A000DA9E9B0009090A9090009A0009000B0B09B0A009A09A000009090A09A909A00090B0BBB0B09AB0B09A9000090A00A0000090009A000900A090090A0900000000000000000009A0900E90C9C9AD0A000A009A90A0B00B9EA090909A90090099A9A990009D00A0900A00B0009A00A9A00A9A090A9C9B00900000A0B9BB9A9A90000A9B0BFBBB090A0B09A9A9A0900000000A0A90000A00A900A90A090A09A9000000A00090000090A0900B0BACB0BC9A90000009090B0009CB0F0B09A9AC9A00909E99A90B0090A90900099009A09A9A90A9A0090BC9B0090B00900A90A9A00A00A90A9B0B000A090A0A000000A0B0900B000000000900000B0009000900000090090000000000C909E9F0909B0BCB000000000A0A00F0B0B090B0DA9090B09A0B090A909990009000A90A00900B0A09AF0A9A90B09A000A000A0A90AB9B0B000000A9A0B09A0000A90000000B0B00A000000000A90A0000000000A09A0A9A00000009090AD0F9A9EB09A0F0B0A9A90B000000A9090B0B0009ABC9A9CA9A09AD9099AD9A0D009000A090009B0B0B0B0BA9A9A90A09900B0090A9090A90A0B0090000000B0A00900B00B000000000A90B00A90B00000000000000B09A0090090A00F00A0A900B00909C9A9B0F9A9CB0000A00000CA0A9009A9AD0B9DAB9A9A090ADA090AD9A9000A0090A9B00900B0B9E9A9ADA90900B0090A90A00A909BA900A0A09A0B0B0B0A0B0B0000009A0B0A000090000000000000A00000A090A0B0A9000009090A909BAF0A90BCA9A0DA90B0000900B0B0B0AB0A9A0B90BA90FAD0B0B99990B9AD9D09090BA9009B09B0F9AB9A90A9AAD0BD0B0000A90B00A9A900A00090A09000B0B0B0B0B0A90B0000090B0A00A00000000000000A0909A909009E9E9A9A0B09B0A0D0BDAF0B9E9BB0AB0B090A0000A90BC9A9ADB0A909EFBDABCB00A0CB00909A9090B090B9E90BCBBAB9A90A9A9B0B09B0B0B09A00009AB0A0009A0A900A0BCB0B9A9A009AA0A09A9AA0090090A0A00A009A90A90A0A00A009A9A90000B0AB0A99BAFAFDAF0B0B0B90009AA909AB9AB0BA9E9B0F9F0BFBDEBDBB0BDB99A90B099E90909E9A9B9E9B0BDAB0A9ADB0B09A0B0000A0000B090900B0A090A9009EBDB0A9A9A9A0909A00A90B0A00A00909000A00A90A9009A90B0A9A90A9A9CBF0B9A0009FFFFDB0BCB0ADABA90AA000A9CB09A9B0BB0BFBDFF9FAFCB0B0F0B000F9A999A9A9AB0B0BA0B9A90BCB0BA9E9A9F0A00000B000A9A0B0009AA90A0A0BEFFB9A9A9A9A0B00B00A9A9A9A0B0A0A0000B00A90A9000000B0B0A9000A909B009A0B0FFFFFEF0B0B0B09AB909B0B0AB0B0B0A90A90B0FBFFFFFBFB09990B909A9AABC9BDB9F9F9BB0BBA9AB0B0BB0BDA9B09A09000009A0B0B0B009A0090B9FF9EBF9A90A9A00B00B00B0BE9B0B0B09A9000B0A900000B0B0B0B00A909ABA09A0090BFFFFFFFF0B0A0BE90EBA0B0B90A9A0B9AB9AB0BBCFBDFFFF0F0B0F9EB0DB999BA9ABA9ABA90B90A9B0B0B00B0A9A9A000A00A09A9A9A0B0A9A00B0A9EFFEFF0A9AA90B0B00B0AB0B90BCB0A09A00A0B009A00A0B0B0B0B09A90A0B009A00B0BFFFFFFFFF0B099A9ABB90B9A00A9A0B90A9CADFADFFEFFFFFFFF0BBFB9DBBFBEBDB9A9B9A9BBA0A90A9A9A9A9A90BE090B00909ADB9A9A0A9A9A9A9BBFBFFFFFF009AB0B0FA0B00F0AB0B0A90A0B0900ABA9A99A0BCB0B0A000A9B0B0A90B0A9EFFFFFFFFF0B0A9A9A9EB0A9B09A090AB9BBFFFFFFFFFFFFFFFF909B9A9BFB9B9AFA9A9A9A9009000B0B0000000A90B0A0B0A0A9B0000909A0B0B0F0FCFFFFFFFBA90B0E90B00A9A90BCABCA9A90AA9009A9A0A9A9B0B0F9B0B0A0B0B0B0A9BB9FFFFFFFFFACB0A9ADA90B0A9AA9AA900BCBFFFFFFFDFFFFFFFFB009A909B9EBB9B9ADAB0BAB00000000B0090009A90B00009A9ABBB0B0A00B0FFFBFBFFFFFFFFEDBA9A9A000F9A9AC0A90A9A9EB90ABBE9A9B0A9ACBCB0A0F0B9BD0A9A9B0BCBFFFFFFFFFF9A09ADA9AB0B0A09A90A0BFBFFFFFFFFFBFFFFFFF000A9CB0BFB9EB0F9A90B09000000000000A000000A00B0BA9A9A90A0009ADFFFBCFFFFFFFFFFFB0000000E9A0AC0A900E90A9A90AF909A9A0A900B0B0B09A0BCB0B9B0BADBF9FFFFFFFFFFE9FA9A90E09A9E9AADA9FFFFFFFFFFFBFDFFFFFFF00090B0BDA9A99B00B0BA9A900000000000909000090B0BCBDA909FFBB0ADAFFFFFDFEFFFFFFFF00F00000000B0B00A0000B0A90A90AFABC09000E0E0F0E00F0B0B0A0B09AF9EFFFFFFFFFF9A00E0A090ACBFFF9AFFFFFFFFFFFFFDFEFFFFFFF0000B090B9B9A00A90B0900000000000000000000000BCBF0B0000FFCFB0BFFFFFBEBDFFFFFFFFF00A00A00A0C00C00CA900D0A9CA90090B0A000009A9A9E00BCBC90BCBB9EF9BFFFFFFFFFFDA909C0AC9ACFFFFFFFFFFFFFFFFFBFF9FFFFFFFB000000000009A90000000000000000000000000000A0B0FF00000FFFB0FFFFFFFDFFFFFFFFFFFE0000000000A00A00A0CA00AC0A0CA0E00000000E0F0F00F0CB09A9E900CBDEDFFFFFFFFF0A0E0A0A00A0FFFFFFFFFFFFFFFFFFDE9FFFFFFFF0000000000000000000000000000000000000000000090DADB0000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000B0F00E00A90B0000A9BFFFBFFFFFFFFFF00000000000FFFFFFFFFFFFFFFFFFFBFFFFFFFFF0000000000000000000000000000000000000000000000BFF00000000000000000000000000105000000000000AEAD05FE,'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.',5,'http://accweb/emmployees/davolio.bmp')
go
set identity_insert "Employees" off
go
ALTER TABLE "Employees" CHECK CONSTRAINT ALL
go
set quoted_identifier on
go

ALTER TABLE "Order Details" NOCHECK CONSTRAINT ALL
go
INSERT "Order Details" VALUES(10248,11,14,12,0)
INSERT "Order Details" VALUES(10248,42,9.8,10,0)
INSERT "Order Details" VALUES(10248,72,34.8,5,0)
INSERT "Order Details" VALUES(10249,14,18.6,9,0)
INSERT "Order Details" VALUES(10249,51,42.4,40,0)
INSERT "Order Details" VALUES(10250,41,7.7,10,0)
INSERT "Order Details" VALUES(10250,51,42.4,35,0.15)
INSERT "Order Details" VALUES(10250,65,16.8,15,0.15)
INSERT "Order Details" VALUES(10251,22,16.8,6,0.05)
INSERT "Order Details" VALUES(10251,57,15.6,15,0.05)
go
INSERT "Order Details" VALUES(10251,65,16.8,20,0)
INSERT "Order Details" VALUES(10252,20,64.8,40,0.05)
INSERT "Order Details" VALUES(10252,33,2,25,0.05)
INSERT "Order Details" VALUES(10252,60,27.2,40,0)
INSERT "Order Details" VALUES(10253,31,10,20,0)
INSERT "Order Details" VALUES(10253,39,14.4,42,0)
INSERT "Order Details" VALUES(10253,49,16,40,0)
INSERT "Order Details" VALUES(10254,24,3.6,15,0.15)
INSERT "Order Details" VALUES(10254,55,19.2,21,0.15)
INSERT "Order Details" VALUES(10254,74,8,21,0)
go
INSERT "Order Details" VALUES(10255,2,15.2,20,0)
INSERT "Order Details" VALUES(10255,16,13.9,35,0)
INSERT "Order Details" VALUES(10255,36,15.2,25,0)
INSERT "Order Details" VALUES(10255,59,44,30,0)
INSERT "Order Details" VALUES(10256,53,26.2,15,0)
INSERT "Order Details" VALUES(10256,77,10.4,12,0)
INSERT "Order Details" VALUES(10257,27,35.1,25,0)
INSERT "Order Details" VALUES(10257,39,14.4,6,0)
INSERT "Order Details" VALUES(10257,77,10.4,15,0)
INSERT "Order Details" VALUES(10258,2,15.2,50,0.2)
go
INSERT "Order Details" VALUES(10258,5,17,65,0.2)
INSERT "Order Details" VALUES(10258,32,25.6,6,0.2)
INSERT "Order Details" VALUES(10259,21,8,10,0)
INSERT "Order Details" VALUES(10259,37,20.8,1,0)
INSERT "Order Details" VALUES(10260,41,7.7,16,0.25)
INSERT "Order Details" VALUES(10260,57,15.6,50,0)
INSERT "Order Details" VALUES(10260,62,39.4,15,0.25)
INSERT "Order Details" VALUES(10260,70,12,21,0.25)
INSERT "Order Details" VALUES(10261,21,8,20,0)
INSERT "Order Details" VALUES(10261,35,14.4,20,0)
go
INSERT "Order Details" VALUES(10262,5,17,12,0.2)
INSERT "Order Details" VALUES(10262,7,24,15,0)
INSERT "Order Details" VALUES(10262,56,30.4,2,0)
INSERT "Order Details" VALUES(10263,16,13.9,60,0.25)
INSERT "Order Details" VALUES(10263,24,3.6,28,0)
INSERT "Order Details" VALUES(10263,30,20.7,60,0.25)
INSERT "Order Details" VALUES(10263,74,8,36,0.25)
INSERT "Order Details" VALUES(10264,2,15.2,35,0)
INSERT "Order Details" VALUES(10264,41,7.7,25,0.15)
INSERT "Order Details" VALUES(10265,17,31.2,30,0)
go
INSERT "Order Details" VALUES(10265,70,12,20,0)
INSERT "Order Details" VALUES(10266,12,30.4,12,0.05)
INSERT "Order Details" VALUES(10267,40,14.7,50,0)
INSERT "Order Details" VALUES(10267,59,44,70,0.15)
INSERT "Order Details" VALUES(10267,76,14.4,15,0.15)
INSERT "Order Details" VALUES(10268,29,99,10,0)
INSERT "Order Details" VALUES(10268,72,27.8,4,0)
INSERT "Order Details" VALUES(10269,33,2,60,0.05)
INSERT "Order Details" VALUES(10269,72,27.8,20,0.05)
INSERT "Order Details" VALUES(10270,36,15.2,30,0)
go
INSERT "Order Details" VALUES(10270,43,36.8,25,0)
INSERT "Order Details" VALUES(10271,33,2,24,0)
INSERT "Order Details" VALUES(10272,20,64.8,6,0)
INSERT "Order Details" VALUES(10272,31,10,40,0)
INSERT "Order Details" VALUES(10272,72,27.8,24,0)
INSERT "Order Details" VALUES(10273,10,24.8,24,0.05)
INSERT "Order Details" VALUES(10273,31,10,15,0.05)
INSERT "Order Details" VALUES(10273,33,2,20,0)
INSERT "Order Details" VALUES(10273,40,14.7,60,0.05)
INSERT "Order Details" VALUES(10273,76,14.4,33,0.05)
go
INSERT "Order Details" VALUES(10274,71,17.2,20,0)
INSERT "Order Details" VALUES(10274,72,27.8,7,0)
INSERT "Order Details" VALUES(10275,24,3.6,12,0.05)
INSERT "Order Details" VALUES(10275,59,44,6,0.05)
INSERT "Order Details" VALUES(10276,10,24.8,15,0)
INSERT "Order Details" VALUES(10276,13,4.8,10,0)
INSERT "Order Details" VALUES(10277,28,36.4,20,0)
INSERT "Order Details" VALUES(10277,62,39.4,12,0)
INSERT "Order Details" VALUES(10278,44,15.5,16,0)
INSERT "Order Details" VALUES(10278,59,44,15,0)
go
INSERT "Order Details" VALUES(10278,63,35.1,8,0)
INSERT "Order Details" VALUES(10278,73,12,25,0)
INSERT "Order Details" VALUES(10279,17,31.2,15,0.25)
INSERT "Order Details" VALUES(10280,24,3.6,12,0)
INSERT "Order Details" VALUES(10280,55,19.2,20,0)
INSERT "Order Details" VALUES(10280,75,6.2,30,0)
INSERT "Order Details" VALUES(10281,19,7.3,1,0)
INSERT "Order Details" VALUES(10281,24,3.6,6,0)
INSERT "Order Details" VALUES(10281,35,14.4,4,0)
INSERT "Order Details" VALUES(10282,30,20.7,6,0)
go
INSERT "Order Details" VALUES(10282,57,15.6,2,0)
INSERT "Order Details" VALUES(10283,15,12.4,20,0)
INSERT "Order Details" VALUES(10283,19,7.3,18,0)
INSERT "Order Details" VALUES(10283,60,27.2,35,0)
INSERT "Order Details" VALUES(10283,72,27.8,3,0)
INSERT "Order Details" VALUES(10284,27,35.1,15,0.25)
INSERT "Order Details" VALUES(10284,44,15.5,21,0)
INSERT "Order Details" VALUES(10284,60,27.2,20,0.25)
INSERT "Order Details" VALUES(10284,67,11.2,5,0.25)
INSERT "Order Details" VALUES(10285,1,14.4,45,0.2)
go
INSERT "Order Details" VALUES(10285,40,14.7,40,0.2)
INSERT "Order Details" VALUES(10285,53,26.2,36,0.2)
INSERT "Order Details" VALUES(10286,35,14.4,100,0)
INSERT "Order Details" VALUES(10286,62,39.4,40,0)
INSERT "Order Details" VALUES(10287,16,13.9,40,0.15)
INSERT "Order Details" VALUES(10287,34,11.2,20,0)
INSERT "Order Details" VALUES(10287,46,9.6,15,0.15)
INSERT "Order Details" VALUES(10288,54,5.9,10,0.1)
INSERT "Order Details" VALUES(10288,68,10,3,0.1)
INSERT "Order Details" VALUES(10289,3,8,30,0)
go
INSERT "Order Details" VALUES(10289,64,26.6,9,0)
INSERT "Order Details" VALUES(10290,5,17,20,0)
INSERT "Order Details" VALUES(10290,29,99,15,0)
INSERT "Order Details" VALUES(10290,49,16,15,0)
INSERT "Order Details" VALUES(10290,77,10.4,10,0)
INSERT "Order Details" VALUES(10291,13,4.8,20,0.1)
INSERT "Order Details" VALUES(10291,44,15.5,24,0.1)
INSERT "Order Details" VALUES(10291,51,42.4,2,0.1)
INSERT "Order Details" VALUES(10292,20,64.8,20,0)
INSERT "Order Details" VALUES(10293,18,50,12,0)
go
INSERT "Order Details" VALUES(10293,24,3.6,10,0)
INSERT "Order Details" VALUES(10293,63,35.1,5,0)
INSERT "Order Details" VALUES(10293,75,6.2,6,0)
INSERT "Order Details" VALUES(10294,1,14.4,18,0)
INSERT "Order Details" VALUES(10294,17,31.2,15,0)
INSERT "Order Details" VALUES(10294,43,36.8,15,0)
INSERT "Order Details" VALUES(10294,60,27.2,21,0)
INSERT "Order Details" VALUES(10294,75,6.2,6,0)
INSERT "Order Details" VALUES(10295,56,30.4,4,0)
INSERT "Order Details" VALUES(10296,11,16.8,12,0)
go
INSERT "Order Details" VALUES(10296,16,13.9,30,0)
INSERT "Order Details" VALUES(10296,69,28.8,15,0)
INSERT "Order Details" VALUES(10297,39,14.4,60,0)
INSERT "Order Details" VALUES(10297,72,27.8,20,0)
INSERT "Order Details" VALUES(10298,2,15.2,40,0)
INSERT "Order Details" VALUES(10298,36,15.2,40,0.25)
INSERT "Order Details" VALUES(10298,59,44,30,0.25)
INSERT "Order Details" VALUES(10298,62,39.4,15,0)
INSERT "Order Details" VALUES(10299,19,7.3,15,0)
INSERT "Order Details" VALUES(10299,70,12,20,0)
go
INSERT "Order Details" VALUES(10300,66,13.6,30,0)
INSERT "Order Details" VALUES(10300,68,10,20,0)
INSERT "Order Details" VALUES(10301,40,14.7,10,0)
INSERT "Order Details" VALUES(10301,56,30.4,20,0)
INSERT "Order Details" VALUES(10302,17,31.2,40,0)
INSERT "Order Details" VALUES(10302,28,36.4,28,0)
INSERT "Order Details" VALUES(10302,43,36.8,12,0)
INSERT "Order Details" VALUES(10303,40,14.7,40,0.1)
INSERT "Order Details" VALUES(10303,65,16.8,30,0.1)
INSERT "Order Details" VALUES(10303,68,10,15,0.1)
go
INSERT "Order Details" VALUES(10304,49,16,30,0)
INSERT "Order Details" VALUES(10304,59,44,10,0)
INSERT "Order Details" VALUES(10304,71,17.2,2,0)
INSERT "Order Details" VALUES(10305,18,50,25,0.1)
INSERT "Order Details" VALUES(10305,29,99,25,0.1)
INSERT "Order Details" VALUES(10305,39,14.4,30,0.1)
INSERT "Order Details" VALUES(10306,30,20.7,10,0)
INSERT "Order Details" VALUES(10306,53,26.2,10,0)
INSERT "Order Details" VALUES(10306,54,5.9,5,0)
INSERT "Order Details" VALUES(10307,62,39.4,10,0)
go
INSERT "Order Details" VALUES(10307,68,10,3,0)
INSERT "Order Details" VALUES(10308,69,28.8,1,0)
INSERT "Order Details" VALUES(10308,70,12,5,0)
INSERT "Order Details" VALUES(10309,4,17.6,20,0)
INSERT "Order Details" VALUES(10309,6,20,30,0)
INSERT "Order Details" VALUES(10309,42,11.2,2,0)
INSERT "Order Details" VALUES(10309,43,36.8,20,0)
INSERT "Order Details" VALUES(10309,71,17.2,3,0)
INSERT "Order Details" VALUES(10310,16,13.9,10,0)
INSERT "Order Details" VALUES(10310,62,39.4,5,0)
go
INSERT "Order Details" VALUES(10311,42,11.2,6,0)
INSERT "Order Details" VALUES(10311,69,28.8,7,0)
INSERT "Order Details" VALUES(10312,28,36.4,4,0)
INSERT "Order Details" VALUES(10312,43,36.8,24,0)
INSERT "Order Details" VALUES(10312,53,26.2,20,0)
INSERT "Order Details" VALUES(10312,75,6.2,10,0)
INSERT "Order Details" VALUES(10313,36,15.2,12,0)
INSERT "Order Details" VALUES(10314,32,25.6,40,0.1)
INSERT "Order Details" VALUES(10314,58,10.6,30,0.1)
INSERT "Order Details" VALUES(10314,62,39.4,25,0.1)
go
INSERT "Order Details" VALUES(10315,34,11.2,14,0)
INSERT "Order Details" VALUES(10315,70,12,30,0)
INSERT "Order Details" VALUES(10316,41,7.7,10,0)
INSERT "Order Details" VALUES(10316,62,39.4,70,0)
INSERT "Order Details" VALUES(10317,1,14.4,20,0)
INSERT "Order Details" VALUES(10318,41,7.7,20,0)
INSERT "Order Details" VALUES(10318,76,14.4,6,0)
INSERT "Order Details" VALUES(10319,17,31.2,8,0)
INSERT "Order Details" VALUES(10319,28,36.4,14,0)
INSERT "Order Details" VALUES(10319,76,14.4,30,0)
go
INSERT "Order Details" VALUES(10320,71,17.2,30,0)
INSERT "Order Details" VALUES(10321,35,14.4,10,0)
INSERT "Order Details" VALUES(10322,52,5.6,20,0)
INSERT "Order Details" VALUES(10323,15,12.4,5,0)
INSERT "Order Details" VALUES(10323,25,11.2,4,0)
INSERT "Order Details" VALUES(10323,39,14.4,4,0)
INSERT "Order Details" VALUES(10324,16,13.9,21,0.15)
INSERT "Order Details" VALUES(10324,35,14.4,70,0.15)
INSERT "Order Details" VALUES(10324,46,9.6,30,0)
INSERT "Order Details" VALUES(10324,59,44,40,0.15)
go
INSERT "Order Details" VALUES(10324,63,35.1,80,0.15)
INSERT "Order Details" VALUES(10325,6,20,6,0)
INSERT "Order Details" VALUES(10325,13,4.8,12,0)
INSERT "Order Details" VALUES(10325,14,18.6,9,0)
INSERT "Order Details" VALUES(10325,31,10,4,0)
INSERT "Order Details" VALUES(10325,72,27.8,40,0)
INSERT "Order Details" VALUES(10326,4,17.6,24,0)
INSERT "Order Details" VALUES(10326,57,15.6,16,0)
INSERT "Order Details" VALUES(10326,75,6.2,50,0)
INSERT "Order Details" VALUES(10327,2,15.2,25,0.2)
go
INSERT "Order Details" VALUES(10327,11,16.8,50,0.2)
INSERT "Order Details" VALUES(10327,30,20.7,35,0.2)
INSERT "Order Details" VALUES(10327,58,10.6,30,0.2)
INSERT "Order Details" VALUES(10328,59,44,9,0)
INSERT "Order Details" VALUES(10328,65,16.8,40,0)
INSERT "Order Details" VALUES(10328,68,10,10,0)
INSERT "Order Details" VALUES(10329,19,7.3,10,0.05)
INSERT "Order Details" VALUES(10329,30,20.7,8,0.05)
INSERT "Order Details" VALUES(10329,38,210.8,20,0.05)
INSERT "Order Details" VALUES(10329,56,30.4,12,0.05)
go
INSERT "Order Details" VALUES(10330,26,24.9,50,0.15)
INSERT "Order Details" VALUES(10330,72,27.8,25,0.15)
INSERT "Order Details" VALUES(10331,54,5.9,15,0)
INSERT "Order Details" VALUES(10332,18,50,40,0.2)
INSERT "Order Details" VALUES(10332,42,11.2,10,0.2)
INSERT "Order Details" VALUES(10332,47,7.6,16,0.2)
INSERT "Order Details" VALUES(10333,14,18.6,10,0)
INSERT "Order Details" VALUES(10333,21,8,10,0.1)
INSERT "Order Details" VALUES(10333,71,17.2,40,0.1)
INSERT "Order Details" VALUES(10334,52,5.6,8,0)
go
INSERT "Order Details" VALUES(10334,68,10,10,0)
INSERT "Order Details" VALUES(10335,2,15.2,7,0.2)
INSERT "Order Details" VALUES(10335,31,10,25,0.2)
INSERT "Order Details" VALUES(10335,32,25.6,6,0.2)
INSERT "Order Details" VALUES(10335,51,42.4,48,0.2)
INSERT "Order Details" VALUES(10336,4,17.6,18,0.1)
INSERT "Order Details" VALUES(10337,23,7.2,40,0)
INSERT "Order Details" VALUES(10337,26,24.9,24,0)
INSERT "Order Details" VALUES(10337,36,15.2,20,0)
INSERT "Order Details" VALUES(10337,37,20.8,28,0)
go
INSERT "Order Details" VALUES(10337,72,27.8,25,0)
INSERT "Order Details" VALUES(10338,17,31.2,20,0)
INSERT "Order Details" VALUES(10338,30,20.7,15,0)
INSERT "Order Details" VALUES(10339,4,17.6,10,0)
INSERT "Order Details" VALUES(10339,17,31.2,70,0.05)
INSERT "Order Details" VALUES(10339,62,39.4,28,0)
INSERT "Order Details" VALUES(10340,18,50,20,0.05)
INSERT "Order Details" VALUES(10340,41,7.7,12,0.05)
INSERT "Order Details" VALUES(10340,43,36.8,40,0.05)
INSERT "Order Details" VALUES(10341,33,2,8,0)
go
INSERT "Order Details" VALUES(10341,59,44,9,0.15)
INSERT "Order Details" VALUES(10342,2,15.2,24,0.2)
INSERT "Order Details" VALUES(10342,31,10,56,0.2)
INSERT "Order Details" VALUES(10342,36,15.2,40,0.2)
INSERT "Order Details" VALUES(10342,55,19.2,40,0.2)
INSERT "Order Details" VALUES(10343,64,26.6,50,0)
INSERT "Order Details" VALUES(10343,68,10,4,0.05)
INSERT "Order Details" VALUES(10343,76,14.4,15,0)
INSERT "Order Details" VALUES(10344,4,17.6,35,0)
INSERT "Order Details" VALUES(10344,8,32,70,0.25)
go
INSERT "Order Details" VALUES(10345,8,32,70,0)
INSERT "Order Details" VALUES(10345,19,7.3,80,0)
INSERT "Order Details" VALUES(10345,42,11.2,9,0)
INSERT "Order Details" VALUES(10346,17,31.2,36,0.1)
INSERT "Order Details" VALUES(10346,56,30.4,20,0)
INSERT "Order Details" VALUES(10347,25,11.2,10,0)
INSERT "Order Details" VALUES(10347,39,14.4,50,0.15)
INSERT "Order Details" VALUES(10347,40,14.7,4,0)
INSERT "Order Details" VALUES(10347,75,6.2,6,0.15)
INSERT "Order Details" VALUES(10348,1,14.4,15,0.15)
go
INSERT "Order Details" VALUES(10348,23,7.2,25,0)
INSERT "Order Details" VALUES(10349,54,5.9,24,0)
INSERT "Order Details" VALUES(10350,50,13,15,0.1)
INSERT "Order Details" VALUES(10350,69,28.8,18,0.1)
INSERT "Order Details" VALUES(10351,38,210.8,20,0.05)
INSERT "Order Details" VALUES(10351,41,7.7,13,0)
INSERT "Order Details" VALUES(10351,44,15.5,77,0.05)
INSERT "Order Details" VALUES(10351,65,16.8,10,0.05)
INSERT "Order Details" VALUES(10352,24,3.6,10,0)
INSERT "Order Details" VALUES(10352,54,5.9,20,0.15)
go
INSERT "Order Details" VALUES(10353,11,16.8,12,0.2)
INSERT "Order Details" VALUES(10353,38,210.8,50,0.2)
INSERT "Order Details" VALUES(10354,1,14.4,12,0)
INSERT "Order Details" VALUES(10354,29,99,4,0)
INSERT "Order Details" VALUES(10355,24,3.6,25,0)
INSERT "Order Details" VALUES(10355,57,15.6,25,0)
INSERT "Order Details" VALUES(10356,31,10,30,0)
INSERT "Order Details" VALUES(10356,55,19.2,12,0)
INSERT "Order Details" VALUES(10356,69,28.8,20,0)
INSERT "Order Details" VALUES(10357,10,24.8,30,0.2)
go
INSERT "Order Details" VALUES(10357,26,24.9,16,0)
INSERT "Order Details" VALUES(10357,60,27.2,8,0.2)
INSERT "Order Details" VALUES(10358,24,3.6,10,0.05)
INSERT "Order Details" VALUES(10358,34,11.2,10,0.05)
INSERT "Order Details" VALUES(10358,36,15.2,20,0.05)
INSERT "Order Details" VALUES(10359,16,13.9,56,0.05)
INSERT "Order Details" VALUES(10359,31,10,70,0.05)
INSERT "Order Details" VALUES(10359,60,27.2,80,0.05)
INSERT "Order Details" VALUES(10360,28,36.4,30,0)
INSERT "Order Details" VALUES(10360,29,99,35,0)
go
INSERT "Order Details" VALUES(10360,38,210.8,10,0)
INSERT "Order Details" VALUES(10360,49,16,35,0)
INSERT "Order Details" VALUES(10360,54,5.9,28,0)
INSERT "Order Details" VALUES(10361,39,14.4,54,0.1)
INSERT "Order Details" VALUES(10361,60,27.2,55,0.1)
INSERT "Order Details" VALUES(10362,25,11.2,50,0)
INSERT "Order Details" VALUES(10362,51,42.4,20,0)
INSERT "Order Details" VALUES(10362,54,5.9,24,0)
INSERT "Order Details" VALUES(10363,31,10,20,0)
INSERT "Order Details" VALUES(10363,75,6.2,12,0)
go
INSERT "Order Details" VALUES(10363,76,14.4,12,0)
INSERT "Order Details" VALUES(10364,69,28.8,30,0)
INSERT "Order Details" VALUES(10364,71,17.2,5,0)
INSERT "Order Details" VALUES(10365,11,16.8,24,0)
INSERT "Order Details" VALUES(10366,65,16.8,5,0)
INSERT "Order Details" VALUES(10366,77,10.4,5,0)
INSERT "Order Details" VALUES(10367,34,11.2,36,0)
INSERT "Order Details" VALUES(10367,54,5.9,18,0)
INSERT "Order Details" VALUES(10367,65,16.8,15,0)
INSERT "Order Details" VALUES(10367,77,10.4,7,0)
go
INSERT "Order Details" VALUES(10368,21,8,5,0.1)
INSERT "Order Details" VALUES(10368,28,36.4,13,0.1)
INSERT "Order Details" VALUES(10368,57,15.6,25,0)
INSERT "Order Details" VALUES(10368,64,26.6,35,0.1)
INSERT "Order Details" VALUES(10369,29,99,20,0)
INSERT "Order Details" VALUES(10369,56,30.4,18,0.25)
INSERT "Order Details" VALUES(10370,1,14.4,15,0.15)
INSERT "Order Details" VALUES(10370,64,26.6,30,0)
INSERT "Order Details" VALUES(10370,74,8,20,0.15)
INSERT "Order Details" VALUES(10371,36,15.2,6,0.2)
go
INSERT "Order Details" VALUES(10372,20,64.8,12,0.25)
INSERT "Order Details" VALUES(10372,38,210.8,40,0.25)
INSERT "Order Details" VALUES(10372,60,27.2,70,0.25)
INSERT "Order Details" VALUES(10372,72,27.8,42,0.25)
INSERT "Order Details" VALUES(10373,58,10.6,80,0.2)
INSERT "Order Details" VALUES(10373,71,17.2,50,0.2)
INSERT "Order Details" VALUES(10374,31,10,30,0)
INSERT "Order Details" VALUES(10374,58,10.6,15,0)
INSERT "Order Details" VALUES(10375,14,18.6,15,0)
INSERT "Order Details" VALUES(10375,54,5.9,10,0)
go
INSERT "Order Details" VALUES(10376,31,10,42,0.05)
INSERT "Order Details" VALUES(10377,28,36.4,20,0.15)
INSERT "Order Details" VALUES(10377,39,14.4,20,0.15)
INSERT "Order Details" VALUES(10378,71,17.2,6,0)
INSERT "Order Details" VALUES(10379,41,7.7,8,0.1)
INSERT "Order Details" VALUES(10379,63,35.1,16,0.1)
INSERT "Order Details" VALUES(10379,65,16.8,20,0.1)
INSERT "Order Details" VALUES(10380,30,20.7,18,0.1)
INSERT "Order Details" VALUES(10380,53,26.2,20,0.1)
INSERT "Order Details" VALUES(10380,60,27.2,6,0.1)
go
INSERT "Order Details" VALUES(10380,70,12,30,0)
INSERT "Order Details" VALUES(10381,74,8,14,0)
INSERT "Order Details" VALUES(10382,5,17,32,0)
INSERT "Order Details" VALUES(10382,18,50,9,0)
INSERT "Order Details" VALUES(10382,29,99,14,0)
INSERT "Order Details" VALUES(10382,33,2,60,0)
INSERT "Order Details" VALUES(10382,74,8,50,0)
INSERT "Order Details" VALUES(10383,13,4.8,20,0)
INSERT "Order Details" VALUES(10383,50,13,15,0)
INSERT "Order Details" VALUES(10383,56,30.4,20,0)
go
INSERT "Order Details" VALUES(10384,20,64.8,28,0)
INSERT "Order Details" VALUES(10384,60,27.2,15,0)
INSERT "Order Details" VALUES(10385,7,24,10,0.2)
INSERT "Order Details" VALUES(10385,60,27.2,20,0.2)
INSERT "Order Details" VALUES(10385,68,10,8,0.2)
INSERT "Order Details" VALUES(10386,24,3.6,15,0)
INSERT "Order Details" VALUES(10386,34,11.2,10,0)
INSERT "Order Details" VALUES(10387,24,3.6,15,0)
INSERT "Order Details" VALUES(10387,28,36.4,6,0)
INSERT "Order Details" VALUES(10387,59,44,12,0)
go
INSERT "Order Details" VALUES(10387,71,17.2,15,0)
INSERT "Order Details" VALUES(10388,45,7.6,15,0.2)
INSERT "Order Details" VALUES(10388,52,5.6,20,0.2)
INSERT "Order Details" VALUES(10388,53,26.2,40,0)
INSERT "Order Details" VALUES(10389,10,24.8,16,0)
INSERT "Order Details" VALUES(10389,55,19.2,15,0)
INSERT "Order Details" VALUES(10389,62,39.4,20,0)
INSERT "Order Details" VALUES(10389,70,12,30,0)
INSERT "Order Details" VALUES(10390,31,10,60,0.1)
INSERT "Order Details" VALUES(10390,35,14.4,40,0.1)
go
INSERT "Order Details" VALUES(10390,46,9.6,45,0)
INSERT "Order Details" VALUES(10390,72,27.8,24,0.1)
INSERT "Order Details" VALUES(10391,13,4.8,18,0)
INSERT "Order Details" VALUES(10392,69,28.8,50,0)
INSERT "Order Details" VALUES(10393,2,15.2,25,0.25)
INSERT "Order Details" VALUES(10393,14,18.6,42,0.25)
INSERT "Order Details" VALUES(10393,25,11.2,7,0.25)
INSERT "Order Details" VALUES(10393,26,24.9,70,0.25)
INSERT "Order Details" VALUES(10393,31,10,32,0)
INSERT "Order Details" VALUES(10394,13,4.8,10,0)
go
INSERT "Order Details" VALUES(10394,62,39.4,10,0)
INSERT "Order Details" VALUES(10395,46,9.6,28,0.1)
INSERT "Order Details" VALUES(10395,53,26.2,70,0.1)
INSERT "Order Details" VALUES(10395,69,28.8,8,0)
INSERT "Order Details" VALUES(10396,23,7.2,40,0)
INSERT "Order Details" VALUES(10396,71,17.2,60,0)
INSERT "Order Details" VALUES(10396,72,27.8,21,0)
INSERT "Order Details" VALUES(10397,21,8,10,0.15)
INSERT "Order Details" VALUES(10397,51,42.4,18,0.15)
INSERT "Order Details" VALUES(10398,35,14.4,30,0)
go
INSERT "Order Details" VALUES(10398,55,19.2,120,0.1)
INSERT "Order Details" VALUES(10399,68,10,60,0)
INSERT "Order Details" VALUES(10399,71,17.2,30,0)
INSERT "Order Details" VALUES(10399,76,14.4,35,0)
INSERT "Order Details" VALUES(10399,77,10.4,14,0)
INSERT "Order Details" VALUES(10400,29,99,21,0)
INSERT "Order Details" VALUES(10400,35,14.4,35,0)
INSERT "Order Details" VALUES(10400,49,16,30,0)
INSERT "Order Details" VALUES(10401,30,20.7,18,0)
INSERT "Order Details" VALUES(10401,56,30.4,70,0)
go
INSERT "Order Details" VALUES(10401,65,16.8,20,0)
INSERT "Order Details" VALUES(10401,71,17.2,60,0)
INSERT "Order Details" VALUES(10402,23,7.2,60,0)
INSERT "Order Details" VALUES(10402,63,35.1,65,0)
INSERT "Order Details" VALUES(10403,16,13.9,21,0.15)
INSERT "Order Details" VALUES(10403,48,10.2,70,0.15)
INSERT "Order Details" VALUES(10404,26,24.9,30,0.05)
INSERT "Order Details" VALUES(10404,42,11.2,40,0.05)
INSERT "Order Details" VALUES(10404,49,16,30,0.05)
INSERT "Order Details" VALUES(10405,3,8,50,0)
go
INSERT "Order Details" VALUES(10406,1,14.4,10,0)
INSERT "Order Details" VALUES(10406,21,8,30,0.1)
INSERT "Order Details" VALUES(10406,28,36.4,42,0.1)
INSERT "Order Details" VALUES(10406,36,15.2,5,0.1)
INSERT "Order Details" VALUES(10406,40,14.7,2,0.1)
INSERT "Order Details" VALUES(10407,11,16.8,30,0)
INSERT "Order Details" VALUES(10407,69,28.8,15,0)
INSERT "Order Details" VALUES(10407,71,17.2,15,0)
INSERT "Order Details" VALUES(10408,37,20.8,10,0)
INSERT "Order Details" VALUES(10408,54,5.9,6,0)
go
INSERT "Order Details" VALUES(10408,62,39.4,35,0)
INSERT "Order Details" VALUES(10409,14,18.6,12,0)
INSERT "Order Details" VALUES(10409,21,8,12,0)
INSERT "Order Details" VALUES(10410,33,2,49,0)
INSERT "Order Details" VALUES(10410,59,44,16,0)
INSERT "Order Details" VALUES(10411,41,7.7,25,0.2)
INSERT "Order Details" VALUES(10411,44,15.5,40,0.2)
INSERT "Order Details" VALUES(10411,59,44,9,0.2)
INSERT "Order Details" VALUES(10412,14,18.6,20,0.1)
INSERT "Order Details" VALUES(10413,1,14.4,24,0)
go
INSERT "Order Details" VALUES(10413,62,39.4,40,0)
INSERT "Order Details" VALUES(10413,76,14.4,14,0)
INSERT "Order Details" VALUES(10414,19,7.3,18,0.05)
INSERT "Order Details" VALUES(10414,33,2,50,0)
INSERT "Order Details" VALUES(10415,17,31.2,2,0)
INSERT "Order Details" VALUES(10415,33,2,20,0)
INSERT "Order Details" VALUES(10416,19,7.3,20,0)
INSERT "Order Details" VALUES(10416,53,26.2,10,0)
INSERT "Order Details" VALUES(10416,57,15.6,20,0)
INSERT "Order Details" VALUES(10417,38,210.8,50,0)
go
INSERT "Order Details" VALUES(10417,46,9.6,2,0.25)
INSERT "Order Details" VALUES(10417,68,10,36,0.25)
INSERT "Order Details" VALUES(10417,77,10.4,35,0)
INSERT "Order Details" VALUES(10418,2,15.2,60,0)
INSERT "Order Details" VALUES(10418,47,7.6,55,0)
INSERT "Order Details" VALUES(10418,61,22.8,16,0)
INSERT "Order Details" VALUES(10418,74,8,15,0)
INSERT "Order Details" VALUES(10419,60,27.2,60,0.05)
INSERT "Order Details" VALUES(10419,69,28.8,20,0.05)
INSERT "Order Details" VALUES(10420,9,77.6,20,0.1)
go
INSERT "Order Details" VALUES(10420,13,4.8,2,0.1)
INSERT "Order Details" VALUES(10420,70,12,8,0.1)
INSERT "Order Details" VALUES(10420,73,12,20,0.1)
INSERT "Order Details" VALUES(10421,19,7.3,4,0.15)
INSERT "Order Details" VALUES(10421,26,24.9,30,0)
INSERT "Order Details" VALUES(10421,53,26.2,15,0.15)
INSERT "Order Details" VALUES(10421,77,10.4,10,0.15)
INSERT "Order Details" VALUES(10422,26,24.9,2,0)
INSERT "Order Details" VALUES(10423,31,10,14,0)
INSERT "Order Details" VALUES(10423,59,44,20,0)
go
INSERT "Order Details" VALUES(10424,35,14.4,60,0.2)
INSERT "Order Details" VALUES(10424,38,210.8,49,0.2)
INSERT "Order Details" VALUES(10424,68,10,30,0.2)
INSERT "Order Details" VALUES(10425,55,19.2,10,0.25)
INSERT "Order Details" VALUES(10425,76,14.4,20,0.25)
INSERT "Order Details" VALUES(10426,56,30.4,5,0)
INSERT "Order Details" VALUES(10426,64,26.6,7,0)
INSERT "Order Details" VALUES(10427,14,18.6,35,0)
INSERT "Order Details" VALUES(10428,46,9.6,20,0)
INSERT "Order Details" VALUES(10429,50,13,40,0)
go
INSERT "Order Details" VALUES(10429,63,35.1,35,0.25)
INSERT "Order Details" VALUES(10430,17,31.2,45,0.2)
INSERT "Order Details" VALUES(10430,21,8,50,0)
INSERT "Order Details" VALUES(10430,56,30.4,30,0)
INSERT "Order Details" VALUES(10430,59,44,70,0.2)
INSERT "Order Details" VALUES(10431,17,31.2,50,0.25)
INSERT "Order Details" VALUES(10431,40,14.7,50,0.25)
INSERT "Order Details" VALUES(10431,47,7.6,30,0.25)
INSERT "Order Details" VALUES(10432,26,24.9,10,0)
INSERT "Order Details" VALUES(10432,54,5.9,40,0)
go
INSERT "Order Details" VALUES(10433,56,30.4,28,0)
INSERT "Order Details" VALUES(10434,11,16.8,6,0)
INSERT "Order Details" VALUES(10434,76,14.4,18,0.15)
INSERT "Order Details" VALUES(10435,2,15.2,10,0)
INSERT "Order Details" VALUES(10435,22,16.8,12,0)
INSERT "Order Details" VALUES(10435,72,27.8,10,0)
INSERT "Order Details" VALUES(10436,46,9.6,5,0)
INSERT "Order Details" VALUES(10436,56,30.4,40,0.1)
INSERT "Order Details" VALUES(10436,64,26.6,30,0.1)
INSERT "Order Details" VALUES(10436,75,6.2,24,0.1)
go
INSERT "Order Details" VALUES(10437,53,26.2,15,0)
INSERT "Order Details" VALUES(10438,19,7.3,15,0.2)
INSERT "Order Details" VALUES(10438,34,11.2,20,0.2)
INSERT "Order Details" VALUES(10438,57,15.6,15,0.2)
INSERT "Order Details" VALUES(10439,12,30.4,15,0)
INSERT "Order Details" VALUES(10439,16,13.9,16,0)
INSERT "Order Details" VALUES(10439,64,26.6,6,0)
INSERT "Order Details" VALUES(10439,74,8,30,0)
INSERT "Order Details" VALUES(10440,2,15.2,45,0.15)
INSERT "Order Details" VALUES(10440,16,13.9,49,0.15)
go
INSERT "Order Details" VALUES(10440,29,99,24,0.15)
INSERT "Order Details" VALUES(10440,61,22.8,90,0.15)
INSERT "Order Details" VALUES(10441,27,35.1,50,0)
INSERT "Order Details" VALUES(10442,11,16.8,30,0)
INSERT "Order Details" VALUES(10442,54,5.9,80,0)
INSERT "Order Details" VALUES(10442,66,13.6,60,0)
INSERT "Order Details" VALUES(10443,11,16.8,6,0.2)
INSERT "Order Details" VALUES(10443,28,36.4,12,0)
INSERT "Order Details" VALUES(10444,17,31.2,10,0)
INSERT "Order Details" VALUES(10444,26,24.9,15,0)
go
INSERT "Order Details" VALUES(10444,35,14.4,8,0)
INSERT "Order Details" VALUES(10444,41,7.7,30,0)
INSERT "Order Details" VALUES(10445,39,14.4,6,0)
INSERT "Order Details" VALUES(10445,54,5.9,15,0)
INSERT "Order Details" VALUES(10446,19,7.3,12,0.1)
INSERT "Order Details" VALUES(10446,24,3.6,20,0.1)
INSERT "Order Details" VALUES(10446,31,10,3,0.1)
INSERT "Order Details" VALUES(10446,52,5.6,15,0.1)
INSERT "Order Details" VALUES(10447,19,7.3,40,0)
INSERT "Order Details" VALUES(10447,65,16.8,35,0)
go
INSERT "Order Details" VALUES(10447,71,17.2,2,0)
INSERT "Order Details" VALUES(10448,26,24.9,6,0)
INSERT "Order Details" VALUES(10448,40,14.7,20,0)
INSERT "Order Details" VALUES(10449,10,24.8,14,0)
INSERT "Order Details" VALUES(10449,52,5.6,20,0)
INSERT "Order Details" VALUES(10449,62,39.4,35,0)
INSERT "Order Details" VALUES(10450,10,24.8,20,0.2)
INSERT "Order Details" VALUES(10450,54,5.9,6,0.2)
INSERT "Order Details" VALUES(10451,55,19.2,120,0.1)
INSERT "Order Details" VALUES(10451,64,26.6,35,0.1)
go
INSERT "Order Details" VALUES(10451,65,16.8,28,0.1)
INSERT "Order Details" VALUES(10451,77,10.4,55,0.1)
INSERT "Order Details" VALUES(10452,28,36.4,15,0)
INSERT "Order Details" VALUES(10452,44,15.5,100,0.05)
INSERT "Order Details" VALUES(10453,48,10.2,15,0.1)
INSERT "Order Details" VALUES(10453,70,12,25,0.1)
INSERT "Order Details" VALUES(10454,16,13.9,20,0.2)
INSERT "Order Details" VALUES(10454,33,2,20,0.2)
INSERT "Order Details" VALUES(10454,46,9.6,10,0.2)
INSERT "Order Details" VALUES(10455,39,14.4,20,0)
go
INSERT "Order Details" VALUES(10455,53,26.2,50,0)
INSERT "Order Details" VALUES(10455,61,22.8,25,0)
INSERT "Order Details" VALUES(10455,71,17.2,30,0)
INSERT "Order Details" VALUES(10456,21,8,40,0.15)
INSERT "Order Details" VALUES(10456,49,16,21,0.15)
INSERT "Order Details" VALUES(10457,59,44,36,0)
INSERT "Order Details" VALUES(10458,26,24.9,30,0)
INSERT "Order Details" VALUES(10458,28,36.4,30,0)
INSERT "Order Details" VALUES(10458,43,36.8,20,0)
INSERT "Order Details" VALUES(10458,56,30.4,15,0)
go
INSERT "Order Details" VALUES(10458,71,17.2,50,0)
INSERT "Order Details" VALUES(10459,7,24,16,0.05)
INSERT "Order Details" VALUES(10459,46,9.6,20,0.05)
INSERT "Order Details" VALUES(10459,72,27.8,40,0)
INSERT "Order Details" VALUES(10460,68,10,21,0.25)
INSERT "Order Details" VALUES(10460,75,6.2,4,0.25)
INSERT "Order Details" VALUES(10461,21,8,40,0.25)
INSERT "Order Details" VALUES(10461,30,20.7,28,0.25)
INSERT "Order Details" VALUES(10461,55,19.2,60,0.25)
INSERT "Order Details" VALUES(10462,13,4.8,1,0)
go
INSERT "Order Details" VALUES(10462,23,7.2,21,0)
INSERT "Order Details" VALUES(10463,19,7.3,21,0)
INSERT "Order Details" VALUES(10463,42,11.2,50,0)
INSERT "Order Details" VALUES(10464,4,17.6,16,0.2)
INSERT "Order Details" VALUES(10464,43,36.8,3,0)
INSERT "Order Details" VALUES(10464,56,30.4,30,0.2)
INSERT "Order Details" VALUES(10464,60,27.2,20,0)
INSERT "Order Details" VALUES(10465,24,3.6,25,0)
INSERT "Order Details" VALUES(10465,29,99,18,0.1)
INSERT "Order Details" VALUES(10465,40,14.7,20,0)
go
INSERT "Order Details" VALUES(10465,45,7.6,30,0.1)
INSERT "Order Details" VALUES(10465,50,13,25,0)
INSERT "Order Details" VALUES(10466,11,16.8,10,0)
INSERT "Order Details" VALUES(10466,46,9.6,5,0)
INSERT "Order Details" VALUES(10467,24,3.6,28,0)
INSERT "Order Details" VALUES(10467,25,11.2,12,0)
INSERT "Order Details" VALUES(10468,30,20.7,8,0)
INSERT "Order Details" VALUES(10468,43,36.8,15,0)
INSERT "Order Details" VALUES(10469,2,15.2,40,0.15)
INSERT "Order Details" VALUES(10469,16,13.9,35,0.15)
go
INSERT "Order Details" VALUES(10469,44,15.5,2,0.15)
INSERT "Order Details" VALUES(10470,18,50,30,0)
INSERT "Order Details" VALUES(10470,23,7.2,15,0)
INSERT "Order Details" VALUES(10470,64,26.6,8,0)
INSERT "Order Details" VALUES(10471,7,24,30,0)
INSERT "Order Details" VALUES(10471,56,30.4,20,0)
INSERT "Order Details" VALUES(10472,24,3.6,80,0.05)
INSERT "Order Details" VALUES(10472,51,42.4,18,0)
INSERT "Order Details" VALUES(10473,33,2,12,0)
INSERT "Order Details" VALUES(10473,71,17.2,12,0)
go
INSERT "Order Details" VALUES(10474,14,18.6,12,0)
INSERT "Order Details" VALUES(10474,28,36.4,18,0)
INSERT "Order Details" VALUES(10474,40,14.7,21,0)
INSERT "Order Details" VALUES(10474,75,6.2,10,0)
INSERT "Order Details" VALUES(10475,31,10,35,0.15)
INSERT "Order Details" VALUES(10475,66,13.6,60,0.15)
INSERT "Order Details" VALUES(10475,76,14.4,42,0.15)
INSERT "Order Details" VALUES(10476,55,19.2,2,0.05)
INSERT "Order Details" VALUES(10476,70,12,12,0)
INSERT "Order Details" VALUES(10477,1,14.4,15,0)
go
INSERT "Order Details" VALUES(10477,21,8,21,0.25)
INSERT "Order Details" VALUES(10477,39,14.4,20,0.25)
INSERT "Order Details" VALUES(10478,10,24.8,20,0.05)
INSERT "Order Details" VALUES(10479,38,210.8,30,0)
INSERT "Order Details" VALUES(10479,53,26.2,28,0)
INSERT "Order Details" VALUES(10479,59,44,60,0)
INSERT "Order Details" VALUES(10479,64,26.6,30,0)
INSERT "Order Details" VALUES(10480,47,7.6,30,0)
INSERT "Order Details" VALUES(10480,59,44,12,0)
INSERT "Order Details" VALUES(10481,49,16,24,0)
go
INSERT "Order Details" VALUES(10481,60,27.2,40,0)
INSERT "Order Details" VALUES(10482,40,14.7,10,0)
INSERT "Order Details" VALUES(10483,34,11.2,35,0.05)
INSERT "Order Details" VALUES(10483,77,10.4,30,0.05)
INSERT "Order Details" VALUES(10484,21,8,14,0)
INSERT "Order Details" VALUES(10484,40,14.7,10,0)
INSERT "Order Details" VALUES(10484,51,42.4,3,0)
INSERT "Order Details" VALUES(10485,2,15.2,20,0.1)
INSERT "Order Details" VALUES(10485,3,8,20,0.1)
INSERT "Order Details" VALUES(10485,55,19.2,30,0.1)
go
INSERT "Order Details" VALUES(10485,70,12,60,0.1)
INSERT "Order Details" VALUES(10486,11,16.8,5,0)
INSERT "Order Details" VALUES(10486,51,42.4,25,0)
INSERT "Order Details" VALUES(10486,74,8,16,0)
INSERT "Order Details" VALUES(10487,19,7.3,5,0)
INSERT "Order Details" VALUES(10487,26,24.9,30,0)
INSERT "Order Details" VALUES(10487,54,5.9,24,0.25)
INSERT "Order Details" VALUES(10488,59,44,30,0)
INSERT "Order Details" VALUES(10488,73,12,20,0.2)
INSERT "Order Details" VALUES(10489,11,16.8,15,0.25)
go
INSERT "Order Details" VALUES(10489,16,13.9,18,0)
INSERT "Order Details" VALUES(10490,59,44,60,0)
INSERT "Order Details" VALUES(10490,68,10,30,0)
INSERT "Order Details" VALUES(10490,75,6.2,36,0)
INSERT "Order Details" VALUES(10491,44,15.5,15,0.15)
INSERT "Order Details" VALUES(10491,77,10.4,7,0.15)
INSERT "Order Details" VALUES(10492,25,11.2,60,0.05)
INSERT "Order Details" VALUES(10492,42,11.2,20,0.05)
INSERT "Order Details" VALUES(10493,65,16.8,15,0.1)
INSERT "Order Details" VALUES(10493,66,13.6,10,0.1)
go
INSERT "Order Details" VALUES(10493,69,28.8,10,0.1)
INSERT "Order Details" VALUES(10494,56,30.4,30,0)
INSERT "Order Details" VALUES(10495,23,7.2,10,0)
INSERT "Order Details" VALUES(10495,41,7.7,20,0)
INSERT "Order Details" VALUES(10495,77,10.4,5,0)
INSERT "Order Details" VALUES(10496,31,10,20,0.05)
INSERT "Order Details" VALUES(10497,56,30.4,14,0)
INSERT "Order Details" VALUES(10497,72,27.8,25,0)
INSERT "Order Details" VALUES(10497,77,10.4,25,0)
INSERT "Order Details" VALUES(10498,24,4.5,14,0)
go
INSERT "Order Details" VALUES(10498,40,18.4,5,0)
INSERT "Order Details" VALUES(10498,42,14,30,0)
INSERT "Order Details" VALUES(10499,28,45.6,20,0)
INSERT "Order Details" VALUES(10499,49,20,25,0)
INSERT "Order Details" VALUES(10500,15,15.5,12,0.05)
INSERT "Order Details" VALUES(10500,28,45.6,8,0.05)
INSERT "Order Details" VALUES(10501,54,7.45,20,0)
INSERT "Order Details" VALUES(10502,45,9.5,21,0)
INSERT "Order Details" VALUES(10502,53,32.8,6,0)
INSERT "Order Details" VALUES(10502,67,14,30,0)
go
INSERT "Order Details" VALUES(10503,14,23.25,70,0)
INSERT "Order Details" VALUES(10503,65,21.05,20,0)
INSERT "Order Details" VALUES(10504,2,19,12,0)
INSERT "Order Details" VALUES(10504,21,10,12,0)
INSERT "Order Details" VALUES(10504,53,32.8,10,0)
INSERT "Order Details" VALUES(10504,61,28.5,25,0)
INSERT "Order Details" VALUES(10505,62,49.3,3,0)
INSERT "Order Details" VALUES(10506,25,14,18,0.1)
INSERT "Order Details" VALUES(10506,70,15,14,0.1)
INSERT "Order Details" VALUES(10507,43,46,15,0.15)
go
INSERT "Order Details" VALUES(10507,48,12.75,15,0.15)
INSERT "Order Details" VALUES(10508,13,6,10,0)
INSERT "Order Details" VALUES(10508,39,18,10,0)
INSERT "Order Details" VALUES(10509,28,45.6,3,0)
INSERT "Order Details" VALUES(10510,29,123.79,36,0)
INSERT "Order Details" VALUES(10510,75,7.75,36,0.1)
INSERT "Order Details" VALUES(10511,4,22,50,0.15)
INSERT "Order Details" VALUES(10511,7,30,50,0.15)
INSERT "Order Details" VALUES(10511,8,40,10,0.15)
INSERT "Order Details" VALUES(10512,24,4.5,10,0.15)
go
INSERT "Order Details" VALUES(10512,46,12,9,0.15)
INSERT "Order Details" VALUES(10512,47,9.5,6,0.15)
INSERT "Order Details" VALUES(10512,60,34,12,0.15)
INSERT "Order Details" VALUES(10513,21,10,40,0.2)
INSERT "Order Details" VALUES(10513,32,32,50,0.2)
INSERT "Order Details" VALUES(10513,61,28.5,15,0.2)
INSERT "Order Details" VALUES(10514,20,81,39,0)
INSERT "Order Details" VALUES(10514,28,45.6,35,0)
INSERT "Order Details" VALUES(10514,56,38,70,0)
INSERT "Order Details" VALUES(10514,65,21.05,39,0)
go
INSERT "Order Details" VALUES(10514,75,7.75,50,0)
INSERT "Order Details" VALUES(10515,9,97,16,0.15)
INSERT "Order Details" VALUES(10515,16,17.45,50,0)
INSERT "Order Details" VALUES(10515,27,43.9,120,0)
INSERT "Order Details" VALUES(10515,33,2.5,16,0.15)
INSERT "Order Details" VALUES(10515,60,34,84,0.15)
INSERT "Order Details" VALUES(10516,18,62.5,25,0.1)
INSERT "Order Details" VALUES(10516,41,9.65,80,0.1)
INSERT "Order Details" VALUES(10516,42,14,20,0)
INSERT "Order Details" VALUES(10517,52,7,6,0)
go
INSERT "Order Details" VALUES(10517,59,55,4,0)
INSERT "Order Details" VALUES(10517,70,15,6,0)
INSERT "Order Details" VALUES(10518,24,4.5,5,0)
INSERT "Order Details" VALUES(10518,38,263.5,15,0)
INSERT "Order Details" VALUES(10518,44,19.45,9,0)
INSERT "Order Details" VALUES(10519,10,31,16,0.05)
INSERT "Order Details" VALUES(10519,56,38,40,0)
INSERT "Order Details" VALUES(10519,60,34,10,0.05)
INSERT "Order Details" VALUES(10520,24,4.5,8,0)
INSERT "Order Details" VALUES(10520,53,32.8,5,0)
go
INSERT "Order Details" VALUES(10521,35,18,3,0)
INSERT "Order Details" VALUES(10521,41,9.65,10,0)
INSERT "Order Details" VALUES(10521,68,12.5,6,0)
INSERT "Order Details" VALUES(10522,1,18,40,0.2)
INSERT "Order Details" VALUES(10522,8,40,24,0)
INSERT "Order Details" VALUES(10522,30,25.89,20,0.2)
INSERT "Order Details" VALUES(10522,40,18.4,25,0.2)
INSERT "Order Details" VALUES(10523,17,39,25,0.1)
INSERT "Order Details" VALUES(10523,20,81,15,0.1)
INSERT "Order Details" VALUES(10523,37,26,18,0.1)
go
INSERT "Order Details" VALUES(10523,41,9.65,6,0.1)
INSERT "Order Details" VALUES(10524,10,31,2,0)
INSERT "Order Details" VALUES(10524,30,25.89,10,0)
INSERT "Order Details" VALUES(10524,43,46,60,0)
INSERT "Order Details" VALUES(10524,54,7.45,15,0)
INSERT "Order Details" VALUES(10525,36,19,30,0)
INSERT "Order Details" VALUES(10525,40,18.4,15,0.1)
INSERT "Order Details" VALUES(10526,1,18,8,0.15)
INSERT "Order Details" VALUES(10526,13,6,10,0)
INSERT "Order Details" VALUES(10526,56,38,30,0.15)
go
INSERT "Order Details" VALUES(10527,4,22,50,0.1)
INSERT "Order Details" VALUES(10527,36,19,30,0.1)
INSERT "Order Details" VALUES(10528,11,21,3,0)
INSERT "Order Details" VALUES(10528,33,2.5,8,0.2)
INSERT "Order Details" VALUES(10528,72,34.8,9,0)
INSERT "Order Details" VALUES(10529,55,24,14,0)
INSERT "Order Details" VALUES(10529,68,12.5,20,0)
INSERT "Order Details" VALUES(10529,69,36,10,0)
INSERT "Order Details" VALUES(10530,17,39,40,0)
INSERT "Order Details" VALUES(10530,43,46,25,0)
go
INSERT "Order Details" VALUES(10530,61,28.5,20,0)
INSERT "Order Details" VALUES(10530,76,18,50,0)
INSERT "Order Details" VALUES(10531,59,55,2,0)
INSERT "Order Details" VALUES(10532,30,25.89,15,0)
INSERT "Order Details" VALUES(10532,66,17,24,0)
INSERT "Order Details" VALUES(10533,4,22,50,0.05)
INSERT "Order Details" VALUES(10533,72,34.8,24,0)
INSERT "Order Details" VALUES(10533,73,15,24,0.05)
INSERT "Order Details" VALUES(10534,30,25.89,10,0)
INSERT "Order Details" VALUES(10534,40,18.4,10,0.2)
go
INSERT "Order Details" VALUES(10534,54,7.45,10,0.2)
INSERT "Order Details" VALUES(10535,11,21,50,0.1)
INSERT "Order Details" VALUES(10535,40,18.4,10,0.1)
INSERT "Order Details" VALUES(10535,57,19.5,5,0.1)
INSERT "Order Details" VALUES(10535,59,55,15,0.1)
INSERT "Order Details" VALUES(10536,12,38,15,0.25)
INSERT "Order Details" VALUES(10536,31,12.5,20,0)
INSERT "Order Details" VALUES(10536,33,2.5,30,0)
INSERT "Order Details" VALUES(10536,60,34,35,0.25)
INSERT "Order Details" VALUES(10537,31,12.5,30,0)
go
INSERT "Order Details" VALUES(10537,51,53,6,0)
INSERT "Order Details" VALUES(10537,58,13.25,20,0)
INSERT "Order Details" VALUES(10537,72,34.8,21,0)
INSERT "Order Details" VALUES(10537,73,15,9,0)
INSERT "Order Details" VALUES(10538,70,15,7,0)
INSERT "Order Details" VALUES(10538,72,34.8,1,0)
INSERT "Order Details" VALUES(10539,13,6,8,0)
INSERT "Order Details" VALUES(10539,21,10,15,0)
INSERT "Order Details" VALUES(10539,33,2.5,15,0)
INSERT "Order Details" VALUES(10539,49,20,6,0)
go
INSERT "Order Details" VALUES(10540,3,10,60,0)
INSERT "Order Details" VALUES(10540,26,31.23,40,0)
INSERT "Order Details" VALUES(10540,38,263.5,30,0)
INSERT "Order Details" VALUES(10540,68,12.5,35,0)
INSERT "Order Details" VALUES(10541,24,4.5,35,0.1)
INSERT "Order Details" VALUES(10541,38,263.5,4,0.1)
INSERT "Order Details" VALUES(10541,65,21.05,36,0.1)
INSERT "Order Details" VALUES(10541,71,21.5,9,0.1)
INSERT "Order Details" VALUES(10542,11,21,15,0.05)
INSERT "Order Details" VALUES(10542,54,7.45,24,0.05)
go
INSERT "Order Details" VALUES(10543,12,38,30,0.15)
INSERT "Order Details" VALUES(10543,23,9,70,0.15)
INSERT "Order Details" VALUES(10544,28,45.6,7,0)
INSERT "Order Details" VALUES(10544,67,14,7,0)
INSERT "Order Details" VALUES(10545,11,21,10,0)
INSERT "Order Details" VALUES(10546,7,30,10,0)
INSERT "Order Details" VALUES(10546,35,18,30,0)
INSERT "Order Details" VALUES(10546,62,49.3,40,0)
INSERT "Order Details" VALUES(10547,32,32,24,0.15)
INSERT "Order Details" VALUES(10547,36,19,60,0)
go
INSERT "Order Details" VALUES(10548,34,14,10,0.25)
INSERT "Order Details" VALUES(10548,41,9.65,14,0)
INSERT "Order Details" VALUES(10549,31,12.5,55,0.15)
INSERT "Order Details" VALUES(10549,45,9.5,100,0.15)
INSERT "Order Details" VALUES(10549,51,53,48,0.15)
INSERT "Order Details" VALUES(10550,17,39,8,0.1)
INSERT "Order Details" VALUES(10550,19,9.2,10,0)
INSERT "Order Details" VALUES(10550,21,10,6,0.1)
INSERT "Order Details" VALUES(10550,61,28.5,10,0.1)
INSERT "Order Details" VALUES(10551,16,17.45,40,0.15)
go
INSERT "Order Details" VALUES(10551,35,18,20,0.15)
INSERT "Order Details" VALUES(10551,44,19.45,40,0)
INSERT "Order Details" VALUES(10552,69,36,18,0)
INSERT "Order Details" VALUES(10552,75,7.75,30,0)
INSERT "Order Details" VALUES(10553,11,21,15,0)
INSERT "Order Details" VALUES(10553,16,17.45,14,0)
INSERT "Order Details" VALUES(10553,22,21,24,0)
INSERT "Order Details" VALUES(10553,31,12.5,30,0)
INSERT "Order Details" VALUES(10553,35,18,6,0)
INSERT "Order Details" VALUES(10554,16,17.45,30,0.05)
go
INSERT "Order Details" VALUES(10554,23,9,20,0.05)
INSERT "Order Details" VALUES(10554,62,49.3,20,0.05)
INSERT "Order Details" VALUES(10554,77,13,10,0.05)
INSERT "Order Details" VALUES(10555,14,23.25,30,0.2)
INSERT "Order Details" VALUES(10555,19,9.2,35,0.2)
INSERT "Order Details" VALUES(10555,24,4.5,18,0.2)
INSERT "Order Details" VALUES(10555,51,53,20,0.2)
INSERT "Order Details" VALUES(10555,56,38,40,0.2)
INSERT "Order Details" VALUES(10556,72,34.8,24,0)
INSERT "Order Details" VALUES(10557,64,33.25,30,0)
go
INSERT "Order Details" VALUES(10557,75,7.75,20,0)
INSERT "Order Details" VALUES(10558,47,9.5,25,0)
INSERT "Order Details" VALUES(10558,51,53,20,0)
INSERT "Order Details" VALUES(10558,52,7,30,0)
INSERT "Order Details" VALUES(10558,53,32.8,18,0)
INSERT "Order Details" VALUES(10558,73,15,3,0)
INSERT "Order Details" VALUES(10559,41,9.65,12,0.05)
INSERT "Order Details" VALUES(10559,55,24,18,0.05)
INSERT "Order Details" VALUES(10560,30,25.89,20,0)
INSERT "Order Details" VALUES(10560,62,49.3,15,0.25)
go
INSERT "Order Details" VALUES(10561,44,19.45,10,0)
INSERT "Order Details" VALUES(10561,51,53,50,0)
INSERT "Order Details" VALUES(10562,33,2.5,20,0.1)
INSERT "Order Details" VALUES(10562,62,49.3,10,0.1)
INSERT "Order Details" VALUES(10563,36,19,25,0)
INSERT "Order Details" VALUES(10563,52,7,70,0)
INSERT "Order Details" VALUES(10564,17,39,16,0.05)
INSERT "Order Details" VALUES(10564,31,12.5,6,0.05)
INSERT "Order Details" VALUES(10564,55,24,25,0.05)
INSERT "Order Details" VALUES(10565,24,4.5,25,0.1)
go
INSERT "Order Details" VALUES(10565,64,33.25,18,0.1)
INSERT "Order Details" VALUES(10566,11,21,35,0.15)
INSERT "Order Details" VALUES(10566,18,62.5,18,0.15)
INSERT "Order Details" VALUES(10566,76,18,10,0)
INSERT "Order Details" VALUES(10567,31,12.5,60,0.2)
INSERT "Order Details" VALUES(10567,51,53,3,0)
INSERT "Order Details" VALUES(10567,59,55,40,0.2)
INSERT "Order Details" VALUES(10568,10,31,5,0)
INSERT "Order Details" VALUES(10569,31,12.5,35,0.2)
INSERT "Order Details" VALUES(10569,76,18,30,0)
go
INSERT "Order Details" VALUES(10570,11,21,15,0.05)
INSERT "Order Details" VALUES(10570,56,38,60,0.05)
INSERT "Order Details" VALUES(10571,14,23.25,11,0.15)
INSERT "Order Details" VALUES(10571,42,14,28,0.15)
INSERT "Order Details" VALUES(10572,16,17.45,12,0.1)
INSERT "Order Details" VALUES(10572,32,32,10,0.1)
INSERT "Order Details" VALUES(10572,40,18.4,50,0)
INSERT "Order Details" VALUES(10572,75,7.75,15,0.1)
INSERT "Order Details" VALUES(10573,17,39,18,0)
INSERT "Order Details" VALUES(10573,34,14,40,0)
go
INSERT "Order Details" VALUES(10573,53,32.8,25,0)
INSERT "Order Details" VALUES(10574,33,2.5,14,0)
INSERT "Order Details" VALUES(10574,40,18.4,2,0)
INSERT "Order Details" VALUES(10574,62,49.3,10,0)
INSERT "Order Details" VALUES(10574,64,33.25,6,0)
INSERT "Order Details" VALUES(10575,59,55,12,0)
INSERT "Order Details" VALUES(10575,63,43.9,6,0)
INSERT "Order Details" VALUES(10575,72,34.8,30,0)
INSERT "Order Details" VALUES(10575,76,18,10,0)
INSERT "Order Details" VALUES(10576,1,18,10,0)
go
INSERT "Order Details" VALUES(10576,31,12.5,20,0)
INSERT "Order Details" VALUES(10576,44,19.45,21,0)
INSERT "Order Details" VALUES(10577,39,18,10,0)
INSERT "Order Details" VALUES(10577,75,7.75,20,0)
INSERT "Order Details" VALUES(10577,77,13,18,0)
INSERT "Order Details" VALUES(10578,35,18,20,0)
INSERT "Order Details" VALUES(10578,57,19.5,6,0)
INSERT "Order Details" VALUES(10579,15,15.5,10,0)
INSERT "Order Details" VALUES(10579,75,7.75,21,0)
INSERT "Order Details" VALUES(10580,14,23.25,15,0.05)
go
INSERT "Order Details" VALUES(10580,41,9.65,9,0.05)
INSERT "Order Details" VALUES(10580,65,21.05,30,0.05)
INSERT "Order Details" VALUES(10581,75,7.75,50,0.2)
INSERT "Order Details" VALUES(10582,57,19.5,4,0)
INSERT "Order Details" VALUES(10582,76,18,14,0)
INSERT "Order Details" VALUES(10583,29,123.79,10,0)
INSERT "Order Details" VALUES(10583,60,34,24,0.15)
INSERT "Order Details" VALUES(10583,69,36,10,0.15)
INSERT "Order Details" VALUES(10584,31,12.5,50,0.05)
INSERT "Order Details" VALUES(10585,47,9.5,15,0)
go
INSERT "Order Details" VALUES(10586,52,7,4,0.15)
INSERT "Order Details" VALUES(10587,26,31.23,6,0)
INSERT "Order Details" VALUES(10587,35,18,20,0)
INSERT "Order Details" VALUES(10587,77,13,20,0)
INSERT "Order Details" VALUES(10588,18,62.5,40,0.2)
INSERT "Order Details" VALUES(10588,42,14,100,0.2)
INSERT "Order Details" VALUES(10589,35,18,4,0)
INSERT "Order Details" VALUES(10590,1,18,20,0)
INSERT "Order Details" VALUES(10590,77,13,60,0.05)
INSERT "Order Details" VALUES(10591,3,10,14,0)
go
INSERT "Order Details" VALUES(10591,7,30,10,0)
INSERT "Order Details" VALUES(10591,54,7.45,50,0)
INSERT "Order Details" VALUES(10592,15,15.5,25,0.05)
INSERT "Order Details" VALUES(10592,26,31.23,5,0.05)
INSERT "Order Details" VALUES(10593,20,81,21,0.2)
INSERT "Order Details" VALUES(10593,69,36,20,0.2)
INSERT "Order Details" VALUES(10593,76,18,4,0.2)
INSERT "Order Details" VALUES(10594,52,7,24,0)
INSERT "Order Details" VALUES(10594,58,13.25,30,0)
INSERT "Order Details" VALUES(10595,35,18,30,0.25)
go
INSERT "Order Details" VALUES(10595,61,28.5,120,0.25)
INSERT "Order Details" VALUES(10595,69,36,65,0.25)
INSERT "Order Details" VALUES(10596,56,38,5,0.2)
INSERT "Order Details" VALUES(10596,63,43.9,24,0.2)
INSERT "Order Details" VALUES(10596,75,7.75,30,0.2)
INSERT "Order Details" VALUES(10597,24,4.5,35,0.2)
INSERT "Order Details" VALUES(10597,57,19.5,20,0)
INSERT "Order Details" VALUES(10597,65,21.05,12,0.2)
INSERT "Order Details" VALUES(10598,27,43.9,50,0)
INSERT "Order Details" VALUES(10598,71,21.5,9,0)
go
INSERT "Order Details" VALUES(10599,62,49.3,10,0)
INSERT "Order Details" VALUES(10600,54,7.45,4,0)
INSERT "Order Details" VALUES(10600,73,15,30,0)
INSERT "Order Details" VALUES(10601,13,6,60,0)
INSERT "Order Details" VALUES(10601,59,55,35,0)
INSERT "Order Details" VALUES(10602,77,13,5,0.25)
INSERT "Order Details" VALUES(10603,22,21,48,0)
INSERT "Order Details" VALUES(10603,49,20,25,0.05)
INSERT "Order Details" VALUES(10604,48,12.75,6,0.1)
INSERT "Order Details" VALUES(10604,76,18,10,0.1)
go
INSERT "Order Details" VALUES(10605,16,17.45,30,0.05)
INSERT "Order Details" VALUES(10605,59,55,20,0.05)
INSERT "Order Details" VALUES(10605,60,34,70,0.05)
INSERT "Order Details" VALUES(10605,71,21.5,15,0.05)
INSERT "Order Details" VALUES(10606,4,22,20,0.2)
INSERT "Order Details" VALUES(10606,55,24,20,0.2)
INSERT "Order Details" VALUES(10606,62,49.3,10,0.2)
INSERT "Order Details" VALUES(10607,7,30,45,0)
INSERT "Order Details" VALUES(10607,17,39,100,0)
INSERT "Order Details" VALUES(10607,33,2.5,14,0)
go
INSERT "Order Details" VALUES(10607,40,18.4,42,0)
INSERT "Order Details" VALUES(10607,72,34.8,12,0)
INSERT "Order Details" VALUES(10608,56,38,28,0)
INSERT "Order Details" VALUES(10609,1,18,3,0)
INSERT "Order Details" VALUES(10609,10,31,10,0)
INSERT "Order Details" VALUES(10609,21,10,6,0)
INSERT "Order Details" VALUES(10610,36,19,21,0.25)
INSERT "Order Details" VALUES(10611,1,18,6,0)
INSERT "Order Details" VALUES(10611,2,19,10,0)
INSERT "Order Details" VALUES(10611,60,34,15,0)
go
INSERT "Order Details" VALUES(10612,10,31,70,0)
INSERT "Order Details" VALUES(10612,36,19,55,0)
INSERT "Order Details" VALUES(10612,49,20,18,0)
INSERT "Order Details" VALUES(10612,60,34,40,0)
INSERT "Order Details" VALUES(10612,76,18,80,0)
INSERT "Order Details" VALUES(10613,13,6,8,0.1)
INSERT "Order Details" VALUES(10613,75,7.75,40,0)
INSERT "Order Details" VALUES(10614,11,21,14,0)
INSERT "Order Details" VALUES(10614,21,10,8,0)
INSERT "Order Details" VALUES(10614,39,18,5,0)
go
INSERT "Order Details" VALUES(10615,55,24,5,0)
INSERT "Order Details" VALUES(10616,38,263.5,15,0.05)
INSERT "Order Details" VALUES(10616,56,38,14,0)
INSERT "Order Details" VALUES(10616,70,15,15,0.05)
INSERT "Order Details" VALUES(10616,71,21.5,15,0.05)
INSERT "Order Details" VALUES(10617,59,55,30,0.15)
INSERT "Order Details" VALUES(10618,6,25,70,0)
INSERT "Order Details" VALUES(10618,56,38,20,0)
INSERT "Order Details" VALUES(10618,68,12.5,15,0)
INSERT "Order Details" VALUES(10619,21,10,42,0)
go
INSERT "Order Details" VALUES(10619,22,21,40,0)
INSERT "Order Details" VALUES(10620,24,4.5,5,0)
INSERT "Order Details" VALUES(10620,52,7,5,0)
INSERT "Order Details" VALUES(10621,19,9.2,5,0)
INSERT "Order Details" VALUES(10621,23,9,10,0)
INSERT "Order Details" VALUES(10621,70,15,20,0)
INSERT "Order Details" VALUES(10621,71,21.5,15,0)
INSERT "Order Details" VALUES(10622,2,19,20,0)
INSERT "Order Details" VALUES(10622,68,12.5,18,0.2)
INSERT "Order Details" VALUES(10623,14,23.25,21,0)
go
INSERT "Order Details" VALUES(10623,19,9.2,15,0.1)
INSERT "Order Details" VALUES(10623,21,10,25,0.1)
INSERT "Order Details" VALUES(10623,24,4.5,3,0)
INSERT "Order Details" VALUES(10623,35,18,30,0.1)
INSERT "Order Details" VALUES(10624,28,45.6,10,0)
INSERT "Order Details" VALUES(10624,29,123.79,6,0)
INSERT "Order Details" VALUES(10624,44,19.45,10,0)
INSERT "Order Details" VALUES(10625,14,23.25,3,0)
INSERT "Order Details" VALUES(10625,42,14,5,0)
INSERT "Order Details" VALUES(10625,60,34,10,0)
go
INSERT "Order Details" VALUES(10626,53,32.8,12,0)
INSERT "Order Details" VALUES(10626,60,34,20,0)
INSERT "Order Details" VALUES(10626,71,21.5,20,0)
INSERT "Order Details" VALUES(10627,62,49.3,15,0)
INSERT "Order Details" VALUES(10627,73,15,35,0.15)
INSERT "Order Details" VALUES(10628,1,18,25,0)
INSERT "Order Details" VALUES(10629,29,123.79,20,0)
INSERT "Order Details" VALUES(10629,64,33.25,9,0)
INSERT "Order Details" VALUES(10630,55,24,12,0.05)
INSERT "Order Details" VALUES(10630,76,18,35,0)
go
INSERT "Order Details" VALUES(10631,75,7.75,8,0.1)
INSERT "Order Details" VALUES(10632,2,19,30,0.05)
INSERT "Order Details" VALUES(10632,33,2.5,20,0.05)
INSERT "Order Details" VALUES(10633,12,38,36,0.15)
INSERT "Order Details" VALUES(10633,13,6,13,0.15)
INSERT "Order Details" VALUES(10633,26,31.23,35,0.15)
INSERT "Order Details" VALUES(10633,62,49.3,80,0.15)
INSERT "Order Details" VALUES(10634,7,30,35,0)
INSERT "Order Details" VALUES(10634,18,62.5,50,0)
INSERT "Order Details" VALUES(10634,51,53,15,0)
go
INSERT "Order Details" VALUES(10634,75,7.75,2,0)
INSERT "Order Details" VALUES(10635,4,22,10,0.1)
INSERT "Order Details" VALUES(10635,5,21.35,15,0.1)
INSERT "Order Details" VALUES(10635,22,21,40,0)
INSERT "Order Details" VALUES(10636,4,22,25,0)
INSERT "Order Details" VALUES(10636,58,13.25,6,0)
INSERT "Order Details" VALUES(10637,11,21,10,0)
INSERT "Order Details" VALUES(10637,50,16.25,25,0.05)
INSERT "Order Details" VALUES(10637,56,38,60,0.05)
INSERT "Order Details" VALUES(10638,45,9.5,20,0)
go
INSERT "Order Details" VALUES(10638,65,21.05,21,0)
INSERT "Order Details" VALUES(10638,72,34.8,60,0)
INSERT "Order Details" VALUES(10639,18,62.5,8,0)
INSERT "Order Details" VALUES(10640,69,36,20,0.25)
INSERT "Order Details" VALUES(10640,70,15,15,0.25)
INSERT "Order Details" VALUES(10641,2,19,50,0)
INSERT "Order Details" VALUES(10641,40,18.4,60,0)
INSERT "Order Details" VALUES(10642,21,10,30,0.2)
INSERT "Order Details" VALUES(10642,61,28.5,20,0.2)
INSERT "Order Details" VALUES(10643,28,45.6,15,0.25)
go
INSERT "Order Details" VALUES(10643,39,18,21,0.25)
INSERT "Order Details" VALUES(10643,46,12,2,0.25)
INSERT "Order Details" VALUES(10644,18,62.5,4,0.1)
INSERT "Order Details" VALUES(10644,43,46,20,0)
INSERT "Order Details" VALUES(10644,46,12,21,0.1)
INSERT "Order Details" VALUES(10645,18,62.5,20,0)
INSERT "Order Details" VALUES(10645,36,19,15,0)
INSERT "Order Details" VALUES(10646,1,18,15,0.25)
INSERT "Order Details" VALUES(10646,10,31,18,0.25)
INSERT "Order Details" VALUES(10646,71,21.5,30,0.25)
go
INSERT "Order Details" VALUES(10646,77,13,35,0.25)
INSERT "Order Details" VALUES(10647,19,9.2,30,0)
INSERT "Order Details" VALUES(10647,39,18,20,0)
INSERT "Order Details" VALUES(10648,22,21,15,0)
INSERT "Order Details" VALUES(10648,24,4.5,15,0.15)
INSERT "Order Details" VALUES(10649,28,45.6,20,0)
INSERT "Order Details" VALUES(10649,72,34.8,15,0)
INSERT "Order Details" VALUES(10650,30,25.89,30,0)
INSERT "Order Details" VALUES(10650,53,32.8,25,0.05)
INSERT "Order Details" VALUES(10650,54,7.45,30,0)
go
INSERT "Order Details" VALUES(10651,19,9.2,12,0.25)
INSERT "Order Details" VALUES(10651,22,21,20,0.25)
INSERT "Order Details" VALUES(10652,30,25.89,2,0.25)
INSERT "Order Details" VALUES(10652,42,14,20,0)
INSERT "Order Details" VALUES(10653,16,17.45,30,0.1)
INSERT "Order Details" VALUES(10653,60,34,20,0.1)
INSERT "Order Details" VALUES(10654,4,22,12,0.1)
INSERT "Order Details" VALUES(10654,39,18,20,0.1)
INSERT "Order Details" VALUES(10654,54,7.45,6,0.1)
INSERT "Order Details" VALUES(10655,41,9.65,20,0.2)
go
INSERT "Order Details" VALUES(10656,14,23.25,3,0.1)
INSERT "Order Details" VALUES(10656,44,19.45,28,0.1)
INSERT "Order Details" VALUES(10656,47,9.5,6,0.1)
INSERT "Order Details" VALUES(10657,15,15.5,50,0)
INSERT "Order Details" VALUES(10657,41,9.65,24,0)
INSERT "Order Details" VALUES(10657,46,12,45,0)
INSERT "Order Details" VALUES(10657,47,9.5,10,0)
INSERT "Order Details" VALUES(10657,56,38,45,0)
INSERT "Order Details" VALUES(10657,60,34,30,0)
INSERT "Order Details" VALUES(10658,21,10,60,0)
go
INSERT "Order Details" VALUES(10658,40,18.4,70,0.05)
INSERT "Order Details" VALUES(10658,60,34,55,0.05)
INSERT "Order Details" VALUES(10658,77,13,70,0.05)
INSERT "Order Details" VALUES(10659,31,12.5,20,0.05)
INSERT "Order Details" VALUES(10659,40,18.4,24,0.05)
INSERT "Order Details" VALUES(10659,70,15,40,0.05)
INSERT "Order Details" VALUES(10660,20,81,21,0)
INSERT "Order Details" VALUES(10661,39,18,3,0.2)
INSERT "Order Details" VALUES(10661,58,13.25,49,0.2)
INSERT "Order Details" VALUES(10662,68,12.5,10,0)
go
INSERT "Order Details" VALUES(10663,40,18.4,30,0.05)
INSERT "Order Details" VALUES(10663,42,14,30,0.05)
INSERT "Order Details" VALUES(10663,51,53,20,0.05)
INSERT "Order Details" VALUES(10664,10,31,24,0.15)
INSERT "Order Details" VALUES(10664,56,38,12,0.15)
INSERT "Order Details" VALUES(10664,65,21.05,15,0.15)
INSERT "Order Details" VALUES(10665,51,53,20,0)
INSERT "Order Details" VALUES(10665,59,55,1,0)
INSERT "Order Details" VALUES(10665,76,18,10,0)
INSERT "Order Details" VALUES(10666,29,123.79,36,0)
go
INSERT "Order Details" VALUES(10666,65,21.05,10,0)
INSERT "Order Details" VALUES(10667,69,36,45,0.2)
INSERT "Order Details" VALUES(10667,71,21.5,14,0.2)
INSERT "Order Details" VALUES(10668,31,12.5,8,0.1)
INSERT "Order Details" VALUES(10668,55,24,4,0.1)
INSERT "Order Details" VALUES(10668,64,33.25,15,0.1)
INSERT "Order Details" VALUES(10669,36,19,30,0)
INSERT "Order Details" VALUES(10670,23,9,32,0)
INSERT "Order Details" VALUES(10670,46,12,60,0)
INSERT "Order Details" VALUES(10670,67,14,25,0)
go
INSERT "Order Details" VALUES(10670,73,15,50,0)
INSERT "Order Details" VALUES(10670,75,7.75,25,0)
INSERT "Order Details" VALUES(10671,16,17.45,10,0)
INSERT "Order Details" VALUES(10671,62,49.3,10,0)
INSERT "Order Details" VALUES(10671,65,21.05,12,0)
INSERT "Order Details" VALUES(10672,38,263.5,15,0.1)
INSERT "Order Details" VALUES(10672,71,21.5,12,0)
INSERT "Order Details" VALUES(10673,16,17.45,3,0)
INSERT "Order Details" VALUES(10673,42,14,6,0)
INSERT "Order Details" VALUES(10673,43,46,6,0)
go
INSERT "Order Details" VALUES(10674,23,9,5,0)
INSERT "Order Details" VALUES(10675,14,23.25,30,0)
INSERT "Order Details" VALUES(10675,53,32.8,10,0)
INSERT "Order Details" VALUES(10675,58,13.25,30,0)
INSERT "Order Details" VALUES(10676,10,31,2,0)
INSERT "Order Details" VALUES(10676,19,9.2,7,0)
INSERT "Order Details" VALUES(10676,44,19.45,21,0)
INSERT "Order Details" VALUES(10677,26,31.23,30,0.15)
INSERT "Order Details" VALUES(10677,33,2.5,8,0.15)
INSERT "Order Details" VALUES(10678,12,38,100,0)
go
INSERT "Order Details" VALUES(10678,33,2.5,30,0)
INSERT "Order Details" VALUES(10678,41,9.65,120,0)
INSERT "Order Details" VALUES(10678,54,7.45,30,0)
INSERT "Order Details" VALUES(10679,59,55,12,0)
INSERT "Order Details" VALUES(10680,16,17.45,50,0.25)
INSERT "Order Details" VALUES(10680,31,12.5,20,0.25)
INSERT "Order Details" VALUES(10680,42,14,40,0.25)
INSERT "Order Details" VALUES(10681,19,9.2,30,0.1)
INSERT "Order Details" VALUES(10681,21,10,12,0.1)
INSERT "Order Details" VALUES(10681,64,33.25,28,0)
go
INSERT "Order Details" VALUES(10682,33,2.5,30,0)
INSERT "Order Details" VALUES(10682,66,17,4,0)
INSERT "Order Details" VALUES(10682,75,7.75,30,0)
INSERT "Order Details" VALUES(10683,52,7,9,0)
INSERT "Order Details" VALUES(10684,40,18.4,20,0)
INSERT "Order Details" VALUES(10684,47,9.5,40,0)
INSERT "Order Details" VALUES(10684,60,34,30,0)
INSERT "Order Details" VALUES(10685,10,31,20,0)
INSERT "Order Details" VALUES(10685,41,9.65,4,0)
INSERT "Order Details" VALUES(10685,47,9.5,15,0)
go
INSERT "Order Details" VALUES(10686,17,39,30,0.2)
INSERT "Order Details" VALUES(10686,26,31.23,15,0)
INSERT "Order Details" VALUES(10687,9,97,50,0.25)
INSERT "Order Details" VALUES(10687,29,123.79,10,0)
INSERT "Order Details" VALUES(10687,36,19,6,0.25)
INSERT "Order Details" VALUES(10688,10,31,18,0.1)
INSERT "Order Details" VALUES(10688,28,45.6,60,0.1)
INSERT "Order Details" VALUES(10688,34,14,14,0)
INSERT "Order Details" VALUES(10689,1,18,35,0.25)
INSERT "Order Details" VALUES(10690,56,38,20,0.25)
go
INSERT "Order Details" VALUES(10690,77,13,30,0.25)
INSERT "Order Details" VALUES(10691,1,18,30,0)
INSERT "Order Details" VALUES(10691,29,123.79,40,0)
INSERT "Order Details" VALUES(10691,43,46,40,0)
INSERT "Order Details" VALUES(10691,44,19.45,24,0)
INSERT "Order Details" VALUES(10691,62,49.3,48,0)
INSERT "Order Details" VALUES(10692,63,43.9,20,0)
INSERT "Order Details" VALUES(10693,9,97,6,0)
INSERT "Order Details" VALUES(10693,54,7.45,60,0.15)
INSERT "Order Details" VALUES(10693,69,36,30,0.15)
go
INSERT "Order Details" VALUES(10693,73,15,15,0.15)
INSERT "Order Details" VALUES(10694,7,30,90,0)
INSERT "Order Details" VALUES(10694,59,55,25,0)
INSERT "Order Details" VALUES(10694,70,15,50,0)
INSERT "Order Details" VALUES(10695,8,40,10,0)
INSERT "Order Details" VALUES(10695,12,38,4,0)
INSERT "Order Details" VALUES(10695,24,4.5,20,0)
INSERT "Order Details" VALUES(10696,17,39,20,0)
INSERT "Order Details" VALUES(10696,46,12,18,0)
INSERT "Order Details" VALUES(10697,19,9.2,7,0.25)
go
INSERT "Order Details" VALUES(10697,35,18,9,0.25)
INSERT "Order Details" VALUES(10697,58,13.25,30,0.25)
INSERT "Order Details" VALUES(10697,70,15,30,0.25)
INSERT "Order Details" VALUES(10698,11,21,15,0)
INSERT "Order Details" VALUES(10698,17,39,8,0.05)
INSERT "Order Details" VALUES(10698,29,123.79,12,0.05)
INSERT "Order Details" VALUES(10698,65,21.05,65,0.05)
INSERT "Order Details" VALUES(10698,70,15,8,0.05)
INSERT "Order Details" VALUES(10699,47,9.5,12,0)
INSERT "Order Details" VALUES(10700,1,18,5,0.2)
go
INSERT "Order Details" VALUES(10700,34,14,12,0.2)
INSERT "Order Details" VALUES(10700,68,12.5,40,0.2)
INSERT "Order Details" VALUES(10700,71,21.5,60,0.2)
INSERT "Order Details" VALUES(10701,59,55,42,0.15)
INSERT "Order Details" VALUES(10701,71,21.5,20,0.15)
INSERT "Order Details" VALUES(10701,76,18,35,0.15)
INSERT "Order Details" VALUES(10702,3,10,6,0)
INSERT "Order Details" VALUES(10702,76,18,15,0)
INSERT "Order Details" VALUES(10703,2,19,5,0)
INSERT "Order Details" VALUES(10703,59,55,35,0)
go
INSERT "Order Details" VALUES(10703,73,15,35,0)
INSERT "Order Details" VALUES(10704,4,22,6,0)
INSERT "Order Details" VALUES(10704,24,4.5,35,0)
INSERT "Order Details" VALUES(10704,48,12.75,24,0)
INSERT "Order Details" VALUES(10705,31,12.5,20,0)
INSERT "Order Details" VALUES(10705,32,32,4,0)
INSERT "Order Details" VALUES(10706,16,17.45,20,0)
INSERT "Order Details" VALUES(10706,43,46,24,0)
INSERT "Order Details" VALUES(10706,59,55,8,0)
INSERT "Order Details" VALUES(10707,55,24,21,0)
go
INSERT "Order Details" VALUES(10707,57,19.5,40,0)
INSERT "Order Details" VALUES(10707,70,15,28,0.15)
INSERT "Order Details" VALUES(10708,5,21.35,4,0)
INSERT "Order Details" VALUES(10708,36,19,5,0)
INSERT "Order Details" VALUES(10709,8,40,40,0)
INSERT "Order Details" VALUES(10709,51,53,28,0)
INSERT "Order Details" VALUES(10709,60,34,10,0)
INSERT "Order Details" VALUES(10710,19,9.2,5,0)
INSERT "Order Details" VALUES(10710,47,9.5,5,0)
INSERT "Order Details" VALUES(10711,19,9.2,12,0)
go
INSERT "Order Details" VALUES(10711,41,9.65,42,0)
INSERT "Order Details" VALUES(10711,53,32.8,120,0)
INSERT "Order Details" VALUES(10712,53,32.8,3,0.05)
INSERT "Order Details" VALUES(10712,56,38,30,0)
INSERT "Order Details" VALUES(10713,10,31,18,0)
INSERT "Order Details" VALUES(10713,26,31.23,30,0)
INSERT "Order Details" VALUES(10713,45,9.5,110,0)
INSERT "Order Details" VALUES(10713,46,12,24,0)
INSERT "Order Details" VALUES(10714,2,19,30,0.25)
INSERT "Order Details" VALUES(10714,17,39,27,0.25)
go
INSERT "Order Details" VALUES(10714,47,9.5,50,0.25)
INSERT "Order Details" VALUES(10714,56,38,18,0.25)
INSERT "Order Details" VALUES(10714,58,13.25,12,0.25)
INSERT "Order Details" VALUES(10715,10,31,21,0)
INSERT "Order Details" VALUES(10715,71,21.5,30,0)
INSERT "Order Details" VALUES(10716,21,10,5,0)
INSERT "Order Details" VALUES(10716,51,53,7,0)
INSERT "Order Details" VALUES(10716,61,28.5,10,0)
INSERT "Order Details" VALUES(10717,21,10,32,0.05)
INSERT "Order Details" VALUES(10717,54,7.45,15,0)
go
INSERT "Order Details" VALUES(10717,69,36,25,0.05)
INSERT "Order Details" VALUES(10718,12,38,36,0)
INSERT "Order Details" VALUES(10718,16,17.45,20,0)
INSERT "Order Details" VALUES(10718,36,19,40,0)
INSERT "Order Details" VALUES(10718,62,49.3,20,0)
INSERT "Order Details" VALUES(10719,18,62.5,12,0.25)
INSERT "Order Details" VALUES(10719,30,25.89,3,0.25)
INSERT "Order Details" VALUES(10719,54,7.45,40,0.25)
INSERT "Order Details" VALUES(10720,35,18,21,0)
INSERT "Order Details" VALUES(10720,71,21.5,8,0)
go
INSERT "Order Details" VALUES(10721,44,19.45,50,0.05)
INSERT "Order Details" VALUES(10722,2,19,3,0)
INSERT "Order Details" VALUES(10722,31,12.5,50,0)
INSERT "Order Details" VALUES(10722,68,12.5,45,0)
INSERT "Order Details" VALUES(10722,75,7.75,42,0)
INSERT "Order Details" VALUES(10723,26,31.23,15,0)
INSERT "Order Details" VALUES(10724,10,31,16,0)
INSERT "Order Details" VALUES(10724,61,28.5,5,0)
INSERT "Order Details" VALUES(10725,41,9.65,12,0)
INSERT "Order Details" VALUES(10725,52,7,4,0)
go
INSERT "Order Details" VALUES(10725,55,24,6,0)
INSERT "Order Details" VALUES(10726,4,22,25,0)
INSERT "Order Details" VALUES(10726,11,21,5,0)
INSERT "Order Details" VALUES(10727,17,39,20,0.05)
INSERT "Order Details" VALUES(10727,56,38,10,0.05)
INSERT "Order Details" VALUES(10727,59,55,10,0.05)
INSERT "Order Details" VALUES(10728,30,25.89,15,0)
INSERT "Order Details" VALUES(10728,40,18.4,6,0)
INSERT "Order Details" VALUES(10728,55,24,12,0)
INSERT "Order Details" VALUES(10728,60,34,15,0)
go
INSERT "Order Details" VALUES(10729,1,18,50,0)
INSERT "Order Details" VALUES(10729,21,10,30,0)
INSERT "Order Details" VALUES(10729,50,16.25,40,0)
INSERT "Order Details" VALUES(10730,16,17.45,15,0.05)
INSERT "Order Details" VALUES(10730,31,12.5,3,0.05)
INSERT "Order Details" VALUES(10730,65,21.05,10,0.05)
INSERT "Order Details" VALUES(10731,21,10,40,0.05)
INSERT "Order Details" VALUES(10731,51,53,30,0.05)
INSERT "Order Details" VALUES(10732,76,18,20,0)
INSERT "Order Details" VALUES(10733,14,23.25,16,0)
go
INSERT "Order Details" VALUES(10733,28,45.6,20,0)
INSERT "Order Details" VALUES(10733,52,7,25,0)
INSERT "Order Details" VALUES(10734,6,25,30,0)
INSERT "Order Details" VALUES(10734,30,25.89,15,0)
INSERT "Order Details" VALUES(10734,76,18,20,0)
INSERT "Order Details" VALUES(10735,61,28.5,20,0.1)
INSERT "Order Details" VALUES(10735,77,13,2,0.1)
INSERT "Order Details" VALUES(10736,65,21.05,40,0)
INSERT "Order Details" VALUES(10736,75,7.75,20,0)
INSERT "Order Details" VALUES(10737,13,6,4,0)
go
INSERT "Order Details" VALUES(10737,41,9.65,12,0)
INSERT "Order Details" VALUES(10738,16,17.45,3,0)
INSERT "Order Details" VALUES(10739,36,19,6,0)
INSERT "Order Details" VALUES(10739,52,7,18,0)
INSERT "Order Details" VALUES(10740,28,45.6,5,0.2)
INSERT "Order Details" VALUES(10740,35,18,35,0.2)
INSERT "Order Details" VALUES(10740,45,9.5,40,0.2)
INSERT "Order Details" VALUES(10740,56,38,14,0.2)
INSERT "Order Details" VALUES(10741,2,19,15,0.2)
INSERT "Order Details" VALUES(10742,3,10,20,0)
go
INSERT "Order Details" VALUES(10742,60,34,50,0)
INSERT "Order Details" VALUES(10742,72,34.8,35,0)
INSERT "Order Details" VALUES(10743,46,12,28,0.05)
INSERT "Order Details" VALUES(10744,40,18.4,50,0.2)
INSERT "Order Details" VALUES(10745,18,62.5,24,0)
INSERT "Order Details" VALUES(10745,44,19.45,16,0)
INSERT "Order Details" VALUES(10745,59,55,45,0)
INSERT "Order Details" VALUES(10745,72,34.8,7,0)
INSERT "Order Details" VALUES(10746,13,6,6,0)
INSERT "Order Details" VALUES(10746,42,14,28,0)
go
INSERT "Order Details" VALUES(10746,62,49.3,9,0)
INSERT "Order Details" VALUES(10746,69,36,40,0)
INSERT "Order Details" VALUES(10747,31,12.5,8,0)
INSERT "Order Details" VALUES(10747,41,9.65,35,0)
INSERT "Order Details" VALUES(10747,63,43.9,9,0)
INSERT "Order Details" VALUES(10747,69,36,30,0)
INSERT "Order Details" VALUES(10748,23,9,44,0)
INSERT "Order Details" VALUES(10748,40,18.4,40,0)
INSERT "Order Details" VALUES(10748,56,38,28,0)
INSERT "Order Details" VALUES(10749,56,38,15,0)
go
INSERT "Order Details" VALUES(10749,59,55,6,0)
INSERT "Order Details" VALUES(10749,76,18,10,0)
INSERT "Order Details" VALUES(10750,14,23.25,5,0.15)
INSERT "Order Details" VALUES(10750,45,9.5,40,0.15)
INSERT "Order Details" VALUES(10750,59,55,25,0.15)
INSERT "Order Details" VALUES(10751,26,31.23,12,0.1)
INSERT "Order Details" VALUES(10751,30,25.89,30,0)
INSERT "Order Details" VALUES(10751,50,16.25,20,0.1)
INSERT "Order Details" VALUES(10751,73,15,15,0)
INSERT "Order Details" VALUES(10752,1,18,8,0)
go
INSERT "Order Details" VALUES(10752,69,36,3,0)
INSERT "Order Details" VALUES(10753,45,9.5,4,0)
INSERT "Order Details" VALUES(10753,74,10,5,0)
INSERT "Order Details" VALUES(10754,40,18.4,3,0)
INSERT "Order Details" VALUES(10755,47,9.5,30,0.25)
INSERT "Order Details" VALUES(10755,56,38,30,0.25)
INSERT "Order Details" VALUES(10755,57,19.5,14,0.25)
INSERT "Order Details" VALUES(10755,69,36,25,0.25)
INSERT "Order Details" VALUES(10756,18,62.5,21,0.2)
INSERT "Order Details" VALUES(10756,36,19,20,0.2)
go
INSERT "Order Details" VALUES(10756,68,12.5,6,0.2)
INSERT "Order Details" VALUES(10756,69,36,20,0.2)
INSERT "Order Details" VALUES(10757,34,14,30,0)
INSERT "Order Details" VALUES(10757,59,55,7,0)
INSERT "Order Details" VALUES(10757,62,49.3,30,0)
INSERT "Order Details" VALUES(10757,64,33.25,24,0)
INSERT "Order Details" VALUES(10758,26,31.23,20,0)
INSERT "Order Details" VALUES(10758,52,7,60,0)
INSERT "Order Details" VALUES(10758,70,15,40,0)
INSERT "Order Details" VALUES(10759,32,32,10,0)
go
INSERT "Order Details" VALUES(10760,25,14,12,0.25)
INSERT "Order Details" VALUES(10760,27,43.9,40,0)
INSERT "Order Details" VALUES(10760,43,46,30,0.25)
INSERT "Order Details" VALUES(10761,25,14,35,0.25)
INSERT "Order Details" VALUES(10761,75,7.75,18,0)
INSERT "Order Details" VALUES(10762,39,18,16,0)
INSERT "Order Details" VALUES(10762,47,9.5,30,0)
INSERT "Order Details" VALUES(10762,51,53,28,0)
INSERT "Order Details" VALUES(10762,56,38,60,0)
INSERT "Order Details" VALUES(10763,21,10,40,0)
go
INSERT "Order Details" VALUES(10763,22,21,6,0)
INSERT "Order Details" VALUES(10763,24,4.5,20,0)
INSERT "Order Details" VALUES(10764,3,10,20,0.1)
INSERT "Order Details" VALUES(10764,39,18,130,0.1)
INSERT "Order Details" VALUES(10765,65,21.05,80,0.1)
INSERT "Order Details" VALUES(10766,2,19,40,0)
INSERT "Order Details" VALUES(10766,7,30,35,0)
INSERT "Order Details" VALUES(10766,68,12.5,40,0)
INSERT "Order Details" VALUES(10767,42,14,2,0)
INSERT "Order Details" VALUES(10768,22,21,4,0)
go
INSERT "Order Details" VALUES(10768,31,12.5,50,0)
INSERT "Order Details" VALUES(10768,60,34,15,0)
INSERT "Order Details" VALUES(10768,71,21.5,12,0)
INSERT "Order Details" VALUES(10769,41,9.65,30,0.05)
INSERT "Order Details" VALUES(10769,52,7,15,0.05)
INSERT "Order Details" VALUES(10769,61,28.5,20,0)
INSERT "Order Details" VALUES(10769,62,49.3,15,0)
INSERT "Order Details" VALUES(10770,11,21,15,0.25)
INSERT "Order Details" VALUES(10771,71,21.5,16,0)
INSERT "Order Details" VALUES(10772,29,123.79,18,0)
go
INSERT "Order Details" VALUES(10772,59,55,25,0)
INSERT "Order Details" VALUES(10773,17,39,33,0)
INSERT "Order Details" VALUES(10773,31,12.5,70,0.2)
INSERT "Order Details" VALUES(10773,75,7.75,7,0.2)
INSERT "Order Details" VALUES(10774,31,12.5,2,0.25)
INSERT "Order Details" VALUES(10774,66,17,50,0)
INSERT "Order Details" VALUES(10775,10,31,6,0)
INSERT "Order Details" VALUES(10775,67,14,3,0)
INSERT "Order Details" VALUES(10776,31,12.5,16,0.05)
INSERT "Order Details" VALUES(10776,42,14,12,0.05)
go
INSERT "Order Details" VALUES(10776,45,9.5,27,0.05)
INSERT "Order Details" VALUES(10776,51,53,120,0.05)
INSERT "Order Details" VALUES(10777,42,14,20,0.2)
INSERT "Order Details" VALUES(10778,41,9.65,10,0)
INSERT "Order Details" VALUES(10779,16,17.45,20,0)
INSERT "Order Details" VALUES(10779,62,49.3,20,0)
INSERT "Order Details" VALUES(10780,70,15,35,0)
INSERT "Order Details" VALUES(10780,77,13,15,0)
INSERT "Order Details" VALUES(10781,54,7.45,3,0.2)
INSERT "Order Details" VALUES(10781,56,38,20,0.2)
go
INSERT "Order Details" VALUES(10781,74,10,35,0)
INSERT "Order Details" VALUES(10782,31,12.5,1,0)
INSERT "Order Details" VALUES(10783,31,12.5,10,0)
INSERT "Order Details" VALUES(10783,38,263.5,5,0)
INSERT "Order Details" VALUES(10784,36,19,30,0)
INSERT "Order Details" VALUES(10784,39,18,2,0.15)
INSERT "Order Details" VALUES(10784,72,34.8,30,0.15)
INSERT "Order Details" VALUES(10785,10,31,10,0)
INSERT "Order Details" VALUES(10785,75,7.75,10,0)
INSERT "Order Details" VALUES(10786,8,40,30,0.2)
go
INSERT "Order Details" VALUES(10786,30,25.89,15,0.2)
INSERT "Order Details" VALUES(10786,75,7.75,42,0.2)
INSERT "Order Details" VALUES(10787,2,19,15,0.05)
INSERT "Order Details" VALUES(10787,29,123.79,20,0.05)
INSERT "Order Details" VALUES(10788,19,9.2,50,0.05)
INSERT "Order Details" VALUES(10788,75,7.75,40,0.05)
INSERT "Order Details" VALUES(10789,18,62.5,30,0)
INSERT "Order Details" VALUES(10789,35,18,15,0)
INSERT "Order Details" VALUES(10789,63,43.9,30,0)
INSERT "Order Details" VALUES(10789,68,12.5,18,0)
go
INSERT "Order Details" VALUES(10790,7,30,3,0.15)
INSERT "Order Details" VALUES(10790,56,38,20,0.15)
INSERT "Order Details" VALUES(10791,29,123.79,14,0.05)
INSERT "Order Details" VALUES(10791,41,9.65,20,0.05)
INSERT "Order Details" VALUES(10792,2,19,10,0)
INSERT "Order Details" VALUES(10792,54,7.45,3,0)
INSERT "Order Details" VALUES(10792,68,12.5,15,0)
INSERT "Order Details" VALUES(10793,41,9.65,14,0)
INSERT "Order Details" VALUES(10793,52,7,8,0)
INSERT "Order Details" VALUES(10794,14,23.25,15,0.2)
go
INSERT "Order Details" VALUES(10794,54,7.45,6,0.2)
INSERT "Order Details" VALUES(10795,16,17.45,65,0)
INSERT "Order Details" VALUES(10795,17,39,35,0.25)
INSERT "Order Details" VALUES(10796,26,31.23,21,0.2)
INSERT "Order Details" VALUES(10796,44,19.45,10,0)
INSERT "Order Details" VALUES(10796,64,33.25,35,0.2)
INSERT "Order Details" VALUES(10796,69,36,24,0.2)
INSERT "Order Details" VALUES(10797,11,21,20,0)
INSERT "Order Details" VALUES(10798,62,49.3,2,0)
INSERT "Order Details" VALUES(10798,72,34.8,10,0)
go
INSERT "Order Details" VALUES(10799,13,6,20,0.15)
INSERT "Order Details" VALUES(10799,24,4.5,20,0.15)
INSERT "Order Details" VALUES(10799,59,55,25,0)
INSERT "Order Details" VALUES(10800,11,21,50,0.1)
INSERT "Order Details" VALUES(10800,51,53,10,0.1)
INSERT "Order Details" VALUES(10800,54,7.45,7,0.1)
INSERT "Order Details" VALUES(10801,17,39,40,0.25)
INSERT "Order Details" VALUES(10801,29,123.79,20,0.25)
INSERT "Order Details" VALUES(10802,30,25.89,25,0.25)
INSERT "Order Details" VALUES(10802,51,53,30,0.25)
go
INSERT "Order Details" VALUES(10802,55,24,60,0.25)
INSERT "Order Details" VALUES(10802,62,49.3,5,0.25)
INSERT "Order Details" VALUES(10803,19,9.2,24,0.05)
INSERT "Order Details" VALUES(10803,25,14,15,0.05)
INSERT "Order Details" VALUES(10803,59,55,15,0.05)
INSERT "Order Details" VALUES(10804,10,31,36,0)
INSERT "Order Details" VALUES(10804,28,45.6,24,0)
INSERT "Order Details" VALUES(10804,49,20,4,0.15)
INSERT "Order Details" VALUES(10805,34,14,10,0)
INSERT "Order Details" VALUES(10805,38,263.5,10,0)
go
INSERT "Order Details" VALUES(10806,2,19,20,0.25)
INSERT "Order Details" VALUES(10806,65,21.05,2,0)
INSERT "Order Details" VALUES(10806,74,10,15,0.25)
INSERT "Order Details" VALUES(10807,40,18.4,1,0)
INSERT "Order Details" VALUES(10808,56,38,20,0.15)
INSERT "Order Details" VALUES(10808,76,18,50,0.15)
INSERT "Order Details" VALUES(10809,52,7,20,0)
INSERT "Order Details" VALUES(10810,13,6,7,0)
INSERT "Order Details" VALUES(10810,25,14,5,0)
INSERT "Order Details" VALUES(10810,70,15,5,0)
go
INSERT "Order Details" VALUES(10811,19,9.2,15,0)
INSERT "Order Details" VALUES(10811,23,9,18,0)
INSERT "Order Details" VALUES(10811,40,18.4,30,0)
INSERT "Order Details" VALUES(10812,31,12.5,16,0.1)
INSERT "Order Details" VALUES(10812,72,34.8,40,0.1)
INSERT "Order Details" VALUES(10812,77,13,20,0)
INSERT "Order Details" VALUES(10813,2,19,12,0.2)
INSERT "Order Details" VALUES(10813,46,12,35,0)
INSERT "Order Details" VALUES(10814,41,9.65,20,0)
INSERT "Order Details" VALUES(10814,43,46,20,0.15)
go
INSERT "Order Details" VALUES(10814,48,12.75,8,0.15)
INSERT "Order Details" VALUES(10814,61,28.5,30,0.15)
INSERT "Order Details" VALUES(10815,33,2.5,16,0)
INSERT "Order Details" VALUES(10816,38,263.5,30,0.05)
INSERT "Order Details" VALUES(10816,62,49.3,20,0.05)
INSERT "Order Details" VALUES(10817,26,31.23,40,0.15)
INSERT "Order Details" VALUES(10817,38,263.5,30,0)
INSERT "Order Details" VALUES(10817,40,18.4,60,0.15)
INSERT "Order Details" VALUES(10817,62,49.3,25,0.15)
INSERT "Order Details" VALUES(10818,32,32,20,0)
go
INSERT "Order Details" VALUES(10818,41,9.65,20,0)
INSERT "Order Details" VALUES(10819,43,46,7,0)
INSERT "Order Details" VALUES(10819,75,7.75,20,0)
INSERT "Order Details" VALUES(10820,56,38,30,0)
INSERT "Order Details" VALUES(10821,35,18,20,0)
INSERT "Order Details" VALUES(10821,51,53,6,0)
INSERT "Order Details" VALUES(10822,62,49.3,3,0)
INSERT "Order Details" VALUES(10822,70,15,6,0)
INSERT "Order Details" VALUES(10823,11,21,20,0.1)
INSERT "Order Details" VALUES(10823,57,19.5,15,0)
go
INSERT "Order Details" VALUES(10823,59,55,40,0.1)
INSERT "Order Details" VALUES(10823,77,13,15,0.1)
INSERT "Order Details" VALUES(10824,41,9.65,12,0)
INSERT "Order Details" VALUES(10824,70,15,9,0)
INSERT "Order Details" VALUES(10825,26,31.23,12,0)
INSERT "Order Details" VALUES(10825,53,32.8,20,0)
INSERT "Order Details" VALUES(10826,31,12.5,35,0)
INSERT "Order Details" VALUES(10826,57,19.5,15,0)
INSERT "Order Details" VALUES(10827,10,31,15,0)
INSERT "Order Details" VALUES(10827,39,18,21,0)
go
INSERT "Order Details" VALUES(10828,20,81,5,0)
INSERT "Order Details" VALUES(10828,38,263.5,2,0)
INSERT "Order Details" VALUES(10829,2,19,10,0)
INSERT "Order Details" VALUES(10829,8,40,20,0)
INSERT "Order Details" VALUES(10829,13,6,10,0)
INSERT "Order Details" VALUES(10829,60,34,21,0)
INSERT "Order Details" VALUES(10830,6,25,6,0)
INSERT "Order Details" VALUES(10830,39,18,28,0)
INSERT "Order Details" VALUES(10830,60,34,30,0)
INSERT "Order Details" VALUES(10830,68,12.5,24,0)
go
INSERT "Order Details" VALUES(10831,19,9.2,2,0)
INSERT "Order Details" VALUES(10831,35,18,8,0)
INSERT "Order Details" VALUES(10831,38,263.5,8,0)
INSERT "Order Details" VALUES(10831,43,46,9,0)
INSERT "Order Details" VALUES(10832,13,6,3,0.2)
INSERT "Order Details" VALUES(10832,25,14,10,0.2)
INSERT "Order Details" VALUES(10832,44,19.45,16,0.2)
INSERT "Order Details" VALUES(10832,64,33.25,3,0)
INSERT "Order Details" VALUES(10833,7,30,20,0.1)
INSERT "Order Details" VALUES(10833,31,12.5,9,0.1)
go
INSERT "Order Details" VALUES(10833,53,32.8,9,0.1)
INSERT "Order Details" VALUES(10834,29,123.79,8,0.05)
INSERT "Order Details" VALUES(10834,30,25.89,20,0.05)
INSERT "Order Details" VALUES(10835,59,55,15,0)
INSERT "Order Details" VALUES(10835,77,13,2,0.2)
INSERT "Order Details" VALUES(10836,22,21,52,0)
INSERT "Order Details" VALUES(10836,35,18,6,0)
INSERT "Order Details" VALUES(10836,57,19.5,24,0)
INSERT "Order Details" VALUES(10836,60,34,60,0)
INSERT "Order Details" VALUES(10836,64,33.25,30,0)
go
INSERT "Order Details" VALUES(10837,13,6,6,0)
INSERT "Order Details" VALUES(10837,40,18.4,25,0)
INSERT "Order Details" VALUES(10837,47,9.5,40,0.25)
INSERT "Order Details" VALUES(10837,76,18,21,0.25)
INSERT "Order Details" VALUES(10838,1,18,4,0.25)
INSERT "Order Details" VALUES(10838,18,62.5,25,0.25)
INSERT "Order Details" VALUES(10838,36,19,50,0.25)
INSERT "Order Details" VALUES(10839,58,13.25,30,0.1)
INSERT "Order Details" VALUES(10839,72,34.8,15,0.1)
INSERT "Order Details" VALUES(10840,25,14,6,0.2)
go
INSERT "Order Details" VALUES(10840,39,18,10,0.2)
INSERT "Order Details" VALUES(10841,10,31,16,0)
INSERT "Order Details" VALUES(10841,56,38,30,0)
INSERT "Order Details" VALUES(10841,59,55,50,0)
INSERT "Order Details" VALUES(10841,77,13,15,0)
INSERT "Order Details" VALUES(10842,11,21,15,0)
INSERT "Order Details" VALUES(10842,43,46,5,0)
INSERT "Order Details" VALUES(10842,68,12.5,20,0)
INSERT "Order Details" VALUES(10842,70,15,12,0)
INSERT "Order Details" VALUES(10843,51,53,4,0.25)
go
INSERT "Order Details" VALUES(10844,22,21,35,0)
INSERT "Order Details" VALUES(10845,23,9,70,0.1)
INSERT "Order Details" VALUES(10845,35,18,25,0.1)
INSERT "Order Details" VALUES(10845,42,14,42,0.1)
INSERT "Order Details" VALUES(10845,58,13.25,60,0.1)
INSERT "Order Details" VALUES(10845,64,33.25,48,0)
INSERT "Order Details" VALUES(10846,4,22,21,0)
INSERT "Order Details" VALUES(10846,70,15,30,0)
INSERT "Order Details" VALUES(10846,74,10,20,0)
INSERT "Order Details" VALUES(10847,1,18,80,0.2)
go
INSERT "Order Details" VALUES(10847,19,9.2,12,0.2)
INSERT "Order Details" VALUES(10847,37,26,60,0.2)
INSERT "Order Details" VALUES(10847,45,9.5,36,0.2)
INSERT "Order Details" VALUES(10847,60,34,45,0.2)
INSERT "Order Details" VALUES(10847,71,21.5,55,0.2)
INSERT "Order Details" VALUES(10848,5,21.35,30,0)
INSERT "Order Details" VALUES(10848,9,97,3,0)
INSERT "Order Details" VALUES(10849,3,10,49,0)
INSERT "Order Details" VALUES(10849,26,31.23,18,0.15)
INSERT "Order Details" VALUES(10850,25,14,20,0.15)
go
INSERT "Order Details" VALUES(10850,33,2.5,4,0.15)
INSERT "Order Details" VALUES(10850,70,15,30,0.15)
INSERT "Order Details" VALUES(10851,2,19,5,0.05)
INSERT "Order Details" VALUES(10851,25,14,10,0.05)
INSERT "Order Details" VALUES(10851,57,19.5,10,0.05)
INSERT "Order Details" VALUES(10851,59,55,42,0.05)
INSERT "Order Details" VALUES(10852,2,19,15,0)
INSERT "Order Details" VALUES(10852,17,39,6,0)
INSERT "Order Details" VALUES(10852,62,49.3,50,0)
INSERT "Order Details" VALUES(10853,18,62.5,10,0)
go
INSERT "Order Details" VALUES(10854,10,31,100,0.15)
INSERT "Order Details" VALUES(10854,13,6,65,0.15)
INSERT "Order Details" VALUES(10855,16,17.45,50,0)
INSERT "Order Details" VALUES(10855,31,12.5,14,0)
INSERT "Order Details" VALUES(10855,56,38,24,0)
INSERT "Order Details" VALUES(10855,65,21.05,15,0.15)
INSERT "Order Details" VALUES(10856,2,19,20,0)
INSERT "Order Details" VALUES(10856,42,14,20,0)
INSERT "Order Details" VALUES(10857,3,10,30,0)
INSERT "Order Details" VALUES(10857,26,31.23,35,0.25)
go
INSERT "Order Details" VALUES(10857,29,123.79,10,0.25)
INSERT "Order Details" VALUES(10858,7,30,5,0)
INSERT "Order Details" VALUES(10858,27,43.9,10,0)
INSERT "Order Details" VALUES(10858,70,15,4,0)
INSERT "Order Details" VALUES(10859,24,4.5,40,0.25)
INSERT "Order Details" VALUES(10859,54,7.45,35,0.25)
INSERT "Order Details" VALUES(10859,64,33.25,30,0.25)
INSERT "Order Details" VALUES(10860,51,53,3,0)
INSERT "Order Details" VALUES(10860,76,18,20,0)
INSERT "Order Details" VALUES(10861,17,39,42,0)
go
INSERT "Order Details" VALUES(10861,18,62.5,20,0)
INSERT "Order Details" VALUES(10861,21,10,40,0)
INSERT "Order Details" VALUES(10861,33,2.5,35,0)
INSERT "Order Details" VALUES(10861,62,49.3,3,0)
INSERT "Order Details" VALUES(10862,11,21,25,0)
INSERT "Order Details" VALUES(10862,52,7,8,0)
INSERT "Order Details" VALUES(10863,1,18,20,0.15)
INSERT "Order Details" VALUES(10863,58,13.25,12,0.15)
INSERT "Order Details" VALUES(10864,35,18,4,0)
INSERT "Order Details" VALUES(10864,67,14,15,0)
go
INSERT "Order Details" VALUES(10865,38,263.5,60,0.05)
INSERT "Order Details" VALUES(10865,39,18,80,0.05)
INSERT "Order Details" VALUES(10866,2,19,21,0.25)
INSERT "Order Details" VALUES(10866,24,4.5,6,0.25)
INSERT "Order Details" VALUES(10866,30,25.89,40,0.25)
INSERT "Order Details" VALUES(10867,53,32.8,3,0)
INSERT "Order Details" VALUES(10868,26,31.23,20,0)
INSERT "Order Details" VALUES(10868,35,18,30,0)
INSERT "Order Details" VALUES(10868,49,20,42,0.1)
INSERT "Order Details" VALUES(10869,1,18,40,0)
go
INSERT "Order Details" VALUES(10869,11,21,10,0)
INSERT "Order Details" VALUES(10869,23,9,50,0)
INSERT "Order Details" VALUES(10869,68,12.5,20,0)
INSERT "Order Details" VALUES(10870,35,18,3,0)
INSERT "Order Details" VALUES(10870,51,53,2,0)
INSERT "Order Details" VALUES(10871,6,25,50,0.05)
INSERT "Order Details" VALUES(10871,16,17.45,12,0.05)
INSERT "Order Details" VALUES(10871,17,39,16,0.05)
INSERT "Order Details" VALUES(10872,55,24,10,0.05)
INSERT "Order Details" VALUES(10872,62,49.3,20,0.05)
go
INSERT "Order Details" VALUES(10872,64,33.25,15,0.05)
INSERT "Order Details" VALUES(10872,65,21.05,21,0.05)
INSERT "Order Details" VALUES(10873,21,10,20,0)
INSERT "Order Details" VALUES(10873,28,45.6,3,0)
INSERT "Order Details" VALUES(10874,10,31,10,0)
INSERT "Order Details" VALUES(10875,19,9.2,25,0)
INSERT "Order Details" VALUES(10875,47,9.5,21,0.1)
INSERT "Order Details" VALUES(10875,49,20,15,0)
INSERT "Order Details" VALUES(10876,46,12,21,0)
INSERT "Order Details" VALUES(10876,64,33.25,20,0)
go
INSERT "Order Details" VALUES(10877,16,17.45,30,0.25)
INSERT "Order Details" VALUES(10877,18,62.5,25,0)
INSERT "Order Details" VALUES(10878,20,81,20,0.05)
INSERT "Order Details" VALUES(10879,40,18.4,12,0)
INSERT "Order Details" VALUES(10879,65,21.05,10,0)
INSERT "Order Details" VALUES(10879,76,18,10,0)
INSERT "Order Details" VALUES(10880,23,9,30,0.2)
INSERT "Order Details" VALUES(10880,61,28.5,30,0.2)
INSERT "Order Details" VALUES(10880,70,15,50,0.2)
INSERT "Order Details" VALUES(10881,73,15,10,0)
go
INSERT "Order Details" VALUES(10882,42,14,25,0)
INSERT "Order Details" VALUES(10882,49,20,20,0.15)
INSERT "Order Details" VALUES(10882,54,7.45,32,0.15)
INSERT "Order Details" VALUES(10883,24,4.5,8,0)
INSERT "Order Details" VALUES(10884,21,10,40,0.05)
INSERT "Order Details" VALUES(10884,56,38,21,0.05)
INSERT "Order Details" VALUES(10884,65,21.05,12,0.05)
INSERT "Order Details" VALUES(10885,2,19,20,0)
INSERT "Order Details" VALUES(10885,24,4.5,12,0)
INSERT "Order Details" VALUES(10885,70,15,30,0)
go
INSERT "Order Details" VALUES(10885,77,13,25,0)
INSERT "Order Details" VALUES(10886,10,31,70,0)
INSERT "Order Details" VALUES(10886,31,12.5,35,0)
INSERT "Order Details" VALUES(10886,77,13,40,0)
INSERT "Order Details" VALUES(10887,25,14,5,0)
INSERT "Order Details" VALUES(10888,2,19,20,0)
INSERT "Order Details" VALUES(10888,68,12.5,18,0)
INSERT "Order Details" VALUES(10889,11,21,40,0)
INSERT "Order Details" VALUES(10889,38,263.5,40,0)
INSERT "Order Details" VALUES(10890,17,39,15,0)
go
INSERT "Order Details" VALUES(10890,34,14,10,0)
INSERT "Order Details" VALUES(10890,41,9.65,14,0)
INSERT "Order Details" VALUES(10891,30,25.89,15,0.05)
INSERT "Order Details" VALUES(10892,59,55,40,0.05)
INSERT "Order Details" VALUES(10893,8,40,30,0)
INSERT "Order Details" VALUES(10893,24,4.5,10,0)
INSERT "Order Details" VALUES(10893,29,123.79,24,0)
INSERT "Order Details" VALUES(10893,30,25.89,35,0)
INSERT "Order Details" VALUES(10893,36,19,20,0)
INSERT "Order Details" VALUES(10894,13,6,28,0.05)
go
INSERT "Order Details" VALUES(10894,69,36,50,0.05)
INSERT "Order Details" VALUES(10894,75,7.75,120,0.05)
INSERT "Order Details" VALUES(10895,24,4.5,110,0)
INSERT "Order Details" VALUES(10895,39,18,45,0)
INSERT "Order Details" VALUES(10895,40,18.4,91,0)
INSERT "Order Details" VALUES(10895,60,34,100,0)
INSERT "Order Details" VALUES(10896,45,9.5,15,0)
INSERT "Order Details" VALUES(10896,56,38,16,0)
INSERT "Order Details" VALUES(10897,29,123.79,80,0)
INSERT "Order Details" VALUES(10897,30,25.89,36,0)
go
INSERT "Order Details" VALUES(10898,13,6,5,0)
INSERT "Order Details" VALUES(10899,39,18,8,0.15)
INSERT "Order Details" VALUES(10900,70,15,3,0.25)
INSERT "Order Details" VALUES(10901,41,9.65,30,0)
INSERT "Order Details" VALUES(10901,71,21.5,30,0)
INSERT "Order Details" VALUES(10902,55,24,30,0.15)
INSERT "Order Details" VALUES(10902,62,49.3,6,0.15)
INSERT "Order Details" VALUES(10903,13,6,40,0)
INSERT "Order Details" VALUES(10903,65,21.05,21,0)
INSERT "Order Details" VALUES(10903,68,12.5,20,0)
go
INSERT "Order Details" VALUES(10904,58,13.25,15,0)
INSERT "Order Details" VALUES(10904,62,49.3,35,0)
INSERT "Order Details" VALUES(10905,1,18,20,0.05)
INSERT "Order Details" VALUES(10906,61,28.5,15,0)
INSERT "Order Details" VALUES(10907,75,7.75,14,0)
INSERT "Order Details" VALUES(10908,7,30,20,0.05)
INSERT "Order Details" VALUES(10908,52,7,14,0.05)
INSERT "Order Details" VALUES(10909,7,30,12,0)
INSERT "Order Details" VALUES(10909,16,17.45,15,0)
INSERT "Order Details" VALUES(10909,41,9.65,5,0)
go
INSERT "Order Details" VALUES(10910,19,9.2,12,0)
INSERT "Order Details" VALUES(10910,49,20,10,0)
INSERT "Order Details" VALUES(10910,61,28.5,5,0)
INSERT "Order Details" VALUES(10911,1,18,10,0)
INSERT "Order Details" VALUES(10911,17,39,12,0)
INSERT "Order Details" VALUES(10911,67,14,15,0)
INSERT "Order Details" VALUES(10912,11,21,40,0.25)
INSERT "Order Details" VALUES(10912,29,123.79,60,0.25)
INSERT "Order Details" VALUES(10913,4,22,30,0.25)
INSERT "Order Details" VALUES(10913,33,2.5,40,0.25)
go
INSERT "Order Details" VALUES(10913,58,13.25,15,0)
INSERT "Order Details" VALUES(10914,71,21.5,25,0)
INSERT "Order Details" VALUES(10915,17,39,10,0)
INSERT "Order Details" VALUES(10915,33,2.5,30,0)
INSERT "Order Details" VALUES(10915,54,7.45,10,0)
INSERT "Order Details" VALUES(10916,16,17.45,6,0)
INSERT "Order Details" VALUES(10916,32,32,6,0)
INSERT "Order Details" VALUES(10916,57,19.5,20,0)
INSERT "Order Details" VALUES(10917,30,25.89,1,0)
INSERT "Order Details" VALUES(10917,60,34,10,0)
go
INSERT "Order Details" VALUES(10918,1,18,60,0.25)
INSERT "Order Details" VALUES(10918,60,34,25,0.25)
INSERT "Order Details" VALUES(10919,16,17.45,24,0)
INSERT "Order Details" VALUES(10919,25,14,24,0)
INSERT "Order Details" VALUES(10919,40,18.4,20,0)
INSERT "Order Details" VALUES(10920,50,16.25,24,0)
INSERT "Order Details" VALUES(10921,35,18,10,0)
INSERT "Order Details" VALUES(10921,63,43.9,40,0)
INSERT "Order Details" VALUES(10922,17,39,15,0)
INSERT "Order Details" VALUES(10922,24,4.5,35,0)
go
INSERT "Order Details" VALUES(10923,42,14,10,0.2)
INSERT "Order Details" VALUES(10923,43,46,10,0.2)
INSERT "Order Details" VALUES(10923,67,14,24,0.2)
INSERT "Order Details" VALUES(10924,10,31,20,0.1)
INSERT "Order Details" VALUES(10924,28,45.6,30,0.1)
INSERT "Order Details" VALUES(10924,75,7.75,6,0)
INSERT "Order Details" VALUES(10925,36,19,25,0.15)
INSERT "Order Details" VALUES(10925,52,7,12,0.15)
INSERT "Order Details" VALUES(10926,11,21,2,0)
INSERT "Order Details" VALUES(10926,13,6,10,0)
go
INSERT "Order Details" VALUES(10926,19,9.2,7,0)
INSERT "Order Details" VALUES(10926,72,34.8,10,0)
INSERT "Order Details" VALUES(10927,20,81,5,0)
INSERT "Order Details" VALUES(10927,52,7,5,0)
INSERT "Order Details" VALUES(10927,76,18,20,0)
INSERT "Order Details" VALUES(10928,47,9.5,5,0)
INSERT "Order Details" VALUES(10928,76,18,5,0)
INSERT "Order Details" VALUES(10929,21,10,60,0)
INSERT "Order Details" VALUES(10929,75,7.75,49,0)
INSERT "Order Details" VALUES(10929,77,13,15,0)
go
INSERT "Order Details" VALUES(10930,21,10,36,0)
INSERT "Order Details" VALUES(10930,27,43.9,25,0)
INSERT "Order Details" VALUES(10930,55,24,25,0.2)
INSERT "Order Details" VALUES(10930,58,13.25,30,0.2)
INSERT "Order Details" VALUES(10931,13,6,42,0.15)
INSERT "Order Details" VALUES(10931,57,19.5,30,0)
INSERT "Order Details" VALUES(10932,16,17.45,30,0.1)
INSERT "Order Details" VALUES(10932,62,49.3,14,0.1)
INSERT "Order Details" VALUES(10932,72,34.8,16,0)
INSERT "Order Details" VALUES(10932,75,7.75,20,0.1)
go
INSERT "Order Details" VALUES(10933,53,32.8,2,0)
INSERT "Order Details" VALUES(10933,61,28.5,30,0)
INSERT "Order Details" VALUES(10934,6,25,20,0)
INSERT "Order Details" VALUES(10935,1,18,21,0)
INSERT "Order Details" VALUES(10935,18,62.5,4,0.25)
INSERT "Order Details" VALUES(10935,23,9,8,0.25)
INSERT "Order Details" VALUES(10936,36,19,30,0.2)
INSERT "Order Details" VALUES(10937,28,45.6,8,0)
INSERT "Order Details" VALUES(10937,34,14,20,0)
INSERT "Order Details" VALUES(10938,13,6,20,0.25)
go
INSERT "Order Details" VALUES(10938,43,46,24,0.25)
INSERT "Order Details" VALUES(10938,60,34,49,0.25)
INSERT "Order Details" VALUES(10938,71,21.5,35,0.25)
INSERT "Order Details" VALUES(10939,2,19,10,0.15)
INSERT "Order Details" VALUES(10939,67,14,40,0.15)
INSERT "Order Details" VALUES(10940,7,30,8,0)
INSERT "Order Details" VALUES(10940,13,6,20,0)
INSERT "Order Details" VALUES(10941,31,12.5,44,0.25)
INSERT "Order Details" VALUES(10941,62,49.3,30,0.25)
INSERT "Order Details" VALUES(10941,68,12.5,80,0.25)
go
INSERT "Order Details" VALUES(10941,72,34.8,50,0)
INSERT "Order Details" VALUES(10942,49,20,28,0)
INSERT "Order Details" VALUES(10943,13,6,15,0)
INSERT "Order Details" VALUES(10943,22,21,21,0)
INSERT "Order Details" VALUES(10943,46,12,15,0)
INSERT "Order Details" VALUES(10944,11,21,5,0.25)
INSERT "Order Details" VALUES(10944,44,19.45,18,0.25)
INSERT "Order Details" VALUES(10944,56,38,18,0)
INSERT "Order Details" VALUES(10945,13,6,20,0)
INSERT "Order Details" VALUES(10945,31,12.5,10,0)
go
INSERT "Order Details" VALUES(10946,10,31,25,0)
INSERT "Order Details" VALUES(10946,24,4.5,25,0)
INSERT "Order Details" VALUES(10946,77,13,40,0)
INSERT "Order Details" VALUES(10947,59,55,4,0)
INSERT "Order Details" VALUES(10948,50,16.25,9,0)
INSERT "Order Details" VALUES(10948,51,53,40,0)
INSERT "Order Details" VALUES(10948,55,24,4,0)
INSERT "Order Details" VALUES(10949,6,25,12,0)
INSERT "Order Details" VALUES(10949,10,31,30,0)
INSERT "Order Details" VALUES(10949,17,39,6,0)
go
INSERT "Order Details" VALUES(10949,62,49.3,60,0)
INSERT "Order Details" VALUES(10950,4,22,5,0)
INSERT "Order Details" VALUES(10951,33,2.5,15,0.05)
INSERT "Order Details" VALUES(10951,41,9.65,6,0.05)
INSERT "Order Details" VALUES(10951,75,7.75,50,0.05)
INSERT "Order Details" VALUES(10952,6,25,16,0.05)
INSERT "Order Details" VALUES(10952,28,45.6,2,0)
INSERT "Order Details" VALUES(10953,20,81,50,0.05)
INSERT "Order Details" VALUES(10953,31,12.5,50,0.05)
INSERT "Order Details" VALUES(10954,16,17.45,28,0.15)
go
INSERT "Order Details" VALUES(10954,31,12.5,25,0.15)
INSERT "Order Details" VALUES(10954,45,9.5,30,0)
INSERT "Order Details" VALUES(10954,60,34,24,0.15)
INSERT "Order Details" VALUES(10955,75,7.75,12,0.2)
INSERT "Order Details" VALUES(10956,21,10,12,0)
INSERT "Order Details" VALUES(10956,47,9.5,14,0)
INSERT "Order Details" VALUES(10956,51,53,8,0)
INSERT "Order Details" VALUES(10957,30,25.89,30,0)
INSERT "Order Details" VALUES(10957,35,18,40,0)
INSERT "Order Details" VALUES(10957,64,33.25,8,0)
go
INSERT "Order Details" VALUES(10958,5,21.35,20,0)
INSERT "Order Details" VALUES(10958,7,30,6,0)
INSERT "Order Details" VALUES(10958,72,34.8,5,0)
INSERT "Order Details" VALUES(10959,75,7.75,20,0.15)
INSERT "Order Details" VALUES(10960,24,4.5,10,0.25)
INSERT "Order Details" VALUES(10960,41,9.65,24,0)
INSERT "Order Details" VALUES(10961,52,7,6,0.05)
INSERT "Order Details" VALUES(10961,76,18,60,0)
INSERT "Order Details" VALUES(10962,7,30,45,0)
INSERT "Order Details" VALUES(10962,13,6,77,0)
go
INSERT "Order Details" VALUES(10962,53,32.8,20,0)
INSERT "Order Details" VALUES(10962,69,36,9,0)
INSERT "Order Details" VALUES(10962,76,18,44,0)
INSERT "Order Details" VALUES(10963,60,34,2,0.15)
INSERT "Order Details" VALUES(10964,18,62.5,6,0)
INSERT "Order Details" VALUES(10964,38,263.5,5,0)
INSERT "Order Details" VALUES(10964,69,36,10,0)
INSERT "Order Details" VALUES(10965,51,53,16,0)
INSERT "Order Details" VALUES(10966,37,26,8,0)
INSERT "Order Details" VALUES(10966,56,38,12,0.15)
go
INSERT "Order Details" VALUES(10966,62,49.3,12,0.15)
INSERT "Order Details" VALUES(10967,19,9.2,12,0)
INSERT "Order Details" VALUES(10967,49,20,40,0)
INSERT "Order Details" VALUES(10968,12,38,30,0)
INSERT "Order Details" VALUES(10968,24,4.5,30,0)
INSERT "Order Details" VALUES(10968,64,33.25,4,0)
INSERT "Order Details" VALUES(10969,46,12,9,0)
INSERT "Order Details" VALUES(10970,52,7,40,0.2)
INSERT "Order Details" VALUES(10971,29,123.79,14,0)
INSERT "Order Details" VALUES(10972,17,39,6,0)
go
INSERT "Order Details" VALUES(10972,33,2.5,7,0)
INSERT "Order Details" VALUES(10973,26,31.23,5,0)
INSERT "Order Details" VALUES(10973,41,9.65,6,0)
INSERT "Order Details" VALUES(10973,75,7.75,10,0)
INSERT "Order Details" VALUES(10974,63,43.9,10,0)
INSERT "Order Details" VALUES(10975,8,40,16,0)
INSERT "Order Details" VALUES(10975,75,7.75,10,0)
INSERT "Order Details" VALUES(10976,28,45.6,20,0)
INSERT "Order Details" VALUES(10977,39,18,30,0)
INSERT "Order Details" VALUES(10977,47,9.5,30,0)
go
INSERT "Order Details" VALUES(10977,51,53,10,0)
INSERT "Order Details" VALUES(10977,63,43.9,20,0)
INSERT "Order Details" VALUES(10978,8,40,20,0.15)
INSERT "Order Details" VALUES(10978,21,10,40,0.15)
INSERT "Order Details" VALUES(10978,40,18.4,10,0)
INSERT "Order Details" VALUES(10978,44,19.45,6,0.15)
INSERT "Order Details" VALUES(10979,7,30,18,0)
INSERT "Order Details" VALUES(10979,12,38,20,0)
INSERT "Order Details" VALUES(10979,24,4.5,80,0)
INSERT "Order Details" VALUES(10979,27,43.9,30,0)
go
INSERT "Order Details" VALUES(10979,31,12.5,24,0)
INSERT "Order Details" VALUES(10979,63,43.9,35,0)
INSERT "Order Details" VALUES(10980,75,7.75,40,0.2)
INSERT "Order Details" VALUES(10981,38,263.5,60,0)
INSERT "Order Details" VALUES(10982,7,30,20,0)
INSERT "Order Details" VALUES(10982,43,46,9,0)
INSERT "Order Details" VALUES(10983,13,6,84,0.15)
INSERT "Order Details" VALUES(10983,57,19.5,15,0)
INSERT "Order Details" VALUES(10984,16,17.45,55,0)
INSERT "Order Details" VALUES(10984,24,4.5,20,0)
go
INSERT "Order Details" VALUES(10984,36,19,40,0)
INSERT "Order Details" VALUES(10985,16,17.45,36,0.1)
INSERT "Order Details" VALUES(10985,18,62.5,8,0.1)
INSERT "Order Details" VALUES(10985,32,32,35,0.1)
INSERT "Order Details" VALUES(10986,11,21,30,0)
INSERT "Order Details" VALUES(10986,20,81,15,0)
INSERT "Order Details" VALUES(10986,76,18,10,0)
INSERT "Order Details" VALUES(10986,77,13,15,0)
INSERT "Order Details" VALUES(10987,7,30,60,0)
INSERT "Order Details" VALUES(10987,43,46,6,0)
go
INSERT "Order Details" VALUES(10987,72,34.8,20,0)
INSERT "Order Details" VALUES(10988,7,30,60,0)
INSERT "Order Details" VALUES(10988,62,49.3,40,0.1)
INSERT "Order Details" VALUES(10989,6,25,40,0)
INSERT "Order Details" VALUES(10989,11,21,15,0)
INSERT "Order Details" VALUES(10989,41,9.65,4,0)
INSERT "Order Details" VALUES(10990,21,10,65,0)
INSERT "Order Details" VALUES(10990,34,14,60,0.15)
INSERT "Order Details" VALUES(10990,55,24,65,0.15)
INSERT "Order Details" VALUES(10990,61,28.5,66,0.15)
go
INSERT "Order Details" VALUES(10991,2,19,50,0.2)
INSERT "Order Details" VALUES(10991,70,15,20,0.2)
INSERT "Order Details" VALUES(10991,76,18,90,0.2)
INSERT "Order Details" VALUES(10992,72,34.8,2,0)
INSERT "Order Details" VALUES(10993,29,123.79,50,0.25)
INSERT "Order Details" VALUES(10993,41,9.65,35,0.25)
INSERT "Order Details" VALUES(10994,59,55,18,0.05)
INSERT "Order Details" VALUES(10995,51,53,20,0)
INSERT "Order Details" VALUES(10995,60,34,4,0)
INSERT "Order Details" VALUES(10996,42,14,40,0)
go
INSERT "Order Details" VALUES(10997,32,32,50,0)
INSERT "Order Details" VALUES(10997,46,12,20,0.25)
INSERT "Order Details" VALUES(10997,52,7,20,0.25)
INSERT "Order Details" VALUES(10998,24,4.5,12,0)
INSERT "Order Details" VALUES(10998,61,28.5,7,0)
INSERT "Order Details" VALUES(10998,74,10,20,0)
INSERT "Order Details" VALUES(10998,75,7.75,30,0)
INSERT "Order Details" VALUES(10999,41,9.65,20,0.05)
INSERT "Order Details" VALUES(10999,51,53,15,0.05)
INSERT "Order Details" VALUES(10999,77,13,21,0.05)
go
INSERT "Order Details" VALUES(11000,4,22,25,0.25)
INSERT "Order Details" VALUES(11000,24,4.5,30,0.25)
INSERT "Order Details" VALUES(11000,77,13,30,0)
INSERT "Order Details" VALUES(11001,7,30,60,0)
INSERT "Order Details" VALUES(11001,22,21,25,0)
INSERT "Order Details" VALUES(11001,46,12,25,0)
INSERT "Order Details" VALUES(11001,55,24,6,0)
INSERT "Order Details" VALUES(11002,13,6,56,0)
INSERT "Order Details" VALUES(11002,35,18,15,0.15)
INSERT "Order Details" VALUES(11002,42,14,24,0.15)
go
INSERT "Order Details" VALUES(11002,55,24,40,0)
INSERT "Order Details" VALUES(11003,1,18,4,0)
INSERT "Order Details" VALUES(11003,40,18.4,10,0)
INSERT "Order Details" VALUES(11003,52,7,10,0)
INSERT "Order Details" VALUES(11004,26,31.23,6,0)
INSERT "Order Details" VALUES(11004,76,18,6,0)
INSERT "Order Details" VALUES(11005,1,18,2,0)
INSERT "Order Details" VALUES(11005,59,55,10,0)
INSERT "Order Details" VALUES(11006,1,18,8,0)
INSERT "Order Details" VALUES(11006,29,123.79,2,0.25)
go
INSERT "Order Details" VALUES(11007,8,40,30,0)
INSERT "Order Details" VALUES(11007,29,123.79,10,0)
INSERT "Order Details" VALUES(11007,42,14,14,0)
INSERT "Order Details" VALUES(11008,28,45.6,70,0.05)
INSERT "Order Details" VALUES(11008,34,14,90,0.05)
INSERT "Order Details" VALUES(11008,71,21.5,21,0)
INSERT "Order Details" VALUES(11009,24,4.5,12,0)
INSERT "Order Details" VALUES(11009,36,19,18,0.25)
INSERT "Order Details" VALUES(11009,60,34,9,0)
INSERT "Order Details" VALUES(11010,7,30,20,0)
go
INSERT "Order Details" VALUES(11010,24,4.5,10,0)
INSERT "Order Details" VALUES(11011,58,13.25,40,0.05)
INSERT "Order Details" VALUES(11011,71,21.5,20,0)
INSERT "Order Details" VALUES(11012,19,9.2,50,0.05)
INSERT "Order Details" VALUES(11012,60,34,36,0.05)
INSERT "Order Details" VALUES(11012,71,21.5,60,0.05)
INSERT "Order Details" VALUES(11013,23,9,10,0)
INSERT "Order Details" VALUES(11013,42,14,4,0)
INSERT "Order Details" VALUES(11013,45,9.5,20,0)
INSERT "Order Details" VALUES(11013,68,12.5,2,0)
go
INSERT "Order Details" VALUES(11014,41,9.65,28,0.1)
INSERT "Order Details" VALUES(11015,30,25.89,15,0)
INSERT "Order Details" VALUES(11015,77,13,18,0)
INSERT "Order Details" VALUES(11016,31,12.5,15,0)
INSERT "Order Details" VALUES(11016,36,19,16,0)
INSERT "Order Details" VALUES(11017,3,10,25,0)
INSERT "Order Details" VALUES(11017,59,55,110,0)
INSERT "Order Details" VALUES(11017,70,15,30,0)
INSERT "Order Details" VALUES(11018,12,38,20,0)
INSERT "Order Details" VALUES(11018,18,62.5,10,0)
go
INSERT "Order Details" VALUES(11018,56,38,5,0)
INSERT "Order Details" VALUES(11019,46,12,3,0)
INSERT "Order Details" VALUES(11019,49,20,2,0)
INSERT "Order Details" VALUES(11020,10,31,24,0.15)
INSERT "Order Details" VALUES(11021,2,19,11,0.25)
INSERT "Order Details" VALUES(11021,20,81,15,0)
INSERT "Order Details" VALUES(11021,26,31.23,63,0)
INSERT "Order Details" VALUES(11021,51,53,44,0.25)
INSERT "Order Details" VALUES(11021,72,34.8,35,0)
INSERT "Order Details" VALUES(11022,19,9.2,35,0)
go
INSERT "Order Details" VALUES(11022,69,36,30,0)
INSERT "Order Details" VALUES(11023,7,30,4,0)
INSERT "Order Details" VALUES(11023,43,46,30,0)
INSERT "Order Details" VALUES(11024,26,31.23,12,0)
INSERT "Order Details" VALUES(11024,33,2.5,30,0)
INSERT "Order Details" VALUES(11024,65,21.05,21,0)
INSERT "Order Details" VALUES(11024,71,21.5,50,0)
INSERT "Order Details" VALUES(11025,1,18,10,0.1)
INSERT "Order Details" VALUES(11025,13,6,20,0.1)
INSERT "Order Details" VALUES(11026,18,62.5,8,0)
go
INSERT "Order Details" VALUES(11026,51,53,10,0)
INSERT "Order Details" VALUES(11027,24,4.5,30,0.25)
INSERT "Order Details" VALUES(11027,62,49.3,21,0.25)
INSERT "Order Details" VALUES(11028,55,24,35,0)
INSERT "Order Details" VALUES(11028,59,55,24,0)
INSERT "Order Details" VALUES(11029,56,38,20,0)
INSERT "Order Details" VALUES(11029,63,43.9,12,0)
INSERT "Order Details" VALUES(11030,2,19,100,0.25)
INSERT "Order Details" VALUES(11030,5,21.35,70,0)
INSERT "Order Details" VALUES(11030,29,123.79,60,0.25)
go
INSERT "Order Details" VALUES(11030,59,55,100,0.25)
INSERT "Order Details" VALUES(11031,1,18,45,0)
INSERT "Order Details" VALUES(11031,13,6,80,0)
INSERT "Order Details" VALUES(11031,24,4.5,21,0)
INSERT "Order Details" VALUES(11031,64,33.25,20,0)
INSERT "Order Details" VALUES(11031,71,21.5,16,0)
INSERT "Order Details" VALUES(11032,36,19,35,0)
INSERT "Order Details" VALUES(11032,38,263.5,25,0)
INSERT "Order Details" VALUES(11032,59,55,30,0)
INSERT "Order Details" VALUES(11033,53,32.8,70,0.1)
go
INSERT "Order Details" VALUES(11033,69,36,36,0.1)
INSERT "Order Details" VALUES(11034,21,10,15,0.1)
INSERT "Order Details" VALUES(11034,44,19.45,12,0)
INSERT "Order Details" VALUES(11034,61,28.5,6,0)
INSERT "Order Details" VALUES(11035,1,18,10,0)
INSERT "Order Details" VALUES(11035,35,18,60,0)
INSERT "Order Details" VALUES(11035,42,14,30,0)
INSERT "Order Details" VALUES(11035,54,7.45,10,0)
INSERT "Order Details" VALUES(11036,13,6,7,0)
INSERT "Order Details" VALUES(11036,59,55,30,0)
go
INSERT "Order Details" VALUES(11037,70,15,4,0)
INSERT "Order Details" VALUES(11038,40,18.4,5,0.2)
INSERT "Order Details" VALUES(11038,52,7,2,0)
INSERT "Order Details" VALUES(11038,71,21.5,30,0)
INSERT "Order Details" VALUES(11039,28,45.6,20,0)
INSERT "Order Details" VALUES(11039,35,18,24,0)
INSERT "Order Details" VALUES(11039,49,20,60,0)
INSERT "Order Details" VALUES(11039,57,19.5,28,0)
INSERT "Order Details" VALUES(11040,21,10,20,0)
INSERT "Order Details" VALUES(11041,2,19,30,0.2)
go
INSERT "Order Details" VALUES(11041,63,43.9,30,0)
INSERT "Order Details" VALUES(11042,44,19.45,15,0)
INSERT "Order Details" VALUES(11042,61,28.5,4,0)
INSERT "Order Details" VALUES(11043,11,21,10,0)
INSERT "Order Details" VALUES(11044,62,49.3,12,0)
INSERT "Order Details" VALUES(11045,33,2.5,15,0)
INSERT "Order Details" VALUES(11045,51,53,24,0)
INSERT "Order Details" VALUES(11046,12,38,20,0.05)
INSERT "Order Details" VALUES(11046,32,32,15,0.05)
INSERT "Order Details" VALUES(11046,35,18,18,0.05)
go
INSERT "Order Details" VALUES(11047,1,18,25,0.25)
INSERT "Order Details" VALUES(11047,5,21.35,30,0.25)
INSERT "Order Details" VALUES(11048,68,12.5,42,0)
INSERT "Order Details" VALUES(11049,2,19,10,0.2)
INSERT "Order Details" VALUES(11049,12,38,4,0.2)
INSERT "Order Details" VALUES(11050,76,18,50,0.1)
INSERT "Order Details" VALUES(11051,24,4.5,10,0.2)
INSERT "Order Details" VALUES(11052,43,46,30,0.2)
INSERT "Order Details" VALUES(11052,61,28.5,10,0.2)
INSERT "Order Details" VALUES(11053,18,62.5,35,0.2)
go
INSERT "Order Details" VALUES(11053,32,32,20,0)
INSERT "Order Details" VALUES(11053,64,33.25,25,0.2)
INSERT "Order Details" VALUES(11054,33,2.5,10,0)
INSERT "Order Details" VALUES(11054,67,14,20,0)
INSERT "Order Details" VALUES(11055,24,4.5,15,0)
INSERT "Order Details" VALUES(11055,25,14,15,0)
INSERT "Order Details" VALUES(11055,51,53,20,0)
INSERT "Order Details" VALUES(11055,57,19.5,20,0)
INSERT "Order Details" VALUES(11056,7,30,40,0)
INSERT "Order Details" VALUES(11056,55,24,35,0)
go
INSERT "Order Details" VALUES(11056,60,34,50,0)
INSERT "Order Details" VALUES(11057,70,15,3,0)
INSERT "Order Details" VALUES(11058,21,10,3,0)
INSERT "Order Details" VALUES(11058,60,34,21,0)
INSERT "Order Details" VALUES(11058,61,28.5,4,0)
INSERT "Order Details" VALUES(11059,13,6,30,0)
INSERT "Order Details" VALUES(11059,17,39,12,0)
INSERT "Order Details" VALUES(11059,60,34,35,0)
INSERT "Order Details" VALUES(11060,60,34,4,0)
INSERT "Order Details" VALUES(11060,77,13,10,0)
go
INSERT "Order Details" VALUES(11061,60,34,15,0)
INSERT "Order Details" VALUES(11062,53,32.8,10,0.2)
INSERT "Order Details" VALUES(11062,70,15,12,0.2)
INSERT "Order Details" VALUES(11063,34,14,30,0)
INSERT "Order Details" VALUES(11063,40,18.4,40,0.1)
INSERT "Order Details" VALUES(11063,41,9.65,30,0.1)
INSERT "Order Details" VALUES(11064,17,39,77,0.1)
INSERT "Order Details" VALUES(11064,41,9.65,12,0)
INSERT "Order Details" VALUES(11064,53,32.8,25,0.1)
INSERT "Order Details" VALUES(11064,55,24,4,0.1)
go
INSERT "Order Details" VALUES(11064,68,12.5,55,0)
INSERT "Order Details" VALUES(11065,30,25.89,4,0.25)
INSERT "Order Details" VALUES(11065,54,7.45,20,0.25)
INSERT "Order Details" VALUES(11066,16,17.45,3,0)
INSERT "Order Details" VALUES(11066,19,9.2,42,0)
INSERT "Order Details" VALUES(11066,34,14,35,0)
INSERT "Order Details" VALUES(11067,41,9.65,9,0)
INSERT "Order Details" VALUES(11068,28,45.6,8,0.15)
INSERT "Order Details" VALUES(11068,43,46,36,0.15)
INSERT "Order Details" VALUES(11068,77,13,28,0.15)
go
INSERT "Order Details" VALUES(11069,39,18,20,0)
INSERT "Order Details" VALUES(11070,1,18,40,0.15)
INSERT "Order Details" VALUES(11070,2,19,20,0.15)
INSERT "Order Details" VALUES(11070,16,17.45,30,0.15)
INSERT "Order Details" VALUES(11070,31,12.5,20,0)
INSERT "Order Details" VALUES(11071,7,30,15,0.05)
INSERT "Order Details" VALUES(11071,13,6,10,0.05)
INSERT "Order Details" VALUES(11072,2,19,8,0)
INSERT "Order Details" VALUES(11072,41,9.65,40,0)
INSERT "Order Details" VALUES(11072,50,16.25,22,0)
go
INSERT "Order Details" VALUES(11072,64,33.25,130,0)
INSERT "Order Details" VALUES(11073,11,21,10,0)
INSERT "Order Details" VALUES(11073,24,4.5,20,0)
INSERT "Order Details" VALUES(11074,16,17.45,14,0.05)
INSERT "Order Details" VALUES(11075,2,19,10,0.15)
INSERT "Order Details" VALUES(11075,46,12,30,0.15)
INSERT "Order Details" VALUES(11075,76,18,2,0.15)
INSERT "Order Details" VALUES(11076,6,25,20,0.25)
INSERT "Order Details" VALUES(11076,14,23.25,20,0.25)
INSERT "Order Details" VALUES(11076,19,9.2,10,0.25)
go
INSERT "Order Details" VALUES(11077,2,19,24,0.2)
INSERT "Order Details" VALUES(11077,3,10,4,0)
INSERT "Order Details" VALUES(11077,4,22,1,0)
INSERT "Order Details" VALUES(11077,6,25,1,0.02)
INSERT "Order Details" VALUES(11077,7,30,1,0.05)
INSERT "Order Details" VALUES(11077,8,40,2,0.1)
INSERT "Order Details" VALUES(11077,10,31,1,0)
INSERT "Order Details" VALUES(11077,12,38,2,0.05)
INSERT "Order Details" VALUES(11077,13,6,4,0)
INSERT "Order Details" VALUES(11077,14,23.25,1,0.03)
go
INSERT "Order Details" VALUES(11077,16,17.45,2,0.03)
INSERT "Order Details" VALUES(11077,20,81,1,0.04)
INSERT "Order Details" VALUES(11077,23,9,2,0)
INSERT "Order Details" VALUES(11077,32,32,1,0)
INSERT "Order Details" VALUES(11077,39,18,2,0.05)
INSERT "Order Details" VALUES(11077,41,9.65,3,0)
INSERT "Order Details" VALUES(11077,46,12,3,0.02)
INSERT "Order Details" VALUES(11077,52,7,2,0)
INSERT "Order Details" VALUES(11077,55,24,2,0)
INSERT "Order Details" VALUES(11077,60,34,2,0.06)
go
INSERT "Order Details" VALUES(11077,64,33.25,2,0.03)
INSERT "Order Details" VALUES(11077,66,17,1,0)
INSERT "Order Details" VALUES(11077,73,15,2,0.01)
INSERT "Order Details" VALUES(11077,75,7.75,4,0)
INSERT "Order Details" VALUES(11077,77,13,2,0)
go
ALTER TABLE "Order Details" CHECK CONSTRAINT ALL
go
set quoted_identifier on
go
set identity_insert "Orders" on
go
ALTER TABLE "Orders" NOCHECK CONSTRAINT ALL
go
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10248,N'VINET',5,'7/4/1996','8/1/1996','7/16/1996',3,32.38,
	N'Vins et alcools Chevalier',N'59 rue de l''Abbaye',N'Reims',
	NULL,N'51100',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10249,N'TOMSP',6,'7/5/1996','8/16/1996','7/10/1996',1,11.61,
	N'Toms Spezialitäten',N'Luisenstr. 48',N'Münster',
	NULL,N'44087',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10250,N'HANAR',4,'7/8/1996','8/5/1996','7/12/1996',2,65.83,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10251,N'VICTE',3,'7/8/1996','8/5/1996','7/15/1996',1,41.34,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10252,N'SUPRD',4,'7/9/1996','8/6/1996','7/11/1996',2,51.30,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10253,N'HANAR',3,'7/10/1996','7/24/1996','7/16/1996',2,58.17,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10254,N'CHOPS',5,'7/11/1996','8/8/1996','7/23/1996',2,22.98,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10255,N'RICSU',9,'7/12/1996','8/9/1996','7/15/1996',3,148.33,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10256,N'WELLI',3,'7/15/1996','8/12/1996','7/17/1996',2,13.97,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10257,N'HILAA',4,'7/16/1996','8/13/1996','7/22/1996',3,81.91,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10258,N'ERNSH',1,'7/17/1996','8/14/1996','7/23/1996',1,140.51,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10259,N'CENTC',4,'7/18/1996','8/15/1996','7/25/1996',3,3.25,
	N'Centro comercial Moctezuma',N'Sierras de Granada 9993',N'México D.F.',
	NULL,N'05022',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10260,N'OTTIK',4,'7/19/1996','8/16/1996','7/29/1996',1,55.09,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10261,N'QUEDE',4,'7/19/1996','8/16/1996','7/30/1996',2,3.05,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10262,N'RATTC',8,'7/22/1996','8/19/1996','7/25/1996',3,48.29,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10263,N'ERNSH',9,'7/23/1996','8/20/1996','7/31/1996',3,146.06,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10264,N'FOLKO',6,'7/24/1996','8/21/1996','8/23/1996',3,3.67,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10265,N'BLONP',2,'7/25/1996','8/22/1996','8/12/1996',1,55.28,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10266,N'WARTH',3,'7/26/1996','9/6/1996','7/31/1996',3,25.73,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10267,N'FRANK',4,'7/29/1996','8/26/1996','8/6/1996',1,208.58,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10268,N'GROSR',8,'7/30/1996','8/27/1996','8/2/1996',3,66.29,
	N'GROSELLA-Restaurante',N'5ª Ave. Los Palos Grandes',N'Caracas',
	N'DF',N'1081',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10269,N'WHITC',5,'7/31/1996','8/14/1996','8/9/1996',1,4.56,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10270,N'WARTH',1,'8/1/1996','8/29/1996','8/2/1996',1,136.54,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10271,N'SPLIR',6,'8/1/1996','8/29/1996','8/30/1996',2,4.54,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10272,N'RATTC',6,'8/2/1996','8/30/1996','8/6/1996',2,98.03,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10273,N'QUICK',3,'8/5/1996','9/2/1996','8/12/1996',3,76.07,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10274,N'VINET',6,'8/6/1996','9/3/1996','8/16/1996',1,6.01,
	N'Vins et alcools Chevalier',N'59 rue de l''Abbaye',N'Reims',
	NULL,N'51100',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10275,N'MAGAA',1,'8/7/1996','9/4/1996','8/9/1996',1,26.93,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10276,N'TORTU',8,'8/8/1996','8/22/1996','8/14/1996',3,13.84,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10277,N'MORGK',2,'8/9/1996','9/6/1996','8/13/1996',3,125.77,
	N'Morgenstern Gesundkost',N'Heerstr. 22',N'Leipzig',
	NULL,N'04179',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10278,N'BERGS',8,'8/12/1996','9/9/1996','8/16/1996',2,92.69,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10279,N'LEHMS',8,'8/13/1996','9/10/1996','8/16/1996',2,25.83,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10280,N'BERGS',2,'8/14/1996','9/11/1996','9/12/1996',1,8.98,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10281,N'ROMEY',4,'8/14/1996','8/28/1996','8/21/1996',1,2.94,
	N'Romero y tomillo',N'Gran Vía, 1',N'Madrid',
	NULL,N'28001',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10282,N'ROMEY',4,'8/15/1996','9/12/1996','8/21/1996',1,12.69,
	N'Romero y tomillo',N'Gran Vía, 1',N'Madrid',
	NULL,N'28001',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10283,N'LILAS',3,'8/16/1996','9/13/1996','8/23/1996',3,84.81,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10284,N'LEHMS',4,'8/19/1996','9/16/1996','8/27/1996',1,76.56,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10285,N'QUICK',1,'8/20/1996','9/17/1996','8/26/1996',2,76.83,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10286,N'QUICK',8,'8/21/1996','9/18/1996','8/30/1996',3,229.24,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10287,N'RICAR',8,'8/22/1996','9/19/1996','8/28/1996',3,12.76,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10288,N'REGGC',4,'8/23/1996','9/20/1996','9/3/1996',1,7.45,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10289,N'BSBEV',7,'8/26/1996','9/23/1996','8/28/1996',3,22.77,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10290,N'COMMI',8,'8/27/1996','9/24/1996','9/3/1996',1,79.70,
	N'Comércio Mineiro',N'Av. dos Lusíadas, 23',N'Sao Paulo',
	N'SP',N'05432-043',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10291,N'QUEDE',6,'8/27/1996','9/24/1996','9/4/1996',2,6.40,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10292,N'TRADH',1,'8/28/1996','9/25/1996','9/2/1996',2,1.35,
	N'Tradiçao Hipermercados',N'Av. Inês de Castro, 414',N'Sao Paulo',
	N'SP',N'05634-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10293,N'TORTU',1,'8/29/1996','9/26/1996','9/11/1996',3,21.18,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10294,N'RATTC',4,'8/30/1996','9/27/1996','9/5/1996',2,147.26,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10295,N'VINET',2,'9/2/1996','9/30/1996','9/10/1996',2,1.15,
	N'Vins et alcools Chevalier',N'59 rue de l''Abbaye',N'Reims',
	NULL,N'51100',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10296,N'LILAS',6,'9/3/1996','10/1/1996','9/11/1996',1,0.12,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10297,N'BLONP',5,'9/4/1996','10/16/1996','9/10/1996',2,5.74,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10298,N'HUNGO',6,'9/5/1996','10/3/1996','9/11/1996',2,168.22,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10299,N'RICAR',4,'9/6/1996','10/4/1996','9/13/1996',2,29.76,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10300,N'MAGAA',2,'9/9/1996','10/7/1996','9/18/1996',2,17.68,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10301,N'WANDK',8,'9/9/1996','10/7/1996','9/17/1996',2,45.08,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10302,N'SUPRD',4,'9/10/1996','10/8/1996','10/9/1996',2,6.27,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10303,N'GODOS',7,'9/11/1996','10/9/1996','9/18/1996',2,107.83,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10304,N'TORTU',1,'9/12/1996','10/10/1996','9/17/1996',2,63.79,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10305,N'OLDWO',8,'9/13/1996','10/11/1996','10/9/1996',3,257.62,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10306,N'ROMEY',1,'9/16/1996','10/14/1996','9/23/1996',3,7.56,
	N'Romero y tomillo',N'Gran Vía, 1',N'Madrid',
	NULL,N'28001',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10307,N'LONEP',2,'9/17/1996','10/15/1996','9/25/1996',2,0.56,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10308,N'ANATR',7,'9/18/1996','10/16/1996','9/24/1996',3,1.61,
	N'Ana Trujillo Emparedados y helados',N'Avda. de la Constitución 2222',N'México D.F.',
	NULL,N'05021',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10309,N'HUNGO',3,'9/19/1996','10/17/1996','10/23/1996',1,47.30,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10310,N'THEBI',8,'9/20/1996','10/18/1996','9/27/1996',2,17.52,
	N'The Big Cheese',N'89 Jefferson Way Suite 2',N'Portland',
	N'OR',N'97201',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10311,N'DUMON',1,'9/20/1996','10/4/1996','9/26/1996',3,24.69,
	N'Du monde entier',N'67, rue des Cinquante Otages',N'Nantes',
	NULL,N'44000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10312,N'WANDK',2,'9/23/1996','10/21/1996','10/3/1996',2,40.26,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10313,N'QUICK',2,'9/24/1996','10/22/1996','10/4/1996',2,1.96,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10314,N'RATTC',1,'9/25/1996','10/23/1996','10/4/1996',2,74.16,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10315,N'ISLAT',4,'9/26/1996','10/24/1996','10/3/1996',2,41.76,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10316,N'RATTC',1,'9/27/1996','10/25/1996','10/8/1996',3,150.15,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10317,N'LONEP',6,'9/30/1996','10/28/1996','10/10/1996',1,12.69,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10318,N'ISLAT',8,'10/1/1996','10/29/1996','10/4/1996',2,4.73,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10319,N'TORTU',7,'10/2/1996','10/30/1996','10/11/1996',3,64.50,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10320,N'WARTH',5,'10/3/1996','10/17/1996','10/18/1996',3,34.57,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10321,N'ISLAT',3,'10/3/1996','10/31/1996','10/11/1996',2,3.43,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10322,N'PERIC',7,'10/4/1996','11/1/1996','10/23/1996',3,0.40,
	N'Pericles Comidas clásicas',N'Calle Dr. Jorge Cash 321',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10323,N'KOENE',4,'10/7/1996','11/4/1996','10/14/1996',1,4.88,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10324,N'SAVEA',9,'10/8/1996','11/5/1996','10/10/1996',1,214.27,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10325,N'KOENE',1,'10/9/1996','10/23/1996','10/14/1996',3,64.86,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10326,N'BOLID',4,'10/10/1996','11/7/1996','10/14/1996',2,77.92,
	N'Bólido Comidas preparadas',N'C/ Araquil, 67',N'Madrid',
	NULL,N'28023',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10327,N'FOLKO',2,'10/11/1996','11/8/1996','10/14/1996',1,63.36,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10328,N'FURIB',4,'10/14/1996','11/11/1996','10/17/1996',3,87.03,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10329,N'SPLIR',4,'10/15/1996','11/26/1996','10/23/1996',2,191.67,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10330,N'LILAS',3,'10/16/1996','11/13/1996','10/28/1996',1,12.75,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10331,N'BONAP',9,'10/16/1996','11/27/1996','10/21/1996',1,10.19,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10332,N'MEREP',3,'10/17/1996','11/28/1996','10/21/1996',2,52.84,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10333,N'WARTH',5,'10/18/1996','11/15/1996','10/25/1996',3,0.59,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10334,N'VICTE',8,'10/21/1996','11/18/1996','10/28/1996',2,8.56,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10335,N'HUNGO',7,'10/22/1996','11/19/1996','10/24/1996',2,42.11,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10336,N'PRINI',7,'10/23/1996','11/20/1996','10/25/1996',2,15.51,
	N'Princesa Isabel Vinhos',N'Estrada da saúde n. 58',N'Lisboa',
	NULL,N'1756',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10337,N'FRANK',4,'10/24/1996','11/21/1996','10/29/1996',3,108.26,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10338,N'OLDWO',4,'10/25/1996','11/22/1996','10/29/1996',3,84.21,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10339,N'MEREP',2,'10/28/1996','11/25/1996','11/4/1996',2,15.66,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10340,N'BONAP',1,'10/29/1996','11/26/1996','11/8/1996',3,166.31,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10341,N'SIMOB',7,'10/29/1996','11/26/1996','11/5/1996',3,26.78,
	N'Simons bistro',N'Vinbæltet 34',N'Kobenhavn',
	NULL,N'1734',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10342,N'FRANK',4,'10/30/1996','11/13/1996','11/4/1996',2,54.83,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10343,N'LEHMS',4,'10/31/1996','11/28/1996','11/6/1996',1,110.37,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10344,N'WHITC',4,'11/1/1996','11/29/1996','11/5/1996',2,23.29,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10345,N'QUICK',2,'11/4/1996','12/2/1996','11/11/1996',2,249.06,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10346,N'RATTC',3,'11/5/1996','12/17/1996','11/8/1996',3,142.08,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10347,N'FAMIA',4,'11/6/1996','12/4/1996','11/8/1996',3,3.10,
	N'Familia Arquibaldo',N'Rua Orós, 92',N'Sao Paulo',
	N'SP',N'05442-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10348,N'WANDK',4,'11/7/1996','12/5/1996','11/15/1996',2,0.78,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10349,N'SPLIR',7,'11/8/1996','12/6/1996','11/15/1996',1,8.63,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10350,N'LAMAI',6,'11/11/1996','12/9/1996','12/3/1996',2,64.19,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10351,N'ERNSH',1,'11/11/1996','12/9/1996','11/20/1996',1,162.33,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10352,N'FURIB',3,'11/12/1996','11/26/1996','11/18/1996',3,1.30,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10353,N'PICCO',7,'11/13/1996','12/11/1996','11/25/1996',3,360.63,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10354,N'PERIC',8,'11/14/1996','12/12/1996','11/20/1996',3,53.80,
	N'Pericles Comidas clásicas',N'Calle Dr. Jorge Cash 321',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10355,N'AROUT',6,'11/15/1996','12/13/1996','11/20/1996',1,41.95,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10356,N'WANDK',6,'11/18/1996','12/16/1996','11/27/1996',2,36.71,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10357,N'LILAS',1,'11/19/1996','12/17/1996','12/2/1996',3,34.88,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10358,N'LAMAI',5,'11/20/1996','12/18/1996','11/27/1996',1,19.64,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10359,N'SEVES',5,'11/21/1996','12/19/1996','11/26/1996',3,288.43,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10360,N'BLONP',4,'11/22/1996','12/20/1996','12/2/1996',3,131.70,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10361,N'QUICK',1,'11/22/1996','12/20/1996','12/3/1996',2,183.17,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10362,N'BONAP',3,'11/25/1996','12/23/1996','11/28/1996',1,96.04,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10363,N'DRACD',4,'11/26/1996','12/24/1996','12/4/1996',3,30.54,
	N'Drachenblut Delikatessen',N'Walserweg 21',N'Aachen',
	NULL,N'52066',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10364,N'EASTC',1,'11/26/1996','1/7/1997','12/4/1996',1,71.97,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10365,N'ANTON',3,'11/27/1996','12/25/1996','12/2/1996',2,22.00,
	N'Antonio Moreno Taquería',N'Mataderos  2312',N'México D.F.',
	NULL,N'05023',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10366,N'GALED',8,'11/28/1996','1/9/1997','12/30/1996',2,10.14,
	N'Galería del gastronómo',N'Rambla de Cataluña, 23',N'Barcelona',
	NULL,N'8022',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10367,N'VAFFE',7,'11/28/1996','12/26/1996','12/2/1996',3,13.55,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10368,N'ERNSH',2,'11/29/1996','12/27/1996','12/2/1996',2,101.95,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10369,N'SPLIR',8,'12/2/1996','12/30/1996','12/9/1996',2,195.68,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10370,N'CHOPS',6,'12/3/1996','12/31/1996','12/27/1996',2,1.17,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10371,N'LAMAI',1,'12/3/1996','12/31/1996','12/24/1996',1,0.45,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10372,N'QUEEN',5,'12/4/1996','1/1/1997','12/9/1996',2,890.78,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10373,N'HUNGO',4,'12/5/1996','1/2/1997','12/11/1996',3,124.12,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10374,N'WOLZA',1,'12/5/1996','1/2/1997','12/9/1996',3,3.94,
	N'Wolski Zajazd',N'ul. Filtrowa 68',N'Warszawa',
	NULL,N'01-012',N'Poland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10375,N'HUNGC',3,'12/6/1996','1/3/1997','12/9/1996',2,20.12,
	N'Hungry Coyote Import Store',N'City Center Plaza 516 Main St.',N'Elgin',
	N'OR',N'97827',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10376,N'MEREP',1,'12/9/1996','1/6/1997','12/13/1996',2,20.39,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10377,N'SEVES',1,'12/9/1996','1/6/1997','12/13/1996',3,22.21,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10378,N'FOLKO',5,'12/10/1996','1/7/1997','12/19/1996',3,5.44,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10379,N'QUEDE',2,'12/11/1996','1/8/1997','12/13/1996',1,45.03,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10380,N'HUNGO',8,'12/12/1996','1/9/1997','1/16/1997',3,35.03,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10381,N'LILAS',3,'12/12/1996','1/9/1997','12/13/1996',3,7.99,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10382,N'ERNSH',4,'12/13/1996','1/10/1997','12/16/1996',1,94.77,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10383,N'AROUT',8,'12/16/1996','1/13/1997','12/18/1996',3,34.24,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10384,N'BERGS',3,'12/16/1996','1/13/1997','12/20/1996',3,168.64,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10385,N'SPLIR',1,'12/17/1996','1/14/1997','12/23/1996',2,30.96,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10386,N'FAMIA',9,'12/18/1996','1/1/1997','12/25/1996',3,13.99,
	N'Familia Arquibaldo',N'Rua Orós, 92',N'Sao Paulo',
	N'SP',N'05442-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10387,N'SANTG',1,'12/18/1996','1/15/1997','12/20/1996',2,93.63,
	N'Santé Gourmet',N'Erling Skakkes gate 78',N'Stavern',
	NULL,N'4110',N'Norway')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10388,N'SEVES',2,'12/19/1996','1/16/1997','12/20/1996',1,34.86,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10389,N'BOTTM',4,'12/20/1996','1/17/1997','12/24/1996',2,47.42,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10390,N'ERNSH',6,'12/23/1996','1/20/1997','12/26/1996',1,126.38,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10391,N'DRACD',3,'12/23/1996','1/20/1997','12/31/1996',3,5.45,
	N'Drachenblut Delikatessen',N'Walserweg 21',N'Aachen',
	NULL,N'52066',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10392,N'PICCO',2,'12/24/1996','1/21/1997','1/1/1997',3,122.46,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10393,N'SAVEA',1,'12/25/1996','1/22/1997','1/3/1997',3,126.56,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10394,N'HUNGC',1,'12/25/1996','1/22/1997','1/3/1997',3,30.34,
	N'Hungry Coyote Import Store',N'City Center Plaza 516 Main St.',N'Elgin',
	N'OR',N'97827',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10395,N'HILAA',6,'12/26/1996','1/23/1997','1/3/1997',1,184.41,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10396,N'FRANK',1,'12/27/1996','1/10/1997','1/6/1997',3,135.35,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10397,N'PRINI',5,'12/27/1996','1/24/1997','1/2/1997',1,60.26,
	N'Princesa Isabel Vinhos',N'Estrada da saúde n. 58',N'Lisboa',
	NULL,N'1756',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10398,N'SAVEA',2,'12/30/1996','1/27/1997','1/9/1997',3,89.16,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10399,N'VAFFE',8,'12/31/1996','1/14/1997','1/8/1997',3,27.36,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10400,N'EASTC',1,'1/1/1997','1/29/1997','1/16/1997',3,83.93,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10401,N'RATTC',1,'1/1/1997','1/29/1997','1/10/1997',1,12.51,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10402,N'ERNSH',8,'1/2/1997','2/13/1997','1/10/1997',2,67.88,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10403,N'ERNSH',4,'1/3/1997','1/31/1997','1/9/1997',3,73.79,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10404,N'MAGAA',2,'1/3/1997','1/31/1997','1/8/1997',1,155.97,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10405,N'LINOD',1,'1/6/1997','2/3/1997','1/22/1997',1,34.82,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10406,N'QUEEN',7,'1/7/1997','2/18/1997','1/13/1997',1,108.04,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10407,N'OTTIK',2,'1/7/1997','2/4/1997','1/30/1997',2,91.48,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10408,N'FOLIG',8,'1/8/1997','2/5/1997','1/14/1997',1,11.26,
	N'Folies gourmandes',N'184, chaussée de Tournai',N'Lille',
	NULL,N'59000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10409,N'OCEAN',3,'1/9/1997','2/6/1997','1/14/1997',1,29.83,
	N'Océano Atlántico Ltda.',N'Ing. Gustavo Moncada 8585 Piso 20-A',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10410,N'BOTTM',3,'1/10/1997','2/7/1997','1/15/1997',3,2.40,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10411,N'BOTTM',9,'1/10/1997','2/7/1997','1/21/1997',3,23.65,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10412,N'WARTH',8,'1/13/1997','2/10/1997','1/15/1997',2,3.77,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10413,N'LAMAI',3,'1/14/1997','2/11/1997','1/16/1997',2,95.66,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10414,N'FAMIA',2,'1/14/1997','2/11/1997','1/17/1997',3,21.48,
	N'Familia Arquibaldo',N'Rua Orós, 92',N'Sao Paulo',
	N'SP',N'05442-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10415,N'HUNGC',3,'1/15/1997','2/12/1997','1/24/1997',1,0.20,
	N'Hungry Coyote Import Store',N'City Center Plaza 516 Main St.',N'Elgin',
	N'OR',N'97827',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10416,N'WARTH',8,'1/16/1997','2/13/1997','1/27/1997',3,22.72,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10417,N'SIMOB',4,'1/16/1997','2/13/1997','1/28/1997',3,70.29,
	N'Simons bistro',N'Vinbæltet 34',N'Kobenhavn',
	NULL,N'1734',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10418,N'QUICK',4,'1/17/1997','2/14/1997','1/24/1997',1,17.55,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10419,N'RICSU',4,'1/20/1997','2/17/1997','1/30/1997',2,137.35,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10420,N'WELLI',3,'1/21/1997','2/18/1997','1/27/1997',1,44.12,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10421,N'QUEDE',8,'1/21/1997','3/4/1997','1/27/1997',1,99.23,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10422,N'FRANS',2,'1/22/1997','2/19/1997','1/31/1997',1,3.02,
	N'Franchi S.p.A.',N'Via Monte Bianco 34',N'Torino',
	NULL,N'10100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10423,N'GOURL',6,'1/23/1997','2/6/1997','2/24/1997',3,24.50,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10424,N'MEREP',7,'1/23/1997','2/20/1997','1/27/1997',2,370.61,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10425,N'LAMAI',6,'1/24/1997','2/21/1997','2/14/1997',2,7.93,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10426,N'GALED',4,'1/27/1997','2/24/1997','2/6/1997',1,18.69,
	N'Galería del gastronómo',N'Rambla de Cataluña, 23',N'Barcelona',
	NULL,N'8022',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10427,N'PICCO',4,'1/27/1997','2/24/1997','3/3/1997',2,31.29,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10428,N'REGGC',7,'1/28/1997','2/25/1997','2/4/1997',1,11.09,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10429,N'HUNGO',3,'1/29/1997','3/12/1997','2/7/1997',2,56.63,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10430,N'ERNSH',4,'1/30/1997','2/13/1997','2/3/1997',1,458.78,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10431,N'BOTTM',4,'1/30/1997','2/13/1997','2/7/1997',2,44.17,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10432,N'SPLIR',3,'1/31/1997','2/14/1997','2/7/1997',2,4.34,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10433,N'PRINI',3,'2/3/1997','3/3/1997','3/4/1997',3,73.83,
	N'Princesa Isabel Vinhos',N'Estrada da saúde n. 58',N'Lisboa',
	NULL,N'1756',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10434,N'FOLKO',3,'2/3/1997','3/3/1997','2/13/1997',2,17.92,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10435,N'CONSH',8,'2/4/1997','3/18/1997','2/7/1997',2,9.21,
	N'Consolidated Holdings',N'Berkeley Gardens 12  Brewery',N'London',
	NULL,N'WX1 6LT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10436,N'BLONP',3,'2/5/1997','3/5/1997','2/11/1997',2,156.66,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10437,N'WARTH',8,'2/5/1997','3/5/1997','2/12/1997',1,19.97,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10438,N'TOMSP',3,'2/6/1997','3/6/1997','2/14/1997',2,8.24,
	N'Toms Spezialitäten',N'Luisenstr. 48',N'Münster',
	NULL,N'44087',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10439,N'MEREP',6,'2/7/1997','3/7/1997','2/10/1997',3,4.07,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10440,N'SAVEA',4,'2/10/1997','3/10/1997','2/28/1997',2,86.53,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10441,N'OLDWO',3,'2/10/1997','3/24/1997','3/14/1997',2,73.02,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10442,N'ERNSH',3,'2/11/1997','3/11/1997','2/18/1997',2,47.94,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10443,N'REGGC',8,'2/12/1997','3/12/1997','2/14/1997',1,13.95,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10444,N'BERGS',3,'2/12/1997','3/12/1997','2/21/1997',3,3.50,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10445,N'BERGS',3,'2/13/1997','3/13/1997','2/20/1997',1,9.30,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10446,N'TOMSP',6,'2/14/1997','3/14/1997','2/19/1997',1,14.68,
	N'Toms Spezialitäten',N'Luisenstr. 48',N'Münster',
	NULL,N'44087',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10447,N'RICAR',4,'2/14/1997','3/14/1997','3/7/1997',2,68.66,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10448,N'RANCH',4,'2/17/1997','3/17/1997','2/24/1997',2,38.82,
	N'Rancho grande',N'Av. del Libertador 900',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10449,N'BLONP',3,'2/18/1997','3/18/1997','2/27/1997',2,53.30,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10450,N'VICTE',8,'2/19/1997','3/19/1997','3/11/1997',2,7.23,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10451,N'QUICK',4,'2/19/1997','3/5/1997','3/12/1997',3,189.09,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10452,N'SAVEA',8,'2/20/1997','3/20/1997','2/26/1997',1,140.26,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10453,N'AROUT',1,'2/21/1997','3/21/1997','2/26/1997',2,25.36,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10454,N'LAMAI',4,'2/21/1997','3/21/1997','2/25/1997',3,2.74,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10455,N'WARTH',8,'2/24/1997','4/7/1997','3/3/1997',2,180.45,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10456,N'KOENE',8,'2/25/1997','4/8/1997','2/28/1997',2,8.12,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10457,N'KOENE',2,'2/25/1997','3/25/1997','3/3/1997',1,11.57,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10458,N'SUPRD',7,'2/26/1997','3/26/1997','3/4/1997',3,147.06,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10459,N'VICTE',4,'2/27/1997','3/27/1997','2/28/1997',2,25.09,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10460,N'FOLKO',8,'2/28/1997','3/28/1997','3/3/1997',1,16.27,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10461,N'LILAS',1,'2/28/1997','3/28/1997','3/5/1997',3,148.61,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10462,N'CONSH',2,'3/3/1997','3/31/1997','3/18/1997',1,6.17,
	N'Consolidated Holdings',N'Berkeley Gardens 12  Brewery',N'London',
	NULL,N'WX1 6LT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10463,N'SUPRD',5,'3/4/1997','4/1/1997','3/6/1997',3,14.78,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10464,N'FURIB',4,'3/4/1997','4/1/1997','3/14/1997',2,89.00,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10465,N'VAFFE',1,'3/5/1997','4/2/1997','3/14/1997',3,145.04,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10466,N'COMMI',4,'3/6/1997','4/3/1997','3/13/1997',1,11.93,
	N'Comércio Mineiro',N'Av. dos Lusíadas, 23',N'Sao Paulo',
	N'SP',N'05432-043',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10467,N'MAGAA',8,'3/6/1997','4/3/1997','3/11/1997',2,4.93,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10468,N'KOENE',3,'3/7/1997','4/4/1997','3/12/1997',3,44.12,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10469,N'WHITC',1,'3/10/1997','4/7/1997','3/14/1997',1,60.18,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10470,N'BONAP',4,'3/11/1997','4/8/1997','3/14/1997',2,64.56,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10471,N'BSBEV',2,'3/11/1997','4/8/1997','3/18/1997',3,45.59,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10472,N'SEVES',8,'3/12/1997','4/9/1997','3/19/1997',1,4.20,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10473,N'ISLAT',1,'3/13/1997','3/27/1997','3/21/1997',3,16.37,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10474,N'PERIC',5,'3/13/1997','4/10/1997','3/21/1997',2,83.49,
	N'Pericles Comidas clásicas',N'Calle Dr. Jorge Cash 321',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10475,N'SUPRD',9,'3/14/1997','4/11/1997','4/4/1997',1,68.52,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10476,N'HILAA',8,'3/17/1997','4/14/1997','3/24/1997',3,4.41,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10477,N'PRINI',5,'3/17/1997','4/14/1997','3/25/1997',2,13.02,
	N'Princesa Isabel Vinhos',N'Estrada da saúde n. 58',N'Lisboa',
	NULL,N'1756',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10478,N'VICTE',2,'3/18/1997','4/1/1997','3/26/1997',3,4.81,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10479,N'RATTC',3,'3/19/1997','4/16/1997','3/21/1997',3,708.95,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10480,N'FOLIG',6,'3/20/1997','4/17/1997','3/24/1997',2,1.35,
	N'Folies gourmandes',N'184, chaussée de Tournai',N'Lille',
	NULL,N'59000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10481,N'RICAR',8,'3/20/1997','4/17/1997','3/25/1997',2,64.33,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10482,N'LAZYK',1,'3/21/1997','4/18/1997','4/10/1997',3,7.48,
	N'Lazy K Kountry Store',N'12 Orchestra Terrace',N'Walla Walla',
	N'WA',N'99362',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10483,N'WHITC',7,'3/24/1997','4/21/1997','4/25/1997',2,15.28,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10484,N'BSBEV',3,'3/24/1997','4/21/1997','4/1/1997',3,6.88,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10485,N'LINOD',4,'3/25/1997','4/8/1997','3/31/1997',2,64.45,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10486,N'HILAA',1,'3/26/1997','4/23/1997','4/2/1997',2,30.53,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10487,N'QUEEN',2,'3/26/1997','4/23/1997','3/28/1997',2,71.07,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10488,N'FRANK',8,'3/27/1997','4/24/1997','4/2/1997',2,4.93,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10489,N'PICCO',6,'3/28/1997','4/25/1997','4/9/1997',2,5.29,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10490,N'HILAA',7,'3/31/1997','4/28/1997','4/3/1997',2,210.19,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10491,N'FURIB',8,'3/31/1997','4/28/1997','4/8/1997',3,16.96,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10492,N'BOTTM',3,'4/1/1997','4/29/1997','4/11/1997',1,62.89,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10493,N'LAMAI',4,'4/2/1997','4/30/1997','4/10/1997',3,10.64,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10494,N'COMMI',4,'4/2/1997','4/30/1997','4/9/1997',2,65.99,
	N'Comércio Mineiro',N'Av. dos Lusíadas, 23',N'Sao Paulo',
	N'SP',N'05432-043',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10495,N'LAUGB',3,'4/3/1997','5/1/1997','4/11/1997',3,4.65,
	N'Laughing Bacchus Wine Cellars',N'2319 Elm St.',N'Vancouver',
	N'BC',N'V3F 2K1',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10496,N'TRADH',7,'4/4/1997','5/2/1997','4/7/1997',2,46.77,
	N'Tradiçao Hipermercados',N'Av. Inês de Castro, 414',N'Sao Paulo',
	N'SP',N'05634-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10497,N'LEHMS',7,'4/4/1997','5/2/1997','4/7/1997',1,36.21,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10498,N'HILAA',8,'4/7/1997','5/5/1997','4/11/1997',2,29.75,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10499,N'LILAS',4,'4/8/1997','5/6/1997','4/16/1997',2,102.02,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10500,N'LAMAI',6,'4/9/1997','5/7/1997','4/17/1997',1,42.68,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10501,N'BLAUS',9,'4/9/1997','5/7/1997','4/16/1997',3,8.85,
	N'Blauer See Delikatessen',N'Forsterstr. 57',N'Mannheim',
	NULL,N'68306',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10502,N'PERIC',2,'4/10/1997','5/8/1997','4/29/1997',1,69.32,
	N'Pericles Comidas clásicas',N'Calle Dr. Jorge Cash 321',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10503,N'HUNGO',6,'4/11/1997','5/9/1997','4/16/1997',2,16.74,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10504,N'WHITC',4,'4/11/1997','5/9/1997','4/18/1997',3,59.13,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10505,N'MEREP',3,'4/14/1997','5/12/1997','4/21/1997',3,7.13,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10506,N'KOENE',9,'4/15/1997','5/13/1997','5/2/1997',2,21.19,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10507,N'ANTON',7,'4/15/1997','5/13/1997','4/22/1997',1,47.45,
	N'Antonio Moreno Taquería',N'Mataderos  2312',N'México D.F.',
	NULL,N'05023',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10508,N'OTTIK',1,'4/16/1997','5/14/1997','5/13/1997',2,4.99,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10509,N'BLAUS',4,'4/17/1997','5/15/1997','4/29/1997',1,0.15,
	N'Blauer See Delikatessen',N'Forsterstr. 57',N'Mannheim',
	NULL,N'68306',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10510,N'SAVEA',6,'4/18/1997','5/16/1997','4/28/1997',3,367.63,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10511,N'BONAP',4,'4/18/1997','5/16/1997','4/21/1997',3,350.64,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10512,N'FAMIA',7,'4/21/1997','5/19/1997','4/24/1997',2,3.53,
	N'Familia Arquibaldo',N'Rua Orós, 92',N'Sao Paulo',
	N'SP',N'05442-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10513,N'WANDK',7,'4/22/1997','6/3/1997','4/28/1997',1,105.65,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10514,N'ERNSH',3,'4/22/1997','5/20/1997','5/16/1997',2,789.95,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10515,N'QUICK',2,'4/23/1997','5/7/1997','5/23/1997',1,204.47,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10516,N'HUNGO',2,'4/24/1997','5/22/1997','5/1/1997',3,62.78,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10517,N'NORTS',3,'4/24/1997','5/22/1997','4/29/1997',3,32.07,
	N'North/South',N'South House 300 Queensbridge',N'London',
	NULL,N'SW7 1RZ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10518,N'TORTU',4,'4/25/1997','5/9/1997','5/5/1997',2,218.15,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10519,N'CHOPS',6,'4/28/1997','5/26/1997','5/1/1997',3,91.76,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10520,N'SANTG',7,'4/29/1997','5/27/1997','5/1/1997',1,13.37,
	N'Santé Gourmet',N'Erling Skakkes gate 78',N'Stavern',
	NULL,N'4110',N'Norway')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10521,N'CACTU',8,'4/29/1997','5/27/1997','5/2/1997',2,17.22,
	N'Cactus Comidas para llevar',N'Cerrito 333',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10522,N'LEHMS',4,'4/30/1997','5/28/1997','5/6/1997',1,45.33,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10523,N'SEVES',7,'5/1/1997','5/29/1997','5/30/1997',2,77.63,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10524,N'BERGS',1,'5/1/1997','5/29/1997','5/7/1997',2,244.79,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10525,N'BONAP',1,'5/2/1997','5/30/1997','5/23/1997',2,11.06,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10526,N'WARTH',4,'5/5/1997','6/2/1997','5/15/1997',2,58.59,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10527,N'QUICK',7,'5/5/1997','6/2/1997','5/7/1997',1,41.90,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10528,N'GREAL',6,'5/6/1997','5/20/1997','5/9/1997',2,3.35,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10529,N'MAISD',5,'5/7/1997','6/4/1997','5/9/1997',2,66.69,
	N'Maison Dewey',N'Rue Joseph-Bens 532',N'Bruxelles',
	NULL,N'B-1180',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10530,N'PICCO',3,'5/8/1997','6/5/1997','5/12/1997',2,339.22,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10531,N'OCEAN',7,'5/8/1997','6/5/1997','5/19/1997',1,8.12,
	N'Océano Atlántico Ltda.',N'Ing. Gustavo Moncada 8585 Piso 20-A',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10532,N'EASTC',7,'5/9/1997','6/6/1997','5/12/1997',3,74.46,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10533,N'FOLKO',8,'5/12/1997','6/9/1997','5/22/1997',1,188.04,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10534,N'LEHMS',8,'5/12/1997','6/9/1997','5/14/1997',2,27.94,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10535,N'ANTON',4,'5/13/1997','6/10/1997','5/21/1997',1,15.64,
	N'Antonio Moreno Taquería',N'Mataderos  2312',N'México D.F.',
	NULL,N'05023',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10536,N'LEHMS',3,'5/14/1997','6/11/1997','6/6/1997',2,58.88,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10537,N'RICSU',1,'5/14/1997','5/28/1997','5/19/1997',1,78.85,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10538,N'BSBEV',9,'5/15/1997','6/12/1997','5/16/1997',3,4.87,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10539,N'BSBEV',6,'5/16/1997','6/13/1997','5/23/1997',3,12.36,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10540,N'QUICK',3,'5/19/1997','6/16/1997','6/13/1997',3,1007.64,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10541,N'HANAR',2,'5/19/1997','6/16/1997','5/29/1997',1,68.65,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10542,N'KOENE',1,'5/20/1997','6/17/1997','5/26/1997',3,10.95,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10543,N'LILAS',8,'5/21/1997','6/18/1997','5/23/1997',2,48.17,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10544,N'LONEP',4,'5/21/1997','6/18/1997','5/30/1997',1,24.91,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10545,N'LAZYK',8,'5/22/1997','6/19/1997','6/26/1997',2,11.92,
	N'Lazy K Kountry Store',N'12 Orchestra Terrace',N'Walla Walla',
	N'WA',N'99362',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10546,N'VICTE',1,'5/23/1997','6/20/1997','5/27/1997',3,194.72,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10547,N'SEVES',3,'5/23/1997','6/20/1997','6/2/1997',2,178.43,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10548,N'TOMSP',3,'5/26/1997','6/23/1997','6/2/1997',2,1.43,
	N'Toms Spezialitäten',N'Luisenstr. 48',N'Münster',
	NULL,N'44087',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10549,N'QUICK',5,'5/27/1997','6/10/1997','5/30/1997',1,171.24,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10550,N'GODOS',7,'5/28/1997','6/25/1997','6/6/1997',3,4.32,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10551,N'FURIB',4,'5/28/1997','7/9/1997','6/6/1997',3,72.95,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10552,N'HILAA',2,'5/29/1997','6/26/1997','6/5/1997',1,83.22,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10553,N'WARTH',2,'5/30/1997','6/27/1997','6/3/1997',2,149.49,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10554,N'OTTIK',4,'5/30/1997','6/27/1997','6/5/1997',3,120.97,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10555,N'SAVEA',6,'6/2/1997','6/30/1997','6/4/1997',3,252.49,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10556,N'SIMOB',2,'6/3/1997','7/15/1997','6/13/1997',1,9.80,
	N'Simons bistro',N'Vinbæltet 34',N'Kobenhavn',
	NULL,N'1734',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10557,N'LEHMS',9,'6/3/1997','6/17/1997','6/6/1997',2,96.72,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10558,N'AROUT',1,'6/4/1997','7/2/1997','6/10/1997',2,72.97,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10559,N'BLONP',6,'6/5/1997','7/3/1997','6/13/1997',1,8.05,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10560,N'FRANK',8,'6/6/1997','7/4/1997','6/9/1997',1,36.65,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10561,N'FOLKO',2,'6/6/1997','7/4/1997','6/9/1997',2,242.21,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10562,N'REGGC',1,'6/9/1997','7/7/1997','6/12/1997',1,22.95,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10563,N'RICAR',2,'6/10/1997','7/22/1997','6/24/1997',2,60.43,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10564,N'RATTC',4,'6/10/1997','7/8/1997','6/16/1997',3,13.75,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10565,N'MEREP',8,'6/11/1997','7/9/1997','6/18/1997',2,7.15,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10566,N'BLONP',9,'6/12/1997','7/10/1997','6/18/1997',1,88.40,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10567,N'HUNGO',1,'6/12/1997','7/10/1997','6/17/1997',1,33.97,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10568,N'GALED',3,'6/13/1997','7/11/1997','7/9/1997',3,6.54,
	N'Galería del gastronómo',N'Rambla de Cataluña, 23',N'Barcelona',
	NULL,N'8022',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10569,N'RATTC',5,'6/16/1997','7/14/1997','7/11/1997',1,58.98,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10570,N'MEREP',3,'6/17/1997','7/15/1997','6/19/1997',3,188.99,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10571,N'ERNSH',8,'6/17/1997','7/29/1997','7/4/1997',3,26.06,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10572,N'BERGS',3,'6/18/1997','7/16/1997','6/25/1997',2,116.43,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10573,N'ANTON',7,'6/19/1997','7/17/1997','6/20/1997',3,84.84,
	N'Antonio Moreno Taquería',N'Mataderos  2312',N'México D.F.',
	NULL,N'05023',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10574,N'TRAIH',4,'6/19/1997','7/17/1997','6/30/1997',2,37.60,
	N'Trail''s Head Gourmet Provisioners',N'722 DaVinci Blvd.',N'Kirkland',
	N'WA',N'98034',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10575,N'MORGK',5,'6/20/1997','7/4/1997','6/30/1997',1,127.34,
	N'Morgenstern Gesundkost',N'Heerstr. 22',N'Leipzig',
	NULL,N'04179',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10576,N'TORTU',3,'6/23/1997','7/7/1997','6/30/1997',3,18.56,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10577,N'TRAIH',9,'6/23/1997','8/4/1997','6/30/1997',2,25.41,
	N'Trail''s Head Gourmet Provisioners',N'722 DaVinci Blvd.',N'Kirkland',
	N'WA',N'98034',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10578,N'BSBEV',4,'6/24/1997','7/22/1997','7/25/1997',3,29.60,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10579,N'LETSS',1,'6/25/1997','7/23/1997','7/4/1997',2,13.73,
	N'Let''s Stop N Shop',N'87 Polk St. Suite 5',N'San Francisco',
	N'CA',N'94117',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10580,N'OTTIK',4,'6/26/1997','7/24/1997','7/1/1997',3,75.89,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10581,N'FAMIA',3,'6/26/1997','7/24/1997','7/2/1997',1,3.01,
	N'Familia Arquibaldo',N'Rua Orós, 92',N'Sao Paulo',
	N'SP',N'05442-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10582,N'BLAUS',3,'6/27/1997','7/25/1997','7/14/1997',2,27.71,
	N'Blauer See Delikatessen',N'Forsterstr. 57',N'Mannheim',
	NULL,N'68306',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10583,N'WARTH',2,'6/30/1997','7/28/1997','7/4/1997',2,7.28,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10584,N'BLONP',4,'6/30/1997','7/28/1997','7/4/1997',1,59.14,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10585,N'WELLI',7,'7/1/1997','7/29/1997','7/10/1997',1,13.41,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10586,N'REGGC',9,'7/2/1997','7/30/1997','7/9/1997',1,0.48,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10587,N'QUEDE',1,'7/2/1997','7/30/1997','7/9/1997',1,62.52,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10588,N'QUICK',2,'7/3/1997','7/31/1997','7/10/1997',3,194.67,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10589,N'GREAL',8,'7/4/1997','8/1/1997','7/14/1997',2,4.42,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10590,N'MEREP',4,'7/7/1997','8/4/1997','7/14/1997',3,44.77,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10591,N'VAFFE',1,'7/7/1997','7/21/1997','7/16/1997',1,55.92,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10592,N'LEHMS',3,'7/8/1997','8/5/1997','7/16/1997',1,32.10,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10593,N'LEHMS',7,'7/9/1997','8/6/1997','8/13/1997',2,174.20,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10594,N'OLDWO',3,'7/9/1997','8/6/1997','7/16/1997',2,5.24,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10595,N'ERNSH',2,'7/10/1997','8/7/1997','7/14/1997',1,96.78,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10596,N'WHITC',8,'7/11/1997','8/8/1997','8/12/1997',1,16.34,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10597,N'PICCO',7,'7/11/1997','8/8/1997','7/18/1997',3,35.12,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10598,N'RATTC',1,'7/14/1997','8/11/1997','7/18/1997',3,44.42,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10599,N'BSBEV',6,'7/15/1997','8/26/1997','7/21/1997',3,29.98,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10600,N'HUNGC',4,'7/16/1997','8/13/1997','7/21/1997',1,45.13,
	N'Hungry Coyote Import Store',N'City Center Plaza 516 Main St.',N'Elgin',
	N'OR',N'97827',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10601,N'HILAA',7,'7/16/1997','8/27/1997','7/22/1997',1,58.30,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10602,N'VAFFE',8,'7/17/1997','8/14/1997','7/22/1997',2,2.92,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10603,N'SAVEA',8,'7/18/1997','8/15/1997','8/8/1997',2,48.77,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10604,N'FURIB',1,'7/18/1997','8/15/1997','7/29/1997',1,7.46,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10605,N'MEREP',1,'7/21/1997','8/18/1997','7/29/1997',2,379.13,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10606,N'TRADH',4,'7/22/1997','8/19/1997','7/31/1997',3,79.40,
	N'Tradiçao Hipermercados',N'Av. Inês de Castro, 414',N'Sao Paulo',
	N'SP',N'05634-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10607,N'SAVEA',5,'7/22/1997','8/19/1997','7/25/1997',1,200.24,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10608,N'TOMSP',4,'7/23/1997','8/20/1997','8/1/1997',2,27.79,
	N'Toms Spezialitäten',N'Luisenstr. 48',N'Münster',
	NULL,N'44087',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10609,N'DUMON',7,'7/24/1997','8/21/1997','7/30/1997',2,1.85,
	N'Du monde entier',N'67, rue des Cinquante Otages',N'Nantes',
	NULL,N'44000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10610,N'LAMAI',8,'7/25/1997','8/22/1997','8/6/1997',1,26.78,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10611,N'WOLZA',6,'7/25/1997','8/22/1997','8/1/1997',2,80.65,
	N'Wolski Zajazd',N'ul. Filtrowa 68',N'Warszawa',
	NULL,N'01-012',N'Poland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10612,N'SAVEA',1,'7/28/1997','8/25/1997','8/1/1997',2,544.08,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10613,N'HILAA',4,'7/29/1997','8/26/1997','8/1/1997',2,8.11,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10614,N'BLAUS',8,'7/29/1997','8/26/1997','8/1/1997',3,1.93,
	N'Blauer See Delikatessen',N'Forsterstr. 57',N'Mannheim',
	NULL,N'68306',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10615,N'WILMK',2,'7/30/1997','8/27/1997','8/6/1997',3,0.75,
	N'Wilman Kala',N'Keskuskatu 45',N'Helsinki',
	NULL,N'21240',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10616,N'GREAL',1,'7/31/1997','8/28/1997','8/5/1997',2,116.53,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10617,N'GREAL',4,'7/31/1997','8/28/1997','8/4/1997',2,18.53,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10618,N'MEREP',1,'8/1/1997','9/12/1997','8/8/1997',1,154.68,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10619,N'MEREP',3,'8/4/1997','9/1/1997','8/7/1997',3,91.05,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10620,N'LAUGB',2,'8/5/1997','9/2/1997','8/14/1997',3,0.94,
	N'Laughing Bacchus Wine Cellars',N'2319 Elm St.',N'Vancouver',
	N'BC',N'V3F 2K1',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10621,N'ISLAT',4,'8/5/1997','9/2/1997','8/11/1997',2,23.73,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10622,N'RICAR',4,'8/6/1997','9/3/1997','8/11/1997',3,50.97,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10623,N'FRANK',8,'8/7/1997','9/4/1997','8/12/1997',2,97.18,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10624,N'THECR',4,'8/7/1997','9/4/1997','8/19/1997',2,94.80,
	N'The Cracker Box',N'55 Grizzly Peak Rd.',N'Butte',
	N'MT',N'59801',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10625,N'ANATR',3,'8/8/1997','9/5/1997','8/14/1997',1,43.90,
	N'Ana Trujillo Emparedados y helados',N'Avda. de la Constitución 2222',N'México D.F.',
	NULL,N'05021',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10626,N'BERGS',1,'8/11/1997','9/8/1997','8/20/1997',2,138.69,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10627,N'SAVEA',8,'8/11/1997','9/22/1997','8/21/1997',3,107.46,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10628,N'BLONP',4,'8/12/1997','9/9/1997','8/20/1997',3,30.36,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10629,N'GODOS',4,'8/12/1997','9/9/1997','8/20/1997',3,85.46,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10630,N'KOENE',1,'8/13/1997','9/10/1997','8/19/1997',2,32.35,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10631,N'LAMAI',8,'8/14/1997','9/11/1997','8/15/1997',1,0.87,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10632,N'WANDK',8,'8/14/1997','9/11/1997','8/19/1997',1,41.38,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10633,N'ERNSH',7,'8/15/1997','9/12/1997','8/18/1997',3,477.90,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10634,N'FOLIG',4,'8/15/1997','9/12/1997','8/21/1997',3,487.38,
	N'Folies gourmandes',N'184, chaussée de Tournai',N'Lille',
	NULL,N'59000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10635,N'MAGAA',8,'8/18/1997','9/15/1997','8/21/1997',3,47.46,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10636,N'WARTH',4,'8/19/1997','9/16/1997','8/26/1997',1,1.15,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10637,N'QUEEN',6,'8/19/1997','9/16/1997','8/26/1997',1,201.29,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10638,N'LINOD',3,'8/20/1997','9/17/1997','9/1/1997',1,158.44,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10639,N'SANTG',7,'8/20/1997','9/17/1997','8/27/1997',3,38.64,
	N'Santé Gourmet',N'Erling Skakkes gate 78',N'Stavern',
	NULL,N'4110',N'Norway')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10640,N'WANDK',4,'8/21/1997','9/18/1997','8/28/1997',1,23.55,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10641,N'HILAA',4,'8/22/1997','9/19/1997','8/26/1997',2,179.61,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10642,N'SIMOB',7,'8/22/1997','9/19/1997','9/5/1997',3,41.89,
	N'Simons bistro',N'Vinbæltet 34',N'Kobenhavn',
	NULL,N'1734',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10643,N'ALFKI',6,'8/25/1997','9/22/1997','9/2/1997',1,29.46,
	N'Alfreds Futterkiste',N'Obere Str. 57',N'Berlin',
	NULL,N'12209',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10644,N'WELLI',3,'8/25/1997','9/22/1997','9/1/1997',2,0.14,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10645,N'HANAR',4,'8/26/1997','9/23/1997','9/2/1997',1,12.41,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10646,N'HUNGO',9,'8/27/1997','10/8/1997','9/3/1997',3,142.33,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10647,N'QUEDE',4,'8/27/1997','9/10/1997','9/3/1997',2,45.54,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10648,N'RICAR',5,'8/28/1997','10/9/1997','9/9/1997',2,14.25,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10649,N'MAISD',5,'8/28/1997','9/25/1997','8/29/1997',3,6.20,
	N'Maison Dewey',N'Rue Joseph-Bens 532',N'Bruxelles',
	NULL,N'B-1180',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10650,N'FAMIA',5,'8/29/1997','9/26/1997','9/3/1997',3,176.81,
	N'Familia Arquibaldo',N'Rua Orós, 92',N'Sao Paulo',
	N'SP',N'05442-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10651,N'WANDK',8,'9/1/1997','9/29/1997','9/11/1997',2,20.60,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10652,N'GOURL',4,'9/1/1997','9/29/1997','9/8/1997',2,7.14,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10653,N'FRANK',1,'9/2/1997','9/30/1997','9/19/1997',1,93.25,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10654,N'BERGS',5,'9/2/1997','9/30/1997','9/11/1997',1,55.26,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10655,N'REGGC',1,'9/3/1997','10/1/1997','9/11/1997',2,4.41,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10656,N'GREAL',6,'9/4/1997','10/2/1997','9/10/1997',1,57.15,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10657,N'SAVEA',2,'9/4/1997','10/2/1997','9/15/1997',2,352.69,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10658,N'QUICK',4,'9/5/1997','10/3/1997','9/8/1997',1,364.15,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10659,N'QUEEN',7,'9/5/1997','10/3/1997','9/10/1997',2,105.81,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10660,N'HUNGC',8,'9/8/1997','10/6/1997','10/15/1997',1,111.29,
	N'Hungry Coyote Import Store',N'City Center Plaza 516 Main St.',N'Elgin',
	N'OR',N'97827',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10661,N'HUNGO',7,'9/9/1997','10/7/1997','9/15/1997',3,17.55,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10662,N'LONEP',3,'9/9/1997','10/7/1997','9/18/1997',2,1.28,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10663,N'BONAP',2,'9/10/1997','9/24/1997','10/3/1997',2,113.15,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10664,N'FURIB',1,'9/10/1997','10/8/1997','9/19/1997',3,1.27,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10665,N'LONEP',1,'9/11/1997','10/9/1997','9/17/1997',2,26.31,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10666,N'RICSU',7,'9/12/1997','10/10/1997','9/22/1997',2,232.42,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10667,N'ERNSH',7,'9/12/1997','10/10/1997','9/19/1997',1,78.09,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10668,N'WANDK',1,'9/15/1997','10/13/1997','9/23/1997',2,47.22,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10669,N'SIMOB',2,'9/15/1997','10/13/1997','9/22/1997',1,24.39,
	N'Simons bistro',N'Vinbæltet 34',N'Kobenhavn',
	NULL,N'1734',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10670,N'FRANK',4,'9/16/1997','10/14/1997','9/18/1997',1,203.48,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10671,N'FRANR',1,'9/17/1997','10/15/1997','9/24/1997',1,30.34,
	N'France restauration',N'54, rue Royale',N'Nantes',
	NULL,N'44000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10672,N'BERGS',9,'9/17/1997','10/1/1997','9/26/1997',2,95.75,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10673,N'WILMK',2,'9/18/1997','10/16/1997','9/19/1997',1,22.76,
	N'Wilman Kala',N'Keskuskatu 45',N'Helsinki',
	NULL,N'21240',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10674,N'ISLAT',4,'9/18/1997','10/16/1997','9/30/1997',2,0.90,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10675,N'FRANK',5,'9/19/1997','10/17/1997','9/23/1997',2,31.85,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10676,N'TORTU',2,'9/22/1997','10/20/1997','9/29/1997',2,2.01,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10677,N'ANTON',1,'9/22/1997','10/20/1997','9/26/1997',3,4.03,
	N'Antonio Moreno Taquería',N'Mataderos  2312',N'México D.F.',
	NULL,N'05023',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10678,N'SAVEA',7,'9/23/1997','10/21/1997','10/16/1997',3,388.98,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10679,N'BLONP',8,'9/23/1997','10/21/1997','9/30/1997',3,27.94,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10680,N'OLDWO',1,'9/24/1997','10/22/1997','9/26/1997',1,26.61,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10681,N'GREAL',3,'9/25/1997','10/23/1997','9/30/1997',3,76.13,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10682,N'ANTON',3,'9/25/1997','10/23/1997','10/1/1997',2,36.13,
	N'Antonio Moreno Taquería',N'Mataderos  2312',N'México D.F.',
	NULL,N'05023',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10683,N'DUMON',2,'9/26/1997','10/24/1997','10/1/1997',1,4.40,
	N'Du monde entier',N'67, rue des Cinquante Otages',N'Nantes',
	NULL,N'44000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10684,N'OTTIK',3,'9/26/1997','10/24/1997','9/30/1997',1,145.63,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10685,N'GOURL',4,'9/29/1997','10/13/1997','10/3/1997',2,33.75,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10686,N'PICCO',2,'9/30/1997','10/28/1997','10/8/1997',1,96.50,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10687,N'HUNGO',9,'9/30/1997','10/28/1997','10/30/1997',2,296.43,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10688,N'VAFFE',4,'10/1/1997','10/15/1997','10/7/1997',2,299.09,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10689,N'BERGS',1,'10/1/1997','10/29/1997','10/7/1997',2,13.42,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10690,N'HANAR',1,'10/2/1997','10/30/1997','10/3/1997',1,15.80,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10691,N'QUICK',2,'10/3/1997','11/14/1997','10/22/1997',2,810.05,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10692,N'ALFKI',4,'10/3/1997','10/31/1997','10/13/1997',2,61.02,
	N'Alfred''s Futterkiste',N'Obere Str. 57',N'Berlin',
	NULL,N'12209',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10693,N'WHITC',3,'10/6/1997','10/20/1997','10/10/1997',3,139.34,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10694,N'QUICK',8,'10/6/1997','11/3/1997','10/9/1997',3,398.36,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10695,N'WILMK',7,'10/7/1997','11/18/1997','10/14/1997',1,16.72,
	N'Wilman Kala',N'Keskuskatu 45',N'Helsinki',
	NULL,N'21240',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10696,N'WHITC',8,'10/8/1997','11/19/1997','10/14/1997',3,102.55,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10697,N'LINOD',3,'10/8/1997','11/5/1997','10/14/1997',1,45.52,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10698,N'ERNSH',4,'10/9/1997','11/6/1997','10/17/1997',1,272.47,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10699,N'MORGK',3,'10/9/1997','11/6/1997','10/13/1997',3,0.58,
	N'Morgenstern Gesundkost',N'Heerstr. 22',N'Leipzig',
	NULL,N'04179',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10700,N'SAVEA',3,'10/10/1997','11/7/1997','10/16/1997',1,65.10,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10701,N'HUNGO',6,'10/13/1997','10/27/1997','10/15/1997',3,220.31,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10702,N'ALFKI',4,'10/13/1997','11/24/1997','10/21/1997',1,23.94,
	N'Alfred''s Futterkiste',N'Obere Str. 57',N'Berlin',
	NULL,N'12209',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10703,N'FOLKO',6,'10/14/1997','11/11/1997','10/20/1997',2,152.30,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10704,N'QUEEN',6,'10/14/1997','11/11/1997','11/7/1997',1,4.78,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10705,N'HILAA',9,'10/15/1997','11/12/1997','11/18/1997',2,3.52,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10706,N'OLDWO',8,'10/16/1997','11/13/1997','10/21/1997',3,135.63,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10707,N'AROUT',4,'10/16/1997','10/30/1997','10/23/1997',3,21.74,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10708,N'THEBI',6,'10/17/1997','11/28/1997','11/5/1997',2,2.96,
	N'The Big Cheese',N'89 Jefferson Way Suite 2',N'Portland',
	N'OR',N'97201',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10709,N'GOURL',1,'10/17/1997','11/14/1997','11/20/1997',3,210.80,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10710,N'FRANS',1,'10/20/1997','11/17/1997','10/23/1997',1,4.98,
	N'Franchi S.p.A.',N'Via Monte Bianco 34',N'Torino',
	NULL,N'10100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10711,N'SAVEA',5,'10/21/1997','12/2/1997','10/29/1997',2,52.41,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10712,N'HUNGO',3,'10/21/1997','11/18/1997','10/31/1997',1,89.93,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10713,N'SAVEA',1,'10/22/1997','11/19/1997','10/24/1997',1,167.05,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10714,N'SAVEA',5,'10/22/1997','11/19/1997','10/27/1997',3,24.49,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10715,N'BONAP',3,'10/23/1997','11/6/1997','10/29/1997',1,63.20,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10716,N'RANCH',4,'10/24/1997','11/21/1997','10/27/1997',2,22.57,
	N'Rancho grande',N'Av. del Libertador 900',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10717,N'FRANK',1,'10/24/1997','11/21/1997','10/29/1997',2,59.25,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10718,N'KOENE',1,'10/27/1997','11/24/1997','10/29/1997',3,170.88,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10719,N'LETSS',8,'10/27/1997','11/24/1997','11/5/1997',2,51.44,
	N'Let''s Stop N Shop',N'87 Polk St. Suite 5',N'San Francisco',
	N'CA',N'94117',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10720,N'QUEDE',8,'10/28/1997','11/11/1997','11/5/1997',2,9.53,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10721,N'QUICK',5,'10/29/1997','11/26/1997','10/31/1997',3,48.92,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10722,N'SAVEA',8,'10/29/1997','12/10/1997','11/4/1997',1,74.58,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10723,N'WHITC',3,'10/30/1997','11/27/1997','11/25/1997',1,21.72,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10724,N'MEREP',8,'10/30/1997','12/11/1997','11/5/1997',2,57.75,
	N'Mère Paillarde',N'43 rue St. Laurent',N'Montréal',
	N'Québec',N'H1J 1C3',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10725,N'FAMIA',4,'10/31/1997','11/28/1997','11/5/1997',3,10.83,
	N'Familia Arquibaldo',N'Rua Orós, 92',N'Sao Paulo',
	N'SP',N'05442-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10726,N'EASTC',4,'11/3/1997','11/17/1997','12/5/1997',1,16.56,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10727,N'REGGC',2,'11/3/1997','12/1/1997','12/5/1997',1,89.90,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10728,N'QUEEN',4,'11/4/1997','12/2/1997','11/11/1997',2,58.33,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10729,N'LINOD',8,'11/4/1997','12/16/1997','11/14/1997',3,141.06,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10730,N'BONAP',5,'11/5/1997','12/3/1997','11/14/1997',1,20.12,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10731,N'CHOPS',7,'11/6/1997','12/4/1997','11/14/1997',1,96.65,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10732,N'BONAP',3,'11/6/1997','12/4/1997','11/7/1997',1,16.97,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10733,N'BERGS',1,'11/7/1997','12/5/1997','11/10/1997',3,110.11,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10734,N'GOURL',2,'11/7/1997','12/5/1997','11/12/1997',3,1.63,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10735,N'LETSS',6,'11/10/1997','12/8/1997','11/21/1997',2,45.97,
	N'Let''s Stop N Shop',N'87 Polk St. Suite 5',N'San Francisco',
	N'CA',N'94117',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10736,N'HUNGO',9,'11/11/1997','12/9/1997','11/21/1997',2,44.10,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10737,N'VINET',2,'11/11/1997','12/9/1997','11/18/1997',2,7.79,
	N'Vins et alcools Chevalier',N'59 rue de l''Abbaye',N'Reims',
	NULL,N'51100',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10738,N'SPECD',2,'11/12/1997','12/10/1997','11/18/1997',1,2.91,
	N'Spécialités du monde',N'25, rue Lauriston',N'Paris',
	NULL,N'75016',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10739,N'VINET',3,'11/12/1997','12/10/1997','11/17/1997',3,11.08,
	N'Vins et alcools Chevalier',N'59 rue de l''Abbaye',N'Reims',
	NULL,N'51100',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10740,N'WHITC',4,'11/13/1997','12/11/1997','11/25/1997',2,81.88,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10741,N'AROUT',4,'11/14/1997','11/28/1997','11/18/1997',3,10.96,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10742,N'BOTTM',3,'11/14/1997','12/12/1997','11/18/1997',3,243.73,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10743,N'AROUT',1,'11/17/1997','12/15/1997','11/21/1997',2,23.72,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10744,N'VAFFE',6,'11/17/1997','12/15/1997','11/24/1997',1,69.19,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10745,N'QUICK',9,'11/18/1997','12/16/1997','11/27/1997',1,3.52,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10746,N'CHOPS',1,'11/19/1997','12/17/1997','11/21/1997',3,31.43,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10747,N'PICCO',6,'11/19/1997','12/17/1997','11/26/1997',1,117.33,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10748,N'SAVEA',3,'11/20/1997','12/18/1997','11/28/1997',1,232.55,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10749,N'ISLAT',4,'11/20/1997','12/18/1997','12/19/1997',2,61.53,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10750,N'WARTH',9,'11/21/1997','12/19/1997','11/24/1997',1,79.30,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10751,N'RICSU',3,'11/24/1997','12/22/1997','12/3/1997',3,130.79,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10752,N'NORTS',2,'11/24/1997','12/22/1997','11/28/1997',3,1.39,
	N'North/South',N'South House 300 Queensbridge',N'London',
	NULL,N'SW7 1RZ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10753,N'FRANS',3,'11/25/1997','12/23/1997','11/27/1997',1,7.70,
	N'Franchi S.p.A.',N'Via Monte Bianco 34',N'Torino',
	NULL,N'10100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10754,N'MAGAA',6,'11/25/1997','12/23/1997','11/27/1997',3,2.38,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10755,N'BONAP',4,'11/26/1997','12/24/1997','11/28/1997',2,16.71,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10756,N'SPLIR',8,'11/27/1997','12/25/1997','12/2/1997',2,73.21,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10757,N'SAVEA',6,'11/27/1997','12/25/1997','12/15/1997',1,8.19,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10758,N'RICSU',3,'11/28/1997','12/26/1997','12/4/1997',3,138.17,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10759,N'ANATR',3,'11/28/1997','12/26/1997','12/12/1997',3,11.99,
	N'Ana Trujillo Emparedados y helados',N'Avda. de la Constitución 2222',N'México D.F.',
	NULL,N'05021',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10760,N'MAISD',4,'12/1/1997','12/29/1997','12/10/1997',1,155.64,
	N'Maison Dewey',N'Rue Joseph-Bens 532',N'Bruxelles',
	NULL,N'B-1180',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10761,N'RATTC',5,'12/2/1997','12/30/1997','12/8/1997',2,18.66,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10762,N'FOLKO',3,'12/2/1997','12/30/1997','12/9/1997',1,328.74,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10763,N'FOLIG',3,'12/3/1997','12/31/1997','12/8/1997',3,37.35,
	N'Folies gourmandes',N'184, chaussée de Tournai',N'Lille',
	NULL,N'59000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10764,N'ERNSH',6,'12/3/1997','12/31/1997','12/8/1997',3,145.45,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10765,N'QUICK',3,'12/4/1997','1/1/1998','12/9/1997',3,42.74,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10766,N'OTTIK',4,'12/5/1997','1/2/1998','12/9/1997',1,157.55,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10767,N'SUPRD',4,'12/5/1997','1/2/1998','12/15/1997',3,1.59,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10768,N'AROUT',3,'12/8/1997','1/5/1998','12/15/1997',2,146.32,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10769,N'VAFFE',3,'12/8/1997','1/5/1998','12/12/1997',1,65.06,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10770,N'HANAR',8,'12/9/1997','1/6/1998','12/17/1997',3,5.32,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10771,N'ERNSH',9,'12/10/1997','1/7/1998','1/2/1998',2,11.19,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10772,N'LEHMS',3,'12/10/1997','1/7/1998','12/19/1997',2,91.28,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10773,N'ERNSH',1,'12/11/1997','1/8/1998','12/16/1997',3,96.43,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10774,N'FOLKO',4,'12/11/1997','12/25/1997','12/12/1997',1,48.20,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10775,N'THECR',7,'12/12/1997','1/9/1998','12/26/1997',1,20.25,
	N'The Cracker Box',N'55 Grizzly Peak Rd.',N'Butte',
	N'MT',N'59801',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10776,N'ERNSH',1,'12/15/1997','1/12/1998','12/18/1997',3,351.53,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10777,N'GOURL',7,'12/15/1997','12/29/1997','1/21/1998',2,3.01,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10778,N'BERGS',3,'12/16/1997','1/13/1998','12/24/1997',1,6.79,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10779,N'MORGK',3,'12/16/1997','1/13/1998','1/14/1998',2,58.13,
	N'Morgenstern Gesundkost',N'Heerstr. 22',N'Leipzig',
	NULL,N'04179',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10780,N'LILAS',2,'12/16/1997','12/30/1997','12/25/1997',1,42.13,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10781,N'WARTH',2,'12/17/1997','1/14/1998','12/19/1997',3,73.16,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10782,N'CACTU',9,'12/17/1997','1/14/1998','12/22/1997',3,1.10,
	N'Cactus Comidas para llevar',N'Cerrito 333',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10783,N'HANAR',4,'12/18/1997','1/15/1998','12/19/1997',2,124.98,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10784,N'MAGAA',4,'12/18/1997','1/15/1998','12/22/1997',3,70.09,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10785,N'GROSR',1,'12/18/1997','1/15/1998','12/24/1997',3,1.51,
	N'GROSELLA-Restaurante',N'5ª Ave. Los Palos Grandes',N'Caracas',
	N'DF',N'1081',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10786,N'QUEEN',8,'12/19/1997','1/16/1998','12/23/1997',1,110.87,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10787,N'LAMAI',2,'12/19/1997','1/2/1998','12/26/1997',1,249.93,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10788,N'QUICK',1,'12/22/1997','1/19/1998','1/19/1998',2,42.70,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10789,N'FOLIG',1,'12/22/1997','1/19/1998','12/31/1997',2,100.60,
	N'Folies gourmandes',N'184, chaussée de Tournai',N'Lille',
	NULL,N'59000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10790,N'GOURL',6,'12/22/1997','1/19/1998','12/26/1997',1,28.23,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10791,N'FRANK',6,'12/23/1997','1/20/1998','1/1/1998',2,16.85,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10792,N'WOLZA',1,'12/23/1997','1/20/1998','12/31/1997',3,23.79,
	N'Wolski Zajazd',N'ul. Filtrowa 68',N'Warszawa',
	NULL,N'01-012',N'Poland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10793,N'AROUT',3,'12/24/1997','1/21/1998','1/8/1998',3,4.52,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10794,N'QUEDE',6,'12/24/1997','1/21/1998','1/2/1998',1,21.49,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10795,N'ERNSH',8,'12/24/1997','1/21/1998','1/20/1998',2,126.66,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10796,N'HILAA',3,'12/25/1997','1/22/1998','1/14/1998',1,26.52,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10797,N'DRACD',7,'12/25/1997','1/22/1998','1/5/1998',2,33.35,
	N'Drachenblut Delikatessen',N'Walserweg 21',N'Aachen',
	NULL,N'52066',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10798,N'ISLAT',2,'12/26/1997','1/23/1998','1/5/1998',1,2.33,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10799,N'KOENE',9,'12/26/1997','2/6/1998','1/5/1998',3,30.76,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10800,N'SEVES',1,'12/26/1997','1/23/1998','1/5/1998',3,137.44,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10801,N'BOLID',4,'12/29/1997','1/26/1998','12/31/1997',2,97.09,
	N'Bólido Comidas preparadas',N'C/ Araquil, 67',N'Madrid',
	NULL,N'28023',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10802,N'SIMOB',4,'12/29/1997','1/26/1998','1/2/1998',2,257.26,
	N'Simons bistro',N'Vinbæltet 34',N'Kobenhavn',
	NULL,N'1734',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10803,N'WELLI',4,'12/30/1997','1/27/1998','1/6/1998',1,55.23,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10804,N'SEVES',6,'12/30/1997','1/27/1998','1/7/1998',2,27.33,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10805,N'THEBI',2,'12/30/1997','1/27/1998','1/9/1998',3,237.34,
	N'The Big Cheese',N'89 Jefferson Way Suite 2',N'Portland',
	N'OR',N'97201',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10806,N'VICTE',3,'12/31/1997','1/28/1998','1/5/1998',2,22.11,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10807,N'FRANS',4,'12/31/1997','1/28/1998','1/30/1998',1,1.36,
	N'Franchi S.p.A.',N'Via Monte Bianco 34',N'Torino',
	NULL,N'10100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10808,N'OLDWO',2,'1/1/1998','1/29/1998','1/9/1998',3,45.53,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10809,N'WELLI',7,'1/1/1998','1/29/1998','1/7/1998',1,4.87,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10810,N'LAUGB',2,'1/1/1998','1/29/1998','1/7/1998',3,4.33,
	N'Laughing Bacchus Wine Cellars',N'2319 Elm St.',N'Vancouver',
	N'BC',N'V3F 2K1',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10811,N'LINOD',8,'1/2/1998','1/30/1998','1/8/1998',1,31.22,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10812,N'REGGC',5,'1/2/1998','1/30/1998','1/12/1998',1,59.78,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10813,N'RICAR',1,'1/5/1998','2/2/1998','1/9/1998',1,47.38,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10814,N'VICTE',3,'1/5/1998','2/2/1998','1/14/1998',3,130.94,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10815,N'SAVEA',2,'1/5/1998','2/2/1998','1/14/1998',3,14.62,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10816,N'GREAL',4,'1/6/1998','2/3/1998','2/4/1998',2,719.78,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10817,N'KOENE',3,'1/6/1998','1/20/1998','1/13/1998',2,306.07,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10818,N'MAGAA',7,'1/7/1998','2/4/1998','1/12/1998',3,65.48,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10819,N'CACTU',2,'1/7/1998','2/4/1998','1/16/1998',3,19.76,
	N'Cactus Comidas para llevar',N'Cerrito 333',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10820,N'RATTC',3,'1/7/1998','2/4/1998','1/13/1998',2,37.52,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10821,N'SPLIR',1,'1/8/1998','2/5/1998','1/15/1998',1,36.68,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10822,N'TRAIH',6,'1/8/1998','2/5/1998','1/16/1998',3,7.00,
	N'Trail''s Head Gourmet Provisioners',N'722 DaVinci Blvd.',N'Kirkland',
	N'WA',N'98034',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10823,N'LILAS',5,'1/9/1998','2/6/1998','1/13/1998',2,163.97,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10824,N'FOLKO',8,'1/9/1998','2/6/1998','1/30/1998',1,1.23,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10825,N'DRACD',1,'1/9/1998','2/6/1998','1/14/1998',1,79.25,
	N'Drachenblut Delikatessen',N'Walserweg 21',N'Aachen',
	NULL,N'52066',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10826,N'BLONP',6,'1/12/1998','2/9/1998','2/6/1998',1,7.09,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10827,N'BONAP',1,'1/12/1998','1/26/1998','2/6/1998',2,63.54,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10828,N'RANCH',9,'1/13/1998','1/27/1998','2/4/1998',1,90.85,
	N'Rancho grande',N'Av. del Libertador 900',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10829,N'ISLAT',9,'1/13/1998','2/10/1998','1/23/1998',1,154.72,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10830,N'TRADH',4,'1/13/1998','2/24/1998','1/21/1998',2,81.83,
	N'Tradiçao Hipermercados',N'Av. Inês de Castro, 414',N'Sao Paulo',
	N'SP',N'05634-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10831,N'SANTG',3,'1/14/1998','2/11/1998','1/23/1998',2,72.19,
	N'Santé Gourmet',N'Erling Skakkes gate 78',N'Stavern',
	NULL,N'4110',N'Norway')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10832,N'LAMAI',2,'1/14/1998','2/11/1998','1/19/1998',2,43.26,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10833,N'OTTIK',6,'1/15/1998','2/12/1998','1/23/1998',2,71.49,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10834,N'TRADH',1,'1/15/1998','2/12/1998','1/19/1998',3,29.78,
	N'Tradiçao Hipermercados',N'Av. Inês de Castro, 414',N'Sao Paulo',
	N'SP',N'05634-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10835,N'ALFKI',1,'1/15/1998','2/12/1998','1/21/1998',3,69.53,
	N'Alfred''s Futterkiste',N'Obere Str. 57',N'Berlin',
	NULL,N'12209',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10836,N'ERNSH',7,'1/16/1998','2/13/1998','1/21/1998',1,411.88,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10837,N'BERGS',9,'1/16/1998','2/13/1998','1/23/1998',3,13.32,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10838,N'LINOD',3,'1/19/1998','2/16/1998','1/23/1998',3,59.28,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10839,N'TRADH',3,'1/19/1998','2/16/1998','1/22/1998',3,35.43,
	N'Tradiçao Hipermercados',N'Av. Inês de Castro, 414',N'Sao Paulo',
	N'SP',N'05634-030',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10840,N'LINOD',4,'1/19/1998','3/2/1998','2/16/1998',2,2.71,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10841,N'SUPRD',5,'1/20/1998','2/17/1998','1/29/1998',2,424.30,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10842,N'TORTU',1,'1/20/1998','2/17/1998','1/29/1998',3,54.42,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10843,N'VICTE',4,'1/21/1998','2/18/1998','1/26/1998',2,9.26,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10844,N'PICCO',8,'1/21/1998','2/18/1998','1/26/1998',2,25.22,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10845,N'QUICK',8,'1/21/1998','2/4/1998','1/30/1998',1,212.98,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10846,N'SUPRD',2,'1/22/1998','3/5/1998','1/23/1998',3,56.46,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10847,N'SAVEA',4,'1/22/1998','2/5/1998','2/10/1998',3,487.57,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10848,N'CONSH',7,'1/23/1998','2/20/1998','1/29/1998',2,38.24,
	N'Consolidated Holdings',N'Berkeley Gardens 12  Brewery',N'London',
	NULL,N'WX1 6LT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10849,N'KOENE',9,'1/23/1998','2/20/1998','1/30/1998',2,0.56,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10850,N'VICTE',1,'1/23/1998','3/6/1998','1/30/1998',1,49.19,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10851,N'RICAR',5,'1/26/1998','2/23/1998','2/2/1998',1,160.55,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10852,N'RATTC',8,'1/26/1998','2/9/1998','1/30/1998',1,174.05,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10853,N'BLAUS',9,'1/27/1998','2/24/1998','2/3/1998',2,53.83,
	N'Blauer See Delikatessen',N'Forsterstr. 57',N'Mannheim',
	NULL,N'68306',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10854,N'ERNSH',3,'1/27/1998','2/24/1998','2/5/1998',2,100.22,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10855,N'OLDWO',3,'1/27/1998','2/24/1998','2/4/1998',1,170.97,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10856,N'ANTON',3,'1/28/1998','2/25/1998','2/10/1998',2,58.43,
	N'Antonio Moreno Taquería',N'Mataderos  2312',N'México D.F.',
	NULL,N'05023',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10857,N'BERGS',8,'1/28/1998','2/25/1998','2/6/1998',2,188.85,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10858,N'LACOR',2,'1/29/1998','2/26/1998','2/3/1998',1,52.51,
	N'La corne d''abondance',N'67, avenue de l''Europe',N'Versailles',
	NULL,N'78000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10859,N'FRANK',1,'1/29/1998','2/26/1998','2/2/1998',2,76.10,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10860,N'FRANR',3,'1/29/1998','2/26/1998','2/4/1998',3,19.26,
	N'France restauration',N'54, rue Royale',N'Nantes',
	NULL,N'44000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10861,N'WHITC',4,'1/30/1998','2/27/1998','2/17/1998',2,14.93,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10862,N'LEHMS',8,'1/30/1998','3/13/1998','2/2/1998',2,53.23,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10863,N'HILAA',4,'2/2/1998','3/2/1998','2/17/1998',2,30.26,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10864,N'AROUT',4,'2/2/1998','3/2/1998','2/9/1998',2,3.04,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10865,N'QUICK',2,'2/2/1998','2/16/1998','2/12/1998',1,348.14,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10866,N'BERGS',5,'2/3/1998','3/3/1998','2/12/1998',1,109.11,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10867,N'LONEP',6,'2/3/1998','3/17/1998','2/11/1998',1,1.93,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10868,N'QUEEN',7,'2/4/1998','3/4/1998','2/23/1998',2,191.27,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10869,N'SEVES',5,'2/4/1998','3/4/1998','2/9/1998',1,143.28,
	N'Seven Seas Imports',N'90 Wadhurst Rd.',N'London',
	NULL,N'OX15 4NB',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10870,N'WOLZA',5,'2/4/1998','3/4/1998','2/13/1998',3,12.04,
	N'Wolski Zajazd',N'ul. Filtrowa 68',N'Warszawa',
	NULL,N'01-012',N'Poland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10871,N'BONAP',9,'2/5/1998','3/5/1998','2/10/1998',2,112.27,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10872,N'GODOS',5,'2/5/1998','3/5/1998','2/9/1998',2,175.32,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10873,N'WILMK',4,'2/6/1998','3/6/1998','2/9/1998',1,0.82,
	N'Wilman Kala',N'Keskuskatu 45',N'Helsinki',
	NULL,N'21240',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10874,N'GODOS',5,'2/6/1998','3/6/1998','2/11/1998',2,19.58,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10875,N'BERGS',4,'2/6/1998','3/6/1998','3/3/1998',2,32.37,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10876,N'BONAP',7,'2/9/1998','3/9/1998','2/12/1998',3,60.42,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10877,N'RICAR',1,'2/9/1998','3/9/1998','2/19/1998',1,38.06,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10878,N'QUICK',4,'2/10/1998','3/10/1998','2/12/1998',1,46.69,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10879,N'WILMK',3,'2/10/1998','3/10/1998','2/12/1998',3,8.50,
	N'Wilman Kala',N'Keskuskatu 45',N'Helsinki',
	NULL,N'21240',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10880,N'FOLKO',7,'2/10/1998','3/24/1998','2/18/1998',1,88.01,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10881,N'CACTU',4,'2/11/1998','3/11/1998','2/18/1998',1,2.84,
	N'Cactus Comidas para llevar',N'Cerrito 333',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10882,N'SAVEA',4,'2/11/1998','3/11/1998','2/20/1998',3,23.10,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10883,N'LONEP',8,'2/12/1998','3/12/1998','2/20/1998',3,0.53,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10884,N'LETSS',4,'2/12/1998','3/12/1998','2/13/1998',2,90.97,
	N'Let''s Stop N Shop',N'87 Polk St. Suite 5',N'San Francisco',
	N'CA',N'94117',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10885,N'SUPRD',6,'2/12/1998','3/12/1998','2/18/1998',3,5.64,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10886,N'HANAR',1,'2/13/1998','3/13/1998','3/2/1998',1,4.99,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10887,N'GALED',8,'2/13/1998','3/13/1998','2/16/1998',3,1.25,
	N'Galería del gastronómo',N'Rambla de Cataluña, 23',N'Barcelona',
	NULL,N'8022',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10888,N'GODOS',1,'2/16/1998','3/16/1998','2/23/1998',2,51.87,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10889,N'RATTC',9,'2/16/1998','3/16/1998','2/23/1998',3,280.61,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10890,N'DUMON',7,'2/16/1998','3/16/1998','2/18/1998',1,32.76,
	N'Du monde entier',N'67, rue des Cinquante Otages',N'Nantes',
	NULL,N'44000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10891,N'LEHMS',7,'2/17/1998','3/17/1998','2/19/1998',2,20.37,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10892,N'MAISD',4,'2/17/1998','3/17/1998','2/19/1998',2,120.27,
	N'Maison Dewey',N'Rue Joseph-Bens 532',N'Bruxelles',
	NULL,N'B-1180',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10893,N'KOENE',9,'2/18/1998','3/18/1998','2/20/1998',2,77.78,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10894,N'SAVEA',1,'2/18/1998','3/18/1998','2/20/1998',1,116.13,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10895,N'ERNSH',3,'2/18/1998','3/18/1998','2/23/1998',1,162.75,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10896,N'MAISD',7,'2/19/1998','3/19/1998','2/27/1998',3,32.45,
	N'Maison Dewey',N'Rue Joseph-Bens 532',N'Bruxelles',
	NULL,N'B-1180',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10897,N'HUNGO',3,'2/19/1998','3/19/1998','2/25/1998',2,603.54,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10898,N'OCEAN',4,'2/20/1998','3/20/1998','3/6/1998',2,1.27,
	N'Océano Atlántico Ltda.',N'Ing. Gustavo Moncada 8585 Piso 20-A',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10899,N'LILAS',5,'2/20/1998','3/20/1998','2/26/1998',3,1.21,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10900,N'WELLI',1,'2/20/1998','3/20/1998','3/4/1998',2,1.66,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10901,N'HILAA',4,'2/23/1998','3/23/1998','2/26/1998',1,62.09,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10902,N'FOLKO',1,'2/23/1998','3/23/1998','3/3/1998',1,44.15,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10903,N'HANAR',3,'2/24/1998','3/24/1998','3/4/1998',3,36.71,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10904,N'WHITC',3,'2/24/1998','3/24/1998','2/27/1998',3,162.95,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10905,N'WELLI',9,'2/24/1998','3/24/1998','3/6/1998',2,13.72,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10906,N'WOLZA',4,'2/25/1998','3/11/1998','3/3/1998',3,26.29,
	N'Wolski Zajazd',N'ul. Filtrowa 68',N'Warszawa',
	NULL,N'01-012',N'Poland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10907,N'SPECD',6,'2/25/1998','3/25/1998','2/27/1998',3,9.19,
	N'Spécialités du monde',N'25, rue Lauriston',N'Paris',
	NULL,N'75016',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10908,N'REGGC',4,'2/26/1998','3/26/1998','3/6/1998',2,32.96,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10909,N'SANTG',1,'2/26/1998','3/26/1998','3/10/1998',2,53.05,
	N'Santé Gourmet',N'Erling Skakkes gate 78',N'Stavern',
	NULL,N'4110',N'Norway')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10910,N'WILMK',1,'2/26/1998','3/26/1998','3/4/1998',3,38.11,
	N'Wilman Kala',N'Keskuskatu 45',N'Helsinki',
	NULL,N'21240',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10911,N'GODOS',3,'2/26/1998','3/26/1998','3/5/1998',1,38.19,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10912,N'HUNGO',2,'2/26/1998','3/26/1998','3/18/1998',2,580.91,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10913,N'QUEEN',4,'2/26/1998','3/26/1998','3/4/1998',1,33.05,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10914,N'QUEEN',6,'2/27/1998','3/27/1998','3/2/1998',1,21.19,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10915,N'TORTU',2,'2/27/1998','3/27/1998','3/2/1998',2,3.51,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10916,N'RANCH',1,'2/27/1998','3/27/1998','3/9/1998',2,63.77,
	N'Rancho grande',N'Av. del Libertador 900',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10917,N'ROMEY',4,'3/2/1998','3/30/1998','3/11/1998',2,8.29,
	N'Romero y tomillo',N'Gran Vía, 1',N'Madrid',
	NULL,N'28001',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10918,N'BOTTM',3,'3/2/1998','3/30/1998','3/11/1998',3,48.83,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10919,N'LINOD',2,'3/2/1998','3/30/1998','3/4/1998',2,19.80,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10920,N'AROUT',4,'3/3/1998','3/31/1998','3/9/1998',2,29.61,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10921,N'VAFFE',1,'3/3/1998','4/14/1998','3/9/1998',1,176.48,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10922,N'HANAR',5,'3/3/1998','3/31/1998','3/5/1998',3,62.74,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10923,N'LAMAI',7,'3/3/1998','4/14/1998','3/13/1998',3,68.26,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10924,N'BERGS',3,'3/4/1998','4/1/1998','4/8/1998',2,151.52,
	N'Berglunds snabbköp',N'Berguvsvägen  8',N'Luleå',
	NULL,N'S-958 22',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10925,N'HANAR',3,'3/4/1998','4/1/1998','3/13/1998',1,2.27,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10926,N'ANATR',4,'3/4/1998','4/1/1998','3/11/1998',3,39.92,
	N'Ana Trujillo Emparedados y helados',N'Avda. de la Constitución 2222',N'México D.F.',
	NULL,N'05021',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10927,N'LACOR',4,'3/5/1998','4/2/1998','4/8/1998',1,19.79,
	N'La corne d''abondance',N'67, avenue de l''Europe',N'Versailles',
	NULL,N'78000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10928,N'GALED',1,'3/5/1998','4/2/1998','3/18/1998',1,1.36,
	N'Galería del gastronómo',N'Rambla de Cataluña, 23',N'Barcelona',
	NULL,N'8022',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10929,N'FRANK',6,'3/5/1998','4/2/1998','3/12/1998',1,33.93,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10930,N'SUPRD',4,'3/6/1998','4/17/1998','3/18/1998',3,15.55,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10931,N'RICSU',4,'3/6/1998','3/20/1998','3/19/1998',2,13.60,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10932,N'BONAP',8,'3/6/1998','4/3/1998','3/24/1998',1,134.64,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10933,N'ISLAT',6,'3/6/1998','4/3/1998','3/16/1998',3,54.15,
	N'Island Trading',N'Garden House Crowther Way',N'Cowes',
	N'Isle of Wight',N'PO31 7PJ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10934,N'LEHMS',3,'3/9/1998','4/6/1998','3/12/1998',3,32.01,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10935,N'WELLI',4,'3/9/1998','4/6/1998','3/18/1998',3,47.59,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10936,N'GREAL',3,'3/9/1998','4/6/1998','3/18/1998',2,33.68,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10937,N'CACTU',7,'3/10/1998','3/24/1998','3/13/1998',3,31.51,
	N'Cactus Comidas para llevar',N'Cerrito 333',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10938,N'QUICK',3,'3/10/1998','4/7/1998','3/16/1998',2,31.89,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10939,N'MAGAA',2,'3/10/1998','4/7/1998','3/13/1998',2,76.33,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10940,N'BONAP',8,'3/11/1998','4/8/1998','3/23/1998',3,19.77,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10941,N'SAVEA',7,'3/11/1998','4/8/1998','3/20/1998',2,400.81,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10942,N'REGGC',9,'3/11/1998','4/8/1998','3/18/1998',3,17.95,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10943,N'BSBEV',4,'3/11/1998','4/8/1998','3/19/1998',2,2.17,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10944,N'BOTTM',6,'3/12/1998','3/26/1998','3/13/1998',3,52.92,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10945,N'MORGK',4,'3/12/1998','4/9/1998','3/18/1998',1,10.22,
	N'Morgenstern Gesundkost',N'Heerstr. 22',N'Leipzig',
	NULL,N'04179',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10946,N'VAFFE',1,'3/12/1998','4/9/1998','3/19/1998',2,27.20,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10947,N'BSBEV',3,'3/13/1998','4/10/1998','3/16/1998',2,3.26,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10948,N'GODOS',3,'3/13/1998','4/10/1998','3/19/1998',3,23.39,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10949,N'BOTTM',2,'3/13/1998','4/10/1998','3/17/1998',3,74.44,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10950,N'MAGAA',1,'3/16/1998','4/13/1998','3/23/1998',2,2.50,
	N'Magazzini Alimentari Riuniti',N'Via Ludovico il Moro 22',N'Bergamo',
	NULL,N'24100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10951,N'RICSU',9,'3/16/1998','4/27/1998','4/7/1998',2,30.85,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10952,N'ALFKI',1,'3/16/1998','4/27/1998','3/24/1998',1,40.42,
	N'Alfred''s Futterkiste',N'Obere Str. 57',N'Berlin',
	NULL,N'12209',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10953,N'AROUT',9,'3/16/1998','3/30/1998','3/25/1998',2,23.72,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10954,N'LINOD',5,'3/17/1998','4/28/1998','3/20/1998',1,27.91,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10955,N'FOLKO',8,'3/17/1998','4/14/1998','3/20/1998',2,3.26,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10956,N'BLAUS',6,'3/17/1998','4/28/1998','3/20/1998',2,44.65,
	N'Blauer See Delikatessen',N'Forsterstr. 57',N'Mannheim',
	NULL,N'68306',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10957,N'HILAA',8,'3/18/1998','4/15/1998','3/27/1998',3,105.36,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10958,N'OCEAN',7,'3/18/1998','4/15/1998','3/27/1998',2,49.56,
	N'Océano Atlántico Ltda.',N'Ing. Gustavo Moncada 8585 Piso 20-A',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10959,N'GOURL',6,'3/18/1998','4/29/1998','3/23/1998',2,4.98,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10960,N'HILAA',3,'3/19/1998','4/2/1998','4/8/1998',1,2.08,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10961,N'QUEEN',8,'3/19/1998','4/16/1998','3/30/1998',1,104.47,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10962,N'QUICK',8,'3/19/1998','4/16/1998','3/23/1998',2,275.79,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10963,N'FURIB',9,'3/19/1998','4/16/1998','3/26/1998',3,2.70,
	N'Furia Bacalhau e Frutos do Mar',N'Jardim das rosas n. 32',N'Lisboa',
	NULL,N'1675',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10964,N'SPECD',3,'3/20/1998','4/17/1998','3/24/1998',2,87.38,
	N'Spécialités du monde',N'25, rue Lauriston',N'Paris',
	NULL,N'75016',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10965,N'OLDWO',6,'3/20/1998','4/17/1998','3/30/1998',3,144.38,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10966,N'CHOPS',4,'3/20/1998','4/17/1998','4/8/1998',1,27.19,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10967,N'TOMSP',2,'3/23/1998','4/20/1998','4/2/1998',2,62.22,
	N'Toms Spezialitäten',N'Luisenstr. 48',N'Münster',
	NULL,N'44087',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10968,N'ERNSH',1,'3/23/1998','4/20/1998','4/1/1998',3,74.60,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10969,N'COMMI',1,'3/23/1998','4/20/1998','3/30/1998',2,0.21,
	N'Comércio Mineiro',N'Av. dos Lusíadas, 23',N'Sao Paulo',
	N'SP',N'05432-043',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10970,N'BOLID',9,'3/24/1998','4/7/1998','4/24/1998',1,16.16,
	N'Bólido Comidas preparadas',N'C/ Araquil, 67',N'Madrid',
	NULL,N'28023',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10971,N'FRANR',2,'3/24/1998','4/21/1998','4/2/1998',2,121.82,
	N'France restauration',N'54, rue Royale',N'Nantes',
	NULL,N'44000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10972,N'LACOR',4,'3/24/1998','4/21/1998','3/26/1998',2,0.02,
	N'La corne d''abondance',N'67, avenue de l''Europe',N'Versailles',
	NULL,N'78000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10973,N'LACOR',6,'3/24/1998','4/21/1998','3/27/1998',2,15.17,
	N'La corne d''abondance',N'67, avenue de l''Europe',N'Versailles',
	NULL,N'78000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10974,N'SPLIR',3,'3/25/1998','4/8/1998','4/3/1998',3,12.96,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10975,N'BOTTM',1,'3/25/1998','4/22/1998','3/27/1998',3,32.27,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10976,N'HILAA',1,'3/25/1998','5/6/1998','4/3/1998',1,37.97,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10977,N'FOLKO',8,'3/26/1998','4/23/1998','4/10/1998',3,208.50,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10978,N'MAISD',9,'3/26/1998','4/23/1998','4/23/1998',2,32.82,
	N'Maison Dewey',N'Rue Joseph-Bens 532',N'Bruxelles',
	NULL,N'B-1180',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10979,N'ERNSH',8,'3/26/1998','4/23/1998','3/31/1998',2,353.07,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10980,N'FOLKO',4,'3/27/1998','5/8/1998','4/17/1998',1,1.26,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10981,N'HANAR',1,'3/27/1998','4/24/1998','4/2/1998',2,193.37,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10982,N'BOTTM',2,'3/27/1998','4/24/1998','4/8/1998',1,14.01,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10983,N'SAVEA',2,'3/27/1998','4/24/1998','4/6/1998',2,657.54,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10984,N'SAVEA',1,'3/30/1998','4/27/1998','4/3/1998',3,211.22,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10985,N'HUNGO',2,'3/30/1998','4/27/1998','4/2/1998',1,91.51,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10986,N'OCEAN',8,'3/30/1998','4/27/1998','4/21/1998',2,217.86,
	N'Océano Atlántico Ltda.',N'Ing. Gustavo Moncada 8585 Piso 20-A',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10987,N'EASTC',8,'3/31/1998','4/28/1998','4/6/1998',1,185.48,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10988,N'RATTC',3,'3/31/1998','4/28/1998','4/10/1998',2,61.14,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10989,N'QUEDE',2,'3/31/1998','4/28/1998','4/2/1998',1,34.76,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10990,N'ERNSH',2,'4/1/1998','5/13/1998','4/7/1998',3,117.61,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10991,N'QUICK',1,'4/1/1998','4/29/1998','4/7/1998',1,38.51,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10992,N'THEBI',1,'4/1/1998','4/29/1998','4/3/1998',3,4.27,
	N'The Big Cheese',N'89 Jefferson Way Suite 2',N'Portland',
	N'OR',N'97201',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10993,N'FOLKO',7,'4/1/1998','4/29/1998','4/10/1998',3,8.81,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10994,N'VAFFE',2,'4/2/1998','4/16/1998','4/9/1998',3,65.53,
	N'Vaffeljernet',N'Smagsloget 45',N'Århus',
	NULL,N'8200',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10995,N'PERIC',1,'4/2/1998','4/30/1998','4/6/1998',3,46.00,
	N'Pericles Comidas clásicas',N'Calle Dr. Jorge Cash 321',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10996,N'QUICK',4,'4/2/1998','4/30/1998','4/10/1998',2,1.12,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10997,N'LILAS',8,'4/3/1998','5/15/1998','4/13/1998',2,73.91,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10998,N'WOLZA',8,'4/3/1998','4/17/1998','4/17/1998',2,20.31,
	N'Wolski Zajazd',N'ul. Filtrowa 68',N'Warszawa',
	NULL,N'01-012',N'Poland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10999,N'OTTIK',6,'4/3/1998','5/1/1998','4/10/1998',2,96.35,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11000,N'RATTC',2,'4/6/1998','5/4/1998','4/14/1998',3,55.12,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11001,N'FOLKO',2,'4/6/1998','5/4/1998','4/14/1998',2,197.30,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11002,N'SAVEA',4,'4/6/1998','5/4/1998','4/16/1998',1,141.16,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11003,N'THECR',3,'4/6/1998','5/4/1998','4/8/1998',3,14.91,
	N'The Cracker Box',N'55 Grizzly Peak Rd.',N'Butte',
	N'MT',N'59801',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11004,N'MAISD',3,'4/7/1998','5/5/1998','4/20/1998',1,44.84,
	N'Maison Dewey',N'Rue Joseph-Bens 532',N'Bruxelles',
	NULL,N'B-1180',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11005,N'WILMK',2,'4/7/1998','5/5/1998','4/10/1998',1,0.75,
	N'Wilman Kala',N'Keskuskatu 45',N'Helsinki',
	NULL,N'21240',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11006,N'GREAL',3,'4/7/1998','5/5/1998','4/15/1998',2,25.19,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11007,N'PRINI',8,'4/8/1998','5/6/1998','4/13/1998',2,202.24,
	N'Princesa Isabel Vinhos',N'Estrada da saúde n. 58',N'Lisboa',
	NULL,N'1756',N'Portugal')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11008,N'ERNSH',7,'4/8/1998','5/6/1998',NULL,3,79.46,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11009,N'GODOS',2,'4/8/1998','5/6/1998','4/10/1998',1,59.11,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11010,N'REGGC',2,'4/9/1998','5/7/1998','4/21/1998',2,28.71,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11011,N'ALFKI',3,'4/9/1998','5/7/1998','4/13/1998',1,1.21,
	N'Alfred''s Futterkiste',N'Obere Str. 57',N'Berlin',
	NULL,N'12209',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11012,N'FRANK',1,'4/9/1998','4/23/1998','4/17/1998',3,242.95,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11013,N'ROMEY',2,'4/9/1998','5/7/1998','4/10/1998',1,32.99,
	N'Romero y tomillo',N'Gran Vía, 1',N'Madrid',
	NULL,N'28001',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11014,N'LINOD',2,'4/10/1998','5/8/1998','4/15/1998',3,23.60,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11015,N'SANTG',2,'4/10/1998','4/24/1998','4/20/1998',2,4.62,
	N'Santé Gourmet',N'Erling Skakkes gate 78',N'Stavern',
	NULL,N'4110',N'Norway')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11016,N'AROUT',9,'4/10/1998','5/8/1998','4/13/1998',2,33.80,
	N'Around the Horn',N'Brook Farm Stratford St. Mary',N'Colchester',
	N'Essex',N'CO7 6JX',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11017,N'ERNSH',9,'4/13/1998','5/11/1998','4/20/1998',2,754.26,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11018,N'LONEP',4,'4/13/1998','5/11/1998','4/16/1998',2,11.65,
	N'Lonesome Pine Restaurant',N'89 Chiaroscuro Rd.',N'Portland',
	N'OR',N'97219',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11019,N'RANCH',6,'4/13/1998','5/11/1998',NULL,3,3.17,
	N'Rancho grande',N'Av. del Libertador 900',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11020,N'OTTIK',2,'4/14/1998','5/12/1998','4/16/1998',2,43.30,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11021,N'QUICK',3,'4/14/1998','5/12/1998','4/21/1998',1,297.18,
	N'QUICK-Stop',N'Taucherstraße 10',N'Cunewalde',
	NULL,N'01307',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11022,N'HANAR',9,'4/14/1998','5/12/1998','5/4/1998',2,6.27,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11023,N'BSBEV',1,'4/14/1998','4/28/1998','4/24/1998',2,123.83,
	N'B''s Beverages',N'Fauntleroy Circus',N'London',
	NULL,N'EC2 5NT',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11024,N'EASTC',4,'4/15/1998','5/13/1998','4/20/1998',1,74.36,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11025,N'WARTH',6,'4/15/1998','5/13/1998','4/24/1998',3,29.17,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11026,N'FRANS',4,'4/15/1998','5/13/1998','4/28/1998',1,47.09,
	N'Franchi S.p.A.',N'Via Monte Bianco 34',N'Torino',
	NULL,N'10100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11027,N'BOTTM',1,'4/16/1998','5/14/1998','4/20/1998',1,52.52,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11028,N'KOENE',2,'4/16/1998','5/14/1998','4/22/1998',1,29.59,
	N'Königlich Essen',N'Maubelstr. 90',N'Brandenburg',
	NULL,N'14776',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11029,N'CHOPS',4,'4/16/1998','5/14/1998','4/27/1998',1,47.84,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11030,N'SAVEA',7,'4/17/1998','5/15/1998','4/27/1998',2,830.75,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11031,N'SAVEA',6,'4/17/1998','5/15/1998','4/24/1998',2,227.22,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11032,N'WHITC',2,'4/17/1998','5/15/1998','4/23/1998',3,606.19,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11033,N'RICSU',7,'4/17/1998','5/15/1998','4/23/1998',3,84.74,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11034,N'OLDWO',8,'4/20/1998','6/1/1998','4/27/1998',1,40.32,
	N'Old World Delicatessen',N'2743 Bering St.',N'Anchorage',
	N'AK',N'99508',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11035,N'SUPRD',2,'4/20/1998','5/18/1998','4/24/1998',2,0.17,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11036,N'DRACD',8,'4/20/1998','5/18/1998','4/22/1998',3,149.47,
	N'Drachenblut Delikatessen',N'Walserweg 21',N'Aachen',
	NULL,N'52066',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11037,N'GODOS',7,'4/21/1998','5/19/1998','4/27/1998',1,3.20,
	N'Godos Cocina Típica',N'C/ Romero, 33',N'Sevilla',
	NULL,N'41101',N'Spain')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11038,N'SUPRD',1,'4/21/1998','5/19/1998','4/30/1998',2,29.59,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11039,N'LINOD',1,'4/21/1998','5/19/1998',NULL,2,65.00,
	N'LINO-Delicateses',N'Ave. 5 de Mayo Porlamar',N'I. de Margarita',
	N'Nueva Esparta',N'4980',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11040,N'GREAL',4,'4/22/1998','5/20/1998',NULL,3,18.84,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11041,N'CHOPS',3,'4/22/1998','5/20/1998','4/28/1998',2,48.22,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11042,N'COMMI',2,'4/22/1998','5/6/1998','5/1/1998',1,29.99,
	N'Comércio Mineiro',N'Av. dos Lusíadas, 23',N'Sao Paulo',
	N'SP',N'05432-043',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11043,N'SPECD',5,'4/22/1998','5/20/1998','4/29/1998',2,8.80,
	N'Spécialités du monde',N'25, rue Lauriston',N'Paris',
	NULL,N'75016',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11044,N'WOLZA',4,'4/23/1998','5/21/1998','5/1/1998',1,8.72,
	N'Wolski Zajazd',N'ul. Filtrowa 68',N'Warszawa',
	NULL,N'01-012',N'Poland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11045,N'BOTTM',6,'4/23/1998','5/21/1998',NULL,2,70.58,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11046,N'WANDK',8,'4/23/1998','5/21/1998','4/24/1998',2,71.64,
	N'Die Wandernde Kuh',N'Adenauerallee 900',N'Stuttgart',
	NULL,N'70563',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11047,N'EASTC',7,'4/24/1998','5/22/1998','5/1/1998',3,46.62,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11048,N'BOTTM',7,'4/24/1998','5/22/1998','4/30/1998',3,24.12,
	N'Bottom-Dollar Markets',N'23 Tsawassen Blvd.',N'Tsawassen',
	N'BC',N'T2F 8M4',N'Canada')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11049,N'GOURL',3,'4/24/1998','5/22/1998','5/4/1998',1,8.34,
	N'Gourmet Lanchonetes',N'Av. Brasil, 442',N'Campinas',
	N'SP',N'04876-786',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11050,N'FOLKO',8,'4/27/1998','5/25/1998','5/5/1998',2,59.41,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11051,N'LAMAI',7,'4/27/1998','5/25/1998',NULL,3,2.79,
	N'La maison d''Asie',N'1 rue Alsace-Lorraine',N'Toulouse',
	NULL,N'31000',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11052,N'HANAR',3,'4/27/1998','5/25/1998','5/1/1998',1,67.26,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11053,N'PICCO',2,'4/27/1998','5/25/1998','4/29/1998',2,53.05,
	N'Piccolo und mehr',N'Geislweg 14',N'Salzburg',
	NULL,N'5020',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11054,N'CACTU',8,'4/28/1998','5/26/1998',NULL,1,0.33,
	N'Cactus Comidas para llevar',N'Cerrito 333',N'Buenos Aires',
	NULL,N'1010',N'Argentina')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11055,N'HILAA',7,'4/28/1998','5/26/1998','5/5/1998',2,120.92,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11056,N'EASTC',8,'4/28/1998','5/12/1998','5/1/1998',2,278.96,
	N'Eastern Connection',N'35 King George',N'London',
	NULL,N'WX3 6FW',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11057,N'NORTS',3,'4/29/1998','5/27/1998','5/1/1998',3,4.13,
	N'North/South',N'South House 300 Queensbridge',N'London',
	NULL,N'SW7 1RZ',N'UK')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11058,N'BLAUS',9,'4/29/1998','5/27/1998',NULL,3,31.14,
	N'Blauer See Delikatessen',N'Forsterstr. 57',N'Mannheim',
	NULL,N'68306',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11059,N'RICAR',2,'4/29/1998','6/10/1998',NULL,2,85.80,
	N'Ricardo Adocicados',N'Av. Copacabana, 267',N'Rio de Janeiro',
	N'RJ',N'02389-890',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11060,N'FRANS',2,'4/30/1998','5/28/1998','5/4/1998',2,10.98,
	N'Franchi S.p.A.',N'Via Monte Bianco 34',N'Torino',
	NULL,N'10100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11061,N'GREAL',4,'4/30/1998','6/11/1998',NULL,3,14.01,
	N'Great Lakes Food Market',N'2732 Baker Blvd.',N'Eugene',
	N'OR',N'97403',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11062,N'REGGC',4,'4/30/1998','5/28/1998',NULL,2,29.93,
	N'Reggiani Caseifici',N'Strada Provinciale 124',N'Reggio Emilia',
	NULL,N'42100',N'Italy')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11063,N'HUNGO',3,'4/30/1998','5/28/1998','5/6/1998',2,81.73,
	N'Hungry Owl All-Night Grocers',N'8 Johnstown Road',N'Cork',
	N'Co. Cork',NULL,N'Ireland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11064,N'SAVEA',1,'5/1/1998','5/29/1998','5/4/1998',1,30.09,
	N'Save-a-lot Markets',N'187 Suffolk Ln.',N'Boise',
	N'ID',N'83720',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11065,N'LILAS',8,'5/1/1998','5/29/1998',NULL,1,12.91,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11066,N'WHITC',7,'5/1/1998','5/29/1998','5/4/1998',2,44.72,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11067,N'DRACD',1,'5/4/1998','5/18/1998','5/6/1998',2,7.98,
	N'Drachenblut Delikatessen',N'Walserweg 21',N'Aachen',
	NULL,N'52066',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11068,N'QUEEN',8,'5/4/1998','6/1/1998',NULL,2,81.75,
	N'Queen Cozinha',N'Alameda dos Canàrios, 891',N'Sao Paulo',
	N'SP',N'05487-020',N'Brazil')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11069,N'TORTU',1,'5/4/1998','6/1/1998','5/6/1998',2,15.67,
	N'Tortuga Restaurante',N'Avda. Azteca 123',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11070,N'LEHMS',2,'5/5/1998','6/2/1998',NULL,1,136.00,
	N'Lehmanns Marktstand',N'Magazinweg 7',N'Frankfurt a.M.',
	NULL,N'60528',N'Germany')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11071,N'LILAS',1,'5/5/1998','6/2/1998',NULL,1,0.93,
	N'LILA-Supermercado',N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',N'Barquisimeto',
	N'Lara',N'3508',N'Venezuela')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11072,N'ERNSH',4,'5/5/1998','6/2/1998',NULL,2,258.64,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11073,N'PERIC',2,'5/5/1998','6/2/1998',NULL,2,24.95,
	N'Pericles Comidas clásicas',N'Calle Dr. Jorge Cash 321',N'México D.F.',
	NULL,N'05033',N'Mexico')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11074,N'SIMOB',7,'5/6/1998','6/3/1998',NULL,2,18.44,
	N'Simons bistro',N'Vinbæltet 34',N'Kobenhavn',
	NULL,N'1734',N'Denmark')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11075,N'RICSU',8,'5/6/1998','6/3/1998',NULL,2,6.19,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11076,N'BONAP',4,'5/6/1998','6/3/1998',NULL,2,38.28,
	N'Bon app''',N'12, rue des Bouchers',N'Marseille',
	NULL,N'13008',N'France')
INSERT INTO "Orders"
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (11077,N'RATTC',1,'5/6/1998','6/3/1998',NULL,2,8.53,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
go
set identity_insert "Orders" off
go
ALTER TABLE "Orders" CHECK CONSTRAINT ALL
go
set quoted_identifier on
go
set identity_insert "Products" on
go
ALTER TABLE "Products" NOCHECK CONSTRAINT ALL
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(1,'Chai',1,1,'10 boxes x 20 bags',18,39,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(2,'Chang',1,1,'24 - 12 oz bottles',19,17,40,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10,13,70,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(4,'Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22,53,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(5,'Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35,0,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(6,'Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25,120,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(7,'Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30,15,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40,6,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97,29,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(10,'Ikura',4,8,'12 - 200 ml jars',31,31,0,0,0)
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(11,'Queso Cabrales',5,4,'1 kg pkg.',21,22,30,30,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38,86,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(13,'Konbu',6,8,'2 kg box',6,24,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(14,'Tofu',6,7,'40 - 100 g pkgs.',23.25,35,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5,39,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(16,'Pavlova',7,3,'32 - 500 g boxes',17.45,29,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(17,'Alice Mutton',7,6,'20 - 1 kg tins',39,0,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5,42,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2,25,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(20,'Sir Rodney''s Marmalade',8,3,'30 gift boxes',81,40,0,0,0)
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(21,'Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10,3,40,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(22,'Gustaf''s Knäckebröd',9,5,'24 - 500 g pkgs.',21,104,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(23,'Tunnbröd',9,5,'12 - 250 g pkgs.',9,61,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.5,20,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14,76,0,30,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.23,15,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9,49,0,30,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.6,26,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79,0,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89,10,0,15,0)
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5,0,70,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32,9,40,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(33,'Geitost',15,4,'500 g',2.5,112,0,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14,111,0,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18,20,0,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(36,'Inlagd Sill',17,8,'24 - 250 g  jars',19,112,0,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26,11,50,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(38,'Côte de Blaye',18,1,'12 - 75 cl bottles',263.5,17,0,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(39,'Chartreuse verte',18,1,'750 cc per bottle',18,69,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4,123,0,30,0)
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(41,'Jack''s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65,85,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14,26,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46,17,10,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45,27,0,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(45,'Rogede sild',21,8,'1k pkg.',9.5,5,70,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(46,'Spegesild',21,8,'4 - 450 g glasses',12,95,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5,36,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(48,'Chocolade',22,3,'10 pkgs.',12.75,15,70,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20,10,60,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25,65,0,30,0)
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53,20,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(52,'Filo Mix',24,5,'16 - 2 kg boxes',7,38,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(53,'Perth Pasties',24,6,'48 pieces',32.8,0,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(54,'Tourtière',25,6,'16 pies',7.45,21,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(55,'Pâté chinois',25,6,'24 boxes x 2 pies',24,115,0,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38,21,10,30,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5,36,0,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(58,'Escargots de Bourgogne',27,8,'24 pieces',13.25,62,0,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(59,'Raclette Courdavault',28,4,'5 kg pkg.',55,79,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34,19,0,0,0)
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(61,'Sirop d''érable',29,2,'24 - 500 ml bottles',28.5,113,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(62,'Tarte au sucre',29,3,'48 pies',49.3,17,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(63,'Vegie-spread',7,2,'15 - 625 g jars',43.9,24,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(64,'Wimmers gute Semmelknödel',12,5,'20 bags x 4 pieces',33.25,22,80,30,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05,76,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17,4,100,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14,52,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5,6,10,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36,26,0,15,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(70,'Outback Lager',7,1,'24 - 355 ml bottles',15,15,10,30,0)
go
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(71,'Flotemysost',15,4,'10 - 500 g pkgs.',21.5,26,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8,14,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(73,'Röd Kaviar',17,8,'24 - 150 g jars',15,101,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(74,'Longlife Tofu',4,7,'5 kg pkg.',10,4,20,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(75,'Rhönbräu Klosterbier',12,1,'24 - 0.5 l bottles',7.75,125,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(76,'Lakkalikööri',23,1,'500 ml',18,57,0,20,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") VALUES(77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13,32,0,15,0)
go
set identity_insert "Products" off
go
ALTER TABLE "Products" CHECK CONSTRAINT ALL
go
set quoted_identifier on
go
set identity_insert "Shippers" on
go
ALTER TABLE "Shippers" NOCHECK CONSTRAINT ALL
go
INSERT "Shippers"("ShipperID","CompanyName","Phone") VALUES(1,'Speedy Express','(503) 555-9831')
INSERT "Shippers"("ShipperID","CompanyName","Phone") VALUES(2,'United Package','(503) 555-3199')
INSERT "Shippers"("ShipperID","CompanyName","Phone") VALUES(3,'Federal Shipping','(503) 555-9931')
go
set identity_insert "Shippers" off
go
ALTER TABLE "Shippers" CHECK CONSTRAINT ALL
go
set quoted_identifier on
go
set identity_insert "Suppliers" on
go
ALTER TABLE "Suppliers" NOCHECK CONSTRAINT ALL
go
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',NULL,'EC1 4SD','UK','(171) 555-2222',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822',NULL,'#CAJUN.HTM#')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(3,'Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai Musashino-shi','Tokyo',NULL,'100','Japan','(03) 3555-5011',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(6,'Mayumi''s','Mayumi Ohno','Marketing Representative','92 Setsuko Chuo-ku','Osaka',NULL,'545','Japan','(06) 431-7877',NULL,'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St. Moonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(8,'Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','29 King''s Way','Manchester',NULL,'M14 GSD','UK','(161) 555-4448',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(9,'PB Knäckebröd AB','Lars Peterson','Sales Agent','Kaloadagatan 13','Göteborg',NULL,'S-345 67','Sweden','031-987 65 43','031-987 65 91',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av. das Americanas 12.890','Sao Paulo',NULL,'5442','Brazil','(11) 555 4640',NULL,NULL)
go
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Sales Manager','Tiergartenstraße 5','Berlin',NULL,'10785','Germany','(010) 9984510',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','International Marketing Mgr.','Bogenallee 51','Frankfurt',NULL,'60439','Germany','(069) 992755',NULL,'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinator Foreign Markets','Frahmredder 112a','Cuxhaven',NULL,'27478','Germany','(04721) 8713','(04721) 8714',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(14,'Formaggi Fortini s.r.l.','Elio Rossi','Sales Representative','Viale Dante, 75','Ravenna',NULL,'48100','Italy','(0544) 60323','(0544) 60603','#FORMAGGI.HTM#')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(15,'Norske Meierier','Beate Vileid','Marketing Manager','Hatlevegen 5','Sandvika',NULL,'1320','Norway','(0)2-953010',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(16,'Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','3400 - 8th Avenue Suite 210','Bend','OR','97101','USA','(503) 555-9931',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(17,'Svensk Sjöföda AB','Michael Björn','Sales Representative','Brovallavägen 231','Stockholm',NULL,'S-123 45','Sweden','08-123 45 67',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(18,'Aux joyeux ecclésiastiques','Guylène Nodier','Sales Manager','203, Rue des Francs-Bourgeois','Paris',NULL,'75004','France','(1) 03.83.00.68','(1) 03.83.00.62',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(19,'New England Seafood Cannery','Robb Merchant','Wholesale Account Agent','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','MA','02134','USA','(617) 555-3267','(617) 555-3389',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(20,'Leka Trading','Chandra Leka','Owner','471 Serangoon Loop, Suite #402','Singapore',NULL,'0512','Singapore','555-8787',NULL,NULL)
go
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(21,'Lyngbysild','Niels Petersen','Sales Manager','Lyngbysild Fiskebakken 10','Lyngby',NULL,'2800','Denmark','43844108','43844115',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(22,'Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Verkoop Rijnweg 22','Zaandam',NULL,'9999 ZZ','Netherlands','(12345) 1212','(12345) 1210',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(23,'Karkki Oy','Anne Heikkonen','Product Manager','Valtakatu 12','Lappeenranta',NULL,'53120','Finland','(953) 10956',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(24,'G''day, Mate','Wendy Mackenzie','Sales Representative','170 Prince Edward Parade Hunter''s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873','G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(25,'Ma Maison','Jean-Guy Lauzon','Marketing Manager','2960 Rue St. Laurent','Montréal','Québec','H1J 1C3','Canada','(514) 555-9022',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Order Administrator','Via dei Gelsomini, 153','Salerno',NULL,'84100','Italy','(089) 6547665','(089) 6547667',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(27,'Escargots Nouveaux','Marie Delamare','Sales Manager','22, rue H. Voiron','Montceau',NULL,'71300','France','85.57.00.07',NULL,NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(28,'Gai pâturage','Eliane Noz','Sales Representative','Bat. B 3, rue des Alpes','Annecy',NULL,'74000','France','38.76.98.06','38.76.98.58',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax","HomePage") VALUES(29,'Forêts d''érables','Chantal Goulet','Accounting Manager','148 rue Chasseur','Ste-Hyacinthe','Québec','J2S 7S8','Canada','(514) 555-2955','(514) 555-2921',NULL)
go
set identity_insert "Suppliers" off
go
ALTER TABLE "Suppliers" CHECK CONSTRAINT ALL
go


/* The following adds stored procedures */

if exists (select * from sysobjects where id = object_id('dbo.CustOrdersDetail'))
    drop procedure dbo.CustOrdersDetail
GO

CREATE PROCEDURE CustOrdersDetail @OrderID int
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(int, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(money, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID and Od.OrderID = @OrderID
go


if exists (select * from sysobjects where id = object_id('dbo.CustOrdersOrders'))
	drop procedure dbo.CustOrdersOrders
GO

CREATE PROCEDURE CustOrdersOrders @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID
GO


if exists (select * from sysobjects where id = object_id('dbo.CustOrderHist') and sysstat & 0xf = 4)
	drop procedure dbo.CustOrderHist
GO
CREATE PROCEDURE CustOrderHist @CustomerID nchar(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [Order Details] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName
GO

if exists (select * from sysobjects where id = object_id('dbo.SalesByCategory') and sysstat & 0xf = 4)
	drop procedure dbo.SalesByCategory
GO
CREATE PROCEDURE SalesByCategory
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT ProductName,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderID = O.OrderID 
	AND OD.ProductID = P.ProductID 
	AND P.CategoryID = C.CategoryID
	AND C.CategoryName = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName
GO


/* The follwing adds tables to the Northwind database */


CREATE TABLE [dbo].[CustomerCustomerDemo] 
	([CustomerID] nchar (5) NOT NULL,
	[CustomerTypeID] [nchar] (10) NOT NULL
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[CustomerDemographics] 
	([CustomerTypeID] [nchar] (10) NOT NULL ,
	[CustomerDesc] [ntext] NULL 
)  ON [PRIMARY] 
GO		
	
CREATE TABLE [dbo].[Region] 
	( [RegionID] [int] NOT NULL ,
	[RegionDescription] [nchar] (50) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Territories] 
	([TerritoryID] [nvarchar] (20) NOT NULL ,
	[TerritoryDescription] [nchar] (50) NOT NULL ,
        [RegionID] [int] NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EmployeeTerritories] 
	([EmployeeID] [int] NOT NULL,
	[TerritoryID] [nvarchar] (20) NOT NULL 
) ON [PRIMARY]

-- The following adds data to the tables just created.

Insert Into Region Values (1,'Eastern')
Insert Into Region Values (2,'Western')
Insert Into Region Values (3,'Northern')
Insert Into Region Values (4,'Southern')
Go

Insert Into Territories Values ('01581','Westboro',1)
Insert Into Territories Values ('01730','Bedford',1)
Insert Into Territories Values ('01833','Georgetow',1)
Insert Into Territories Values ('02116','Boston',1)
Insert Into Territories Values ('02139','Cambridge',1)
Insert Into Territories Values ('02184','Braintree',1)
Insert Into Territories Values ('02903','Providence',1)
Insert Into Territories Values ('03049','Hollis',3)
Insert Into Territories Values ('03801','Portsmouth',3)
Insert Into Territories Values ('06897','Wilton',1)
Insert Into Territories Values ('07960','Morristown',1)
Insert Into Territories Values ('08837','Edison',1)
Insert Into Territories Values ('10019','New York',1)
Insert Into Territories Values ('10038','New York',1)
Insert Into Territories Values ('11747','Mellvile',1)
Insert Into Territories Values ('14450','Fairport',1)
Insert Into Territories Values ('19428','Philadelphia',3)
Insert Into Territories Values ('19713','Neward',1)
Insert Into Territories Values ('20852','Rockville',1)
Insert Into Territories Values ('27403','Greensboro',1)
Insert Into Territories Values ('27511','Cary',1)
Insert Into Territories Values ('29202','Columbia',4)
Insert Into Territories Values ('30346','Atlanta',4)
Insert Into Territories Values ('31406','Savannah',4)
Insert Into Territories Values ('32859','Orlando',4)
Insert Into Territories Values ('33607','Tampa',4)
Insert Into Territories Values ('40222','Louisville',1)
Insert Into Territories Values ('44122','Beachwood',3)
Insert Into Territories Values ('45839','Findlay',3)
Insert Into Territories Values ('48075','Southfield',3)
Insert Into Territories Values ('48084','Troy',3)
Insert Into Territories Values ('48304','Bloomfield Hills',3)
Insert Into Territories Values ('53404','Racine',3)
Insert Into Territories Values ('55113','Roseville',3)
Insert Into Territories Values ('55439','Minneapolis',3)
Insert Into Territories Values ('60179','Hoffman Estates',2)
Insert Into Territories Values ('60601','Chicago',2)
Insert Into Territories Values ('72716','Bentonville',4)
Insert Into Territories Values ('75234','Dallas',4)
Insert Into Territories Values ('78759','Austin',4)
Insert Into Territories Values ('80202','Denver',2)
Insert Into Territories Values ('80909','Colorado Springs',2)
Insert Into Territories Values ('85014','Phoenix',2)
Insert Into Territories Values ('85251','Scottsdale',2)
Insert Into Territories Values ('90405','Santa Monica',2)
Insert Into Territories Values ('94025','Menlo Park',2)
Insert Into Territories Values ('94105','San Francisco',2)
Insert Into Territories Values ('95008','Campbell',2)
Insert Into Territories Values ('95054','Santa Clara',2)
Insert Into Territories Values ('95060','Santa Cruz',2)
Insert Into Territories Values ('98004','Bellevue',2)
Insert Into Territories Values ('98052','Redmond',2)
Insert Into Territories Values ('98104','Seattle',2)
Go

Insert Into EmployeeTerritories Values (1,'06897')
Insert Into EmployeeTerritories Values (1,'19713')
Insert Into EmployeeTerritories Values (2,'01581')
Insert Into EmployeeTerritories Values (2,'01730')
Insert Into EmployeeTerritories Values (2,'01833')
Insert Into EmployeeTerritories Values (2,'02116')
Insert Into EmployeeTerritories Values (2,'02139')
Insert Into EmployeeTerritories Values (2,'02184')
Insert Into EmployeeTerritories Values (2,'40222')
Insert Into EmployeeTerritories Values (3,'30346')
Insert Into EmployeeTerritories Values (3,'31406')
Insert Into EmployeeTerritories Values (3,'32859')
Insert Into EmployeeTerritories Values (3,'33607')
Insert Into EmployeeTerritories Values (4,'20852')
Insert Into EmployeeTerritories Values (4,'27403')
Insert Into EmployeeTerritories Values (4,'27511')
Insert Into EmployeeTerritories Values (5,'02903')
Insert Into EmployeeTerritories Values (5,'07960')
Insert Into EmployeeTerritories Values (5,'08837')
Insert Into EmployeeTerritories Values (5,'10019')
Insert Into EmployeeTerritories Values (5,'10038')
Insert Into EmployeeTerritories Values (5,'11747')
Insert Into EmployeeTerritories Values (5,'14450')
Insert Into EmployeeTerritories Values (6,'85014')
Insert Into EmployeeTerritories Values (6,'85251')
Insert Into EmployeeTerritories Values (6,'98004')
Insert Into EmployeeTerritories Values (6,'98052')
Insert Into EmployeeTerritories Values (6,'98104')
Insert Into EmployeeTerritories Values (7,'60179')
Insert Into EmployeeTerritories Values (7,'60601')
Insert Into EmployeeTerritories Values (7,'80202')
Insert Into EmployeeTerritories Values (7,'80909')
Insert Into EmployeeTerritories Values (7,'90405')
Insert Into EmployeeTerritories Values (7,'94025')
Insert Into EmployeeTerritories Values (7,'94105')
Insert Into EmployeeTerritories Values (7,'95008')
Insert Into EmployeeTerritories Values (7,'95054')
Insert Into EmployeeTerritories Values (7,'95060')
Insert Into EmployeeTerritories Values (8,'19428')
Insert Into EmployeeTerritories Values (8,'44122')
Insert Into EmployeeTerritories Values (8,'45839')
Insert Into EmployeeTerritories Values (8,'53404')
Insert Into EmployeeTerritories Values (9,'03049')
Insert Into EmployeeTerritories Values (9,'03801')
Insert Into EmployeeTerritories Values (9,'48075')
Insert Into EmployeeTerritories Values (9,'48084')
Insert Into EmployeeTerritories Values (9,'48304')
Insert Into EmployeeTerritories Values (9,'55113')
Insert Into EmployeeTerritories Values (9,'55439')
GO



--  The following adds constraints to the Northwind database

ALTER TABLE CustomerCustomerDemo
	ADD CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY  NONCLUSTERED 
	(
		[CustomerID],
		[CustomerTypeID]
	) ON [PRIMARY]
GO

ALTER TABLE CustomerDemographics
	ADD CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY  NONCLUSTERED 
	(
		[CustomerTypeID]
	) ON [PRIMARY]
GO

ALTER TABLE CustomerCustomerDemo
	ADD CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY 
	(
		[CustomerTypeID]
	) REFERENCES [dbo].[CustomerDemographics] (
		[CustomerTypeID]
	)
GO

ALTER TABLE CustomerCustomerDemo
	ADD CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY
	(
		[CustomerID]
	) REFERENCES [dbo].[Customers] (
		[CustomerID]
	)
GO

ALTER TABLE Region
	ADD CONSTRAINT [PK_Region] PRIMARY KEY  NONCLUSTERED 
	(
		[RegionID]
	)  ON [PRIMARY] 
GO

ALTER TABLE Territories
	ADD CONSTRAINT [PK_Territories] PRIMARY KEY  NONCLUSTERED 
	(
		[TerritoryID]
	)  ON [PRIMARY] 
GO

ALTER TABLE Territories
	ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY 
	(
		[RegionID]
	) REFERENCES [dbo].[Region] (
		[RegionID]
	)
GO

ALTER TABLE EmployeeTerritories
	ADD CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY  NONCLUSTERED 
	(
		[EmployeeID],
		[TerritoryID]
	) ON [PRIMARY]
GO

ALTER TABLE EmployeeTerritories
	ADD CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY 
	(
		[EmployeeID]
	) REFERENCES [dbo].[Employees] (
		[EmployeeID]
	)
GO


ALTER TABLE EmployeeTerritories	
	ADD CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY 
	(
		[TerritoryID]
	) REFERENCES [dbo].[Territories] (
		[TerritoryID]
	)
GO