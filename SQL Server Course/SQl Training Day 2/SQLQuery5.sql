select 
		[BusinessEntityID]
		,[FirstName]
		,[LastName]

from [Person].[Person] --11972
except
select
	 [ProductID]
	,[Name]
	,[ProductNumber]


from [Production].[Product]  --504

