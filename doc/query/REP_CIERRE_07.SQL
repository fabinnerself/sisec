SELECT P.proyecto_id,prov.ubicacion_provincia,
mun.ubicacion_municipio,dept.ubicacion_departamento,
P.proyecto_comunidad,l.lugar_descripcion,
case l.lugar_descripcion when 'RURAL' then 'X' else '0' end lug_rural,
case l.lugar_descripcion when 'URBANO' then 'X' else '0' end lug_urbano,
COALESCE(pc.convenio_descripcion,'') AS convenio_descripcion,
C.c_etapa,CASE C.c_etapa  when 'INVERSION' then 'X' else '' end inversion,
CASE C.c_etapa_hijo  when 'PERFIL' then 'X' else '' end pre_inversion_prefil,
CASE C.c_etapa  when 'DISENO_FINAL' then 'X' else '' end pre_inversion_disenio_final,
C.c_etapa_hijo,C.c_componente,
C.c_contrato_numero,C.c_moneda_contrato,
C.c_monto_final_contrato,P.proyecto_descripcion,
P.proyecto_codigo,P.proyecto_numero_sisin
FROM t_proyecto AS P
INNER JOIN p_ubicacion_geografica_rami AS prov ON P.proyecto_provincia = prov.ubicacion_codigo
INNER JOIN p_ubicacion_geografica_rami AS mun ON P.proyecto_provincia = mun.ubicacion_codigo
INNER JOIN p_ubicacion_geografica_rami AS dept ON P.proyecto_provincia = dept.ubicacion_codigo
INNER JOIN p_lugar_ubicacion AS l ON P.proyecto_lugar_codigo = l.lugar_codigo
INNER JOIN p_programa_convenio AS pc ON P.proyecto_tipo_proyecto_codigo = pc.convenio_codigo
INNER JOIN t_cierre AS C ON P.proyecto_id = C.c_id_proyecto

SELECT T.tipo_cierre_descripcion,CE.ce_cumplimiento,
COALESCE(date_format(CE.ce_fecha_inicio,'%d-%m-%Y'),'') AS fecha_inicio,
COALESCE(date_format(CE.ce_fecha_fin,'%d-%m-%Y'),'') AS FECHA_FIN,
COALESCE(CE.ce_observaciones,'') AS observ,CE.ce_proyecto_id
FROM t_cierre_estacion AS CE
INNER JOIN p_tipo_cierre AS T ON CE.ce_tipo_cierre_id = T.tipo_cierre_id
WHERE CE.ce_proyecto_id=76286

