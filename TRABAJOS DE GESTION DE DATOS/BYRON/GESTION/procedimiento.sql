--Un procedimiento almacenado que reciba como parámetro el codigo del tutor 
--y muestre el total de los estudiantes que ha tenido.


create or replace function totalestudiantes(varchar)
returns  text
as $totalestudiantes$
	declare 
	 tutor alias for $1;
	 totalestudi int;
begin
	select count(tutoria.id_tutorado_tutorado) into  totalestudi from tutoria 
		WHERE tutoria.id_tutor_tutor = $1;
			return totalestudi;
end;
$totalestudiantes$
Language plpgsql;

SELECT totalestudiantes('tutor00001')