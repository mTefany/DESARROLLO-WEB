
----------------------------------------------------------------------------------------
---------------------------------------CURSOR------------------------------------------
----------------------------------------------------------------------------------------

----------CURSOR QUE MUESTRE EL NUMERO DE LA INSCRIPCION EL NOMBRE DEL----------------- 
----------------------ADMINISTRADOR DESIGNADO Y EL CLIENTE ----------------------------

	do 
	$$
	DECLARE 
		datos RECORD;
		cur_datos  cursor for SELECT * FROM  public.inscripcion
			INNER JOIN public.administrador ON   
			inscripcion.admi_id = administrador.admi_id
			INNER JOIN public.usuario ON  
			inscripcion.cli_codigo = usuario.cli_codigo 
			WhERE bin_numero =4 ORDER BY inc_codigo ASC;
	BEGIN	
		OPEN cur_datos;
		FETCh cur_datos INTO datos;
		while (found) loop 
		RAISE NOTICE 
		'
		NOMBRE DEL ADMINISTRADOR: % 
		NOMBRE DEL USUARIO: % 
		NUMERO DE INSCRIPCION: % 

		', datos.admi_nombre, datos.cli_nombre, datos.inc_codigo;
		FETCh cur_datos INTO datos;
	end loop;	
	end $$
	Language 'plpgsql';



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  