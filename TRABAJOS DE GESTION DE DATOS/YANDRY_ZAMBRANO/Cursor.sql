

--Mostrar los datos por año y por bandera la cantidad de tonelas ingresadas
--de una especie y el cobro por el servicio 

do 
$$
	DECLARE 
	    datos RECORD;
		cur_datos  cursor for SELECT 
		  zarpe.fecha_salida as año, 
		  barco_pesquero.bandera_barco as bandera, 
		  formulario.toneladas as toneladas,
		  formulario.especies as especies,
		  factura_barco.total_factura as cobro
		FROM   barco_pesquero
		inner join factura_barco on barco_pesquero.codi_barco = factura_barco.codi_barco 
		inner join zarpe on  zarpe.codi_barco = barco_pesquero.codi_barco
		inner join formulario on barco_pesquero.codi_barco = formulario.codi_barco ;
	BEGIN	
		OPEN cur_datos;
		FETCh cur_datos INTO datos;
		while (found) loop 
		RAISE NOTICE 
		'
		Año: % 
		Bandera: % 
		Toneladas: % 
		Especies: %
		Cobro: %
		',
		datos.año, datos.bandera, datos.toneladas, datos.especies, datos.cobro;
		FETCh cur_datos INTO datos;
	end loop;	
end $$
Language 'plpgsql';
