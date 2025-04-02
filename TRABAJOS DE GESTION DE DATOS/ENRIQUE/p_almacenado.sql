--Pasar parámetros de entrada del nombre del respectivo establecimiento y muestre cuantas son las personas atendidas 

create or replace function personasatendidas(varchar)
returns  text
as $personasatendidas$
	declare 
	 lugarcita alias for $1;
	 totalpersona int;
begin
	SELECT  
	  count(usuario.nickname_usuario) INTO totalpersona
	FROM 
	  public.cita
	  INNER JOIN public.pareja_de_cita ON pareja_de_cita.id_cita_cita = cita.id_cita
	  INNER JOIN public.lugar_cita on lugar_cita.id_lugar = cita.id_lugar_lugar_cita 
	  INNER JOIN public.usuario ON usuario.id_usuario = pareja_de_cita.id_usuario_usuario
	WHERE 
	  $1 = lugar_cita.nom_lugar
	GROUP BY 
	lugar_cita.nom_lugar;
			return totalpersona;
end;
$personasatendidas$
Language plpgsql;

SELECT personasatendidas('Cafetería Chispita')