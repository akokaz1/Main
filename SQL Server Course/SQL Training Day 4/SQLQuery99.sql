
alter proc usp_addCustomer
@Fname varchar(50),
@lname varchar(50),
@mail varchar(50),
@pssword varchar(50),
@phone varchar(50)

as 
declare @pid int
declare @salt char(11) = getdate()
insert into instagram.person
(firstName,Lastname,[e-mail],[password],[passwordmegahash])
values (@fname,@lname,@mail,@pssword,HASHBYTES('sha2_512',@pssword))
select @pid = SCOPE_IDENTITY()

insert into instagram.phone
(PID,phonenumber) values (@pid,@phone)










