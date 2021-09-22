use Facturas

select 'SQL MANAGEMENT Studio' as IDE
union
select 'Visual Studio' as IDE
union
select 'Android Studio' as IDE
union
select 'Visu Studio Code' as Editor

------

insert into Pedido
values
('02/02/2020','111111111B')

insert into Encargo 
select
	(select MAX(id) from Pedido) as pedID
	,1 as proId
	,2 as cantidad
	,1 as descuento
union
select
	(select MAX(id) from Pedido) as pedID
	,4 as proID
	,1 as cantidad
	,1 as descuento
union
select
	(select MAX(id) from Pedido) as pedID
	,5 as proId
	,3 as cantidad
	,1 as descuento
union
select
	(select MAX(id) from Pedido) as pedID
	,11 as proId
	,1 as cantidad
	,5 as descuento

