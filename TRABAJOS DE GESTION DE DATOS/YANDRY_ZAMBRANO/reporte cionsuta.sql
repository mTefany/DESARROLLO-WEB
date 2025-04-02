SELECT 
formulario.especies, 
count(  formulario.especies ) as total,
  puerto_pesquero.nombre_puerto, 
  puerto_pesquero.direccion_puerto, 
  puerto_pesquero.repregerente_puerto, 
  puerto_pesquero.telefono_puerto, 
  puerto_pesquero.paginaweb_puerto, 
  puerto_pesquero.correo_puerto
  --extract (year from zarpe.fecha_salida) as año
FROM barco_pesquero 
	inner join formulario on   formulario.codi_barco = barco_pesquero.codi_barco
	inner join zarpe on zarpe.codi_barco = barco_pesquero.codi_barco
	inner join  public.puerto_pesquero on   puerto_pesquero.codigo_puerto = barco_pesquero.codigo_puerto
where extract (year from zarpe.fecha_salida)='2021'
group by 
formulario.especies,
puerto_pesquero.nombre_puerto, 
  puerto_pesquero.direccion_puerto, 
  puerto_pesquero.repregerente_puerto, 
  puerto_pesquero.telefono_puerto, 
  puerto_pesquero.paginaweb_puerto, 
  puerto_pesquero.correo_puerto
