 
p_indicador_p1

SELECT  *
FROM v_indicador_valor_periodo_proyecto AS i
WHERE i.ind_per_tipo_indicador = 'linea_base'

v_indicador_valor_periodo_proyecto_pu

SELECT
i.ind_per_periodo,
i.ind_ppv_id_indicador_parametro,
i.proyecto_id,
i.ind_ppv_valor,
i.ind_per_tipo_indicador
FROM
v_indicador_valor_periodo_proyecto_pu AS i
WHERE
i.proyecto_id in( 1,13 )

 --ttttttttttttt
 

SET @vlores :='1,13' ;

SELECT GROUP_CONCAT( 'GROUP_CONCAT( IF(ind_per_periodo=\'', 
ind_per_periodo  ,'\',ind_ppv_valor,\'\') SEPARATOR \'\') as \'' ,
ind_per_periodo,'\'\n' ) into @str_answers FROM (
	SELECT ind_per_periodo from (
		SELECT  i.ind_per_periodo,i.ind_ppv_id_indicador_parametro,
		i.proyecto_id,i.ind_ppv_valor,i.ind_per_tipo_indicador
		FROM  v_indicador_valor_periodo_proyecto_pu AS i
		WHERE i.proyecto_id in( @vlores ) )q1
group by ind_per_periodo ) A;
 

SELECT CONCAT( 'select q1.*,p.pind_tipo,p.pind_entrada,p.pind_tipo_valor,mun.ubicacion_municipio ,
proyecto_descripcion,pind_descripcion
from ( select ind_ppv_id_indicador_parametro,proyecto_id, ',@str_answers,' 
from v_indicador_valor_periodo_proyecto_pu
where proyecto_id in (',@vlores,')
group by ind_ppv_id_indicador_parametro  )q1
join   p_indicador AS p on  q1.ind_ppv_id_indicador_parametro=p.id_indicador
join   t_proyecto r on q1.proyecto_id = r.proyecto_id 
join p_ubicacion_geografica_rami mun on r.proyecto_provincia = mun.ubicacion_codigo  
order by proyecto_id,ind_ppv_id_indicador_parametro') into @query;

select @query;


call p_indicador_municipio_detalle('1,13') ; 
	
SELECT i.proyecto_descripcion
FROM v_indicador_valor_periodo_proyecto_pu AS i
where proyecto_id in (1,13,16)
group by proyecto_descripcion

SELECT i.pind_descripcion
FROM v_indicador_valor_periodo_proyecto_pu AS i
where proyecto_id in (13,16,1)
group by pind_descripcion

SELECT dept.ga_departamento,prov.ubicacion_provincia 
FROM t_proyecto AS p	 
INNER JOIN p_gobierno_autonomo_rami AS dept ON p.proyecto_departamento = dept.ga_codigo
INNER JOIN p_ubicacion_geografica AS prov ON left(p.proyecto_provincia,4) =prov.ubicacion_codigo  
WHERE p.proyecto_id in(1,22)
group by dept.ga_departamento,prov.ubicacion_provincia



	