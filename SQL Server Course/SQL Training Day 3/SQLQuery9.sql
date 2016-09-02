declare @today date = '1978-09-12'
;with dt
as
(
select @today [date]
	,datename(dw,@today) as [day of week]
	,datename(dayofyear,@today) as [day of year]
	,datepart(dw,@today) as [weekday]
	,eomonth(@today) as [end of month]
	,datepart(qq,@today) as [quarter]
union all 
select dateadd(dd,1,dt.[date]) [date]
	  ,datename(dw,dateadd(dd,1,dt.[date])) as [day of week]
	  ,datename(dayofyear,dateadd(dd,1,dt.[date])) as [day of year]
	  ,datepart(dw,dateadd(dd,1,dt.[date])) as [weekday]
	  ,eomonth(dateadd(dd,1,dt.[date])) as [end of month]
	  ,datepart(qq,dateadd(dd,1,dt.[date])) as [quarter]
from dt
where dt.date <=cast(getdate() as date)
)
select * from dt
option (maxrecursion 0)