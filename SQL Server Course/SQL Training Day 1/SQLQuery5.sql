declare @haystack varchar(100) = 'kubrick-group-training-course'
select @haystack
select stuff(@haystack,1,7,'Awesome')