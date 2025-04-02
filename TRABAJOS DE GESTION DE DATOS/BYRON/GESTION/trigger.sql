--En un campo en la tabla tutoria llamado “totalhoras”, cada vez que se inserte un datos
--donde la tutoria demore mas de 3 horas mostrar un mensaje de excepcion donde nos diga que
--el tutor no puede dar una toria mayor a 3 horas en el dia

create or replace function numerotutoria()
returns trigger as $numerotutoria$
	declare 
	horainicio int;
	horafinal int;
	totalhora int;
begin

	SELECT EXTRACT(HOUR FROM new.hora_inicio_tutoria),  EXTRACT(HOUR FROM new.hora_final_tutoria),  
	EXTRACT(HOUR FROM new.hora_final_tutoria)-EXTRACT(HOUR FROM new.hora_inicio_tutoria)
	INTO horainicio, horafinal, totalhora FROM tutoria;
	if (totalhora > 3) then /**/
		raise exception 'LAS TUTORIAS NO DEBEN SER MAYORES A 3 HORAS DURANTE EL DIA';
	end if;
	return new;/**/
end;
$numerotutoria$
Language plpgsql;	
		 

/*trigger*/
CREATE trigger tutoriasterminada after insert
	on tutoria  for each row
	execute procedure numerotutoria();



insert into tutoria values ('tuto000020','Diagramas de clase','Explicación de diagramas',
							'2 horas','10:00:00', '18:00:00', 'Grupo6', 'https://us04web.zoom.us/grupu1','5.00',
							'tutord0001','empresa001', 'tutor00001', 'servi00001');







