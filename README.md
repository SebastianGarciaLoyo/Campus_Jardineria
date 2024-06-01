# Campus_Jardineria

-- Aqui se encontraran todas las consultas

-- #1 Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.

  select o.id_oficina, p.id_pais, p.ciudad
  from oficina as o
  left join pais as p on p.id_pais = o.id_oficina;

  -- Resultado

```
+------------+---------+-------------------+
| id_oficina | id_pais | ciudad            |
+------------+---------+-------------------+
| 1          |       1 | Nueva York        |
| 2          |       2 | Madrid            |
| 3          |       3 | Sao Paulo         |
| 4          |       4 | Pekin             |
| 5          |       5 | Berlin            |
| 6          |       6 | Toronto           |
| 7          |       7 | Sidney            |
| 8          |       8 | Nueva Delhi       |
| 9          |       9 | Paris             |
| 10         |      10 | Ciudad de Mexico  |
+------------+---------+-------------------+
```

-- #2 Devuelve un listado con la ciudad y el teléfono de las oficinas de España.

  select t.id_oficina, p.nombre_pais, p.ciudad, t.num_telefono
  from telefono as t
  left join pais as p on p.id_pais = t.id_telefono
  where p.nombre_pais = "España";

  -- Resultado 

```
+------------+-------------+--------+--------------+
| id_oficina | nombre_pais | ciudad | num_telefono |
+------------+-------------+--------+--------------+
| 2          | España      | Madrid |    987654321 |
+------------+-------------+--------+--------------+
```


-- #3 Devuelve un listado con el nombre, apellidos y email de los empleados cuyo
-- jefe tiene un código de jefe igual a 7.

  select nombre, apellido, email, codigo_jefe
  from empleado
  where codigo_jefe = 7;

  -- Resultado

```
+--------+------------+---------------------------+-------------+
| nombre | apellido   | email                     | codigo_jefe |
+--------+------------+---------------------------+-------------+
| Ana    | Hernandez  | ana.hernandez@example.com |           7 |
| Sofia  | Diaz       | sofia.diaz@example.com    |           7 |
| Javier | Ruiz       | javier.ruiz@example.com   |           7 |
| Maria  | Lopez      | maria.lopez@example.com   |           7 |
+--------+------------+---------------------------+-------------+
```


-- #4 Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la
-- empresa.

 select nombre, apellido, puesto, email, codigo_jefe
 from empleado
 where codigo_jefe is NULL;

-- Resultado

```
+--------+----------+--------+-----------------------+-------------+
| nombre | apellido | puesto | email                 | codigo_jefe |
+--------+----------+--------+-----------------------+-------------+
| Ana    | Lopez    | Jefe   | ana.lopez@example.com |        NULL |
+--------+----------+--------+-----------------------+-------------+
```

-- #5 Devuelve un listado con el nombre, apellidos y puesto de aquellos
--    empleados que no sean representantes de ventas.

 select nombre, apellido, puesto
 from empleado
 where puesto = "Representante de Ventas";

-- Resultado

```
+--------+-----------+-------------------------+
| nombre | apellido  | puesto                  |
+--------+-----------+-------------------------+
| Maria  | Martinez  | Representante de Ventas |
+--------+-----------+-------------------------+
```


-- #6 Devuelve un listado con el nombre de los todos los clientes españoles.

 select c.nombre, c.apellido, p.nombre_pais
 from cliente as c
 left join pais as p on p.id_pais = c.id_cliente
 where p.nombre_pais = "España";

-- Resultado

```
+--------+----------+-------------+
| nombre | apellido | nombre_pais |
+--------+----------+-------------+
| Maria  | Garcia   | España      |
+--------+----------+-------------+
```

-- #7 Devuelve un listado con los distintos estados por los que puede pasar un
--    pedido.

 select id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado
 from pedido;

 -- Resultado

