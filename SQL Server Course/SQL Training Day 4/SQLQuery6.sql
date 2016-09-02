select 

	 [FirstName]
	 ,[MiddleName]
	 ,[lastname]
	 ,[firstname] + ' '+isnull([MiddleName],'')+ case when [middlename] is not null then ' ' else '' end  + isnull([LastName],' ')
	 ,isnull(nullif([middlename],'B'),'BAAAAAAAAAD')




from [Person].[Person]


