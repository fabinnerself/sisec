SELECT ejecucion_informe_periodo,COUNT(*) R
FROM
t_ejecucion_etapas AS T
WHERE
T.ejecucion_informe_periodo <> ''
GROUP BY ejecucion_informe_periodo
ORDER BY  ejecucion_informe_periodo


SELECT evaluacion_documentos_cumple,COUNT( *) 
 
FROM
t_evaluacion_documentos AS t
WHERE
t.evaluacion_documentos_cumple <> ''
GROUP BY evaluacion_documentos_cumple