use AdventureWorks2014
go 
declare @fname nvarchar(50)
set @fname = 'Jam'
set @fname = REPLACE(@fname,';','')
declare @lname nvarchar(50)
set @lname = 'ark'
declare @myquery nvarchar(max) =
'select 
* 
from person.person
where firstname like ''%'+@fname+'%''
and lastname like ''%'+@lname+'%'' 
'
print @myquery
exec(@myquery)
 