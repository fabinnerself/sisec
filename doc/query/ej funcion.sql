create FUNCTION fn_proy_rep_obtiene_estacion_registro(int_id_proy int) RETURNS text  
BEGIN

	DECLARE str_filas_tabla text;
	DECLARE str_solicitante varchar(50);
	DECLARE str_desc_det varchar(255);
	DECLARE str_monto varchar(255);
	DECLARE str_tipo_proy varchar(255);
	DECLARE str_num_famil varchar(255);
	DECLARE str_plazo varchar(255);
	DECLARE str_obs_monto varchar(255);
	
	SELECT GA.ga_descripcion, 	P.proyecto_descripcion,	FORMAT(P.proyecto_monto_solictado_bs, 2) AS MONTO_BS,
	TP.tipo_proyecto_descripcion,	P.proyecto_nro_familias,	P.proyecto_plazo_ejecucion,P.proyecto_observacion_monto
	INTO str_solicitante,str_desc_det,str_monto,str_tipo_proy,str_num_famil,str_plazo,str_obs_monto
	FROM t_proyecto AS P
	INNER JOIN p_gobierno_autonomo AS GA ON P.proyecto_solicitante = GA.ga_codigo
	INNER JOIN p_tipo_proyecto AS TP ON P.proyecto_tipo_proyecto_codigo = TP.tipo_proyecto_codigo
	WHERE P.proyecto_id = int_id_proy;
	
	
	SELECT '<tr><td width=33%>Solicitante</td><td width=33% colspan=5 >{SOLICITANTE}</td><td width=34% colspan=2>&nbsp;</td> </tr><tr><td width=33% bgcolor="#FFFFCC">Monto Total Solicitado</td><td width=33% colspan=5><table width="100%"> <td width=33%  >Bolivianos</td><td width=33%  >{MONTO_BS}</td><td width=34%  >&nbsp;</td> </table> </td><td width=34% colspan=2>{OBSERV_MONTO}</td></tr><tr><td width=33%><div align="center">Descripción extendida del proyecto (Objetivo Específico, alcances e indicadores importantes) (OBLIGATORIO)</div></td><td width=67% colspan=7>{DESC_DETALLADA}</td></tr><tr><td bgcolor="#FFFFCC">Tipo  de Proyecto</td><td colspan=3><table width="100%">   <td width=50%  >{TIPO_PROYECTO}</td>  <td width=50%  >días calendario</td></table></td><td colspan="3">  <table width="100%"> <td width=50%  >&nbsp;</td><td width=50%  >N° de Familias Beneficiadas:</td></table> </td><td colspan=1>{NO_FAMILIAS}</td></tr><tr><td width=33% bgcolor="#FFFFCC">Plazo estimado ejecución</td><td width=33% colspan=5><table width="100%"> <td width=33%  >{PLAZO}</td><td width=33%  >días calendario</td><td width=34%  >&nbsp;</td> </table> </td><td width=34% colspan=2>&nbsp;</td></tr>' INTO str_filas_tabla;
	
	SELECT  REPLACE(str_filas_tabla, '{SOLICITANTE}', str_solicitante) INTO str_filas_tabla;
	SELECT  REPLACE(str_filas_tabla, '{MONTO_BS}', str_monto) INTO str_filas_tabla;
	SELECT  REPLACE(str_filas_tabla, '{OBSERV_MONTO}', str_obs_monto) INTO str_filas_tabla;
	SELECT  REPLACE(str_filas_tabla, '{DESC_DETALLADA}', str_desc_det) INTO str_filas_tabla;
	SELECT  REPLACE(str_filas_tabla, '{TIPO_PROYECTO}', str_tipo_proy) INTO str_filas_tabla;
	SELECT  REPLACE(str_filas_tabla, '{NO_FAMILIAS}', str_num_famil) INTO str_filas_tabla;
	SELECT  REPLACE(str_filas_tabla, '{PLAZO}', str_plazo) INTO str_filas_tabla;
	

	return str_filas_tabla;
END


