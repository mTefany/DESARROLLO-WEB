SELECT 
  lugar_cita.nom_lugar, 
  count(usuario.nickname_usuario) as personas
FROM 
  public.cita
  INNER JOIN public.pareja_de_cita ON pareja_de_cita.id_cita_cita = cita.id_cita
  INNER JOIN public.lugar_cita on lugar_cita.id_lugar = cita.id_lugar_lugar_cita 
  INNER JOIN public.usuario ON usuario.id_usuario = pareja_de_cita.id_usuario_usuario
GROUP BY 
lugar_cita.nom_lugar