CREATE TABLE producto (
id_producto int PRIMARY KEY,
nombre varchar(70) NOT NULL,
id_gama varchar(50) NOT NULL,
dimensiones varchar(25),
descripcion text,
cantidad_en_stock smallint(6) NOT NULL,
precio_venta decimal(15,2) NOT NULL,
FOREIGN KEY (id_gama) REFERENCES gama_producto (id_gama)
);


CREATE TABLE gama_producto (
id_gama varchar(50) PRIMARY KEY,
descripcion_texto text,
descripcion_html text,
imagen varchar(256)
);


CREATE TABLE proveedor (
id_proveedor int PRIMARY KEY,
num_identificacion int NOT NULL,
tipo_identificacion varchar(45) NOT NULL,
nombre varchar(70) NOT NULL,
linea_direccion1 varchar(50) NOT NULL,
linea_direccion2 varchar(50) NOT NULL,
tipo_proveedor varchar(45) NOT NULL
);


CREATE TABLE producto_proveedor (
id_producto int,
id_proveedor int,
precio_proveedor decimal(15,2) NOT NULL,
FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor),
FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);


CREATE TABLE cliente (
id_cliente int PRIMARY KEY,
nombre varchar(70) NOT NULL,
apellido varchar(70) NOT NULL,
linea_direccion1 varchar(50) NOT NULL,
linea_direccion2 varchar(50) NOT NULL,
id_empleado int,
limite_credito decimal(15,2),
FOREIGN KEY (id_empleado) references empleado(id_empleado)
);


CREATE TABLE telefono (
id_telefono int PRIMARY KEY,
num_telefono int(15) NOT NULL,
tipo_telefono varchar(70) NOT NULL,
id_cliente int,
id_empleado int,
id_oficina varchar(10),
id_pais int,
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado),
FOREIGN KEY (id_oficina) REFERENCES oficina (id_oficina),
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);


CREATE TABLE pais (
id_pais int PRIMARY KEY,
nombre_pais varchar(70) NOT NULL,
region varchar(70),
ciudad varchar(70) NOT NULL,
extension int NOT NULL
);


CREATE TABLE contacto (
id_contacto int PRIMARY KEY,
sitio_web varchar(255)
);


CREATE TABLE pedido (
id_pedido int PRIMARY KEY,
fecha_pedido date NOT NULL,
fecha_esperada date NOT NULL,
fecha_entrega date,
estado varchar(9) NOT NULL,
comentarios text,
id_cliente int NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);


CREATE TABLE detalle_pedido (
id_pedido int,
id_producto int,
cantidad int(11) NOT NULL,
precio_unidad decimal(15,2) NOT NULL,
numero_linea smallint(6) NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);


CREATE TABLE empleado (
id_empleado int PRIMARY KEY,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
extension varchar(10) NOT NULL,
email varchar(100) NOT NULL,
id_oficina varchar(10) NOT NULL,
codigo_jefe int,
puesto varchar(50),
FOREIGN KEY(id_oficina) REFERENCES oficina(id_oficina)
);


CREATE TABLE oficina (
id_oficina varchar(10) PRIMARY KEY,
id_pais int,
linea_direccion1 varchar(50) NOT NULL,
linea_direccion2 varchar(50),
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);


CREATE TABLE pago (
id_pago varchar(50),
id_cliente int,
forma_pago varchar(40) NOT NULL,
fecha_pago date NOT NULL,
total decimal(15,2) NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);
