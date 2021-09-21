use Facturas

select top 10 nombre, modelo, marca, precio, cantidad from Producto

order by precio desc
select top 10 nombre, modelo, marca, precio * cantidad as precioLote from Producto
order by precio desc

select top 10 nombre, modelo, marca, precio, cantidad, valoracion/precio as valorprecio from Producto
order by precio desc

select * from(
	select nombre, modelo, marca, valoracion, precio, (valoracion/precio)*10 as "Relacion Cal/Precio"
	from Producto
) as SeleccionPrevia