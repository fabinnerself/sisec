

SELECT * FROM `p_gobierno_autonomo_rami` WHERE `ga_departamento` LIKE '%cochabamba%' AND `
ga_codigo_provincia` LIKE '%311%'

SELECT -- P.proyecto_provincia ,p.proyecto_departamento ,mun.ubicacion_municipio ,mun.ubicacion_codigo
p.*,mun.ga_descripcion
 	FROM t_proyecto AS p
		INNER JOIN p_lugar_ubicacion AS l ON p.proyecto_lugar_codigo = l.lugar_codigo
		INNER JOIN p_gobierno_autonomo_rami AS dept ON p.proyecto_departamento = dept.ga_codigo
		INNER JOIN p_ubicacion_geografica AS prov ON left(p.proyecto_provincia,4) =   prov.ubicacion_codigo  
		LEFT JOIN p_gobierno_autonomo_rami AS mun ON P.proyecto_provincia = mun.ga_codigo
		LEFT JOIN p_ubicacion_geografica AS comu ON P.proyecto_comunidad = comu.ubicacion_codigo
		INNER JOIN p_tipo_proyecto AS tp ON p.proyecto_tipo_proyecto_codigo = tp.tipo_proyecto_codigo
		INNER JOIN p_sector AS s ON p.proyecto_sector_codigo = s.sector_cod
		INNER JOIN p_gobierno_autonomo_rami AS ga ON p.proyecto_solicitante = ga.ga_codigo
		LEFT JOIN v_persona AS rl ON p.pry_resp_llen = rl.persona_codigo
		INNER JOIN p_programa_convenio pc on pc.convenio_codigo =p.proyecto_convenio_codigo
 WHERE p.proyecto_id = 84 ;
 ORDER BY proyecto_id
 
 