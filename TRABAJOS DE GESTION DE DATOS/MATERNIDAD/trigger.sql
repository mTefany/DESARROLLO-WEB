

/* realizar un trigger que impida el registro de una madre a una sala de parto que ya este ocupada */

create or replace function ingreso_sala() /* se crea la funcion */
returns trigger as $ingreso_sala$ /* devulve lo ingresado en la funcion*/
	declare /* declaracion de variables*/
	sala int;/*variable que guarda datos como número y fecha en la que la sala esta ocupada*/
begin
/* se realiza el conteo del id de la sala de parto de la tabla de registro en donde el id de la sala
de parto es igual al nuevo id que se va a ingresar y la fecha en lal cual se registra el parto con la fecha
que se va a insertar
*/
select count (*) into sala from registro where (sal_part_id=new.sal_part_id) and (res_fecha_parto=new.res_fecha_parto);
	if (sala > 0) then /**/
	  raise exception 'Esta sala esta ocupada y no se puede realizar un nuevo parto aqui';
	/*se indica el mensaje que se mostrara ante el susceso*/
	end if;
	return new;/**/
end;
$ingreso_sala$
Language plpgsql;	
		 

/*trigger*/
CREATE trigger control_de_registro before insert
	on registro for each row
	execute procedure ingreso_sala();


insert into REGISTRO values
(6,6,5,4,'Esta en parto','10/03/2021','Sangrado',400.00,1,'10/03/2021');



