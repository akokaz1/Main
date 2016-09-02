create view dev.MyView   --creates a view that can be used on excel, apps, websites...
as 
select 

    Color
	,count(*) ProdCount
from Production.Product

where color in ('blue','red','yellow')

group by Color	

having count(*) > 30