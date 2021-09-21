use Facturas select
	marca,
	nombre,
	sum(precio) as totalPrecio,
	count(*) as numeroProductos,
	avg(precio) as mediaPRecio
from Producto 
where marca in ('Samsung', 'Intel', 'HP','ElGato')
group by marca, nombre
having count(*)>1
order by marca

select 
	marca as Marca,
	min(precio) as minprecio,
	max(precio) as maxprecio
from Producto
group by marca
having 
	min(precio) > 100 and --piso
	max(precio) < 800 --techo

	