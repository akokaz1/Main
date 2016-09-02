set statistics time on 

select 
p.rows,
t.name,
p.index_id


from sys.partitions p

inner join sys.tables t
on  p.object_id= t.object_id