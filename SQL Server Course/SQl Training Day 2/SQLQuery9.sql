select 

	 [SalesOrderID]
	,[SalesOrderDetailID]
	,lead([SalesOrderDetailID]) over (partition by [salesorderid] order by [salesorderdetailID] asc)
	,[LineTotal]
	,[ProductID]
	,FIRST_VALUE([SalesOrderDetailID]) over (partition by [salesorderid] order by [salesorderdetailID] asc)
	,LAST_VALUE([SalesOrderDetailID]) over (partition by [salesorderid] order by [salesorderdetailID] asc)





from [Sales].[SalesOrderDetail]

order by 1,2 