```
+-----------+--------------+----------------+---------------+-----------+
| id_pedido | fecha_pedido | fecha_esperada | fecha_entrega | estado    |
+-----------+--------------+----------------+---------------+-----------+
|         1 | 2024-05-01   | 2024-05-05     | 2024-05-04    | Entregado |
|         2 | 2024-05-02   | 2024-05-06     | 2024-05-08    | Pendiente |
|         3 | 2024-05-03   | 2024-05-07     | NULL          | Pendiente |
|         4 | 2024-05-04   | 2024-05-08     | NULL          | Pendiente |
|         5 | 2024-05-05   | 2024-05-09     | NULL          | Pendiente |
|         6 | 2024-05-06   | 2024-05-10     | NULL          | Pendiente |
|         7 | 2024-05-07   | 2024-05-11     | NULL          | Pendiente |
|         8 | 2024-05-08   | 2024-05-12     | NULL          | Pendiente |
|         9 | 2024-05-09   | 2024-05-13     | NULL          | Pendiente |
|        10 | 2024-05-10   | 2024-05-14     | NULL          | Pendiente |
+-----------+--------------+----------------+---------------+-----------+
```

-- #8 Devuelve un listado con el código de cliente de aquellos clientes que
-- realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar
-- aquellos códigos de cliente que aparezcan repetidos.

 select id_pago, id_cliente, forma_pago, fecha_pago, total
 from pago
 where year(fecha_pago) = 2008;

 -- Resultado

```
+---------+------------+---------------------+------------+--------+
| id_pago | id_cliente | forma_pago          | fecha_pago | total  |
+---------+------------+---------------------+------------+--------+
| PAG001  |          1 | Tarjeta de credito  | 2008-04-04 | 150.00 |
+---------+------------+---------------------+------------+--------+
```

-- #9 Devuelve un listado con el código de pedido, código de cliente, fecha
-- esperada y fecha de entrega de los pedidos que no han sido entregados a
-- tiempo.

 select id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado
 from pedido
 where estado = 'Pendiente';

 -- Resultado

```
+-----------+--------------+----------------+---------------+-----------+
| id_pedido | fecha_pedido | fecha_esperada | fecha_entrega | estado    |
+-----------+--------------+----------------+---------------+-----------+
|         2 | 2024-05-02   | 2024-05-06     | 2024-05-08    | Pendiente |
|         3 | 2024-05-03   | 2024-05-07     | NULL          | Pendiente |
|         4 | 2024-05-04   | 2024-05-08     | NULL          | Pendiente |
|         5 | 2024-05-05   | 2024-05-09     | NULL          | Pendiente |
|         6 | 2024-05-06   | 2024-05-10     | NULL          | Pendiente |
|         7 | 2024-05-07   | 2024-05-11     | NULL          | Pendiente |
|         8 | 2024-05-08   | 2024-05-12     | NULL          | Pendiente |
|         9 | 2024-05-09   | 2024-05-13     | NULL          | Pendiente |
|        10 | 2024-05-10   | 2024-05-14     | NULL          | Pendiente |
+-----------+--------------+----------------+---------------+-----------+
```

-- #10 Devuelve un listado con el código de pedido, código de cliente, fecha
-- esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al
-- menos dos días antes de la fecha esperada.

 select id_pedido, id_cliente, fecha_esperada, fecha_entrega
 from pedido
 where fecha_entrega > fecha_esperada;

 -- Resultado

```
+-----------+------------+----------------+---------------+
| id_pedido | id_cliente | fecha_esperada | fecha_entrega |
+-----------+------------+----------------+---------------+
|         2 |          2 | 2024-05-06     | 2024-05-08    |
+-----------+------------+----------------+---------------+
```

-- #11 Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

select id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios

from pedido

where estado = 'Rechazado';



-- Resultado

```
+-----------+--------------+----------------+---------------+-----------+--------------------------+
| id_pedido | fecha_pedido | fecha_esperada | fecha_entrega | estado    | comentarios              |
+-----------+--------------+----------------+---------------+-----------+--------------------------+
|         5 | 2024-05-05   | 2024-05-09     | NULL          | Rechazado | Productos fuera de stock |
+-----------+--------------+----------------+---------------+-----------+--------------------------+
```



-- #12 Devuelve un listado de todos los pedidos que han sido entregados en el
-- mes de enero de cualquier año.

select id_pedido, fecha_pedido, fecha_esperada, fecha_entrega

from pedido

where date_format(fecha_entrega, "%m") = 01;



-- Resultado

```html
+-----------+--------------+----------------+---------------+
| id_pedido | fecha_pedido | fecha_esperada | fecha_entrega |
+-----------+--------------+----------------+---------------+
|         5 | 2024-01-10   | 2023-01-20     | 2024-01-22    |
+-----------+--------------+----------------+---------------+
```



-- #13 Devuelve un listado con todos los pagos que se realizaron en el
-- año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

select id_pago, id_cliente, forma_pago, fecha_pago, total

