with dedupe
as
(
SELECT *
		,ROW_NUMBER() over (partition by id,lname,fname order by (select(''))) [Row number]



from dbo.problemtable

)

delete from dedupe 
where [Row number]> 1
go
select * from dbo.problemtable