select geometry::STGeomFromText('POLYGON ((0 0, 150 0, 150 150, 0 150, 0 0))',0);

select geometry::STGeomFromText('LINESTRING(1 1, 2 4, 3 9)', 0)
union all
select geometry::STGeomFromText('POLYGON((0 0, 1 0, 1 2, 0 2, 0 0))', 0)
union all  

select geometry::STGeomFromText('POLYGON((0 0, 2 0, 5 2, 3 2, 0 0))', 0);