from pago

where forma_pago = 'PayPal';



-- Resultado

```
+---------+------------+------------+------------+--------+
| id_pago | id_cliente | forma_pago | fecha_pago | total  |
+---------+------------+------------+------------+--------+
| PAG005  |          5 | PayPal     | 2008-05-09 | 100.25 |
| PAG010  |         10 | PayPal     | 2008-05-14 | 250.00 |
+---------+------------+------------+------------+--------+
```



-- #14 Devuelve un listado con todas las formas de pago que aparecen en la
-- tabla pago. Tenga en cuenta que no deben aparecer formas de pago
-- repetidas.

select forma_pago

from pago

group by forma_pago;



-- Resultado

```
+------------------------+
| forma_pago             |
+------------------------+
| Tarjeta de credito     |
| Transferencia bancaria |
| Efectivo               |
| Cheque                 |
| PayPal                 |
| Tarjeta de debito      |
+------------------------+
```



-- #15 Devuelve un listado con todos los productos que pertenecen a la
-- gama Ornamentales y que tienen más de 100 unidades en stock. El listado
-- deberá estar ordenado por su precio de venta, mostrando en primer lugar
-- los de mayor precio.



select id_producto, nombre, cantidad_en_stock, id_gama

from producto

where cantidad_en_stock = 100;



-- Resultado

```
+-------------+--------------------+-------------------+--------------------+
| id_producto | nombre             | cantidad_en_stock | id_gama            |
+-------------+--------------------+-------------------+--------------------+
|           4 | Semillas de tomate |               100 | Semillas y plantas |
+-------------+--------------------+-------------------+--------------------+
```



-- #16 Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y
-- cuyo representante de ventas tenga el código de empleado 11 o 30.

select c.id_cliente, c.nombre as cliente, e.nombre, e.apellido, e.puesto, p.nombre_pais

from cliente as c

inner join empleado as e on e.id_empleado = c.id_cliente

left join pais as p on p.id_pais = c.id_cliente

where c.id_cliente = 2;



-- Resultado 

```
+------------+---------+--------+----------+----------------------+-------------+
| id_cliente | cliente | nombre | apellido | puesto               | nombre_pais |
+------------+---------+--------+----------+----------------------+-------------+
|          2 | Maria   | Pedro  | Garcia   | Supervisor de Ventas | España      |
+------------+---------+--------+----------+----------------------+-------------+
```



-- #17 Obtén un listado con el nombre de cada cliente y el nombre y apellido de su
-- representante de ventas.

select c.nombre as cliente, e.nombre, e.apellido, e.puesto

from cliente as c

inner join empleado as e on e.id_empleado = c.id_cliente

where e.puesto = "Representante de Ventas";



-- Resultado

```
+---------+--------+-----------+-------------------------+
| cliente | nombre | apellido  | puesto                  |
+---------+--------+-----------+-------------------------+
| Carlos  | Maria  | Martinez  | Representante de Ventas |
+---------+--------+-----------+-------------------------+
```



-- #18 Muestra el nombre de los clientes que hayan realizado pagos junto con el
-- nombre de sus representantes de ventas.

SELECT c.nombre AS nombre_cliente, e.nombre AS nombre_representante, e.puesto 
FROM cliente c 
INNER JOIN pago p ON c.id_cliente = p.id_cliente 
INNER JOIN empleado e ON c.id_empleado = e.id_empleado
WHERE e.puesto = 'Representante de Ventas';

-- Resultado
<pre>+----------------+----------------------+-------------------------+
| nombre_cliente | nombre_representante | puesto                  |
+----------------+----------------------+-------------------------+
| María          | María                | Representante de Ventas |
+----------------+----------------------+-------------------------+
</pre>

-- #19 Muestra el nombre de los clientes que no hayan realizado pagos junto con
-- el nombre de sus representantes de ventas.
SELECT c.nombre AS nombre_cliente, e.nombre AS nombre_representante, p.fecha_pago
    FROM cliente c
    LEFT JOIN pago p ON c.id_cliente = p.id_cliente
     INNER JOIN empleado e ON c.id_empleado = e.id_empleado
     WHERE p.fecha_pago IS NULL;

-- Resultado

<pre>+----------------+----------------------+------------+
| nombre_cliente | nombre_representante | fecha_pago |
+----------------+----------------------+------------+
| Javier         | Juan                 | NULL       |
+----------------+----------------------+------------+
</pre>

