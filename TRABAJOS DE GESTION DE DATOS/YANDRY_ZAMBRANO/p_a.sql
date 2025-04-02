--ingresar representante del puerto mostrar fechas en las que ha entrado los distintos 
--barcos que han entrado al puerto con la cantidad de toneladas ingresadas. 

create or replace function mostrar_tonelada(varchar(40))
returns  text
as $$
	DECLARE 
		representante alias for $1;
		tonelada RECORD;
		cur_tonelada  cursor for SELECT 
		  puerto_pesquero.repregerente_puerto as representante, 
		  barco_pesquero.nombre_barco as barco,
		  zarpe.fecha_llegada as fecha, 
		  zarpe.tonelaje_capturado as tonelaje
		FROM  barco_pesquero
		inner  join puerto_pesquero on puerto_pesquero.codigo_puerto = barco_pesquero.codigo_puerto 
		inner join zarpe on zarpe.codi_barco = barco_pesquero.codi_barco
		WHERE puerto_pesquero.repregerente_puerto=$1;
begin
	OPEN cur_tonelada;
		FETCh cur_tonelada INTO tonelada;
		RAISE NOTICE 
			'Representante: % 
			', tonelada.representante;
		while (found) loop 
			RAISE NOTICE 'Barco: %  
			Fecha: % ----- Tonelada: % 
			',tonelada.barco, tonelada.fecha, tonelada.tonelaje;
			FETCh cur_tonelada INTO tonelada;
		end loop;
END;
$$ LANGUAGE plpgsql;

SELECT mostrar_tonelada('Rober Moreira Centeno')