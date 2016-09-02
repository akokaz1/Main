declare @pt char(2)
declare @ep bit
declare @fn varchar(50)
declare @ln varchar(70)
declare @email nvarchar(255)




declare spam cursor 
for
select
		 p.persontype
		,p.emailpromotion
		,p.firstname
		,p.lastname
		,e.EmailAddress

from person.person p


left outer join  Person.EmailAddress e
on p.BusinessEntityID = e.BusinessEntityID

where FirstName = 'ken'

open spam

fetch next from spam

into @pt, @ep, @fn, @ln, @email

while @@FETCH_STATUS= 0 
begin
		--send all the spam
		--print @email
		exec xp_sendmail 
		FETCH NEXT FROM spam   
		INTO @pt, @ep, @fn, @ln, @email  
END   
CLOSE spam;  
DEALLOCATE spam;