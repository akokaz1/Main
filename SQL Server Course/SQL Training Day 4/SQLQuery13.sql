create proc dev.usp_Getpeople
	 @firstname varchar(50)
	,@persontype char(2)
	


as

select * 

from Person.Person

where FirstName = @firstname
	  and PersonType = @persontype