select 

GETDATE() as date
,datename(dw,getdate()) as [day name]
,DATEpart(dw,GETDATE()) as [day number of week]
,datename(mm,getdate())	as [month]
,datename(qq,getdate())	as [quarter]
,datepart(dy,getdate())	as [day number of year]
