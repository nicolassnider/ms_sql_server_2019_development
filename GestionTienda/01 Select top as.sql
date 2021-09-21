Use Facturas

select 'Clientes' as Tabla 
select * from Facturas..Cliente

select dni as Ident , nombre as Cliente 
from Cliente

------------------
select 'Productos' as Tabla
select * from Producto

select nombre as Producto, precio * cantidad as PrecioTotalLote from Producto

-----------------
select 'Pedidos' as Tabla
select * from Pedido

select top 3 * from Pedido
--------------------
select 'Encargos' as Tabla
select * from Encargo
select top 3 * from Encargo