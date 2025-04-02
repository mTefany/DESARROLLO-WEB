

------------------------------------------------------------------------------------
-----------------------------CODIGO PARA EL REPORTE --------------------------------
------------------------------------------------------------------------------------

SELECT 
	  administrador.admi_cedula , 
	  CONCAT(administrador.admi_nombre || ' ' || administrador.admi_apellido) as nombre_admi,  
	  administrador.admi_celular, 
	  bingo.bin_numero, 
	  bingo.bin_date, 
	  inscripcion.inc_codigo, 
	  inscripcion.inc_fecha, 
	  usuario.cli_cedula, 
	  CONCAT(usuario.cli_nombre || ' ' || usuario.cli_apellido) as nombre_cli, 
	  usuario.cli_direccion, 
	  ganador.gan_cantidad_ganados, 
	  inscripcion.inc_descuento, 
	  pago.pag_realizado,
	  40.00 - INSCRIPCION.INC_DESCUENTO AS  a_pagar, 
	  (40.00 - INSCRIPCION.INC_DESCUENTO) - PAGO.PAG_REALIZADO AS deuda
	FROM public.usuario
	INNER JOIN  public.bingo ON usuario.bin_numero = bingo.bin_numero 
	INNER JOIN public.ganador ON ganador.cli_codigo = usuario.cli_codigo
	INNER JOIN public.inscripcion ON inscripcion.cli_codigo = usuario.cli_codigo
	INNER JOIN public.administrador ON  inscripcion.admi_id = administrador.admi_id
	INNER JOIN public.pago ON  pago.inc_codigo = inscripcion.inc_codigo
	WHERE 
	  administrador.admi_nombre='STEFANY';

----------------------------------------------------------------------

  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  