                                 
----------------------------------------------------------------------------------------
---------------------------------------TRIGGER------------------------------------------
----------------------------------------------------------------------------------------

------------------FUNCION---------------------------------------------------------------  


	CREATE OR REPLACE FUNCTION control_inscrip() 
	RETURNS TRIGGER 
	AS
	$control_inscrip$
	    declare
	    num_inscrip int;
	    valor_pago int;
	--SE INICIA 
	 BEGIN   
		SELECT count (*) into num_inscrip from inscripcion where cli_codigo=new.cli_codigo;
		SELECT  pag_realizado into valor_pago from pago where (pag_realizado < 40);
			if(num_inscrip > 0)then
				raise exception 'La persona que desea inscribirse cuenta con pagos pendientes';
			end if;	
		RETURN new;
	 END; 
	--SE TERMINA LA FUNCION
	$control_inscrip$
	LANGUAGE plpgsql

------------------TRIGGER--------------------------------------------------------------   

	CREATE TRIGGER contr_inscripcion before insert
	on inscripcion for each row 
	execute procedure control_inscrip() ;

------------------INSERCION-------------------------------------------------------------   

	INSERT INTO INSCRIPCION VALUES (0028 ,0.00,'9/03/2021', 002, 009);


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  