--I Averiguar los rubros con movimientos del 15 al 30 de Abril del 2010 (Rsta: 3 filas)
/*SELECT R.*
FROM FACTURAS F INNER JOIN DETALLES D ON F.Nrofactura=D.Nrofactura INNER JOIN ARTICULOS A ON D.Articulo=A.Nroartic INNER JOIN RUBROS R ON A.Rubro=R.Cod_rubro
WHERE F.Fecha BETWEEN '15-4-2010' AND '30-4-2010'
GROUP BY R.Cod_rubro*/

SELECT *
FROM RUBROS R
WHERE EXISTS(
	SELECT A.Rubro FROM ARTICULOS A, DETALLES D, FACTURAS F
	WHERE A.Nroartic=D.Articulo AND D.Nrofactura=F.Nrofactura
		AND R.Cod_rubro=A.RUBRO 
		AND F.fecha BETWEEN '15-4-2010' AND '30-4-2010')

		
--3 + G + H + O + Y + T
 
