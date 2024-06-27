insert into t_evaluacion_documentos
(evaluacion_documentos_cumple,
evaluacion_documentos_nro_pagina,
evaluacion_documentos_observaciones,
evaluacion_docs_id,
proyecto_id)
SELECT
e.evaluacion_documentos_cumple,
e.evaluacion_documentos_nro_pagina,
e.evaluacion_documentos_observaciones,
e.evaluacion_docs_id,
 73763 id
FROM
t_evaluacion_documentos AS e
WHERE
e.proyecto_id = 76286
limit 13


insert INTO t_evaluacion_presupuesto (
proyecto_id,
evaluacion_infraestructura_bs,
evaluacion_infraestructura_sus,
evaluacion_supervision_bs,
evaluacion_supervision_sus,
evaluacion_capacitacion_bs,
evaluacion_capacitacon_sus,
evaluacion_total_bs,
evaluacion_total_sus,
evaluacion_fecha_inicio,
evaluacion_fecha_fin_programada,
evaluacion_fecha_final,
evaluacion_duracion_dias )
SELECT
 73760 id ,
r.evaluacion_infraestructura_bs,
r.evaluacion_infraestructura_sus,
r.evaluacion_supervision_bs,
r.evaluacion_supervision_sus,
r.evaluacion_capacitacion_bs,
r.evaluacion_capacitacon_sus,
r.evaluacion_total_bs,
r.evaluacion_total_sus,
r.evaluacion_fecha_inicio,
r.evaluacion_fecha_fin_programada,
r.evaluacion_fecha_final,
r.evaluacion_duracion_dias
FROM t_evaluacion_presupuesto AS r


insert INTO  t_aprobacion_componente_presupuesto 
( acp_id_proyecto ,acp_id_aprobacion_componente,
 acp_monto_bs,
 acp_monto_sus )
SELECT 73760,
acp.acp_id_aprobacion_componente,
acp.acp_monto_bs,
acp.acp_monto_sus
FROM
t_aprobacion_componente_presupuesto AS acp


INSERT INTO t_aprobacion_participante
( ap_id_persona,
 ap_tipo_participante,
 ap_id_proyecto)
SELECT a.ap_id_persona,
a.ap_tipo_participante,
73760
FROM t_aprobacion_participante a


INSERT INTO t_proyecto_seguimiento
(proyecto_id,
ciclo_codigo,
ps_mes,
ps_fecha_seguimiento,
ps_reporte_sm,
proy_seg_codigo,
persona_codigo)
SELECT
ps.proyecto_id,
3,
ps.ps_mes,
ps.ps_fecha_seguimiento,
ps.ps_reporte_sm,
ps.proy_seg_codigo,
ps.persona_codigo
FROM
t_proyecto_seguimiento AS ps
limit 2


insert INTO t_cierre_estacion
(ce_tipo_cierre_id,
ce_proyecto_id,
ce_cumplimiento,
ce_fecha_inicio,
ce_fecha_fin,
ce_observaciones)
SELECT c.ce_tipo_cierre_id,
73759 id,
c.ce_cumplimiento,
c.ce_fecha_inicio,
c.ce_fecha_fin,
c.ce_observaciones
FROM
t_cierre_estacion AS c
WHERE
c.ce_proyecto_id = 76286


insert INTO t_vc_maquinaria_comprometida
(maquinaria_id,
proyecto_id,
vc_mc_propuesta_capacidad,
vc_mc_propuesta_cantidad,
vc_mc_obra_capacidad,
vc_mc_obra_cantidad,
vc_mc_permanente,
vc_mc_observaciones)
SELECT
m.maquinaria_id,
73759 r,
m.vc_mc_propuesta_capacidad,
m.vc_mc_propuesta_cantidad,
m.vc_mc_obra_capacidad,
m.vc_mc_obra_cantidad,
m.vc_mc_permanente,
m.vc_mc_observaciones
FROM
t_vc_maquinaria_comprometida AS m
WHERE
m.proyecto_id = 76286


INSERT INTO t_vc_personal_verificacion (proyecto_id,
personal_verificacion_en_obra,
personal_verificacion_observaciones,
persona_id,
pv_cargo)
SELECT
73759 i,
p.personal_verificacion_en_obra,
p.personal_verificacion_observaciones,
p.persona_id,
p.pv_cargo
FROM
t_vc_personal_verificacion AS p
WHERE
p.proyecto_id = 76286


INSERT INTO t_vc_documentos_verificacion
(documentos_id,
proyecto_id,
documentos_verificacion_en_obra,
documentos_verificacion_observaciones)
SELECT
d.documentos_id,
73759 i,
d.documentos_verificacion_en_obra,
d.documentos_verificacion_observaciones
FROM
t_vc_documentos_verificacion AS d
WHERE
d.proyecto_id = 76286

INSERT into t_ejecucion_etapas (
proyecto_id,
ejecucion_detalle_id,
ejecucion_supervicion_fecha,
ejecucion_supervicion_existencia,
ejecucion_supervicion_aspectos_valor,
ejecucion_supervicion_observaciones,
ejecucion_informe_periodo,
ejecucion_supervicion_porcentaje,
ejecucion_control_cumple_descripcion,
ejecucion_control_cumple_tipo,
ejecucion_supervicion_monto
)
SELECT
73759 id,
e.ejecucion_detalle_id,
e.ejecucion_supervicion_fecha,
e.ejecucion_supervicion_existencia,
e.ejecucion_supervicion_aspectos_valor,
e.ejecucion_supervicion_observaciones,
e.ejecucion_informe_periodo,
e.ejecucion_supervicion_porcentaje,
e.ejecucion_control_cumple_descripcion,
e.ejecucion_control_cumple_tipo,
e.ejecucion_supervicion_monto
FROM
t_ejecucion_etapas AS e
WHERE
e.proyecto_id = 76286
