SELECT   @rownum := @rownum + 1 AS no_id,
COALESCE(e.evaluacion_docs_descripcion,'') ed_descripcion,
CASE evaluacion_documentos_cumple when 'si' then COALESCE(e.evaluacion_documentos_cumple,'') else ''  END ed_cumple_si,
CASE evaluacion_documentos_cumple when 'no' then COALESCE(e.evaluacion_documentos_cumple,'') else ''  END ed_cumple_no,
COALESCE(e.evaluacion_documentos_nro_pagina,'') ed_no_pagina,
COALESCE(e.evaluacion_documentos_observaciones,'') ed_obs
FROM v_evaluacion_documentos AS e,  (SELECT @rownum := 0) r
WHERE e.proyecto_id = 76286
order by  evaluacion_docs_id

SELECT p.proyecto_descripcion, p.proyecto_codigo_sap,
p.proyecto_municipio, p.proyecto_comunidad,
l.lugar_descripcion, dept.ga_departamento,
prov.ga_descripcion, pc.convenio_descripcion
FROM t_proyecto_rami AS p
INNER JOIN p_lugar_ubicacion AS l ON p.proyecto_lugar_codigo = l.lugar_codigo
INNER JOIN p_gobierno_autonomo_rami AS dept ON p.proyecto_departamento = dept.ga_codigo
INNER JOIN p_gobierno_autonomo_rami AS prov ON p.proyecto_provincia = prov.ga_codigo
INNER JOIN p_programa_convenio pc ON p.proyecto_tipo_proyecto_codigo = pc.convenio_codigo
WHERE p.proyecto_id = 76286

SELECT e.etapa  
FROM v_proy_etapa_estado_listado e
WHERE e.pee_proyecto_id = 19  and e.estado='INVERSION'


SELECT   e.estado
FROM v_proy_etapa_estado_listado e
WHERE e.pee_proyecto_id = 19   
group by estado 


 SELECT COALESCE(FORMAT(ep.evaluacion_infraestructura_bs,2),'') evaluacion_infraestructura_bs ,
COALESCE(FORMAT(ep.evaluacion_supervision_bs,2),'') evaluacion_supervision_bs ,
COALESCE(FORMAT(ep.evaluacion_capacitacion_bs,2),'') evaluacion_capacitacion_bs,
COALESCE(FORMAT(ep.evaluacion_total_bs,2),'') evaluacion_total_bs,
COALESCE(date_format(ep.evaluacion_fecha_inicio,'%d-%m-%Y'),'')   evaluacion_fecha_inicio,
COALESCE(date_format(ep.evaluacion_fecha_fin_programada,'%d-%m-%Y'),'') evaluacion_fecha_fin_programada,
COALESCE(date_format(ep.evaluacion_fecha_final,'%d-%m-%Y'),'') evaluacion_fecha_final,
COALESCE(ep.evaluacion_duracion_dias,'') evaluacion_duracion_dias
FROM t_evaluacion_presupuesto AS ep
WHERE ep.proyecto_id = 76286



SELECT p.proyecto_descripcion,p.proyecto_codigo_sap,
p.proyecto_municipio,p.proyecto_comunidad,
l.lugar_descripcion,dept.ga_departamento,
prov.ga_descripcion,COALESCE(pc.convenio_descripcion,'') convenio_descripcion,
s.sector_descripcion,p.proyecto_id,p.proyecto_solicitante_obs,
FORMAT(COALESCE(p.proyecto_monto_solictado_bs,''),2) monto_solictado_bs ,
COALESCE(p.proyecto_observacion_monto,'')observacion_monto,COALESCE(p.proyecto_descripcion_larga,'') proyecto_descripcion_larga,
COALESCE(p.proyecto_plazo_ejecucion,'') plazo_ejecucion,COALESCE(p.proyecto_nro_familias,'') nro_familias
FROM t_proyecto_rami AS p INNER JOIN p_lugar_ubicacion AS l ON p.proyecto_lugar_codigo = l.lugar_codigo
INNER JOIN p_gobierno_autonomo_rami AS dept ON p.proyecto_departamento = dept.ga_codigo
INNER JOIN p_gobierno_autonomo_rami AS prov ON p.proyecto_provincia = prov.ga_codigo
INNER JOIN p_programa_convenio AS pc ON p.proyecto_tipo_proyecto_codigo = pc.convenio_codigo
INNER JOIN p_sector_rami AS s ON p.proyecto_sector_codigo = s.sector_cod
WHERE p.proyecto_id = 76286
