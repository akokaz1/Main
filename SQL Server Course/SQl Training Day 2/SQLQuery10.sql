select


	name
	,isnull(color,'NA') Color
	,listprice
	,rank() over (partition by color order by listprice asc)
	,dense_rank() over (partition by color order by listprice asc)  
	,ntile(4) over (order by listprice asc)








from Production.Product 