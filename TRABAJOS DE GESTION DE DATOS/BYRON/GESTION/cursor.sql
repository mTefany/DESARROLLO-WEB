--Un cursor que muestre por año y mes cuanto la empresa ha pagado en tutorías a profesores, 
--cuanto ha recibido de los estudiantes, y cuál es la utilidad.
--año y mes pago a tutor
--año y mes recibo de pago de estudiantes
--Para la utilidad calcular utilidad = recibodeestudiantes - pagoaprofesores


do 
	$$
	DECLARE 
		datos RECORD;
		cur_datos  cursor for SELECT 
		  sum(servicio_online.costo_servicio)as pagoatutor, 
		  extract (year from descripcion_tutoria.fecha_tutoria) as año, 
		  extract (month from descripcion_tutoria.fecha_tutoria) as mes, 
		  sum(tutoria.costo_tutoria) as pagodeestudiantes,
		  sum( tutoria.costo_tutoria) - sum(servicio_online.costo_servicio) as utilidad
		FROM 
		  public.descripcion_tutoria
		  inner join public.tutoria on descripcion_tutoria.id_tutoria_tutoria = tutoria.id_tutoria
		  inner join public.servicio_online on tutoria.id_servicio_servicio_online = servicio_online.id_servicio
		GROUP BY
		  extract (year from descripcion_tutoria.fecha_tutoria), 
		  extract (month from descripcion_tutoria.fecha_tutoria),
		  tutoria.costo_tutoria;

	BEGIN	
		OPEN cur_datos;
		FETCh cur_datos INTO datos;
		while (found) loop 
		RAISE NOTICE 
		'
		AÑO: % 
		MES: % 
		PAGO DE TUTORIA A PROFESORES: % 
		PAGO DE ESTUDIANTES: % 
		UTILIDAD: % 
		',
		datos.año, datos.mes, datos.pagoatutor, datos.pagodeestudiantes, datos.utilidad;
		FETCh cur_datos INTO datos;
	end loop;	
	end $$
	Language 'plpgsql';
	
	


