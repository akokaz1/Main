use PoliceData

declare @myhouse geography
set @myhouse =  geography::Point(-0.26219800000001214, 51.41002899999999, 4326 )

select 
		 * 
		,geography::Point(Longitude, Latitude, 4326 ) as  ppo
		,(@myhouse.STDistance(geography::Point([Longitude], [Latitude], 4326 )))*0.000621371 [distance in miles]
		

  from dbo.testpolicedata

  order by [distance in miles] asc



  
  
