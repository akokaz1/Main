select
	
	[BusinessEntityID]
	,[EmailAddressID]
	,substring([EmailAddress],Charindex('@',[EmailAddress])+1,Len([emailaddress])) as [Domain Name]
	,substring([EmailAddress],0,Charindex('@',[EmailAddress])) as [E-mail Name]
	,[EmailAddress]
	,datalength(substring([EmailAddress],Charindex('@',[EmailAddress])+1,Len([emailaddress])))
	,replace([EmailAddress],'@','+')


from [Person].[EmailAddress]