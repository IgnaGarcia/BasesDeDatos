-- J) Listar Numero y nombre de los cliente. Ademes, listar la cantidad de facturas que
--    tuvo durante Marzo y Abril del 2010 considerando SOLO las facturas en las que compro
--    articulos del rubro 3, ordenado por numero de cliente. (Rsta: 7 filas)
SELECT C.NROCLI, C.NYAPE, COUNT(F.NROFACTURA) CANTFACTURAS
FROM CLIENTES C INNER JOIN FACTURAS F ON C.NROCLI=F.CLIENTE 
				INNER JOIN DETALLES D ON F.NROFACTURA=D.NROFACTURA
				INNER JOIN ARTICULOS A ON D.ARTICULO=A.NROARTIC
WHERE A.RUBRO= 3 AND F.FECHA BETWEEN '2010-3-1' AND '2010-4-30'

GROUP BY C.NROCLI
ORDER BY NROCLI