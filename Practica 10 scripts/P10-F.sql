-- F) Hallar los importes totales dia a dia durante abril del 2010, ordenados en
--    forma decreciente. (Rsta: 5 filas)
SELECT SUM(PRECIOUNI * CANTIDAD) ImporteDiario
FROM FACTURAS F INNER JOIN DETALLES D ON F.NROFACTURA=D.NROFACTURA
WHERE FECHA BETWEEN '2010-4-1' AND '2010-4-30'

GROUP BY FECHA
ORDER BY ImporteDiario DESC