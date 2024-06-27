  insert INTO p_ubicacion_geografica
SELECT
hoja1.codigo,
hoja1.departamento,
hoja1.provincia,
hoja1.seccion,
hoja1.ciudad,
'' AS mun,
'' AS comun,
hoja1.nivel
FROM
hoja1
WHERE codigo not in (    SELECT
 codigo  
FROM
hoja1
GROUP BY  codigo
HAVING COUNT(*)>1)