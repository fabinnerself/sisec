1 inserta registros en p_evaluacion_docs_combo/ c

2 tproyecto fkey persona

2  drop function IF EXISTS  fn_aprobacion_graba ;

CREATE  FUNCTION fn_aprobacion_graba(int_id_proy int,int_resultado_id int,str_resultado_obs VARCHAR(255),
	str_acta_cdap VARCHAR(255),flt_fuente_bs decimal(15,2),flt_tipo_cambio_eu decimal(15,2),flt_contraparte_bs decimal(15,2),
	str_aprobacion_ctf VARCHAR(255),str_fecha_ctf VARCHAR(10),
	str_resolucion_fecha VARCHAR(10),str_fecha_inicio VARCHAR(10),str_fecha_fin_programada VARCHAR(10),
	str_fecha_final VARCHAR(10),str_duracion_dias VARCHAR(10),str_fecha_comite_tecnico VARCHAR(10),
	str_fecha_cdap VARCHAR(10),str_observacion_acta_comite_tecnico VARCHAR(900),str_observacion_acta_cdap VARCHAR(900),
	int_plazo_total_ejecucion int,str_codigo_correlativo_aprobacion VARCHAR(50),int_aprobado_como int)
 RETURNS text
BEGIN

/*
 select fn_aprobacion_graba(183,1,'modd2 1 obs','mod cdap',10.01,7,20.02,'mod aprob ctf','2002-02-01','2002-02-02'
,'2002-02-03','2002-02-04','2002-02-05',20,'2002-02-06','2002-02-07','mod obs com tec','mod obs cdap',
30,'mod corr aprob',2)
*/

	DECLARE str_filas_tabla text;

	DECLARE int_no_regs int;	 

	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs
	FROM t_aprobacion AS c
	WHERE c.proyecto_id = int_id_proy ; 

	if int_no_regs=0 THEN

		insert into t_aprobacion
		( aprobacion_resultado_id,aprobacion_resultado_obs,aprobacion_nro_acta_cdap,
		aprobacion_fuente_eu,aprobacion_fuente_bs,
		aprobacion_contraparte_eu,aprobacion_contraparte_bs,
		aprobacion_ctf,aprobacion_ctf_fecha,aprobacion_resolucion_fecha,
		aprobacion_fecha_inicio,aprobacion_fecha_fin_programada,
		aprobacion_fecha_final,aprobacion_duracion_dias,
		proyecto_id,aprob_fecha_comite_tecnico,aprob_fecha_cdap,
		aprob_observacion_acta_comite_tecnico,aprob_observacion_acta_cdap,
		aprob_plazo_total_ejecucion,aprob_proyecto_aprobado_como)
		values( int_resultado_id,str_resultado_obs,str_acta_cdap,flt_fuente_bs*flt_tipo_cambio_eu,flt_fuente_bs,
		flt_contraparte_bs*flt_tipo_cambio_eu,flt_contraparte_bs,str_aprobacion_ctf,str_fecha_ctf,str_resolucion_fecha,
		str_fecha_inicio,str_fecha_fin_programada,str_fecha_final,str_duracion_dias,int_id_proy,str_fecha_comite_tecnico,
		str_fecha_cdap ,str_observacion_acta_comite_tecnico,str_observacion_acta_cdap,int_plazo_total_ejecucion,
		int_aprobado_como );
		
		select "insert" INTO str_filas_tabla ;

	ELSE

		update t_aprobacion
		set aprobacion_resultado_id=int_resultado_id,aprobacion_resultado_obs=str_resultado_obs,
			aprobacion_nro_acta_cdap=str_acta_cdap,
			aprobacion_fuente_eu=flt_fuente_bs*flt_tipo_cambio_eu,aprobacion_fuente_bs=flt_fuente_bs,
			aprobacion_contraparte_eu=flt_contraparte_bs*flt_tipo_cambio_eu,aprobacion_contraparte_bs=flt_contraparte_bs,
			aprobacion_ctf=str_aprobacion_ctf,aprobacion_ctf_fecha=str_fecha_ctf,aprobacion_resolucion_fecha=str_resolucion_fecha,
			aprobacion_fecha_inicio=str_fecha_inicio,aprobacion_fecha_fin_programada=str_fecha_fin_programada,
			aprobacion_fecha_final=str_fecha_final,aprobacion_duracion_dias=str_duracion_dias,
			aprob_fecha_comite_tecnico=str_fecha_comite_tecnico,aprob_fecha_cdap=str_fecha_cdap,
			aprob_observacion_acta_comite_tecnico=str_observacion_acta_comite_tecnico,
			aprob_observacion_acta_cdap=str_observacion_acta_cdap,aprob_plazo_total_ejecucion=int_plazo_total_ejecucion,
			aprob_proyecto_aprobado_como=int_aprobado_como
		WHERE proyecto_id=int_id_proy ; 

		select "modificar" INTO str_filas_tabla ;

	end IF;

	RETURN str_filas_tabla ;

end;