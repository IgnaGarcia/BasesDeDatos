-- Q) Listar los articulos que tengan un precio mayor a la mitad del precio
--    promedio de los articulos y un stock minimo mayor a 200 unidades. (6 filas)
SELECT *
FROM ARTICULOS
WHERE PTO_REPOSICION>200 AND PRECIO>(SELECT AVG(PRECIO)/2 FROM ARTICULOS)
