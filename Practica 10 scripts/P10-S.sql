-- S) Listar los datos cabecera de las Facturas de mas de $200 y que la cantidad
--    de articulos facturados en la misma sea mayor al 5% del stock promedio
--    de los rubros "Herramienta%"
--    (Rsta: 5 FILAS)
SELECT F.*, SUM(PRECIOUNI*CANTIDAD) PRECIO, SUM(CANTIDAD) CANT
FROM FACTURAS F INNER JOIN DETALLES D ON F.NROFACTURA=D.NROFACTURA

GROUP BY F.NROFACTURA
HAVING SUM(PRECIOUNI*CANTIDAD)>200 
		AND SUM(CANTIDAD)>(
			SELECT AVG(STOCK)*5/100 FROM ARTICULOS A INNER JOIN RUBROS R
				ON A.RUBRO=R.COD_RUBRO
			WHERE R.DESCRIPCION ILIKE 'HERRAMIENTA%')