-- #20 Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre
-- de sus representantes junto con la ciudad de la oficina a la que pertenece el
-- representante.

SELECT c.nombre AS nombre_cliente, e.nombre AS nombre_representante, o.id_pais
FROM cliente c
LEFT JOIN pago p ON c.id_cliente = p.id_cliente
INNER JOIN empleado e ON c.id_empleado = e.id_empleado
INNER JOIN oficina o ON e.id_oficina = o.id_oficina
WHERE p.fecha_pago IS NULL;

-- Resultado

<pre>+----------------+----------------------+---------+
| nombre_cliente | nombre_representante | id_pais |
+----------------+----------------------+---------+
| Javier         | Juan                 |       2 |
+----------------+----------------------+---------+</pre>

-- #21 Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
SELECT DISTINCT o.linea_direccion1, o.linea_direccion2, p.nombre_pais
FROM cliente c
JOIN empleado e ON c.id_empleado = e.id_empleado
JOIN oficina o ON e.id_oficina = o.id_oficina
JOIN pais p ON o.id_pais = p.id_pais
WHERE p.nombre_pais = 'China';

-- Resultado
<pre>+--------------------+------------------+-------------+
| linea_direccion1   | linea_direccion2 | nombre_pais |
+--------------------+------------------+-------------+
| Calle Jardín, 789  | NULL             | China       |
+--------------------+------------------+-------------+
</pre>

-- #22 Devuelve el nombre de los clientes y el nombre de sus representantes junto
-- con la ciudad de la oficina a la que pertenece el representante.

SELECT c.nombre AS nombre_cliente, e.nombre AS nombre_representante, o.id_pais AS ciudad_oficina
FROM cliente c
JOIN empleado e ON c.id_empleado = e.id_empleado
JOIN oficina o ON e.id_oficina = o.id_oficina
JOIN pais p ON o.id_pais = p.id_pais
WHERE e.puesto = 'Representante de Ventas';

-- Resultado
<pre>+----------------+----------------------+----------------+
| nombre_cliente | nombre_representante | ciudad_oficina |
+----------------+----------------------+----------------+
| María          | María                |              1 |
+----------------+----------------------+----------------+
</pre>

-- #23 Devuelve un listado con el nombre de los empleados junto con el nombre
de sus jefes.

SELECT e1.nombre AS nombre_empleado, e2.nombre AS nombre_jefe
FROM empleado e1
LEFT JOIN empleado e2 ON e1.codigo_jefe = e2.id_empleado;

-- Resultado
<pre>+-----------------+-------------+
| nombre_empleado | nombre_jefe |
+-----------------+-------------+
| Ana             | NULL        |
| Pedro           | Ana         |
| María           | Pedro       |
| Juan            | María       |
| Laura           | Juan        |
| Carlos          | Juan        |
| Ana             | Laura       |
| Sofía           | Ana         |
| Javier          | Ana         |
| María           | Ana         |
+-----------------+-------------+
</pre>

-- #24 Devuelve un listado que muestre el nombre de cada empleados, el nombre
-- de su jefe y el nombre del jefe de sus jefe.

SELECT 
    e1.nombre AS empleado,
    e2.nombre AS jefe,
    e3.nombre AS jefe_del_jefe
FROM 
    empleado e1
LEFT JOIN 
    empleado e2 ON e1.codigo_jefe = e2.id_empleado
LEFT JOIN 
    empleado e3 ON e2.codigo_jefe = e3.id_empleado;

-- Resultado
<pre>+----------+--------+---------------+
| empleado | jefe   | jefe_del_jefe |
+----------+--------+---------------+
| Ana      | NULL   | NULL          |
| Pedro    | Ana    | NULL          |
| María    | Pedro  | Ana           |
| Juan     | María  | Pedro         |
| Laura    | Juan   | María         |
| Carlos   | Juan   | María         |
| Ana      | Laura  | Juan          |
| Sofía    | Ana    | Laura         |
| Javier   | Ana    | Laura         |
| María    | Ana    | Laura         |
+----------+--------+---------------+
</pre>

-- #25 Devuelve el nombre de los clientes a los que no se les ha entregado a
tiempo un pedido.

SELECT 
    c.nombre,
    c.apellido
FROM 
    pedido p
JOIN 
    cliente c ON p.id_cliente = c.id_cliente
WHERE 
    p.estado = 'Pendiente';

