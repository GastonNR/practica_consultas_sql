/*--------------------------- Subconsultas en la cláusula WHERE -------------------------*/
-- Con operadores básicos de comparación

--Devuelve todos los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo.
SELECT * FROM producto
WHERE producto.codigo_fabricante = (
    SELECT id FROM fabricante 
    WHERE fabricante.nombre LIKE 'lenovo'
);

--Lista el nombre del producto más caro del fabricante Lenovo.
SELECT producto.nombre AS 'Producto'
FROM producto
WHERE producto.precio = (
    SELECT MAX(producto.precio)
    FROM producto
    WHERE producto.codigo_fabricante = (
        SELECT fabricante.id FROM fabricante
        WHERE LOWER(fabricante.nombre) = 'lenovo'
    )
);

--Lista el nombre del producto más barato del fabricante Hewlett-Packard.
SELECT producto.nombre AS 'Producto'
FROM producto
WHERE producto.precio = (
    SELECT MIN(producto.precio)
    FROM producto
    WHERE producto.codigo_fabricante = (
        SELECT fabricante.id FROM fabricante
        WHERE LOWER(fabricante.nombre) = 'hewlett-packard'
    )
);

--Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.
SELECT producto.nombre AS 'Producto'
FROM producto
WHERE producto.precio >= (
    SELECT MAX(producto.precio) FROM producto
    WHERE producto.codigo_fabricante = (
        SELECT fabricante.id FROM fabricante
        WHERE LOWER(fabricante.nombre) = 'lenovo'
    )
);

--Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.
SELECT producto.nombre AS 'Producto'
FROM producto
WHERE producto.codigo_fabricante = (
    SELECT fabricante.id FROM fabricante
    WHERE LOWER(fabricante.nombre) LIKE 'asus'
) && producto.precio > (
    SELECT AVG(producto.precio) FROM producto 
);

--Subconsultas con ALL y ANY

--Devuelve el producto más caro que existe en la tabla producto sin hacer uso de MAX, ORDER BY ni LIMIT.
SELECT producto.nombre, precio FROM producto
WHERE producto.precio >= ALL(
    SELECT producto.precio FROM producto
);

--Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni LIMIT.
SELECT producto.nombre, precio FROM producto
WHERE producto.precio <= ANY(
    SELECT producto.precio FROM producto
);

--Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).
SELECT fabricante.nombre from fabricante
WHERE fabricante.id = ANY(
    SELECT producto.codigo_fabricante from producto
);

--Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando ALL o ANY).
SELECT fabricante.nombre from fabricante
WHERE NOT (fabricante.id = ANY(
    SELECT producto.codigo_fabricante from producto
));
