SELECT d.ubicacion_codigo, d.ubicacion_departamento
FROM p_ubicacion_geografica AS d
WHERE d.ubicacion_nivel = 1 ;

SELECT d.ubicacion_codigo,
d.ubicacion_provincia,
d.ubicacion_padre
FROM p_ubicacion_geografica AS d
WHERE d.ubicacion_nivel = 2  and ubicacion_padre=2
order by ubicacion_provincia ;

SELECT r.ga_codigo, r.ga_descripcion,
r.ga_codigo_provincia
FROM p_gobierno_autonomo_rami AS r
WHERE  ga_tipo=3 and ga_codigo_provincia=0212
ORDER BY r.ga_descripcion ASC;

SELECT * FROM t_proyecto
where proyecto_id=1 ;

SELECT * FROM p_ubicacion_geografica;

SELECT *
FROM
p_gobierno_autonomo_rami AS g
where ga_codigo=021201