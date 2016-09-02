--if OBJECT_ID('AdventureWorks2014.dev.Sales') is not null
--begin
--drop table AdventureWorks2014.dev.sales 
--end

--create table dev.Sales(
--salesID int not null identity(1,1) primary key,
--salesGUID uniqueidentifier not null default newid(),
--SalesOrderID bigint,
--UnitPrice money,
--OrderQty int,
--Name varchar(255),
--Color varchar(20),
--Size char(2),
--ProductWeight float
--)

insert into dev.sales(
 UnitPrice 
,SalesOrderID 
,OrderQty
,Name
,Color
,Size 	
,ProductWeight
)
begin tran
delete from dev.sales

output deleted.*



where orderqty >= 2 

select * from dev.sales

	rollback tran
dbcc opentran()