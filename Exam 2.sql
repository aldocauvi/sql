SELECT Min(i.TaxRate) AS Lowest FROM   Sales.SalesTaxRate i;

SELECT OrderDate,

SUM(TotalDue) AS TotalDueByOrderDate

FROM   Sales.SalesOrderHeader

WHERE  OrderDate >= '2005-07-01T00:00:00'       AND OrderDate < '2005-08-01T00:00:00' GROUP BY OrderDate;

SELECT TOP (5) AddressTypeID, ModifiedDate
FROM Person.AddressType
ORDER BY ModifiedDate DESC;

SELECT DISTINCT HireDate
FROM HumanResources.Employee
GROUP BY HireDate
ORDER BY HireDate DESC;

use AdventureWorks2017;
INSERT INTO Production.Location
(Name, CostRate, Availability)
VALUES ('Metal drawers', 15.70, 90.00);

SELECT Name, CostRate, Availability
FROM Production.Location
WHERE Name = 'Metal drawers';

 SELECT TaxType,
 AVG(TaxRate) AS AvgTaxRate
FROM Sales.SalesTaxRate
GROUP BY TaxType;

Select i.Shelf, p.Name,
sum(i.quantity) as total 
from Production.ProductInventory i 
inner join Production.Location p 
on  i.LocationID=p.LocationID 
group by Rollup(i.Shelf,p.Name);

SELECT TOP (10) PERCENT BillOfMaterialsID, StartDate
FROM Production.BillOfMaterials
ORDER BY StartDate DESC;

SELECT MAX(Rate) MaxHourlySalary,
MIN(Rate) MinHourlySalary
FROM HumanResources.EmployeePayHistory;

 DECLARE @MinStandardCost money,
 @MaxStandardCost money;
SELECT @MinStandardCost = MIN(StandardCost),
 @MaxStandardCost = MAX(StandardCost)
FROM Production.ProductCostHistory;
SELECT @MinStandardCost AS MinStandardCost,
 @MaxStandardCost AS MaxStandardCost;

  DECLARE @AverageRate money,
 @EndOfDayRate money;
SELECT @AverageRate = MAX(AverageRate),
 @EndOfDayRate = MAX(EndOfDayRate)
FROM Sales.CurrencyRate;
SELECT @AverageRate AS AverageRate,
 @EndOfDayRate AS EndOfDayRate;