alter proc uspGreeting
as
select 'hi there mate' as greeting
return 0

go
exec uspGreeting