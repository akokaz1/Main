select * from dev.sales

begin tran

delete from dev.Sales
output deleted.*

where color='multi'
rollback tran

--OUTPUT function shows what values were deleted or updated or what not.
create table dev.auditlog(
OldValue varchar(20),
NewValue varchar(20),
ChangeWhen datetime,
ChangeWho nvarchar(100)
)




begin tran
update dev.Sales
set color ='multi'
output deleted.color as oldvalue,
		inserted.color as newvalue,
		getdate() as ChangeWhen,
		SUSER_NAME() as ChangeWho
into dev.auditlog
where color= 'red'

commit tran

select * from dev.auditlog