-- Cleansed DIM_Customer table--
SELECT c.CustomerKey AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName AS   [First Name]
      --,[MiddleName]
      ,c.LastName AS [Last Name]
	  , c.FirstName+''+c.LastName AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE
	  c.Gender WHEN 'M' Then 'Male' WHEN 'F' then 'Female' 
	  END AS Gender
	  ,c.Gender AS Test
	  --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
     -- ,[Phone]
      ,c.DateFirstPurchase AS DateFirstPurchase
     -- ,[CommuteDistance]
	 ,g.City AS [Customer City] -- joined customer city from geography table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN dbo.DimGeography as g
  ON g.GeographyKey= c.GeographyKey
  ORDER BY 
  CustomerKey ASC -- Ordered list by CustomerKey