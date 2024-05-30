-- Aqui se encontraran todas las consultas

-- #1 Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.

  select o.id_oficina, p.id_pais, p.ciudad
  from oficina as o
  left join pais as p on p.id_pais = o.id_oficina;
  
  -- Resultado
  
+------------+---------+-------------------+
| id_oficina | id_pais | ciudad            |
+------------+---------+-------------------+
| 1          |       1 | Nueva York        |
| 2          |       2 | Madrid            |
| 3          |       3 | Sao Paulo         |
| 4          |       4 | Pekín             |
| 5          |       5 | Berlín            |
| 6          |       6 | Toronto           |
| 7          |       7 | Sídney            |
| 8          |       8 | Nueva Delhi       |
| 9          |       9 | París             |
| 10         |      10 | Ciudad de México  |
+------------+---------+-------------------+

-- #2 Devuelve un listado con la ciudad y el teléfono de las oficinas de España.

  select t.id_oficina, p.nombre_pais, p.ciudad, t.num_telefono
  from telefono as t
  left join pais as p on p.id_pais = t.id_telefono
  where p.nombre_pais = "España";
  
  -- Resultado 
  
+------------+-------------+--------+--------------+
| id_oficina | nombre_pais | ciudad | num_telefono |
+------------+-------------+--------+--------------+
| 2          | España      | Madrid |    987654321 |
+------------+-------------+--------+--------------+


-- #3 Devuelve un listado con el nombre, apellidos y email de los empleados cuyo
-- jefe tiene un código de jefe igual a 7.

  select nombre, apellido, email, codigo_jefe
  from empleado
  where codigo_jefe = 7;
  
  -- Resultado
  
+--------+----------+-------------------------+-------------+
| nombre | apellido | email                   | codigo_jefe |
+--------+----------+-------------------------+-------------+
| Sofía  | Díaz     | sofia.diaz@example.com  |           7 |
| Javier | Ruiz     | javier.ruiz@example.com |           7 |
| María  | López    | maria.lopez@example.com |           7 |
+--------+----------+-------------------------+-------------+


-- #4 Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la
-- empresa.

 select nombre, apellido, puesto, email, codigo_jefe
 from empleado
 where codigo_jefe is NULL;
 
-- Resultado

+--------+----------+--------+-----------------------+-------------+
| nombre | apellido | puesto | email                 | codigo_jefe |
+--------+----------+--------+-----------------------+-------------+
| Ana    | López    | Jefe   | ana.lopez@example.com |        NULL |
+--------+----------+--------+-----------------------+-------------+

 
-- #5 Devuelve un listado con el nombre, apellidos y puesto de aquellos
--    empleados que no sean representantes de ventas.

 select nombre, apellido, puesto
 from empleado
 where puesto = "Representante de Ventas";
 
-- Resultado

+--------+-----------+-------------------------+
| nombre | apellido  | puesto                  |
+--------+-----------+-------------------------+
| María  | Martínez  | Representante de Ventas |
+--------+-----------+-------------------------+

 
-- #6 Devuelve un listado con el nombre de los todos los clientes españoles.

 select c.nombre, c.apellido, p.nombre_pais
 from cliente as c
 left join pais as p on p.id_pais = c.id_cliente
 where p.nombre_pais = "España";

-- Resultado

+--------+----------+-------------+
| nombre | apellido | nombre_pais |
+--------+----------+-------------+
| María  | García   | España      |
+--------+----------+-------------+

-- #7 Devuelve un listado con los distintos estados por los que puede pasar un
--    pedido.

 select id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado
 from pedido;
 
 -- Resultado
 
+-----------+--------------+----------------+---------------+-----------+
| id_pedido | fecha_pedido | fecha_esperada | fecha_entrega | estado    |
+-----------+--------------+----------------+---------------+-----------+
|         1 | 2024-05-01   | 2024-05-05     | 2024-05-04    | Entregado |
|         2 | 2024-05-02   | 2024-05-06     | NULL          | Pendiente |
|         3 | 2024-05-03   | 2024-05-07     | NULL          | Pendiente |
|         4 | 2024-05-04   | 2024-05-08     | NULL          | Pendiente |
|         5 | 2024-05-05   | 2024-05-09     | NULL          | Pendiente |
|         6 | 2024-05-06   | 2024-05-10     | NULL          | Pendiente |
|         7 | 2024-05-07   | 2024-05-11     | NULL          | Pendiente |
|         8 | 2024-05-08   | 2024-05-12     | NULL          | Pendiente |
|         9 | 2024-05-09   | 2024-05-13     | NULL          | Pendiente |
|        10 | 2024-05-10   | 2024-05-14     | NULL          | Pendiente |
+-----------+--------------+----------------+---------------+-----------+

