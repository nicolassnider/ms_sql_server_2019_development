select * from Pedido
where dni like 'B123'

select * from Encargo
where Encargo.ped_id = (
						select MAX(Pedido.id) from Pedido
							where dni like 'B123'
						)

select * from Producto 
where
	id in(
	1,4,5,11)

delete Encargo 
where ped_id = ( select MAX(id) from Pedido
		where dni like 'B123')
		and pro_id = 17
select @@ROWCOUNT as eliminaciones