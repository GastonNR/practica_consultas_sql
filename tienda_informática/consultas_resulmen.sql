/*----------------CONSULTAS RESUMEN-----------------------------*/
--Calcula el número total de productos que hay en la tabla productos.
SELECT COUNT(nombre) AS 'Cantidad de productos' FROM producto;

--Calcula el número total de fabricantes que hay en la tabla fabricante.
SELECT COUNT(nombre) AS 'Cantidad de fabricantes' FROM fabricante;

--Calcula el número de valores distintos de identificador de fabricante aparecen en la tabla productos
SELECT COUNT(
    DISTINCT producto.codigo_fabricante
)
AS 'Cantidad de fabricantes distintos en la tabla producto'
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.id;

--Calcula la media del precio de los productos
SELECT AVG(precio) AS 'Media del precio' FROM producto;