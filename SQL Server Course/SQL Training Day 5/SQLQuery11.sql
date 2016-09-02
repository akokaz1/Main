
--declare @input sql_variant
--declare @output sql_variant 

--if 
--@input is null 
--begin 
--	set @output = '' 

--end
--  else
--begin
--	set @output = @input
--end




create function LF_isnull(@input sql_variant,@repl sql_variant)
returns sql_variant 
as 
begin
  declare @out sql_variant
	if @input is null
	begin
	set @out = @repl
	end
	else
	begin
	set @out= @input
	end
return @out
end



select 
 listprice

 from Production.Product

 --CREATING TABLE VALUE FUNCTION

 go 
 create function dev.fn_GetSalesbyDate(
	@startdate date,
	@enddate date
)

returns table 
as 
return(
select 
*
from Sales.SalesOrderHeader
where OrderDate between @startdate and @enddate
)


select *
from Sales.SalesOrderDetail sod
inner join dev.fn_GetSalesbyDate('2011-01-01','2014-12-31') sbd
on sod.SalesOrderID = sbd.SalesOrderID