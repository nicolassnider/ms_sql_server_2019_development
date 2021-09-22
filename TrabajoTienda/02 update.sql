Use Facturas

select * from Cliente

insert into Cliente
(dni, nombre, email,direccion)
values
(
	'B123',
	'Juan',
	'juan@mail.com',
	'direccion 1234, abcde'	
)

--select * from Pedido 
--where 
--dni like '111111111B' 

update Pedido 
set
	dni='B123'
where dni like '111111111B' 

select * from Pedido
where dni like 'B123'
