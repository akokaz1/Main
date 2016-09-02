begin tran

	begin try 
	print 'hello'
	select 1/0

	end try 


 begin catch
 rollback tran 
	insert into dev.errorlog
	(who,
	procname,
	errmsg,
	linenumber,
	errnumber
	)
	select 
	SUSER_NAME()
	,ERROR_PROCEDURE()
	,ERROR_MESSAGE()
	,ERROR_LINE()
	,ERROR_NUMBER()

  end catch
commit tran

select @@ERROR
