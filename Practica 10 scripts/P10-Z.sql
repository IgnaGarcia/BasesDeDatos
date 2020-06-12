-- Z) Listar los rubros (y la cantidad de articulos vendidos) de cada rubro que haya
--    vendido mas de 30 articulos.
SELECT R.*, COUNT(*) VENTAS
FROM RUBROS R, ARTICULOS A, DETALLES D
WHERE R.COD_RUBRO=A.RUBRO AND A.NROARTIC=D.ARTICULO

GROUP BY R.COD_RUBRO
HAVING COUNT(*)>30