CREATE FUNCTION fn_evaluacion_graba(int_id_proy int,int_etapa int,int_hijo int,str_componenete VARCHAR(300),
str_comtrato VARCHAR(300),str_moneda varchar(5), flt_monto decimal(10,3)) RETURNS text  
BEGIN

	DECLARE str_filas_tabla text;
	DECLARE int_no_regs int;
	

	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs
	FROM t_cierre AS c
	WHERE c.c_id_proyecto = int_id_proy ;

	if int_no_regs=0 THEN
		INSERT into t_cierre   (c_id_proyecto,
		c_etapa,c_etapa_hijo,c_componente,c_contrato_numero,c_moneda_contrato,
		c_monto_final_contrato) values (int_id_proy,int_etapa,int_hijo,str_componenete,str_comtrato,str_moneda,flt_monto);

		select "insert" INTO str_filas_tabla ;
	ELSE
		UPDATE t_cierre set c_etapa=int_etapa, c_etapa_hijo=int_hijo,c_componente=str_componenete,
		c_contrato_numero=str_comtrato,c_moneda_contrato=str_moneda,c_monto_final_contrato=flt_monto
		where c_id_proyecto=int_id_proy;
			
			select "mod" INTO str_filas_tabla ;
	end IF;

	RETURN str_filas_tabla ;

end


 SELECT fn_cierre_graba(70,1,8,'comp 70','cont 70 ','bs',3.0)
 
CREATE  FUNCTION fn_evaluacion_pres_graba(int_id_proy int,
flt_infraestructura_bs DECIMAL(15,2),flt_infraestructura_sus DECIMAL(15,2),
flt_supervicion_bs DECIMAL(15,2),flt_supervicion_sus DECIMAL(15,2),
flt_capacitacion_bs DECIMAL(15,2),flt_capacitacion_sus DECIMAL(15,2),
flt_total_bs DECIMAL(15,2),flt_total_sus DECIMAL(15,2),str_fecha_inicio varchar(10),
str_fecha_fin varchar(10),str_fecha_prog_fin varchar(10), int_duracion int,int_responsable int)
 RETURNS text
BEGIN

	DECLARE str_filas_tabla text;
	DECLARE int_no_regs int;	

	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs
	FROM t_evaluacion_presupuesto AS c
	WHERE c.proyecto_id = int_id_proy ; 

	if int_no_regs=0 THEN
		INSERT INTO t_evaluacion_presupuesto
		(proyecto_id,evaluacion_infraestructura_bs,	evaluacion_infraestructura_sus,
		evaluacion_supervision_bs,evaluacion_supervision_sus,
		evaluacion_capacitacion_bs,evaluacion_capacitacon_sus,
		evaluacion_total_bs,evaluacion_total_sus,
		evaluacion_fecha_inicio,evaluacion_fecha_fin_programada,evaluacion_fecha_final,
		evaluacion_duracion_dias,e_id_reponsable_evaluacion)
		VALUES(int_id_proy,flt_infraestructura_bs,flt_infraestructura_sus,flt_supervicion_bs,flt_supervicion_sus,
		flt_capacitacion_bs,flt_capacitacion_sus,flt_total_bs,flt_total_sus,str_fecha_inicio,str_fecha_prog_fin,
		str_fecha_fin,int_duracion,int_responsable);

		select "insert" INTO str_filas_tabla ;
	ELSE
		UPDATE t_evaluacion_presupuesto
		SET evaluacion_infraestructura_bs=flt_infraestructura_bs,evaluacion_infraestructura_sus=flt_infraestructura_sus,
		evaluacion_supervision_bs=flt_supervicion_bs,evaluacion_supervision_sus=flt_supervicion_sus,
		evaluacion_capacitacion_bs=flt_capacitacion_bs,evaluacion_capacitacon_sus=flt_capacitacion_sus,
		evaluacion_total_bs=flt_total_bs,evaluacion_total_sus=flt_total_sus,
		evaluacion_fecha_inicio=str_fecha_inicio,evaluacion_fecha_fin_programada=str_fecha_prog_fin,
		evaluacion_fecha_final=str_fecha_fin,evaluacion_duracion_dias=int_duracion,
		e_id_reponsable_evaluacion=int_responsable
		WHERE proyecto_id=int_id_proy;
			
		select "mod" INTO str_filas_tabla ;
	end IF;

	RETURN str_filas_tabla ;

end; 
 
 SELECT fn_evaluacion_pres_graba(70,4,4*7,4,4*7.01,4,5*7.02,16,16,'2013-02-01','2013-02-02','2013-02-03',3,1)
 
 
 drop function IF EXISTS  fn_aprobacion_graba ;


