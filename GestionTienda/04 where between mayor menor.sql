use Facturas
select * from Producto 
where cantidad = 10

select * from Producto 
where cantidad > 10

select * from Producto 
where cantidad < 10

select * from Producto 
where cantidad != 10

select * from Producto 
where cantidad <> 10

select * from Producto
where cantidad between 6 and 10

select * from Producto
where cantidad not between 6 and 10

select @@rowcount as total

select * from Producto
where nombre like 'torre' and valoracion>7
or nombre like 'Teclado'

select * from Producto
where (nombre like 'torre' and valoracion>7)
or (nombre like 'Teclado')

select * from Producto
where marca in ('Asus','samsung')