 DROP PROCEDURE IF EXISTS `p_indicador_pivote`;

CREATE DEFINER = `root`@`localhost` PROCEDURE `p_indicador_pivote`(IN  int_proyecto INT)
BEGIN
 
/*
	call p_indicador_pivote(1) ;  
*/

/*
	SELECT CONCAT("SELECT  '", CONCAT_WS("','", 'id_indicador','descrip',
	(SELECT   GROUP_CONCAT(DISTINCT ind_per_periodo SEPARATOR "," ) a  
	FROM v_indicador_repote_1 WHERE ind_per_id_proyecto=int_proyecto), 
	'tipo','entrada','valor' ),"' UNION ") into @str_titulos;
*/

	select "select 'id_indicador','descrip','04-2003','05-2003','tipo','entrada','valor'
	union " into @str_titulos;

  SELECT GROUP_CONCAT( 'GROUP_CONCAT( IF(ind_per_periodo=\'', ind_per_periodo  ,'\',ind_ppv_valor,\'\') SEPARATOR \'\') as \'' ,
  ind_per_periodo,'\'\n' )  INTO @answers
  FROM (
    SELECT DISTINCT ind_per_periodo FROM v_indicador_repote_1
		WHERE ind_per_id_proyecto=int_proyecto
  ) A;

  SET @query := 
    CONCAT( @str_titulos ,
      'select g.*,p.pind_tipo,p.pind_entrada,p.pind_tipo_valor from (
			SELECT id_indicador,i.pind_descripcion, ', @answers, 
      ' FROM v_indicador_repote_1 AS i WHERE i.ind_per_id_proyecto = ',int_proyecto, '
			group by   pind_descripcion )g,p_indicador AS p
			where g.id_indicador=p.id_indicador ;	'
    );

	-- id_indicador group by pind_descripcion ;  

  PREPARE statement FROM @query;
  EXECUTE statement;
END;