-- Resultado
<pre>+--------+------------+
| nombre | apellido   |
+--------+------------+
| María  | García     |
| Carlos | López      |
| Ana    | Rodríguez  |
| Pedro  | Sánchez    |
| Laura  | Hernández  |
| Miguel | Pérez      |
| Sofía  | Díaz       |
| Isabel | Torres     |
| Javier | Ruiz       |
+--------+------------+
</pre>

-- #26 Devuelve un listado de las diferentes gamas de producto que ha comprado
cada cliente.

SELECT 
    c.nombre AS cliente_nombre,
    c.apellido AS cliente_apellido,
    gp.id_gama AS gama_producto,
    gp.descripcion_texto AS descripcion_gama
FROM 
    cliente c
JOIN 
    pedido p ON c.id_cliente = p.id_cliente
JOIN 
    detalle_pedido dp ON p.id_pedido = dp.id_pedido
JOIN 
    producto pr ON dp.id_producto = pr.id_producto
JOIN 
    gama_producto gp ON pr.id_gama = gp.id_gama
GROUP BY 
    c.nombre, c.apellido, gp.id_gama, gp.descripcion_texto
ORDER BY 
    c.nombre, c.apellido;

-- Resultado
<pre>+----------------+------------------+-----------------------------+--------------------------------------------------------------------------------------+
| cliente_nombre | cliente_apellido | gama_producto               | descripcion_gama                                                                     |
+----------------+------------------+-----------------------------+--------------------------------------------------------------------------------------+
| Ana            | Rodríguez        | Suelo y fertilizantes       | Productos relacionados con suelo y fertilizantes para el crecimiento de plantas.     |
| Carlos         | López            | Herramientas de jardinería  | Productos relacionados con herramientas para el cuidado y mantenimiento del jardín.  |
| Carlos         | López            | Semillas y plantas          | Productos relacionados con semillas y plantas para la siembra y cultivo.             |
| Juan           | Martínez         | Herramientas de jardinería  | Productos relacionados con herramientas para el cuidado y mantenimiento del jardín.  |
| Juan           | Martínez         | Riego y sistemas de riego   | Productos relacionados con sistemas de riego para el mantenimiento de plantas.       |
| Laura          | Hernández        | Decoración de jardín        | Productos relacionados con la decoración y ornamentos para el jardín.                |
| María          | García           | Macetas y jardineras        | Productos relacionados con macetas y jardineras para el cultivo de plantas.          |
| Miguel         | Pérez            | Césped y paisajismo         | Productos relacionados con césped y paisajismo para el diseño de jardines.           |
| Pedro          | Sánchez          | Riego y sistemas de riego   | Productos relacionados con sistemas de riego para el mantenimiento de plantas.       |
| Pedro          | Sánchez          | Suelo y fertilizantes       | Productos relacionados con suelo y fertilizantes para el crecimiento de plantas.     |
+----------------+------------------+-----------------------------+--------------------------------------------------------------------------------------+
</pre>

-- #27 Devuelve un listado que muestre solamente los clientes que no han
-- realizado ningún pago.

SELECT 
    c.id_cliente,
    c.nombre,
    c.apellido,
    p.fecha_pago
FROM 
    cliente c
LEFT JOIN 
    pago p ON c.id_cliente = p.id_cliente
WHERE 
    p.fecha_pago IS NULL;

-- Resultado
<pre>+------------+--------+----------+------------+
| id_cliente | nombre | apellido | fecha_pago |
+------------+--------+----------+------------+
|         10 | Javier | Ruiz     | NULL       |
+------------+--------+----------+------------+</pre>

-- #28  Devuelve un listado que muestre solamente los clientes que no han
-- realizado ningún pedido.

SELECT 
    c.id_cliente,
    c.nombre,
    c.apellido
FROM 
    cliente c
LEFT JOIN 
    pedido p ON c.id_cliente = p.id_cliente
WHERE 
    p.fecha_pedido IS NULL;

-- Resultado
<pre>+------------+--------+----------+
| id_cliente | nombre | apellido |
+------------+--------+----------+
|         10 | Javier | Ruiz     |
+------------+--------+----------+
</pre>

-- #29 Devuelve un listado que muestre los clientes que no han realizado ningún
-- pago y los que no han realizado ningún pedido.

SELECT 
    c.id_cliente,
    c.nombre,
    c.apellido,
    p.fecha_pedido,
    pa.fecha_pago
FROM 
    cliente c
