– insertando datos en la tabla producto
INSERT INTO producto (id_producto, nombre, id_gama, dimensiones, descripcion,
cantidad_en_stock, precio_venta) VALUES
(1, 'Podadora eléctrica', 'Herramientas de jardinería', '10x5x3 pulgadas', 'Podadora eléctrica
con cable de 25 pies y mango ergonómico.', 20, 89.99),
(2, 'Maceta de terracota', 'Macetas y jardineras', '8 pulgadas de diámetro', 'Maceta de
terracota resistente para plantas de interior.', 50, 12.50),
(3, 'Aspersor giratorio', 'Riego y sistemas de riego', '6x6x4 pulgadas', 'Aspersor de jardín
giratorio con 3 brazos y alcance de 30 pies.', 30, 24.99),
(4, 'Semillas de tomate', 'Semillas y plantas', NULL, 'Paquete de semillas de tomate
orgánico, variedad heirloom.', 100, 5.99),
(5, 'Herramienta de mano de jardín', 'Herramientas de jardinería', NULL, 'Kit de herramientas
de mano de jardín que incluye pala, rastrillo y tijeras de podar.', 15, 29.99),
(6, 'Sustrato para macetas', 'Suelo y fertilizantes', '20 libras', 'Sustrato premium para
macetas, enriquecido con nutrientes para un crecimiento óptimo de las plantas.', 40, 18.75),
(7, 'Fertilizante líquido para plantas', 'Suelo y fertilizantes', '32 onzas', 'Fertilizante líquido
concentrado para todo tipo de plantas, promueve un crecimiento saludable y floración
abundante.', 25, 9.99),
(8, 'Manguera de jardín', 'Riego y sistemas de riego', '50 pies', 'Manguera de jardín
resistente de 50 pies con conectores de latón.', 10, 39.99),
(9, 'Jardín vertical de pared', 'Decoración de jardín', '24x36 pulgadas', 'Panel de jardín
vertical de pared con bolsillos para plantas, ideal para decorar patios y balcones.', 8, 79.99),
(10, 'Césped artificial', 'Césped y paisajismo', '10x5 pies', 'Rollo de césped artificial de alta
calidad, resistente a la intemperie y de fácil instalación.', 3, 149.50);


– insertando datos en la tabla gama_producto
INSERT INTO gama_producto (id_gama, descripcion_texto, descripcion_html, imagen)
VALUES
('Herramientas de jardinería', 'Productos relacionados con herramientas para el cuidado y
mantenimiento del jardín.', '<p>Productos relacionados con herramientas para el cuidado y
mantenimiento del jardín.</p>', 'herramientas.jpg'),
('Macetas y jardineras', 'Productos relacionados con macetas y jardineras para el cultivo
de plantas.', '<p>Productos relacionados con macetas y jardineras para el cultivo de
plantas.</p>', 'macetas.jpg'),
('Riego y sistemas de riego', 'Productos relacionados con sistemas de riego para el
mantenimiento de plantas.', '<p>Productos relacionados con sistemas de riego para el
mantenimiento de plantas.</p>', 'riego.jpg'),
('Semillas y plantas', 'Productos relacionados con semillas y plantas para la siembra y
cultivo.', '<p>Productos relacionados con semillas y plantas para la siembra y cultivo.</p>',
'semillas.jpg'),
('Suelo y fertilizantes', 'Productos relacionados con suelo y fertilizantes para el crecimiento
de plantas.', '<p>Productos relacionados con suelo y fertilizantes para el crecimiento de
plantas.</p>', 'suelo.jpg'),
('Decoración de jardín', 'Productos relacionados con la decoración y ornamentos para el
jardín.', '<p>Productos relacionados con la decoración y ornamentos para el jardín.</p>',
'decoracion.jpg'),('Césped y paisajismo', 'Productos relacionados con césped y paisajismo para el diseño de
jardines.', '<p>Productos relacionados con césped y paisajismo para el diseño de
jardines.</p>', 'cesped.jpg');


– insertando datos en la tabla proveedor
INSERT INTO proveedor (id_proveedor, num_identificacion, tipo_identificacion, nombre,
linea_direccion1, linea_direccion2, tipo_proveedor) VALUES
(1, 123456789, 'RUC', 'Jardinería y Más S.A.', 'Avenida de las Flores', 'Edificio Verde, Local
1', 'Distribuidor'),
(2, 987654321, 'RUC', 'Plantas y Accesorios Ltda.', 'Calle del Vivero', 'N° 123', 'Productor'),
(3, 456789123, 'RUC', 'Herramientas de Jardín SRL', 'Calle de las Herramientas', 'N° 456',
'Proveedor de herramientas'),
(4, 555555555, 'RUC', 'Tierra Fértil SA', 'Calle de la Tierra', 'N° 789', 'Productor de
sustratos'),
(5, 444444444, 'RUC', 'Riego Eficiente S.A.', 'Avenida del Agua', 'N° 321', 'Proveedor de
sistemas de riego'),
(6, 333333333, 'RUC', 'Paisajismo Verde SRL', 'Calle de los Diseños', 'N° 654', 'Diseñador
de paisajes'),
(7, 222222222, 'RUC', 'Semillas Orgánicas Ltda.', 'Avenida de las Semillas', 'N° 987',
'Productor de semillas'),
(8, 111111111, 'RUC', 'Materiales para Jardines S.A.', 'Calle de los Materiales', 'N° 159',
'Proveedor de materiales para jardinería'),
(9, 666666666, 'RUC', 'Plantas Exóticas SRL', 'Avenida de las Plantas', 'N° 753', 'Productor
de plantas exóticas'),
(10, 999999999, 'RUC', 'Decoración Natural Ltda.', 'Calle de las Decoraciones', 'N° 852',
'Proveedor de decoración para jardines');


– insertando datos en la tabla producto_proveedor
INSERT INTO producto_proveedor (id_producto, id_proveedor, precio_proveedor) VALUES
(1, 1, 75.00),
(2, 2, 10.00),
(3, 3, 20.00),
(4, 7, 4.50),
(5, 3, 25.00),
(6, 4, 15.00),
(7, 5, 7.99),
(8, 5, 30.00),
(9, 6, 60.00),
(10, 8, 100.00);


– insertando datos en la tabla cliente
INSERT INTO cliente (id_cliente, nombre, apellido, linea_direccion1, linea_direccion2, id_empleado, limite_credito) VALUES
(1, 'Juan', 'Martínez', 'Calle Principal', 'N° 123', 4, 500.00),
(2, 'María', 'García', 'Avenida Central', 'Edificio Azul, Piso 2', 5, 1000.00),
(3, 'Carlos', 'López', 'Calle de las Flores', 'N° 456', 6, 750.00),
(4, 'Ana', 'Rodríguez', 'Avenida del Sol', 'N° 789', 4, 2000.00),
(5, 'Pedro', 'Sánchez', 'Calle del Bosque', 'N° 321', 5, 1500.00),
(6, 'Laura', 'Hernández', 'Calle de la Luna', 'N° 654', 6, 800.00),
(7, 'Miguel', 'Pérez', 'Avenida de los Ríos', 'N° 987', 4, 3000.00),
(8, 'Sofía', 'Díaz', 'Calle de las Montañas', 'N° 159', 5, 1200.00),
(9, 'Isabel', 'Torres', 'Avenida de los Ángeles', 'N° 753', 6, 1000.00),
(10, 'Javier', 'Ruiz', 'Calle de los Campos', 'N° 852', 4, 2000.00);



– insertando datos en la tabla teléfono
INSERT INTO telefono (id_telefono, num_telefono, tipo_telefono, id_cliente, id_empleado,
id_oficina, id_pais)
VALUES
(1, 123456789, 'Casa', 1, 1, 1, 1),
(2, 987654321, 'Móvil', 2, 2, 2, 2),
(3, 111222333, 'Trabajo', 3, 3, 3, 3),
(4, 444555666, 'Casa', 4, 4, 4, 1),
(5, 777888999, 'Móvil', 5, 5, 5, 2),
(6, 111111111, 'Trabajo', 6, 6, 6, 3),
(7, 222222222, 'Casa', 7, 7, 7, 1),
(8, 333333333, 'Móvil', 8, 8, 8, 2),
(9, 444444444, 'Trabajo', 9, 9, 9, 3),
(10, 555555555, 'Casa', 10, 10, 10, 1);


– insertando datos en la tabla país
INSERT INTO pais (id_pais, nombre_pais, region, ciudad, extension) VALUES
(1, 'Estados Unidos', 'América del Norte', 'Nueva York', 212),
(2, 'España', 'Europa', 'Madrid', 34),
(3, 'Brasil', 'América del Sur', 'Sao Paulo', 55),
(4, 'China', 'Asia Oriental', 'Pekín', 86),
(5, 'Alemania', 'Europa Central', 'Berlín', 49),
(6, 'Canadá', 'América del Norte', 'Toronto', 416),
(7, 'Australia', 'Oceanía', 'Sídney', 61),
(8, 'India', 'Asia Meridional', 'Nueva Delhi', 91),
(9, 'Francia', 'Europa Occidental', 'París', 33),
(10, 'México', 'América del Norte', 'Ciudad de México', 55);


– insertando datos en la tabla contacto
INSERT INTO contacto (id_contacto, sitio_web) VALUES
(1, 'www.jardinbelleza.com'),
(2, 'www.greenerygarden.com'),
(3, 'www.lusciouslandscapes.net'),
(4, 'www.bloominggardens.org'),
(5, 'www.naturehaven.com'),
(6, 'www.greenfingers.com'),
(7, 'www.blossombeauty.com'),
(8, 'www.greenthumbsinc.com'),
(9, 'www.botanicalbliss.com'),
(10, 'www.thegardenersguild.org');



– insertando datos en la tabla pedido
INSERT INTO pedido (id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado,
comentarios, id_cliente) VALUES
(1, '2024-05-01', '2024-05-05', '2024-05-04', 'Entregado', 'Pedido recibido a tiempo', 1),
(2, '2024-05-02', '2024-05-06', NULL, 'Pendiente', 'Esperando confirmación de stock', 2),
(3, '2024-05-03', '2024-05-07', NULL, 'Pendiente', 'Pedido en proceso de envío', 3),
(4, '2024-05-04', '2024-05-08', NULL, 'Pendiente', 'Necesita confirmación de pago', 4),
(5, '2024-05-05', '2024-05-09', NULL, 'Pendiente', 'Productos fuera de stock', 5),
(6, '2024-05-06', '2024-05-10', NULL, 'Pendiente', 'Necesita aprobación del cliente', 6),
(7, '2024-05-07', '2024-05-11', NULL, 'Pendiente', 'En espera de programación de entrega',7),
(8, '2024-05-08', '2024-05-12', NULL, 'Pendiente', 'Necesita confirmación de dirección de envío', 8),
(9, '2024-05-09', '2024-05-13', NULL, 'Pendiente', 'Pedido urgente', 9),
(10, '2024-05-10', '2024-05-14', NULL, 'Pendiente', 'Esperando aprobación del departamento
de crédito', 10);


– insertando datos en la tabla detalle_pedido
INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad, precio_unidad,
numero_linea) VALUES
(1, 1, 2, 89.99, 1),
(1, 3, 1, 24.99, 2),
(2, 2, 3, 12.50, 1),
(3, 4, 5, 5.99, 1),
(3, 5, 1, 29.99, 2),
(4, 6, 2, 18.75, 1),
(5, 7, 4, 9.99, 1),
(5, 8, 1, 39.99, 2),
(6, 9, 3, 79.99, 1),
(7, 10, 1, 149.50, 1);


– insertando datos en la tabla empleado
INSERT INTO empleado (id_empleado, nombre, apellido, extension, email, id_oficina, codigo_jefe, puesto) VALUES
(1, 'Ana', 'López', '1234', 'ana.lopez@example.com', 1, NULL, 'Gerente de Ventas'),
(2, 'Pedro', 'García', '5678', 'pedro.garcia@example.com', 1, 1, 'Supervisor de Ventas'),
(3, 'María', 'Martínez', '9012', 'maria.martinez@example.com', 1, 2, 'Representante de Ventas'),
(4, 'Juan', 'Rodríguez', '3456', 'juan.rodriguez@example.com', 2, NULL, 'Gerente de Logística'),
(5, 'Laura', 'Sánchez', '7890', 'laura.sanchez@example.com', 2, 4, 'Supervisor de Almacén'),
(6, 'Carlos', 'Gómez', '2345', 'carlos.gomez@example.com', 2, 4, 'Supervisor de Distribución'),
(7, 'Ana', 'Hernández', '6789', 'ana.hernandez@example.com', 3, NULL, 'Gerente de Recursos Humanos'),
(8, 'Sofía', 'Díaz', '1234', 'sofia.diaz@example.com', 3, 7, 'Especialista en Capacitación'),
(9, 'Javier', 'Ruiz', '5678', 'javier.ruiz@example.com', 3, 7, 'Especialista en Contratación'),
(10, 'María', 'López', '9012', 'maria.lopez@example.com', 3, 7, 'Asistente Administrativo');



– insertando datos en la tabla oficina
INSERT INTO oficina (id_oficina, id_pais, linea_direccion1, linea_direccion2) VALUES
(1, 1, '123 Calle Principal', 'Oficina 101'),
(2, 2, 'Avenida del Jardín, 45', NULL),
(3, 3, 'Rua das Flores, 67', 'Edificio Jardín, Piso 3'),
(4, 4, 'Calle Jardín, 789', NULL),
(5, 5, 'Calle del Verdor, 12', 'Unidad B'),
(6, 6, 'Boulevard de las Flores, 34', NULL),
(7, 7, 'Avenida Natural, 56', 'Piso 2'),
(8, 8, 'Calle del Pulgar Verde, 78', NULL),
(9, 9, 'Calle de los Jardines Botánicos, 90', 'Oficina 200'),
(10, 10, 'Calle de los Jardineros, 123', NULL);


– insertando datos en la tabla
INSERT INTO pago (id_pago, id_cliente, forma_pago, fecha_pago, total) VALUES
('PAG001', 1, 'Tarjeta de crédito', '2024-05-05', 150.00),
('PAG002', 2, 'Transferencia bancaria', '2024-05-06', 200.00),
('PAG003', 3, 'Efectivo', '2024-05-07', 75.50),
('PAG004', 4, 'Cheque', '2024-05-08', 300.00),
('PAG005', 5, 'PayPal', '2024-05-09', 100.25),
('PAG006', 6, 'Tarjeta de débito', '2024-05-10', 50.00),
('PAG007', 7, 'Transferencia bancaria', '2024-05-11', 400.75),
('PAG008', 8, 'Efectivo', '2024-05-12', 150.00),
('PAG009', 9, 'Tarjeta de crédito', '2024-05-13', 175.50),
('PAG010', 10, 'PayPal', '2024-05-14', 250.00);