CREATE  FUNCTION fn_aprobacion_graba(int_id_proy int,int_resultado_id int,str_resultado_obs VARCHAR(255),
str_acta_cdap VARCHAR(255),flt_fuente_bs decimal(15,2),flt_tipo_cambio_eu decimal(15,2),
flt_contraparte_bs decimal(15,2),str_aprobacion_ctf VARCHAR(255),str_fecha_ctf VARCHAR(10),
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
		aprob_plazo_total_ejecucion,aprob_codigo_correlativo_aprobacion,aprob_proyecto_aprobado_como)
		values( int_resultado_id,str_resultado_obs,str_acta_cdap,flt_fuente_bs*flt_tipo_cambio_eu,flt_fuente_bs,
		flt_contraparte_bs*flt_tipo_cambio_eu,flt_contraparte_bs,str_aprobacion_ctf,str_fecha_ctf,str_resolucion_fecha,
		str_fecha_inicio,str_fecha_fin_programada,str_fecha_final,str_duracion_dias,int_id_proy,str_fecha_comite_tecnico,
		str_fecha_cdap ,str_observacion_acta_comite_tecnico,str_observacion_acta_cdap,int_plazo_total_ejecucion,
		str_codigo_correlativo_aprobacion,int_aprobado_como );

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
			aprob_codigo_correlativo_aprobacion=str_codigo_correlativo_aprobacion,aprob_proyecto_aprobado_como=int_aprobado_como
		WHERE proyecto_id=int_id_proy ;

		select "modificar" INTO str_filas_tabla ;
		
	end IF;

	RETURN str_filas_tabla ;

end;
 
 
drop function IF EXISTS  fn_ejecucion_graba ;


CREATE  FUNCTION fn_ejecucion_graba(int_id_proy int,flt_monto_contrato decimal (15,2),
flt_monto_supervicion decimal (15,2),flt_monto_asistencia decimal (15,2),str_cuce_licitacion varchar(25),
str_cuce_supervicion varchar(25),str_licitacion_fecha varchar(10),str_supervicion_fecha varchar(10),
flt_bi_anticipo_monto decimal (15,2),str_bi_anticipo_fecha varchar(10),str_bi_anticipo_vigencia varchar(50),
flt_bi_cumplimiento_monto decimal (15,2),str_bi_cumplimiento_fecha varchar(10),str_bi_cumplimiento_vigencia varchar(50),
int_id_tenico_fps int,int_id_supervisor int,int_id_contructora int,str_observacion_gral VARCHAR(500))

RETURNS text
BEGIN

/*
select fn_ejecucion_graba(0,10.01,11.02,12.03,'12-0051-12366-1-1','12-0051-12367-1-1',
'2001-05-01','2001-05-02',13.04,'2001-05-03','vigencia anticip',
14.05,'2001-05-04','vigencia cumplim',1,1,1,'obs gral' )
*/

	DECLARE str_filas_tabla text;
	DECLARE int_no_regs int;	 

	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs
	FROM t_ejecucion AS c
	WHERE c.ej_proyecto_id = int_id_proy ; 


	if int_no_regs=0 THEN

		insert into t_ejecucion
		(ej_monto_contrato_bs  ,ej_monto_contrato_supervicion_bs  ,
		ej_monto_contrato_asistecia_bs  ,ej_cuce_licitacion  ,
		ej_cuce_supervicion  ,ej_cuce_licitacion_fecha  ,
		ej_cuce_supervicion_fecha  ,ej_boleta_inversion_anticipo_monto  ,
		ej_boleta_inversion_anticipo_fecha_renov  ,ej_boleta_inversion_anticipo_vigencia  ,
		ej_boleta_inversion_cumplimiento_fecha_renov  ,ej_boleta_inversion_cumplimiento_monto  ,
		ej_boleta_inversion_cumplimiento_vigencia  ,ej_tecnico_fps_id  ,ej_supervisor_id  ,
		ej_contratista_id  ,ej_observacion_general   ,ej_proyecto_id )
		 values (flt_monto_contrato,flt_monto_supervicion,flt_monto_asistencia,str_cuce_licitacion,str_cuce_supervicion,
		str_licitacion_fecha,str_supervicion_fecha,flt_bi_anticipo_monto,str_bi_anticipo_fecha,	str_bi_anticipo_vigencia,
		str_bi_cumplimiento_fecha,flt_bi_cumplimiento_monto,str_bi_cumplimiento_vigencia,int_id_tenico_fps,
		int_id_supervisor,int_id_contructora,str_observacion_gral,int_id_proy);

		select "insert" INTO str_filas_tabla ;

	ELSE

		UPDATE t_ejecucion
		SET  ej_monto_contrato_bs  =flt_monto_contrato,ej_monto_contrato_supervicion_bs  =flt_monto_supervicion,
		ej_monto_contrato_asistecia_bs  =flt_monto_asistencia,ej_cuce_licitacion  =str_cuce_licitacion,
		ej_cuce_supervicion  =str_cuce_supervicion,ej_cuce_licitacion_fecha  =str_licitacion_fecha,
		ej_cuce_supervicion_fecha  =str_supervicion_fecha,ej_boleta_inversion_anticipo_monto  =flt_bi_anticipo_monto,
		ej_boleta_inversion_anticipo_fecha_renov  =str_bi_anticipo_fecha,
		ej_boleta_inversion_anticipo_vigencia  =str_bi_anticipo_vigencia,
		ej_boleta_inversion_cumplimiento_fecha_renov  =str_bi_cumplimiento_fecha,
		ej_boleta_inversion_cumplimiento_monto  =flt_bi_cumplimiento_monto,
		ej_boleta_inversion_cumplimiento_vigencia  =str_bi_cumplimiento_vigencia,ej_tecnico_fps_id  =int_id_tenico_fps,
		ej_supervisor_id  =int_id_supervisor, ej_contratista_id  =int_id_contructora,
		ej_observacion_general   =str_observacion_gral
		WHERE ej_proyecto_id =int_id_proy;
		
		select "modificar" INTO str_filas_tabla ;
	end IF;

	RETURN str_filas_tabla ;

