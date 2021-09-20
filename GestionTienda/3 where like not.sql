use Facturas

select * from Producto
where nombre = 'Teclado'
select * from Producto
where nombre like '%jeta%'
select * from Producto
where nombre like 'rat_n'
select * from Producto
where modelo like 'extreme [1,2,3,4]%'
select * from Producto
where modelo like 'extreme [1-4]%'
select * from Producto
where modelo like 'extreme [^4]%'
select * from Producto
where nombre not like 'Tarjeta'

