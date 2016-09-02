create table dev.errorlog
(
who nvarchar(50),
errwhen datetime default getdate(),
procname nvarchar(128),
errmsg varchar(max),
linenumber int,
errnumber varchar(10)
)

select * from dev.errorlog