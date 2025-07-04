--Lista el nombre de todos los productos que hay en la tabla producto.
SELECT nombre FROM producto;
--Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre, precio FROM producto;
--Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
SELECT nombre, precio, precio * 1.07 FROM producto;
--Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
SELECT nombre AS 'Nombre producto', precio AS 'EUR', precio * 0.17 AS 'USD' FROM producto;
--Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT UPPER(nombre), precio FROM producto;
--Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
SELECT LOWER(nombre), precio FROM producto;
--Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT nombre, UPPER(
    SUBSTRING(nombre, 1, 2)    
) FROM fabricante;
--Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT nombre AS 'Producto', ROUND(precio) FROM producto;
--Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT nombre AS 'Producto', TRUNCATE(precio, 0) FROM producto;
--Lista el identificador de los fabricantes que tienen productos en la tabla producto.
SELECT codigo_fabricante AS 'Id del fabricante' FROM producto;
--Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.
SELECT DISTINCT codigo_fabricante FROM producto;
--Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM fabricante ORDER BY nombre ASC;
--Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre FROM fabricante ORDER BY nombre DESC;
--Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre AS 'Producto', precio FROM producto ORDER BY nombre ASC, precio DESC;
--Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * FROM fabricante LIMIT 5;
--Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
SELECT * FROM fabricante LIMIT 2 OFFSET 3;
--Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre AS 'Producto', precio AS 'Precio más barato' FROM producto ORDER BY precio ASC LIMIT 1;
--Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre AS 'Producto', precio AS 'Precio más caro' FROM producto ORDER BY precio DESC LIMIT 1;
--Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
SELECT nombre AS 'Producto' FROM producto WHERE codigo_fabricante = 2;
--Lista el nombre de los productos que tienen un precio menor o igual a 120€.
SELECT nombre AS 'Producto' FROM producto WHERE precio <= 120;
--Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
SELECT nombre AS 'Producto' FROM producto WHERE precio >= 400;
--Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
SELECT nombre AS 'Producto' FROM producto WHERE NOT precio >= 400;
--Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.
SELECT nombre AS 'Producto' FROM producto WHERE precio >= 80 && precio <= 300;
--ista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.
SELECT nombre AS 'Producto' FROM producto WHERE precio BETWEEN 60 AND 200;
--Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6.
SELECT nombre AS 'Producto' FROM producto WHERE precio > 200 && codigo_fabricante = 6;
--Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
SELECT nombre AS 'Producto' FROM producto WHERE codigo_fabricante = 1 || codigo_fabricante = 3 || codigo_fabricante = 5;
--Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.
SELECT nombre AS 'Producto' FROM producto WHERE codigo_fabricante IN(1, 3, 5);
--Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.
SELECT nombre AS 'Producto', precio * 100 AS 'Céntimos' FROM producto;
--Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
SELECT nombre AS 'Nombre del fabricante' FROM fabricante WHERE LEFT(nombre, 1) LIKE 's';
--Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
SELECT nombre AS 'Nombre del fabricante' FROM fabricante WHERE RIGHT(nombre, 1) LIKE 'e';
--Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
SELECT nombre AS 'Nombre del fabricante' FROM fabricante WHERE INSTR(nombre, 'w');
--Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
SELECT nombre AS 'Nombre del fabricante' FROM fabricante WHERE CHAR_LENGTH(nombre) = 4;
--Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.
SELECT nombre AS 'Producto' FROM producto WHERE INSTR(nombre, 'portátil');
--Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
SELECT nombre AS 'Producto' FROM producto WHERE INSTR(nombre, 'monitor') && precio < 215;
--Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).
SELECT nombre, precio FROM producto WHERE precio >= 180 ORDER BY precio DESC, nombre ASC;