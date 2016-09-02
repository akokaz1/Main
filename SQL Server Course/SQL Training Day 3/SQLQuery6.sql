with cte 
as (

select   cast(sod.UnitPrice as money) as [unit price]
		,cast(sod.SalesOrderID as bigint) as [sales order id]
		,cast(sod.OrderQty as int) as [order quantity]
		,ProductID 

from sales.SalesOrderDetail sod
),cte2
as (
select
		 cast(p.[Name] as varchar(255)) as [name]
		,cast(p.[Color] as varchar(20)) as [color]
		,cast(p.[Size] as char(2)) [size]
		,cast(p.[Weight] as float) as [weight]
		,ProductID

from Production.Product p 
)
select 
		name
		,color
		,size
		,weight
		,[unit price]
		,[sales order id]
		,[order quantity]



 from cte
inner join cte2
           on cte.ProductID = cte2.ProductID