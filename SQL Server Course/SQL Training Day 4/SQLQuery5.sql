alter proc usp_addEmployee
@empID varchar(50),
@empName varchar(50),
@manID varchar(50)

as
declare @known bit = 0
select @known = 1
where exists (

select * 
from dbo.ARSENAL
where [Emp ID]=@empID
)

if @known = 0
begin 


insert into kbd.dbo.ARSENAL
values (@empID,@empName,@manID)

end
else 
begin
 print 'wot u playin at?'


end