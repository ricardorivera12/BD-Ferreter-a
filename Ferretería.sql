create table vendedor
(Id_vendedor int primary key not null, 
Nombre varchar(30),
Apellido varchar(30), 
Dirección varchar(20), 
Telèfono int)

create table Cliente
(Id_cliente int primary key not null, 
Nombre varchar(30), Apellido varchar(30),
Correo varchar(30), Dirección varchar(20),
Telèfono int)

create table factura 
(Id_factura int primary key not null, 
Fecha date,
Cantidad int,
Sub_Total decimal(6,2),
Iva decimal(6,2), 
Total decimal(6,2), 
Descuento varchar(30), Id_VendedorPK int, Id_ClientePK int, Id_ProductoPK int, 
Foreign key (Id_VendedorPK) references vendedor(Id_Vendedor), 
Foreign key (Id_ClientePK) references cliente(Id_Cliente), 
Foreign key (Id_ProductoPK) references producto(Id_Producto));



create table producto
(Id_Producto int primary key not null, 
Nombre varchar(50), 
Descripcion varchar(50),
Precio_venta decimal(6,2), 
Cantidad int, 
Id_Compra_ProductoPK int,
Foreign key (Id_Compra_ProductoPK) references CompraProducto(Id_Compra_Producto));

create table CompraProducto
(Id_Compra_Producto int primary key not null,
Fecha_Ingreso date, 
Nombre varchar(50), 
Descripcion varchar(50),
Precio_Compra decimal(6,2),
Cantidad int, 
Id_ProveedorPK int,
Foreign key (Id_ProveedorPK) references Proveedor(Id_Proveedor)); 

create table Proveedor
(Id_Proveedor int primary key not null, 
Nombre varchar(50),
Correo varchar(50),
Dirección Varchar(50), 
Teléfono int, 
Sitio_web varchar(50))

select * from Cliente


insert into Vendedor Values (1, 'Jose Juan', 'Loor Zambrano', 'Barrio Nueva Cuba', '0945673423')
insert into Vendedor Values (2, 'Jhon Patricio', 'Gomez Barrio', 'Los Esteros', '0965478933')
insert into Vendedor Values (3, 'Jesus Julio', 'Sanchez Pincay', '15 de Abril', '0998777654')

insert into Cliente Values (1, 'Roberto Santiago', 'Castillo Centeno', 'rober345@gmail.com', 'Calle 13 Av 8', '0976543338')
insert into Cliente Values (2, 'Andres Carlos', 'Zambrano Cuenca', 'andre1212@gmail.com', 'Ciudadela Ceibo', '0954222369')
insert into Cliente Values (3, 'Fernando Joel', 'Lopez Choez', 'fercho212@gmail.com', 'La Pradera', '0967325465')
insert into Cliente Values (4, 'Ramón Antonio', 'Guerra Chonillo', 'Rami802@gmail.com', 'Santa Clara', '0934568732')
insert into Cliente Values (5, 'Jorge Jimmy', 'Cantos Flore', 'joji543@gmail.com', 'Las Or	uideas', '0976543234')
insert into Cliente Values (6, 'Felix Fernando', 'Rivera Soledispa', 'felix22@gmail.com', 'Nueva Esperanza', '0976554332')

insert into Proveedor Values (1, 'Keramicos S.A', 'juan02@gmail.com', 'La Aurora-Vía Montrecristi-Manta', '0967541234', 'www.Distribuidora.com.ec/Keramicos')
insert into Proveedor Values (2, 'Julio  Alamirano Rios', 'Hugo1202@gmail.com', 'Portoviejo', '0978905685', 'www.ferreteria.JAR.com.ec')
insert into Proveedor Values (3, 'TUVAFERR CIA. LTDA.', 'Jimmy4@gmail.com', 'ciudad de Guayaquil', '0987563409', 'www.edina.com.ec/ferreterias/tuvaferr')


