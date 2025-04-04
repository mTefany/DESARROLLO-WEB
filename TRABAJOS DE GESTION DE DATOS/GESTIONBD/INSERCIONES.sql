
INSERT INTO RUTINA (RUTI_CODE, RUTI_NOM, RUTI_DETA) VALUES 
(1, 'RUTINA ESPECIAL', 'ESTA ES UTILIZADA PARA LAS PERSONAS QUE RECIEN INGRESAN 
 AL GIMNASIO');
INSERT INTO RUTINA (RUTI_CODE, RUTI_NOM, RUTI_DETA) VALUES 
(2, 'RUTINA MEDIA', 'ESTA RUTINA ES UTILIZADA PARA LAS PERSONAS QUE YA TIENEN UN 
 PEQUEÑO AVANCE EN EL GIMNASIO');
INSERT INTO RUTINA (RUTI_CODE, RUTI_NOM, RUTI_DETA) VALUES 
(3, 'RUTINA ALTA', 'ESTA ES UTILIZADA PARA LAS PERSONAS QUE YA CONOCEN BASTANTE 
 DE CADA UNO DE LOS EJERCICIOS');
INSERT INTO RUTINA (RUTI_CODE, RUTI_NOM, RUTI_DETA) VALUES 
(4, 'RUTINA ALTERNA', 'ESTA RUTINA ESTA DISEÑADA PARA LAS PERSONAS DE RUTINA MEDIA');

INSERT INTO TIPO_CLIENTE (TIPO_ID, TIPO_DESCRIPCION) VALUES (001, 'PRINCIPIANTE'  );
INSERT INTO TIPO_CLIENTE (TIPO_ID, TIPO_DESCRIPCION) VALUES (002, 'INTERMEDIO' );
INSERT INTO TIPO_CLIENTE (TIPO_ID, TIPO_DESCRIPCION) VALUES (003, 'AVANZADO' );

INSERT INTO CLIENTE (CLI_CED, CLI_NOMBRE, CLI_APELLIDO, CLI_NACIMIENTO, CLI_TIPO_SANGRE, CLI_CELULAR, CLI_CEL_EMERG, CLI_CORRE, TIPO_ID_TIPO_CLIENTE, RUTI_CODE_RUTINA)
VALUES(1350696397, 'ELVA STEFANY','MENDOZA CEDEÑO' , '20/11/1998','O-', 0995674301, 0934769263, 'evamp@gmail.com', 001, 1);
INSERT INTO CLIENTE (CLI_CED, CLI_NOMBRE, CLI_APELLIDO, CLI_NACIMIENTO, CLI_TIPO_SANGRE, CLI_CELULAR, CLI_CEL_EMERG, CLI_CORRE, TIPO_ID_TIPO_CLIENTE, RUTI_CODE_RUTINA)
VALUES(1763638622, ' LUIS CARLOS', 'DELGADO MANTUANO', '13/08/2000', 'O+', 0995672941, 0976564752, 'luisdm@gmail.com', 003, 3);
INSERT INTO CLIENTE (CLI_CED, CLI_NOMBRE, CLI_APELLIDO, CLI_NACIMIENTO, CLI_TIPO_SANGRE, CLI_CELULAR, CLI_CEL_EMERG, CLI_CORRE, TIPO_ID_TIPO_CLIENTE, RUTI_CODE_RUTINA)
VALUES(1983653456, ' CARMEN INES', 'LOPEZ LUCAS', '08/03/1997', 'O-', 0995875531, 0976363418, 'carmenll@gmail.com', 002, 2);
INSERT INTO CLIENTE (CLI_CED, CLI_NOMBRE, CLI_APELLIDO, CLI_NACIMIENTO, CLI_TIPO_SANGRE, CLI_CELULAR, CLI_CEL_EMERG, CLI_CORRE, TIPO_ID_TIPO_CLIENTE, RUTI_CODE_RUTINA)
VALUES(1387646578, 'MARIA VICTORIA','VELEZ DELGADO' , '10/07/1998', 'A-', 0995421101, 0934000023, 'mariavic@gmail.com', 001, 1);
INSERT INTO CLIENTE (CLI_CED, CLI_NOMBRE, CLI_APELLIDO, CLI_NACIMIENTO, CLI_TIPO_SANGRE, CLI_CELULAR, CLI_CEL_EMERG, CLI_CORRE, TIPO_ID_TIPO_CLIENTE, RUTI_CODE_RUTINA)
VALUES(1987368857, ' ALEJANDRO JAVIER', 'MENDOZA MANTUANO', '23/07/2000', 'A+', 0995643941, 0985754752, 'alemenmant@gmail.com', 003, 3);
INSERT INTO CLIENTE (CLI_CED, CLI_NOMBRE, CLI_APELLIDO, CLI_NACIMIENTO, CLI_TIPO_SANGRE, CLI_CELULAR, CLI_CEL_EMERG, CLI_CORRE, TIPO_ID_TIPO_CLIENTE, RUTI_CODE_RUTINA)
VALUES(1237566593, 'RENAN ALEJANDRO', 'LUCAS MERO', '15/04/1997', 'A+', 0991111531, 0985323418, 'renanlucasmero@gmail.com', 002, 4);

INSERT INTO TIPO_CARGO (TIPO_ID, TIPO_DETALLE) VALUES (1, 'GERENTE' );
INSERT INTO TIPO_CARGO (TIPO_ID, TIPO_DETALLE) VALUES (2, 'ENTRENADOR' );
INSERT INTO TIPO_CARGO (TIPO_ID, TIPO_DETALLE) VALUES (3, 'SECRETARIA' );

INSERT INTO PERSONAL (PER_CODE, PER_NOMBRE, PER_APELLIDO, PER_CORREO, PER_CELULAR, PER_ENTRADA, PER_SALIDA, TIPO_ID_TIPO_CARGO)
VALUES(1436576900, 'MELINA LISSETH','GARCIA SANCHEZ' ,  'mel@gmail.com',  0995674301, '13/11/2021',  '28/11/2021', 3);
INSERT INTO PERSONAL (PER_CODE, PER_NOMBRE, PER_APELLIDO, PER_CORREO, PER_CELULAR, PER_ENTRADA, PER_SALIDA, TIPO_ID_TIPO_CARGO)
VALUES(1837483202, 'YULETZI MONSERRATE', 'ALVAREZ DELGADO', 'yulimon@gmail.com', 0937462561, '29/11/2021',  '13/12/2021', 3);
INSERT INTO PERSONAL (PER_CODE, PER_NOMBRE, PER_APELLIDO, PER_CORREO, PER_CELULAR, PER_ENTRADA, PER_SALIDA, TIPO_ID_TIPO_CARGO)
VALUES(1839372111, 'DOLORES MONSERRATE', 'VINCES MERA', 'dolomon@gmail.com', 0983726251, '05/01/2021',  '07/03/2021', 2);
INSERT INTO PERSONAL (PER_CODE, PER_NOMBRE, PER_APELLIDO, PER_CORREO, PER_CELULAR, PER_ENTRADA, PER_SALIDA, TIPO_ID_TIPO_CARGO)
VALUES(1308274212, 'JUAN JOSE','MADONAD MENDOZA' , 'juanjo@gmail.com', 0988627361, '10/07/1998',  '10/07/1998', 1);
INSERT INTO PERSONAL (PER_CODE, PER_NOMBRE, PER_APELLIDO, PER_CORREO, PER_CELULAR, PER_ENTRADA, PER_SALIDA, TIPO_ID_TIPO_CARGO)
VALUES(1327488492, ' ALEJANDRO JAVIER', 'GARCIA MENDOZA', 'aleja@gmail.com', 0998929891, '08/03/2021',  '10/05/2021', 2);
INSERT INTO PERSONAL (PER_CODE, PER_NOMBRE, PER_APELLIDO, PER_CORREO, PER_CELULAR, PER_ENTRADA, PER_SALIDA, TIPO_ID_TIPO_CARGO)
VALUES(1345839291, 'JOSE DANIEL', 'MERO LUCAS', 'joseda@gmail.com', 0912635416, '15/05/2021',  '18/07/2021', 2);


INSERT INTO MAQUINA (MAQ_COD, MAQ_NOMBRE, MAQ_DESCRIPCION, MAQ_FEC_COMPRA, MAQ_EJERCICIO) VALUES 
(1, 'Banco para Abdominales', 'Banco regulable para abdominales profesional', '10/08/2020', 'Abdominales');
INSERT INTO MAQUINA (MAQ_COD, MAQ_NOMBRE, MAQ_DESCRIPCION, MAQ_FEC_COMPRA, MAQ_EJERCICIO) VALUES 
(2, 'Pantorillera', 'Maquina para entrenamiento de gastrocnemio.', '13/08/2020', 'Desarrollo del musculo');
INSERT INTO MAQUINA (MAQ_COD, MAQ_NOMBRE, MAQ_DESCRIPCION, MAQ_FEC_COMPRA, MAQ_EJERCICIO) VALUES 
(3, 'Banco Plano', 'Banco plano profesional  color', '20/09/2020', 'Ejercicio para el pecho');
INSERT INTO MAQUINA (MAQ_COD, MAQ_NOMBRE, MAQ_DESCRIPCION, MAQ_FEC_COMPRA, MAQ_EJERCICIO) VALUES 
(4, 'Banco regulable', 'Banco con un diseño simple y robusto', '25/09/2020', 'Postura correcta');

INSERT INTO EMPRESA_DE_MANTENIMIENTO (EMPRESA_COD, EMPRESA_NOMBRE, EMPRESA_CELULAR, EMPRESA_DIRECCIO, EMPRESA_CORREO, EMPRESA_REPRESENTANTE) VALUES 
(1, 'EMPRESA XYZ', 0984743162, 'BARRIO SANTA MARTA', 'xyz@gmail.com.ec', 'ING.MARITZA AREAS LUCAS');
INSERT INTO EMPRESA_DE_MANTENIMIENTO (EMPRESA_COD, EMPRESA_NOMBRE, EMPRESA_CELULAR, EMPRESA_DIRECCIO, EMPRESA_CORREO, EMPRESA_REPRESENTANTE) VALUES 
(2, 'EMPRESA ARTEAGA',0984245162, 'BARRIO SAN JUAN', 'artea@hotmail.com', 'MGZ. LEONARDO CEDEÑO MENDOZA');
INSERT INTO EMPRESA_DE_MANTENIMIENTO (EMPRESA_COD, EMPRESA_NOMBRE, EMPRESA_CELULAR, EMPRESA_DIRECCIO, EMPRESA_CORREO, EMPRESA_REPRESENTANTE) VALUES 
(3, 'EMPRESA S.A', 0964826354, 'BARRIO LOS ESTEROS', 's.a@gmail.com', 'DRA. CARMEN VILLALOBOS SANTANA');
INSERT INTO EMPRESA_DE_MANTENIMIENTO (EMPRESA_COD, EMPRESA_NOMBRE, EMPRESA_CELULAR, EMPRESA_DIRECCIO, EMPRESA_CORREO, EMPRESA_REPRESENTANTE) VALUES 
(4, 'EMPRESA GYMK', 0985372631,'BARRIO CARTAGENA','gym4k@live.hsc.com.ec','ING. CARLOTA LUCAS MENDEZ');

INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(1, '24/11/2020', 4,1);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(2, '28/12/2020',4,3);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(3, '28/02/2021', 3,2);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(4, '13/02/2021', 2,1);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(5, '03/04/2021', 1,4);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(6, '12/03/2021',2,3);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(7, '18/04/2021', 3,2);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(8, '25/05/2021', 1,4);
INSERT INTO MANTENIMIENTO (MANT_COD, MANT_FECHA, MAQ_COD_MAQUINA, EMPRESA_COD_EMPRESA_DE_MANTENIMIENTO) VALUES 
(9, '25/09/2021', 1,4);

INSERT INTO TIPO_PLAN (PLAN_ID, PLAN_NOMBRE, PLN_DETALLE, PLAN_COSTO) VALUES 
(001, 'PLAN EXCELENT', 'Debe ser un pago de tres personas ', 120.00);
INSERT INTO TIPO_PLAN (PLAN_ID, PLAN_NOMBRE, PLN_DETALLE, PLAN_COSTO) VALUES 
(002, 'PLAN PAREJA',' Si ingresas dos personas', 80.00);
INSERT INTO TIPO_PLAN (PLAN_ID, PLAN_NOMBRE, PLN_DETALLE, PLAN_COSTO) VALUES 
(003, 'PLAN SOLO', 'Cada pago de una sola persona por mes ', 40.00);
INSERT INTO TIPO_PLAN (PLAN_ID, PLAN_NOMBRE, PLN_DETALLE, PLAN_COSTO) VALUES 
(004, 'PLAN DIARIO', 'LA PERSONA INGRESA DIARIAMENTE ', 2.00);

INSERT INTO SECCION (SEC_CODI, SEC_NOM, SEC_TIPO) VALUES (001, 'INDIVIDUAL', 'MAQUINA' );
INSERT INTO SECCION (SEC_CODI, SEC_NOM, SEC_TIPO) VALUES (002, 'GRUPAL', 'BAILOTERAPIA' );

INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-001', '17/01/2021', 00.00, 00.00, 1436576900 );
INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-002', '20/02/2021', 00.00, 00.00, 1837483202 );
INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-003', '24/03/2021', 00.00, 00.00, 1436576900 );
INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-004', '17/04/2021', 00.00, 00.00, 1837483202 );
INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-005', '18/01/2021', 00.00, 00.00, 1837483202 );
INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-006', '25/04/2021', 00.00, 00.00, 1436576900 );
INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-007', '20/05/2021', 00.00, 00.00, 1837483202 );
INSERT INTO FACTURA (FACT_NUM, FACT_FECH, FACT_SUBTO, FACT_TOTAL, PER_CODE_PERSONAL) VALUES 
('001-008', '10/04/2021', 00.00, 00.00, 1436576900 );

INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(17373, 'AGUA STAR', 'BOTELLA PERSONAL PEQUEÑA', 0.50);
INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(23744, 'SAUNA', 'SAUNA PERSONAL', 2.5);
INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(93476, 'BEBIDA', 'BEBIDA ENERGETICA', 1.50);
INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(17635, 'CAMISETA', 'CAMISETAS PARA EJERCICIOS', 15.00);
INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(17390, 'POWER', 'JUGO EN PRESENTACION PEQUEÑA', 0.75);
INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(14232, 'AGUA STAR', 'BOTELLA PERSONAL MEDIANA', 1.00);
INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(16434, 'SPA', 'MASAJES, RELAJANTES', 15.00);
INSERT INTO PRODUCTO_ADICIONAL (PRO_ADI_COD, PRO_ADI_NOMBRE, PRO_ADI_DESCR, PRO_ADI_COSTO) VALUES 
(14627, 'PLAYERAS', 'CAMISETAS PARA EJERCICIOS TALLAS GRANDES', 14.00);

INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(1, '17/01/2021 00:16:30', '17/01/2021 00:18:30', 1350696397, 1, 1 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(2, '17/04/2021 00:15:00', '17/04/2021 00:18:00', 1763638622, 2, 2 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(3, '15/04/20211 00:08:30', '15/04/2021 00:10:00', 1983653456, 4, 1 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(4, '20/03/2021 00:10:30', '20/03/2021 00:12:30', 1387646578, 3, 2 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(5, '17/01/2021 00:09:30', '17/01/2021 00:11:30', 1987368857, 4, 1 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(6, '17/08/2021 00:09:30', '17/08/2021 00:11:30', 1387646578, 4, 2 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(7, '25/09/2021 00:09:30', '17/09/2021 00:11:30', 1387646578, 4, 2 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(8, '17/08/2021 00:09:30', '17/08/2021 00:11:30', 1387646578, 4, 2 );
INSERT INTO INGRESO_GIMNASIO (GIM_ID, GIM_INGRESO, GIM_SALIDA, CLI_CED_CLIENTE, PLAN_ID_TIPO_PLAN, SEC_CODI_SECCION) VALUES 
(9, '25/09/2021 00:09:30', '17/09/2021 00:11:30', 1387646578, 4, 2 );

INSERT INTO DETALLE_FACTURA (DETA_ID, CLI_CED_CLIENTE, PRO_ADI_COD_PRODUCTO_ADICIONAL, DETA_CANT, FACT_NUM_FACTURA) VALUES 
(201, 1350696397, 17373, 4, '001-001');
INSERT INTO DETALLE_FACTURA (DETA_ID, CLI_CED_CLIENTE, PRO_ADI_COD_PRODUCTO_ADICIONAL, DETA_CANT, FACT_NUM_FACTURA) VALUES 
(202, 1763638622, 17635, 2, '001-006' );
INSERT INTO DETALLE_FACTURA (DETA_ID, CLI_CED_CLIENTE, PRO_ADI_COD_PRODUCTO_ADICIONAL, DETA_CANT, FACT_NUM_FACTURA) VALUES 
(203, 1983653456, 17390, 1, '001-003');
INSERT INTO DETALLE_FACTURA (DETA_ID, CLI_CED_CLIENTE, PRO_ADI_COD_PRODUCTO_ADICIONAL, DETA_CANT, FACT_NUM_FACTURA) VALUES 
(204, 1387646578, 93476, 2, '001-002');
INSERT INTO DETALLE_FACTURA (DETA_ID, CLI_CED_CLIENTE, PRO_ADI_COD_PRODUCTO_ADICIONAL, DETA_CANT, FACT_NUM_FACTURA) VALUES 
(205, 1387646578, 14627, 3, '001-002');
INSERT INTO DETALLE_FACTURA (DETA_ID, CLI_CED_CLIENTE, PRO_ADI_COD_PRODUCTO_ADICIONAL, DETA_CANT, FACT_NUM_FACTURA) VALUES 
(206, 1350696397, 14232, 4, '001-001');

INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(1, 1, 1350696397);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(2, 2, 1350696397);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(3, 3, 1350696397);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(4, 1, 1387646578);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(5, 4, 1387646578);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(6, 3, 1237566593);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(7, 1, 1237566593);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(8, 2, 1983653456);
INSERT INTO USO_MAQUINA (USO_ID, MAQ_COD_MAQUINA, CLI_CED_CLIENTE) VALUES 
(9, 1, 1983653456);

INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(1, '17/01/2021',  1, 1839372111);
INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(2, '20/02/2021',  3, 1839372111);
INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(3, '20/03/2021',  2, 1327488492);
INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(4, '24/03/2021',  1, 1345839291);
INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(5, '10/04/2021',  3, 1839372111);
INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(6, '15/04/2021',  3, 1327488492);
INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(7, '17/04/2021',  4, 1345839291);
INSERT INTO RUTINA_ESTABLECIDA (RUTI_ID, RUTI_FECHA, RUTI_CODE_RUTINA, PER_CODE_PERSONAL)VALUES
(8, '20/05/2021',  4, 1327488492);
