--Trigger qeue muestre un mensaje de error cuando se registre una embarcacion cuyo 
--permiso de pesca de algun tripulante este caducado no permita insertar el dato

create or replace function permiso_caducado()
returns trigger as $permiso_caducado$
	declare 
	tripulante varchar(10);
	permiso varchar(10);
	total_per_cadu int;
begin
	SELECT embarcacion.cedula_tripulante,  permiso_de_tripulante.estado_permiso, 
	count (permiso_de_tripulante.estado_permiso)
	INTO tripulante, permiso,total_per_cadu FROM   tripulantes, embarcacion, permiso_de_tripulante
	where   tripulantes.cedula_tripulante = permiso_de_tripulante.cedula_tripulante AND
    embarcacion.cedula_tripulante = tripulantes.cedula_tripulante and permiso_de_tripulante.cedula_tripulante= new.cedula_tripulante
	and permiso_de_tripulante.estado_permiso='caducado'
	group by embarcacion.cedula_tripulante, tripulantes.cedula_tripulante, permiso_de_tripulante.estado_permiso;
	if (total_per_cadu > 1) then /**/
		raise exception 'No se pueden ingresar la embarcacion por que uno o muchos tripulantes tienen su permiso caducado';
	end if;
	return new;/**/
end;
$permiso_caducado$
Language plpgsql;	


CREATE trigger embarcacion_denegada after insert
	on embarcacion  for each row
	execute procedure permiso_caducado();


INSERT INTO EMBARCACION (CODIGO_EMBARCACION,CODIGO_PUERTO,CODI_BARCO,CEDULA_TRIPULANTE,ESTADO_DE_EMBARCACION)VALUES
(6, 1111,1004,'1316842151', 'INCOMPLETA' )

