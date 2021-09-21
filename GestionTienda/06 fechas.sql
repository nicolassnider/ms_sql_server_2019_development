use Facturas

select * from Producto
where fabricacion >= '04-01-2020'
order by fabricacion



select * from Producto
where fabricacion between '09-06-2020' and '09-06-2020 23:59'
order by fabricacion
