select  name,modified,type,db from mysql.proc  
where db='db_sisec' and type in ('FUNCTION','PROCEDURE') ;

 SHOW PROCEDURE STATUS  
 
 SELECT * FROM information_schema.views ;
 
 
 SELECT CONCAT_WS(' ','DROP VIEW IF EXISTS ',information_schema.VIEWS.TABLE_NAME,
' ; create view ',information_schema.VIEWS.TABLE_NAME,' as ',
information_schema.VIEWS.VIEW_DEFINITION) rr
FROM information_schema.views


 SELECT CONCAT_WS(' ','DROP VIEW IF EXISTS ',information_schema.VIEWS.TABLE_NAME,
' ; create view ',information_schema.VIEWS.TABLE_NAME,' as ',
information_schema.VIEWS.VIEW_DEFINITION,';') rr
FROM information_schema.views


SELECT
information_schema.ROUTINES.SPECIFIC_NAME,
information_schema.ROUTINES.ROUTINE_DEFINITION,
information_schema.ROUTINES.ROUTINE_BODY,
information_schema.ROUTINES.ROUTINE_TYPE
FROM information_schema.ROUTINES

 SELECT CONCAT_WS(' ','DROP ',information_schema.ROUTINES.ROUTINE_TYPE,' IF EXISTS ',information_schema.ROUTINES.SPECIFIC_NAME,
' ; create ',information_schema.ROUTINES.ROUTINE_TYPE, information_schema.ROUTINES.ROUTINE_TYPE,
information_schema.ROUTINES.ROUTINE_BODY)
FROM information_schema.ROUTINES
