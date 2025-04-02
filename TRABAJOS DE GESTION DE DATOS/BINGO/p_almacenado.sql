
------------------------------------------------------------------------------------
-----------ROCEDIMIENTO ALMACENADO QUE PERMITE ELIMINAR LOS INSCRITOS---------------
--------------------CORRESPONDIENTES A UN ADMINISTRADOR ----------------------------
------------------------------------------------------------------------------------
  
  CREATE OR REPLACE function ELIMINAR_GANADOR(BIN INT) 
  RETURNS TEXT
  as $$
      BEGIN
         DELETE FROM GANADOR CASCADE WHERE bin_numero=BIN ;
         RAISE NOTICE 'LOS GANADORES DE ESTE BINGO HAN SIDO ELIMINADOS';
         
      end;
  $$
  Language 'plpgsql';

SELECT ELIMINAR_GANADOR(3)


-------------------------------------------------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  