-- K) Listar Numero y nombre de los cliente y la cantidad de facturas que tuvo durante
--    Marzo y Abril del 2010 con articulos del rubro 3 y CON MAS DE 2 FACTURAS, 
--    ordenado por numero de cliente. (Rsta: 1 fila)
SELECT C.NROCLI, C.NYAPE, COUNT(F.NROFACTURA) CANTFACTURAS
FROM CLIENTES C INNER JOIN FACTURAS F ON C.NROCLI=F.CLIENTE 
				INNER JOIN DETALLES D ON F.NROFACTURA=D.NROFACTURA
				INNER JOIN ARTICULOS A ON D.ARTICULO=A.NROARTIC
WHERE A.RUBRO= 3 AND (F.FECHA BETWEEN '2010-3-1' AND '2010-4-30') 

GROUP BY C.NROCLI
HAVING COUNT(F.NROFACTURA)>2
ORDER BY C.NROCLI