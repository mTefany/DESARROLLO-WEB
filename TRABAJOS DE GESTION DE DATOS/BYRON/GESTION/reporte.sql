--Un reporte en barras de la cantidad de tutorias dadas por cada tutor.

SELECT 
  count(tutor.nom_tutor) as totaltutoria, 
  tutor.nom_tutor
FROM 
  public.tutoria
  inner join public.tutor on  tutoria.id_tutor_tutor = tutor.id_tutor 
  inner join public.tutorado on tutoria.id_tutorado_tutorado = tutorado.id_tutorado
  inner join public.descripcion_tutoria on descripcion_tutoria.id_tutoria_tutoria = tutoria.id_tutoria
group by 
tutor.nom_tutor