LEFT JOIN 
    pedido p ON c.id_cliente = p.id_cliente
LEFT JOIN 
    pago pa ON c.id_cliente = pa.id_cliente
WHERE 
    p.fecha_pedido IS NULL OR pa.fecha_pago IS NULL;

-- Resultado
<pre>+------------+--------+----------+--------------+------------+
| id_cliente | nombre | apellido | fecha_pedido | fecha_pago |
+------------+--------+----------+--------------+------------+
|         10 | Javier | Ruiz     | NULL         | NULL       |
+------------+--------+----------+--------------+------------+
</pre>

-- #30 Devuelve un listado que muestre solamente los empleados que no tienen
una oficina asociada.

SELECT 
    id_empleado,
    nombre,
    apellido,
    extension,
    email,
    codigo_jefe,
    id_oficina,
    puesto
FROM 
    empleado
WHERE 
    id_oficina IS NULL;

-- Resultado 
<pre>+-------------+--------+-----------+-----------+----------------------------+-------------+------------+-------------------------+
| id_empleado | nombre | apellido  | extension | email                      | codigo_jefe | id_oficina | puesto                  |
+-------------+--------+-----------+-----------+----------------------------+-------------+------------+-------------------------+
|           3 | María  | Martínez  | 9012      | maria.martinez@example.com |           2 | NULL       | Representante de Ventas |
+-------------+--------+-----------+-----------+----------------------------+-------------+------------+-------------------------+
</pre>

-- #31 Devuelve un listado que muestre solamente los empleados que no tienen un
cliente asociado.

SELECT 
    c.id_cliente,
    c.nombre,
    c.apellido,
    c.linea_direccion1,
    c.linea_direccion2,
    c.id_empleado,
    c.limite_credito
FROM 
    cliente c
LEFT JOIN 
    empleado e ON c.id_empleado = e.id_empleado
WHERE 
    e.id_empleado IS NULL;

-- Resultado
<pre>+------------+--------+----------+---------------------+------------------+-------------+----------------+
| id_cliente | nombre | apellido | linea_direccion1    | linea_direccion2 | id_empleado | limite_credito |
+------------+--------+----------+---------------------+------------------+-------------+----------------+
|          3 | Carlos | López    | Calle de las Flores | N° 456           |        NULL |         750.00 |
+------------+--------+----------+---------------------+------------------+-------------+----------------+
</pre>

-- #32 Devuelve un listado que muestre solamente los empleados que no tienen un
-- cliente asociado junto con los datos de la oficina donde trabajan.

SELECT 
    e.id_empleado,
    e.nombre,
    e.apellido,
    e.extension,
    e.email,
    e.id_oficina,
    e.codigo_jefe,
    e.puesto,
    o.linea_direccion1 AS direccion_oficina,
    o.linea_direccion2 AS complemento_direccion_oficina
FROM 
    cliente c
RIGHT JOIN 
    empleado e ON c.id_empleado = e.id_empleado
LEFT JOIN 
    oficina o ON e.id_oficina = o.id_oficina
WHERE 
    c.id_empleado IS NULL;

-- Resultado
<pre>+-------------+--------+------------+-----------+---------------------------+------------+-------------+-------------------------------+---------------------+-------------------------------+
| id_empleado | nombre | apellido   | extension | email                     | id_oficina | codigo_jefe | puesto                        | direccion_oficina   | complemento_direccion_oficina |
+-------------+--------+------------+-----------+---------------------------+------------+-------------+-------------------------------+---------------------+-------------------------------+
|        NULL | Ana    | López      | 1234      | ana.lopez@example.com     | 1          |        NULL | Jefe                          | 123 Calle Principal | Oficina 101                   |
|        NULL | Pedro  | García     | 5678      | pedro.garcia@example.com  | 1          |           1 | Supervisor de Ventas          | 123 Calle Principal | Oficina 101                   |
|        NULL | Ana    | Hernández  | 6789      | ana.hernandez@example.com | 3          |           5 | Gerente de Recursos Humanos   | Rua das Flores, 67  | Edificio Jardín, Piso 3       |
|        NULL | Sofía  | Díaz       | 1234      | sofia.diaz@example.com    | 3          |           7 | Especialista en Capacitación  | Rua das Flores, 67  | Edificio Jardín, Piso 3       |
|        NULL | Javier | Ruiz       | 5678      | javier.ruiz@example.com   | 3          |           7 | Especialista en Contratación  | Rua das Flores, 67  | Edificio Jardín, Piso 3       |
|        NULL | María  | López      | 9012      | maria.lopez@example.com   | 3          |           7 | Asistente Administrativo      | Rua das Flores, 67  | Edificio Jardín, Piso 3       |
+-------------+--------+------------+-----------+---------------------------+------------+-------------+-------------------------------+---------------------+-------------------------------+
</pre>

