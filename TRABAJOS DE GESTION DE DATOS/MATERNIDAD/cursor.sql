
------------------------------------------------------cursor ------------------------------------------------------------
---------------UN CURSOR QUE MUESTRE LOS SIGUIENTES DATOS DE UNA AREA DETERMINADA EL NOMBRE DEL EMPLEADO-------------
----------------EL NOMBRE DE LA MADRE, LA SALA DE PARTO EN LA CUAL NACIO EL BEBE Y LA FECHA DEL PARTO----------------
------------------------------------------------------OBSTÉETRICA----------------------------------------------------

	CREATE OR REPLACE FUNCTION datos_ingresados() RETURNS TEXT
	AS $$
	DECLARE
		texto record;
		cur_ingreso CURSOR FOR SELECT * FROM empleado
		 inner join public.departamento_medico on empleado.det_me_id = departamento_medico.det_me_id
		 inner join  public.registro on registro.em_id = empleado.em_id 
		 inner join  public.madre on registro.mad_id = madre.mad_id
		 inner join  public.division_medica on empleado.div_med_id = division_medica.div_med_id
		 INNER JOIN public.sala_parto ON sala_parto.sal_part_id = empleado.sal_part_id
		 WHERE det_me_area = 'Obstétrica';
	BEGIN
		FOR texto in cur_ingreso loop
			RAISE NOTICE 'Empleado: % Numero de Sala: % Fecha del parto: % Atendido por: %', 
			texto.em_nombre, texto.sal_part_numero_sala, texto.res_fecha_parto, texto.div_med_division;
		end loop;
	end $$
	Language 'plpgsql';
------------------------------------- LLAMADA DEL METODO -----------------

	SELECT datos_ingresados();
