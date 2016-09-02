if OBJECT_ID('tempdb.dbo.#salesagg') is not null
begin 
	drop table #salesagg
end


select   cast(sod.UnitPrice as money)
		,cast(sod.SalesOrderID as bigint)
		,cast(sod.OrderQty as int)
		,cast(p.[Name] as varchar(255))
		,cast(p.[Color] as varchar(20))
		,cast(p.[Size] as char(2))
		,cast(p.[Weight] as float)


--into #salesagg  --stage the data ready to index then aggregate
from Sales.SalesOrderDetail sod

inner join [Production].[Product] p
           on sod.ProductID = p.ProductID


--create the non clustered index on temp (clustered index first)

create clustered index CI_sales
on #salesagg(color)

create nonclustered index IX_salesprice
on #salesagg(unitprice)

--aggeregate the data

select 
		count(*) as [number of products]
		,sum(unitprice) as [Sum of unit price]
		,color 

from #salesagg

group by Color



