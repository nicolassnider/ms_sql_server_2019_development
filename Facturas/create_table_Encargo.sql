use Facturas

CREATE TABLE Encargo(
    ped_id int not NULL,
    pro_id int not NULL,
    cantidad smallint not NULL,
    descuento numeric(3,1),

    constraint CK_cantidad_encargo_mayor_cero CHECK(
        cantidad > 0
    ),

    CONSTRAINT CK_descuento_no_negativo CHECK(
        descuento > 0
    ),

    CONSTRAINT FK_encargo_pedido FOREIGN KEY(
        ped_id
    ) REFERENCES Pedido(id),

    CONSTRAINT FK_encargo_producto FOREIGN KEY(
        pro_id
    ) REFERENCES Producto(id),

    CONSTRAINT UQ_pedido_unico UNIQUE(
        ped_id,pro_id
    )
)
