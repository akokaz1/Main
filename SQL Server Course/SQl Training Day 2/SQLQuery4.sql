use AdventureWorks2014
select 
	 [prod].[name] [Product Name]
	,cast([prod].[listprice] as decimal(38,2))
	,cast([prod].[standardcost])
	,[prod].[color]
	,[sod].[carriertrackingnumber]
	,[sod].[orderqty]
	,[sod].[linetotal]
	,[sod].[unitprice]
	,cast([soh].[OrderDate] as date) [Order Date]
	,cast([soh].[ShipDate] as date) [Ship Date]
	,datename(ww,[soh].[ShipDate])
	,convert(date,[soh].[ShipDate],1)
	,DATEADD(month, DATEDIFF(month, 0,[soh].[OrderDate] ), 0) AS StartOfMonth
	,DATEFROMPARTS(YEAR([soh].[OrderDate]),MONTH([soh].[OrderDate]),1)
/*  from [Sales].[SalesOrderDetail], [Production].[Product]
where [Sales].[SalesOrderDetail].[ProductID] = [production].[product].[ProductID]
*/

from [Sales].[SalesOrderDetail] [sod] with (nolock)
join [Production].[Product]	[prod] with (nolock) 
	on [sod].[ProductID] = [prod].[ProductID]

 
join [sales].[SalesOrderHeader] [soh] 
	on [sod].[SalesOrderID] = [soh].[SalesOrderID]
	
	where 1=1
	