-- #33 Devuelve un listado que muestre los empleados que no tienen una oficina
-- asociada y los que no tienen un cliente asociado.

SELECT 
    e.id_empleado,
    e.nombre,
    e.apellido,
    e.extension,
    e.email,
    e.id_oficina,
    e.codigo_jefe,
    e.puesto
FROM 
    empleado e
LEFT JOIN 
    oficina o ON e.id_oficina = o.id_oficina
LEFT JOIN 
    cliente c ON e.id_empleado = c.id_empleado
WHERE 
    o.id_oficina IS NULL OR c.id_empleado IS NULL;

-- Resultado
<pre>+-------------+--------+------------+-----------+----------------------------+------------+-------------+-------------------------------+
| id_empleado | nombre | apellido   | extension | email                      | id_oficina | codigo_jefe | puesto                        |
+-------------+--------+------------+-----------+----------------------------+------------+-------------+-------------------------------+
|           1 | Ana    | López      | 1234      | ana.lopez@example.com      | 1          |        NULL | Jefe                          |
|           2 | Pedro  | García     | 5678      | pedro.garcia@example.com   | 1          |           1 | Supervisor de Ventas          |
|           3 | María  | Martínez   | 9012      | maria.martinez@example.com | NULL       |           2 | Representante de Ventas       |
|           7 | Ana    | Hernández  | 6789      | ana.hernandez@example.com  | 3          |           5 | Gerente de Recursos Humanos   |
|           8 | Sofía  | Díaz       | 1234      | sofia.diaz@example.com     | 3          |           7 | Especialista en Capacitación  |
|           9 | Javier | Ruiz       | 5678      | javier.ruiz@example.com    | 3          |           7 | Especialista en Contratación  |
|          10 | María  | López      | 9012      | maria.lopez@example.com    | 3          |           7 | Asistente Administrativo      |
+-------------+--------+------------+-----------+----------------------------+------------+-------------+-------------------------------+
</pre>

-- #34 Devuelve un listado de los productos que nunca han aparecido en un
-- pedido.

SELECT 
    p.id_producto,
    p.nombre,
    p.id_gama,
    p.dimensiones,
    p.descripcion,
    p.cantidad_en_stock,
    p.precio_venta,
    dp.id_producto
FROM 
    producto p
LEFT JOIN 
    detalle_pedido dp ON p.id_producto = dp.id_producto
WHERE 
    dp.id_producto IS NULL;

-- Resultado
<pre>+-------------+---------------------+----------------------+-------------------------+----------------------------------------------------------+-------------------+--------------+-------------+
| id_producto | nombre              | id_gama              | dimensiones             | descripcion                                              | cantidad_en_stock | precio_venta | id_producto |
+-------------+---------------------+----------------------+-------------------------+----------------------------------------------------------+-------------------+--------------+-------------+
|           2 | Maceta de terracota | Macetas y jardineras | 8 pulgadas de diámetro  | Maceta de terracota resistente para plantas de interior. |                50 |        12.50 |        NULL |
+-------------+---------------------+----------------------+-------------------------+----------------------------------------------------------+-------------------+--------------+-------------+
</pre>

-- #35 Devuelve un listado de los productos que nunca han aparecido en un
-- pedido. El resultado debe mostrar el nombre, la descripción y la imagen del
-- producto.

SELECT 
    p.nombre,
    p.descripcion,
    gp.imagen
FROM 
    producto p
LEFT JOIN 
    detalle_pedido dp ON p.id_producto = dp.id_producto
LEFT JOIN 
    gama_producto gp ON p.id_gama = gp.id_gama
WHERE 
    dp.id_producto IS NULL;

-- Resultado
<pre>+---------------------+----------------------------------------------------------+-------------+
| nombre              | descripcion                                              | imagen      |
+---------------------+----------------------------------------------------------+-------------+
| Maceta de terracota | Maceta de
terracota resistente para plantas de interior. | macetas.jpg |
+---------------------+----------------------------------------------------------+-------------+
</pre>
