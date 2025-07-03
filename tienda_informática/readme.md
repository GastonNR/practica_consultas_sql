# Ejercicios. Realización de consultas SQL
## Tienda informática
### Modelo entidad/relación

!(/img/tienda_de_informatica.jpg)

## Consultas sobre una tabla
- Lista el nombre de todos los productos que hay en la tabla producto.

- Lista los nombres y los precios de todos los productos de la tabla producto.

- Lista todas las columnas de la tabla producto.

- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).

- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.

- Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.

- Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.

- Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.

- Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.

- Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.

- Lista el identificador de los fabricantes que tienen productos en la tabla producto.

- Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.

- Lista los nombres de los fabricantes ordenados de forma ascendente.

- Lista los nombres de los fabricantes ordenados de forma descendente.

- Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.

- Devuelve una lista con las 5 primeras filas de la tabla fabricante.

- Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.

- Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)

- Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)

- Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.

- Lista el nombre de los productos que tienen un precio menor o igual a 120€.

- Lista el nombre de los productos que tienen un precio mayor o igual a 400€.

- Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.

- Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.

- Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.

- Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6.

- Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.

- Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.

- Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.

- Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.

- Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.

- Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.

- Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.

- Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.

- Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.

- Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. 
- Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).

## Consultas multitabla (Composición interna)
Resuelva todas las consultas utilizando la sintaxis de SQL1 y SQL2.

- Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.

- Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.

- Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.

- Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.

- Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.

- Devuelve una lista de todos los productos del fabricante Lenovo.

- Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.

- Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Sin utilizar el operador IN.

- Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.

- Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.

- Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.

- Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)

- Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.

## Consultas multitabla (Composición externa)
Resuelva todas las consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN.

- Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.

- Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.

- ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.