use Facturas

create table Pedido(
    id int identity(1,1) not null,
    fecha smalldatetime,
    dni varchar(10) not null,

    constraint pk_pedido PRIMARY KEY(
        id ASC
    ),

    constraint fk_pedido_cliente FOREIGN KEY(
        dni 
    ) REFERENCES Cliente

)