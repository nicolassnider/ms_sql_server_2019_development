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