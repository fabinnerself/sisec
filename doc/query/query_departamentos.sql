-- departamento 
SELECT  ubicacion_codigo ID_DEPTO,  ubicacion_departamento NOMBRE_DEPTO
FROM p_ubicacion_geografica  
WHERE  ubicacion_nivel = 1;

-- provincia 
SELECT  ubicacion_codigo id_provincia,
ubicacion_provincia nombre_provincia,
ubicacion_padre id_departamento
FROM p_ubicacion_geografica    
WHERE  ubicacion_nivel = 2;

-- provincia y departamento
SELECT p.ubicacion_codigo,
p.ubicacion_provincia,
p.ubicacion_padre,
NOMBRE_DEPTO
FROM p_ubicacion_geografica AS p, (  SELECT  ubicacion_codigo ID_DEPTO,  ubicacion_departamento NOMBRE_DEPTO
FROM p_ubicacion_geografica  
WHERE  ubicacion_nivel = 1) d
WHERE p.ubicacion_padre=d.ID_DEPTO and
p.ubicacion_nivel = 2 ;

-- municipio y provincia
SELECT m.ga_codigo id_municipio,
m.ga_descripcion nombre_municipio,
m.ga_codigo_provincia id_provincia,nombre_provincia
FROM p_gobierno_autonomo_rami AS m, ( SELECT  ubicacion_codigo id_provincia,
ubicacion_provincia nombre_provincia,
ubicacion_padre id_departamento
FROM p_ubicacion_geografica    
WHERE  ubicacion_nivel = 2) p 
WHERE ga_codigo_provincia=p.id_provincia and
m.ga_tipo = 3


-- municipio/provincia/departamento
SELECT m.ga_codigo id_municipio,
m.ga_descripcion nombre_municipio,
m.ga_codigo_provincia id_provincia,nombre_provincia,
id_departamento , NOMBRE_DEPTO
FROM p_gobierno_autonomo_rami AS m, ( SELECT  ubicacion_codigo id_provincia,
ubicacion_provincia nombre_provincia,
ubicacion_padre id_departamento
FROM p_ubicacion_geografica    
WHERE  ubicacion_nivel = 2) p ,(SELECT  ubicacion_codigo ID_DEPTO,  ubicacion_departamento NOMBRE_DEPTO
FROM p_ubicacion_geografica  
WHERE  ubicacion_nivel = 1) d
WHERE ga_codigo_provincia=p.id_provincia and
d.ID_DEPTO=id_departamento and m.ga_tipo = 3