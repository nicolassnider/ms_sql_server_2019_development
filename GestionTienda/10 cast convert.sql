use Facturas

select nombre +' '+ email as nombreemail
from Cliente

select nombre, CAST(edad as varchar) + ' años' as nombreedad
from Cliente

select 
	cast(edad as varchar) as edadCast,
	convert(varchar, edad) as edadConvert
from Cliente

select 
	top 3 convert(varchar, fabricacion, 101) as fechaConvert --codigos de fecha
from Producto

select 
	top 3 convert(varchar, fabricacion, 102) as fechaConvert --codigos de fecha
from Producto

select 
	top 3 convert(varchar, fabricacion, 103) as fechaConvert --codigos de fecha
from Producto

select 
	top 3 convert(varchar, fabricacion, 104) as fechaConvert --codigos de fecha
from Producto

select 
	top 3 convert(varchar, fabricacion, 105) as fechaConvert --codigos de fecha
from Producto

select 
	top 3 convert(varchar, fabricacion, 120) as fechaConvert --codigos de fecha
from Producto

select 
	top 10 nombre, 
	modelo, 
	marca, 
	precio, 
	cantidad, 
	cast (valoracion/precio*100 as numeric (4,2)) as valorprecio 
from Producto
order by precio desc

-- https://docs.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-ver15

