-- L) Calcular la cantidad de unidades del articulo 4040 vendidas en marzo del 2010.
--    (Rsta: 8 articulos)
SELECT SUM(D.CANTIDAD)
FROM FACTURAS F INNER JOIN DETALLES D ON F.NROFACTURA=D.NROFACTURA
WHERE F.FECHA BETWEEN '2010-3-1' AND '2010-3-31' AND ARTICULO = 4040
