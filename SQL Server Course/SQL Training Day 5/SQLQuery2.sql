use AdventureWorks2014
go	

--create table dev.entities
--(
--eid int identity(1,1),
--ename varchar(10)
--)


--create proc dev.addEntity
--	@ename varchar(10),
--	@id int output
--as 

--set nocount on 
--insert into dev.entities
--	(ename)

--	values (@ename)

--select @id=SCOPE_IDENTITY()

begin tran
declare @newidadded int
exec dev.addEntity 'loz', @newidadded output
select @newidadded

insert into caddress
(custid, pcode)
values
(@newidadded, 'sa1 5bh')
commit 

--create table caddress
--(
--addressid int identity(1,1),
--custid int,
--pcode varchar(10)
--)