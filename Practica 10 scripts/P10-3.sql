-- 3) Generar un unico Select con el o los articulos mas caros y con el o los mas baratos
SELECT *
FROM ARTICULOS A
WHERE PRECIO=(SELECT MAX(PRECIO) FROM ARTICULOS) 
	OR PRECIO=(SELECT MIN(PRECIO) FROM ARTICULOS)

