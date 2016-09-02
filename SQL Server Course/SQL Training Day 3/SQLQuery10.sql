;with cte
as 
(
select 
[Emp ID],[man ID], 1 as [employeeLevel]

from KBD.dbo.ARSENAL 
where [man ID] = ''
union all 

select  
a.[Emp ID],a.[man ID], [EmployeeLevel] + 1
from KBD.dbo.ARSENAL a
inner join cte r 
on r.[emp ID] = a.[man ID]
)

select   ARSENAL.[Emp ID]
		,[emp name]
		,employeeLevel
		,[ARSENAL].[man ID]
		,(select [emp name] from ARSENAL
		where [Emp ID]= cte.[man ID]) as manager
		 from cte
inner join dbo.ARSENAL 
on cte.[Emp ID] = dbo.ARSENAL.[Emp ID]





