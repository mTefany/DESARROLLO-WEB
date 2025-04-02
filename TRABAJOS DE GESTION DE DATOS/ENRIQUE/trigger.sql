--Cuando una persona ha tenido dos reputaciones malas no puede volver a tener más citas   
  
create or replace function reputacionmala()
returns trigger as $reputacionmala$
	declare 
	totalreputacion int;
begin

	SELECT  count(cita.calificacion_cita) INTO totalreputacion FROM 
    cita INNER JOIN pareja_de_cita ON pareja_de_cita.id_cita_cita = cita.id_cita WHERE 
	cita.calificacion_cita = 'Malo' AND cita.id_cita = NEW.id_cita_cita
	GROUP BY cita.calificacion_cita;
	
	if (totalreputacion > 2) then /**/
		raise exception 'Esta pareja no puede tener otra cita por que ha tenido mas de dos reputaciones malas';
	end if;
	return new;/**/
end;
$reputacionmala$
Language plpgsql;	
		 

/*trigger*/
CREATE trigger reputacioncita after insert
	on pareja_de_cita  for each row
	execute procedure reputacionmala();

insert into pareja_de_cita values ('pcita00037','usuario005', 'cita000005');


