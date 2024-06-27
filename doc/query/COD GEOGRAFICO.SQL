--DEPTO-PROV-MUNICIPIO

SELECT
M.ga_departamento,
P.ubicacion_provincia,
M.ga_descripcion AS MUNICIP
FROM
p_gobierno_autonomo_rami AS M
INNER JOIN p_ubicacion_geografica AS P ON M.ga_codigo_provincia = P.ubicacion_codigo
WHERE
M.ga_tipo = 3 AND
P.ubicacion_nivel = 2

-- COMUNICAD 
SELECT
P.ubicacion_departamento,
P.ubicacion_provincia,
P.ubicacion_municipio,
P.ubicacion_comunidad
FROM
p_ubicacion_geografica AS P
WHERE
P.ubicacion_nivel = 4