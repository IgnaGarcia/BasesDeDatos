-- 4) Listar los datos de los clientes que no compraron ningun articulo
SELECT *
FROM CLIENTES C
WHERE NOT EXISTS(SELECT CLIENTE FROM FACTURAS F WHERE C.NROCLI=F.CLIENTE)