end;



DROP FUNCTION IF EXISTS fn_lac_cuenta_licitaciones ;

create FUNCTION fn_lac_cuenta_licitaciones(int_id_proy int,int_estacion_id int) RETURNS int  
BEGIN

/*
	SELECT fn_lac_cuenta_licitaciones (1,1)
*/

	
declare int_regs INT;

	SELECT COUNT(*) R into int_regs
	FROM t_lac_estacion_licitacion AS l
	WHERE l.lac_lic_proy_id = int_id_proy 
		AND l.lac_lic_estacion_id = int_estacion_id ;
	 
	return int_regs;

END


drop function if exists fn_proy_obtiene_dep_prov_mun_comun ;

CREATE  FUNCTION fn_proy_obtiene_dep_prov_mun_comun(cod_comun VARCHAR(8),int_id_proy int)
 RETURNS varchar(950)
BEGIN
 
	/*
		select fn_proy_obtiene_dep_prov_mun_comun(189)
	*/
 
	DECLARE str_res VARCHAR(950);
 

	SELECT concat_ws(' - ', ubicacion_departamento,ubicacion_provincia ,
	ubicacion_municipio, ubicacion_comunidad )  into str_res
	FROM p_ubicacion_geografica AS d
	WHERE  ubicacion_codigo=cod_comun ;

	if  cod_comun is null and  int_id_proy is not null THEN

		SELECT  concat_ws(' - ', dept.ga_departamento,prov.ubicacion_provincia ,
		mun.ubicacion_municipio  )  into str_res 
		FROM t_proyecto AS p
		INNER JOIN p_lugar_ubicacion AS l ON p.proyecto_lugar_codigo = l.lugar_codigo
		INNER JOIN p_gobierno_autonomo_rami AS dept ON p.proyecto_departamento = dept.ga_codigo
		INNER JOIN p_ubicacion_geografica AS prov ON left(p.proyecto_provincia,4) =   prov.ubicacion_codigo  
		INNER JOIN p_ubicacion_geografica_rami AS mun ON P.proyecto_provincia = mun.ubicacion_codigo
		WHERE p.proyecto_id  =int_id_proy ;
		
	end if;


	RETURN  str_res ;

END



drop function if EXISTS fn_login;

CREATE FUNCTION fn_login(str_login VARCHAR(50),str_contrasenia VARCHAR(50)) 
 RETURNS int
BEGIN

DECLARE int_result INT;
DECLARE int_count INT;
DECLARE int_count_login INT;
DECLARE int_count_contras INT;


	/*
		select fn_login('soletud','1')
	*/

	SELECT usuario_id , count(*) INTO int_result , int_count
	FROM 	s_usuario  
	WHERE u_login = str_login AND u_contrasenia = str_contrasenia;

	IF int_count=0  THEN
		
		SELECT count(*) INTO int_count
		FROM 	s_usuario  
		WHERE u_login = str_login  ;

		IF int_count>=1 THEN
			SELECT -1 INTO int_result ;
		ELSE

			SELECT count(*) INTO int_count
			FROM 	s_usuario  
			WHERE u_contrasenia = str_contrasenia;  	

			IF int_count>=1 THEN
				SELECT -2 INTO int_result ;
			ELSE
				SELECT -3 INTO int_result ;
			END IF;

		END IF;

	END IF;

	RETURN int_result ;

END;