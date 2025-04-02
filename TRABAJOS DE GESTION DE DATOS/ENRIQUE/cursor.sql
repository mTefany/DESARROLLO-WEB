--Por cada persona, se diga en cuántos locales ha estado y cuántas parejas ha tenido

do 
$$
	DECLARE 
	    citass RECORD;
		cur_cita  cursor for SELECT 
			  count(lugar_cita.nom_lugar) as total_lugar, 
			  usuario.nickname_usuario as persona, 
			  count(pareja_de_cita.id_pareja_cita) as total_pareja
			FROM 
			  public.cita, 
			  public.pareja_de_cita, 
			  public.lugar_cita, 
			  public.usuario
			WHERE 
			  pareja_de_cita.id_cita_cita = cita.id_cita AND
			  lugar_cita.id_lugar = cita.id_lugar_lugar_cita AND
			  usuario.id_usuario = pareja_de_cita.id_usuario_usuario
			GROUP BY
			  usuario.nickname_usuario;
	BEGIN	
		OPEN cur_cita;
		FETCh cur_cita INTO citass;
		while (found) loop 
		RAISE NOTICE 
		'
		Nombre de la persona: % 
		Total de lugares en los que ha estado: % 
		Total pareja con las que ha estado: % 
		',
		citass.persona, citass.total_lugar, citass.total_pareja;
		FETCh cur_cita INTO citass;
	end loop;	
end $$
Language 'plpgsql';