use AdventureWorks2014

select
	*
	from [Production].[Product] with (nolock)
	where ProductID = 1