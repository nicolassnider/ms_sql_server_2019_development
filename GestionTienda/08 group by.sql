use Facturas

select id, marca, precio 
from Producto
where marca in ('Samsung','Intel','HP','ElGato')

select  sum(precio) as total
from Producto
where marca in ('Samsung','Intel','HP','ElGato')

select  count(id) as total
from Producto
where marca in ('Samsung','Intel','HP','ElGato')

select  marca, count(id) as totalId, sum(precio) as totales
from Producto
where marca in ('Samsung','Intel','HP','ElGato')
group by marca

select  marca, nombre, count(id) as totalId, sum(precio) as totales
from Producto
where marca in ('Samsung','Intel','HP','ElGato')
group by marca, nombre

select  
	marca, 
	nombre, 
	count(id) as totalId, 
	sum(precio) as totales,
	avg(precio) as mediaPrecio
from Producto
where marca in ('Samsung','Intel','HP','ElGato')
group by marca, nombre

--clientes
select 
	avg(edad) as media,
	max(edad) as maxedad,
	min(edad) as minEdad
from Cliente