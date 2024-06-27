 SELECT proyecto_id,ar ,mid(pe,LOCATE('-',pe,2)+1,LENGTH(pe)) re FROM (
SELECT proyecto_id,fn_proy_obtiene_dep_prov_mun_comun_1(proyecto_comunidad, proyecto_id) pe,
fn_proy_obtiene_dep_prov_mun_comun(proyecto_comunidad, proyecto_id) ar
  FROM t_proyecto ) as q1

  SELECT proyecto_solicitante,COUNT(*) R from t_proyecto
group by proyecto_solicitante