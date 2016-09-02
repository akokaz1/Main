;with OP   -- creates a table just in memory
as(
select
	dense_rank() over (order by listprice desc) RN
	,*

from Production.Product 

)

--select * from OP
--where RN = 2     --good way to find out 2nd most or 3rd most etc value

select * from op



