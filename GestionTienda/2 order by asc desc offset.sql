Use Facturas

select * from Cliente

--order by nombre asc
--order by nombre desc
order by edad, nombre desc

select top 10 * from Cliente
order by edad, nombre

select * from Cliente
order by edad offset 5 rows

select * from Cliente
order by edad offset 5 rows
fetch next 3 rows only
