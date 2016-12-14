select 
	distinct 
    [LSOA code]


	from dbo.PoliceData3



create table lok.[LSOA](
LSOAID int identity (1,1),
[LSOA code] varchar(50)
)

insert into lok.[LSOA](
[LSOA code])
(select distinct [LSOA code] from dbo.PoliceData3)

select * from Population.[2015]

