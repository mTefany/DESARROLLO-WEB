
----------------------------------------------------------------------------------------
------------------------------------ CONSULTAS -----------------------------------------
----------------------------------------------------------------------------------------

----------•¿Qué especialista ha tenido más consultas?------------
SELECT 
departamento_medico.det_me_area AS AREA,
count(departamento_medico.det_me_area)as Cantidad
FROM 
public.empleado
INNER JOIN public.registro ON   empleado.em_id = registro.em_id
INNER JOIN public.madre ON    madre.mad_id = registro.res_id 
INNER JOIN public.departamento_medico ON empleado.det_me_id = departamento_medico.det_me_id
GROUP BY 
AREA
having count(*)>1

----------•¿Cuáles fueron las mujeres que tuvieron parto dentro de determinada fecha y en que sala se realizo la operacion?------------
SELECT 
  registro.res_fecha,
  madre.mad_nombre, 
  sala_parto.sal_part_numero_sala
FROM 
  public.registro 
  INNER JOIN public.madre ON madre.mad_id = registro.res_id
  INNER JOIN public.sala_parto ON sala_parto.sal_part_id = registro.sal_part_id
WHERE 
  registro.res_fecha>'2021-12-01' AND registro.res_fecha<'2021-12-31' 

------Cantidad de veces que el cliente ha visitado el centro y su especialidad-----

SELECT 
 division_medica.div_med_division AS Tipo, 
 madre.mad_nombre AS Nombre_de_madre,
 count(departamento_medico.det_me_area) AS Cantidad,
 departamento_medico.det_me_area AS Departamento
FROM 
 public.empleado
 inner join public.departamento_medico on empleado.det_me_id = departamento_medico.det_me_id
 inner join  public.registro on registro.em_id = empleado.em_id 
 inner join  public.madre on registro.mad_id = madre.mad_id
 inner join  public.division_medica on empleado.div_med_id = division_medica.div_med_id
GROUP BY 
 Nombre_de_madre, 
 Departamento, 
 Tipo

------¿Cuántos bebes nacieron actos para ir a sus casas y cuantos son los enviados a termocuna?

SELECT 
  sala_parto.sal_part_estado_bb AS ESTADO_BEBE,
  count(sala_parto.sal_part_estado_bb) AS CANTIDAD
FROM 
  public.registro
  INNER JOIN public.madre ON madre.mad_id = registro.mad_id
  INNER JOIN public.sala_parto ON  sala_parto.sal_part_id = registro.sal_part_id
WHERE 
  sal_part_estado_bb='Se va a casa' OR
  sal_part_estado_bb='Termocuna'
GROUP BY   
  sala_parto.sal_part_estado_bb



