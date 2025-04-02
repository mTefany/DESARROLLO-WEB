--Mostrar cada uno de los mantenimientos realizados donde se presente la empresa 
--con el nombre de  maquina a la cual se le dio mantenimiento.

SELECT 
	empresa_de_mantenimiento.empresa_nombre, 
	COUNT(empresa_de_mantenimiento.empresa_nombre) AS CANTIDAD,
	maquina.maq_nombre, 
	maquina.maq_ejercicio
FROM mantenimiento
	INNER JOIN maquina ON maquina.maq_cod = mantenimiento.maq_cod_maquina 
	INNER JOIN empresa_de_mantenimiento ON 
	empresa_de_mantenimiento.empresa_cod = mantenimiento.empresa_cod_empresa_de_mantenimiento
GROUP BY  
	empresa_de_mantenimiento.empresa_nombre, 
	maquina.maq_nombre,maquina.maq_ejercicio

--Dentro de las secciones grupales que contiene el gimnasio muestre cuantos y
--cuales clientes han ingresado en el 2021 por cada mes 

SELECT 
	count (seccion.sec_nom) as cant,
	seccion.sec_nom,
	extract (year from ingreso_gimnasio.gim_ingreso)as año,
	extract (month from ingreso_gimnasio.gim_ingreso)as mes
FROM ingreso_gimnasio
	INNER JOIN seccion ON  ingreso_gimnasio.sec_codi_seccion = seccion.sec_codi
	INNER JOIN cliente ON ingreso_gimnasio.cli_ced_cliente = cliente.cli_ced 
WHERE
	seccion.sec_nom = 'GRUPAL' AND extract (year from ingreso_gimnasio.gim_ingreso)= 2021
GROUP BY
	seccion.sec_nom,
	extract (year from ingreso_gimnasio.gim_ingreso),
	extract (month from ingreso_gimnasio.gim_ingreso)

--Cada cliente realiza compras en una cantidad de tiempo muestre el cliente, con el subtotal 
--y el total de cada uno. En este debe incluir el tipo de plan, el producto comprado y la cantidad 

SELECT 
	cliente.cli_nombre, 
	SUM(producto_adicional.pro_adi_costo * detalle_factura.deta_cant) as Subtotal,
	SUM(tipo_plan.plan_costo+(producto_adicional.pro_adi_costo * detalle_factura.deta_cant))as Total
FROM  detalle_factura
	INNER JOIN factura ON detalle_factura.fact_num_factura = factura.fact_num 
	INNER JOIN cliente ON cliente.cli_ced = detalle_factura.cli_ced_cliente
	INNER JOIN ingreso_gimnasio ON  ingreso_gimnasio.cli_ced_cliente = cliente.cli_ced
	INNER JOIN tipo_plan ON ingreso_gimnasio.plan_id_tipo_plan = tipo_plan.plan_id
	INNER JOIN producto_adicional ON detalle_factura.pro_adi_cod_producto_adicional = producto_adicional.pro_adi_cod
WHERE
	gim_ingreso > '2021-01-17 00:00:01' AND gim_ingreso < '2021-04-30 23:59:59'
GROUP BY 
	cliente.cli_nombre,
	ingreso_gimnasio.gim_ingreso
  
--Mostrar el nombre completo del cada uno de los entrenadores con el 
--total de clientes atendidos dentro de el año 2021

SELECT 
	concat(personal.per_nombre ||'  '|| personal.per_apellido) as nombres,
	count( personal.per_nombre) as cant
FROM 
	tipo_cliente
	INNER JOIN cliente ON cliente.tipo_id_tipo_cliente = tipo_cliente.tipo_id 
	INNER JOIN rutina  ON rutina.ruti_code = cliente.ruti_code_rutina
	INNER JOIN rutina_establecida ON rutina_establecida.ruti_code_rutina = rutina.ruti_code
	INNER JOIN personal ON personal.per_code = rutina_establecida.per_code_personal
WHERE
	extract (year from rutina_establecida.ruti_fecha)= 2021
GROUP BY
	concat(personal.per_nombre ||'  '|| personal.per_apellido),
	extract (year from rutina_establecida.ruti_fecha)