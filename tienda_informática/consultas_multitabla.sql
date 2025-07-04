--Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
SELECT 
    producto.nombre AS 'Producto',
    producto.precio AS 'Precio',
    fabricante.nombre AS 'Fabricante'
FROM 
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
;

--Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.
SELECT
    producto.nombre AS 'Producto',
    producto.precio AS 'Precio',
    fabricante.nombre AS 'Fabricante'
FROM 
    producto
JOIN 
    fabricante ON codigo_fabricante = fabricante.id
ORDER BY 
    fabricante.nombre ASC
;

--Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.
SELECT 
    producto.codigo AS 'Código',
    producto.nombre AS 'Producto',
    producto.codigo_fabricante AS 'ID fabricante',
    fabricante.nombre AS 'Fabricante'
FROM 
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
;

--Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
SELECT 
    producto.nombre AS 'Producto',
    producto.precio AS 'Precio',
    fabricante.nombre AS 'Fabricante'
FROM 
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE 
    producto.precio = (
        SELECT MIN(precio) FROM producto
    )
;

--Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
SELECT 
    producto.nombre AS 'Producto',
    producto.precio AS 'Precio',
    fabricante.nombre AS 'Fabricante'
FROM 
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE 
    producto.precio = (
        SELECT MAX(precio) FROM producto
    )
;

--Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT
    producto.nombre AS 'Producto'
FROM
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE
    fabricante.nombre LIKE 'lenovo'
;

--Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
SELECT
    producto.nombre AS 'Producto'
FROM
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE
    fabricante.nombre LIKE 'crucial' && producto.precio > 200
;

--Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Sin utilizar el operador IN.
SELECT
    producto.nombre AS 'Producto'
FROM
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE
    fabricante.nombre LIKE 'Asus' || fabricante.nombre LIKE 'Hewlett-Packard' || fabricante.nombre LIKE 'Seagate'
;

--Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.
SELECT
    producto.nombre AS 'Producto'
FROM
    producto
JOIN 
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE
    fabricante.nombre IN('Asus', 'Hewlett-Packard', 'Seagate')
;

--Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
SELECT
    producto.nombre AS 'Producto',
    producto.precio
FROM
    producto
JOIN
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE
    RIGHT(fabricante.nombre, 1) LIKE 'e'
;

--Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
SELECT
    producto.nombre AS 'Producto',
    producto.precio
FROM
    producto
JOIN
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE
    INSTR(fabricante.nombre, 'w')
;

--Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)
SELECT
    producto.nombre AS 'Producto',
    producto.precio AS 'Precio',
    fabricante.nombre AS 'Fabricante'
FROM
    producto
JOIN
    fabricante ON producto.codigo_fabricante = fabricante.id
WHERE
    producto.precio >= 180
ORDER BY
    producto.precio DESC,
    producto.nombre ASC
;

--Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
SELECT DISTINCT
    fabricante.id,
    fabricante.nombre
FROM
    fabricante
JOIN
    producto ON fabricante.id = producto.codigo_fabricante
;
