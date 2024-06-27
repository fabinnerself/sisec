SELECT
e.proyecto_id,
dc.evaluacion_docs_descripcion,
e.evaluacion_documentos_observaciones
FROM
t_evaluacion_documentos AS e
INNER JOIN p_evaluacion_docs_combo AS dc ON e.evaluacion_docs_id = dc.evaluacion_docs_id
WHERE
e.proyecto_id IN ('13', '16', '22', '24', '35', '64', '70', '90', '102', '106', '110', '112', '115', '121', '122', '127', '136', '137', '143', '156', '167', '169', '182', '183', '184', '9') AND
e.evaluacion_docs_id IN ('18', '19', '20', '21', '22')
ORDER BY
e.proyecto_id ASC,
e.evaluacion_docs_id ASC
-- 112