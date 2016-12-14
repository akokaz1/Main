use AdventureWorks2014
go


alter function dev.fn_MSTVFGetSalesbyDate(
	@startdate date,
	@enddate date = null
)

returns @sbd table (salesorderID int, orderdate date) 
as 
begin

	
--if @enddate is null
--	begin
--	set @enddate = getdate()
--	end


if @startdate > @enddate
	begin
	set @startdate = dateadd(mm,-2,@enddate)
	return
	end
insert into @sbd
select 
	 SalesOrderID
	,OrderDate
from Sales.SalesOrderHeader
where OrderDate between @startdate and @enddate

return 
end

select *
from dev.fn_MSTVFGetSalesbyDate('2011-05-01','2016-03-01')