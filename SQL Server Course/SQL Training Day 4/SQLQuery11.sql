exec usp_addCustomer lorro,'Mad','lorro@hotmail.com','megamanultimate','111'

select * from instagram.Person


select * from instagram.phone




alter table instagram.person

add  PasswordMegaHash binary(64)


select 
		*
		,HASHBYTES('sha2_512',[password])
		from instagram.Person


declare @salt char(11) = getdate()