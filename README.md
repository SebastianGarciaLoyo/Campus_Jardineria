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

select c.nombre as cliente, p.forma_pago, e.nombre, e.apellido, e.puesto

from cliente as c

left join empleado as e on e.id_empleado = c.id_empleado

right join pago as p on c.id_cliente = p.id_cliente

where e.puesto = "Representante de Ventas";
