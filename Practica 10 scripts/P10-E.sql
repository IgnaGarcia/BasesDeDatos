-- E) Averiguar la cantidad de cada uno de los art�culos vendidos durante
--    marzo del 2010, ordenado segun la cantidad vendida.
--    (Rsta: 13 FILAS)
SELECT SUM(CANTIDAD) CANT
FROM FACTURAS F INNER JOIN DETALLES D ON F.NROFACTURA=D.NROFACTURA
WHERE FECHA BETWEEN '2010-3-1' AND '2010-3-31'

GROUP BY ARTICULO
ORDER BY CANT DESC
