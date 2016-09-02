use KBD
declare @colsearch varchar(50) ='e-mail'
select 
 s.[name]+'.'+
 t.[name]
 ,c.name

 from sys.tables t 

	inner join sys.columns c
	on t.object_id = c.object_id

	inner join sys.schemas s
	on t.schema_id = s.schema_id

	where cast(create_date as date) = CAST(getdate() as date)
	and c.name like %@colsearch%

