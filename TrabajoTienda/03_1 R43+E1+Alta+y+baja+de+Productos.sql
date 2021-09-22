/*
1) Insertar cuatro nuevos productos "Monitor" con los campos que se quieran.

Eliminar de la base de datos los monitores descatalogados, considerando aquellos modelos que no son de este año 2020 o bien no tienen fecha de fabricación 

Si hay algún pedido con uno de esos monitores descatalogados, modificar el pedido ofertando al cliente uno de los nuevos.

Info 1: Sintaxis simplificada INSERT INTO: 
INSERT INTO <tabla o alias> VALUES 
(<columnas separadas por comas 1>),
(<columnas separada por comas 2>),
...
(<columnas separadas por comas N>)

2) Ha pasado un año, modificar la edad de los clientes

*/

use Facturas
insert into Producto

values
('Monitor', 150.50, 'EGP 100',1,'LG',current_timestamp,6.5),
('Monitor', 170.50, 'ADD 400',1,'DELL',current_timestamp,6.9),
('Monitor', 270.50, 'ULTRA WIDE 2',1,'DELL',current_timestamp,8.9),
('Monitor', 420.65, 'ULTRA WIDE 3',1,'DELL',current_timestamp,9.7)

SELECT * FROM Producto
WHERE 
	nombre like 'Monitor%' and
	(fabricacion < '01/01/2020' or
	fabricacion is null)

update Encargo
set pro_id = 5
where pro_id in (select * from Producto
				 where nombre like 'Monitor%' and
						(fabricacion < '01/01/2020' or
						fabricacion is null)) 

delete from Producto
	where nombre like 'Monitor%' and
						(fabricacion < '01/01/2020' or
						fabricacion is null)
						
select * from Producto
where nombre like 'Monitor%'

update Cliente
set edad = edad + 1 
select * from Cliente