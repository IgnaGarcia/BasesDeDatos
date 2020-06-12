--D) Averiguar los clientes que vivan en Capital o en Carapachay y no sean deudores
SELECT *
FROM CLIENTES
WHERE Saldocli>0 AND (Localidad='Carapachay' OR Localidad='Capital Federal')