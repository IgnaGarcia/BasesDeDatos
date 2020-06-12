-- P) Listar los articulos que tengan un stock menor al stock minimo y NO se hayan
--    vendido en Junio del 2010
--    Resultado: 1 fila
SELECT *
FROM ARTICULOS A
WHERE PTO_REPOSICION>STOCK AND NOT EXISTS(
			SELECT ARTICULO
			FROM DETALLES D INNER JOIN FACTURAS F ON F.NROFACTURA=D.NROFACTURA
			WHERE D.ARTICULO=A.NROARTIC AND 
				FECHA BETWEEN '2010-6-1' AND '2010-6-30')