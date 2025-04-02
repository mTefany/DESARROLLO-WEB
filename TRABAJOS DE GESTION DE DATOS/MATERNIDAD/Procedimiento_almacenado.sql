
----------------------------------------PROCEDIMIENTO ALMACENADO------------------------------------------
------------------------------PROCEDIMIENTO ALMACENADO-------------------------
-------BUSCAR SI UNA DETERMINADA MADRE DE FAMILIA LLEGO CON UN ACOMPAÑANTE-----

  CREATE OR REPLACE function buscar_madre(madre int)
  RETURNS text
  as $madre_buscada$
  	DECLARE
	resul INT;
      BEGIN
		 SELECT mad_id into resul FROM conyuge	WHERE mad_id = madre;
		 if (resul > 0) then
		 	RAISE NOTICE 'ESTA MADRE DE FAMILIA SI TIENE ACOMPAÑANTE';
		 end if;
      end;
  $madre_buscada$
  Language 'plpgsql';
