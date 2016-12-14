create table norm.NormalizedPolice(
 PrimaryID int identity
,MonthID int
,FallsWithinID int
,OutComeID int
,longitude varchar(25)
,latitude varchar(25)
,LSOAID int
)


insert into Norm.NormalizedPolice(
MonthID,
FallsWithinID,
OutComeID,
longitude,
latitude,
LSOAID
)
select 
			 mnth.[MonthID]
			,fll.[FallswithinID]
			,ct.[OutComeID]
			,Longitude
			,Latitude
			,LSOAID

from dbo.PoliceData3 main

inner join lok.[month] mnth
on mnth.[Month] = main.[Month]

inner join lok.[FallsWithin] FLL
on fll.[Falls within] = main.[Falls within]

inner join lok.[CrimeType] ct
on ct.[Crime Type] = main.[Crime type]

inner join lok.[LSOA] ls
on ls.[LSOA code] = main.[LSOA code]



select * from [lok].[CrimeType]