insert into CompraProducto Values (1, '2020-08-20', 'Taladros', 'Herramienta eléctrica manual de maquinado', $450, 9, '1')
insert into CompraProducto Values (2, '2020/08/20', 'Barras', 'Herramienta agrícola y tiene con un ángulo afilado', $200, 5, '1')
insert into CompraProducto Values (3, '2020/08/20', 'Pinzas', 'Se utiliza para cortar piezas muy delgadas', $96, 12, '1')
insert into CompraProducto Values (4, '2020/08/25', 'Brocha', 'Herramienta que se utiliza para pintar', $72, 12, '2')
insert into CompraProducto Values (5, '2020/09/12', 'Martillo', 'Herramienta utilizada en trabajos', $120, 12, '2')
insert into CompraProducto Values (6, '2020/09/12', 'Llave de Tubo', 'Sirve para la manipulación y ensamble de tubería', $200, 10, '2')
insert into CompraProducto Values (7, '2020/09/12', 'Nivel de borbuja', 'Un nivel es un instrumento de medición', $75, 5, '2')
insert into CompraProducto Values (8, '2020/09/20', 'Rodillo', 'Herramienta utilizada para pintar paredes', $150, 5, '3')
insert into CompraProducto Values (9, '2020/09/20', 'Destornillador plano', 'Herramienta auxiliar de ensamble', $60, 10, '3')
insert into CompraProducto Values (10, '2020/12/05', 'Destornillador plano', 'Herramienta auxiliar de ensamble', $60, 10, '1')
insert into CompraProducto Values (11, '2020/12/05', 'Rastrillo', 'Instrumento que sirve para recoger hierba', $80, 8, '1')

insert into Producto Values (1, 'Taladros', 'Herramienta eléctrica manual de maquinado', $50, 9, '1')
insert into Producto Values (2, 'Barras', 'Herramienta agrícola y tiene un ángulo afilado', $40, 5, '2')
insert into Producto Values (3, 'Pinzas', 'Se utiliza para cortar piezas muy delgadas', $8, 12, '3')
insert into Producto Values (4, 'Brocha', 'Herramienta que se utiliza para pintar', $6, 12, '4')
insert into Producto Values (5, 'Martillo', 'Herramienta utilizada en trabajos', $10, 12, '5')
insert into Producto Values (6, 'Llave de Tubo', 'Sirve para la manipulación y ensamble de tubería', $20, 10, '6')
insert into Producto Values (7, 'Nivel de borbuja', 'Un nivel es un instrumento de medición', $15, 5, '7')
insert into Producto Values (8, 'Rodillo', 'Herramienta utilizada para pintar paredes', $30, 5, 8)
insert into Producto Values (9, 'Destornillador plano', 'Herramienta auxiliar de ensamble', $6, 10, '9')
insert into Producto Values (10, 'Destornillador plano', 'Herramienta auxiliar de ensamble', $6, 10, '10')
insert into Producto Values (11, 'Rastrillo', 'Instrumento que sirve para recoger hierba', $10, 8, '11')

insert into factura Values (1, '2020-12-6', '1', $50 , $6, $56, '20%', '1', '1', '1')
insert into factura Values (2, '2020-12-6', '2', $12 , $1.44, $13.44, '20%', '1', '1', '9')
insert into factura Values (3, '2020-12-6', '2', $12 , $1.44, $13.44, '20%', '1', '1', '10')
insert into factura Values (4, '2020-12-10', '2', $60 , $7.20, $67.20, '20%', '3', '5', '8')
insert into factura Values (5, '2020-12-10', '4', $24 , $2.88, 26.88, '20%', '3', '5', '4')
insert into factura Values (6, '2020-12-15', '1', $10 , $1.20, $11.20, '20%', '2', '2', '11')
insert into factura Values (7, '2020-12-15', '1', $10 , $1.20, $11.20, '20%', '1', '4', '5')
insert into factura Values (8, '2020-12-16', '1', $40 , $4.80, $44.80, '20%', '3', '3', '2')
insert into factura Values (9, '2020-12-16', '1', $10 , $1.20, $11.20, '20%', '3', '3', '5')
insert into factura Values (10, '2020-12-16', '1', $15 , $1.80, $16.80, '20%', '3', '3', '7')
insert into factura Values (11, '2020-12-17', '2', $40 , $4.80, $44.80, '20%', '2', '6', '6')

Select Fecha_Ingreso, Nombre, Descripcion, Precio_Compra, Cantidad from CompraProducto Where Fecha_Ingreso >= '2020-10-01';

Select Nombre, Descripcion, Precio_venta, Cantidad from Producto where Nombre like 'B%';

Select Fecha, Total, Descuento, Nombre, Descripcion from factura JOIN producto On Id_Producto = Id_ProductoPK where Id_Producto = 5;

select AVG(Total) from factura;