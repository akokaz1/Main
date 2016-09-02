select 
	Location
	,[Crime type]
	,count (*)
	from dbo.PoliceData3

	group by [Crime type], Location

	select
		 p.[crime id]
		,ct.id as crimetypeid
		,l.id as locationid
		,dt.id as dateid
	into 
	from dbo.PoliceData3 p
	inner join crimetype ct
		 on ct.[Violent crime] = p.[Crime type]



