
select 

      [prod].[ProductNumber]
	  , count(*) [Sale Count] 







from [Sales].[SalesOrderDetail] [sod] with (nolock)
join [Production].[Product]	[prod] with (nolock) 
	on [sod].[ProductID] = [prod].[ProductID]

 
join [sales].[SalesOrderHeader] [soh] 
	on [sod].[SalesOrderID] = [soh].[SalesOrderID]

	where [prod].[Color] = 'red'
	
group by 
   [prod].ProductNumber

having count(*) >=400