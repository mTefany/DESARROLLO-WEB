-------------------------------------------------------CODIGO PARA EL REPORTE------------------------
SELECT 
  registro.res_id AS num_registro, 
  registro.res_fecha AS fecha_registro, 
  CONCAT(madre.mad_nombre || ' ' || madre.mad_apellido)AS nombre_madre,
  madre.mad_telefono AS tel_madre,
  registro.res_motivo_visita AS motivo_visita, 
  CONCAT(empleado.em_nombre || ' ' || empleado.em_apellido) as nombre_empleado,
  sala_parto.sal_part_numero_sala AS numero_sala, 
  departamento_medico.det_me_area AS nom_departamento, 
  division_medica.div_med_division AS nom_division, 
  registro.res_pago AS pago
FROM public.registro
INNER JOIN public.empleado ON registro.em_id = empleado.em_id
INNER JOIN public.madre ON registro.mad_id = madre.mad_id
INNER JOIN public.sala_parto ON sala_parto.sal_part_id = registro.sal_part_id
INNER JOIN public.departamento_medico ON departamento_medico.det_me_id = empleado.det_me_id
INNER JOIN public.division_medica ON  division_medica.div_med_id = empleado.div_med_id
WHERE departamento_medico.det_me_area='Obstétrica';
--------------------------------------------------------------------------
