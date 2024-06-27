drop view if EXISTS v_lac_estaciones_listado ;

create view v_lac_estaciones_listado  as

select l.lac_estacion_id AS lac_estacion_id,format(l.lac_monto_base,2) AS monto ,l.lac_plazo_ejecucion AS plazo,
d.lac_descripcion AS descripcion_tipo,l.lac_proyecto_id AS lac_proyecto_id ,
1 licitacion, 1 adjudicacion, 1 contratacion
from (t_licitacion_adjudicacion_cotratacion_proyecto_estacion l join p_licitacion_adjudicacion_contratacion d 
on((l.licitacion_adjudicacion_contratacion_id = d.licitacion_adjudicacion_contratacion_id))) ;


drop view if EXISTS v_lac_licitacion_listado ;

CREATE VIEW v_lac_licitacion_listado as
SELECT l.lac_licitacion_id,
l.lac_lic_proy_id,
l.lac_lic_estacion_id,
COALESCE(l.lac_lic_numero_convocatoria,'') convocatoria,
COALESCE(l.lac_lic_codigo_cuce,'') cuce,
COALESCE(l.lac_lic_codigo_convocatoria,'') codigo
FROM t_lac_estacion_licitacion AS l


drop view if EXISTS v_lac_estaciones_listado;

create VIEW v_lac_estaciones_listado as 
select l.lac_estacion_id AS lac_estacion_id,format(lac_monto_base,2) AS monto,lac_plazo_ejecucion AS plazo,
d.lac_descripcion AS descripcion_tipo,lac_proyecto_id AS lac_proyecto_id,1 AS licitacion,
1 AS adjudicacion,1 AS contratacion
FROM t_licitacion_adjudicacion_cotratacion_proyecto_estacion AS l
JOIN p_licitacion_adjudicacion_contratacion AS d 
ON  l.licitacion_adjudicacion_contratacion_tipo_id = d.licitacion_adjudicacion_contratacion_id 