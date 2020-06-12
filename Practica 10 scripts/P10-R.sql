-- R) Listar los datos cabecera de las Facturas de mas de $200 y que la cantidad
--    de articulos facturados en la misma sea mayor a 30 
--    (Rsta: 4 filas)
SELECT F.*, SUM(PRECIOUNI*CANTIDAD) PRECIO, SUM(CANTIDAD) CANTIDAD
FROM FACTURAS F INNER JOIN DETALLES D ON F.NROFACTURA=D.NROFACTURA


GROUP BY F.NROFACTURA
HAVING SUM(CANTIDAD)>30 AND SUM(PRECIOUNI*CANTIDAD)>200