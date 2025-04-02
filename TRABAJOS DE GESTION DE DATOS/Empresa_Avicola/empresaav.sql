﻿CREATE TABLE CLIENTE (
CLI_CEDULA INTEGER PRIMARY KEY,
CLI_NOMBRE VARCHAR (45),
CLI_APELLIDO VARCHAR (45),
CLI_TELEFONO INTEGER,
CLI_EMAIL VARCHAR (50)
);

INSERT INTO CLIENTE(CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES
(1312466145, 'JAVIER', 'MARTINEZ', 0928822675,'XAVY@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1316785490, 'WALTER', 'QUIROZ', 0928822567,'WALTER@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1312466637, 'MARIO', 'JIMENEZ', 0956722587,'JIMENEZ@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1369704536, 'JANDRY', 'MARUCHAN', 0928828543,'MARUCHAN@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1312458763, 'LEONIDAS', 'PROAÑO', 0928876545,'PROA@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1312479805, 'SASQUE', 'MEDINA', 0928826789,'MEDINSA@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1312466784, 'JULY', 'MENDOZA', 0969873675,'MENDOZA@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1312491548, 'MARISOL', 'MARTINEZ', 0928878475,'MARY@GMAIL.COM');
INSERT INTO CLIENTE (CLI_CEDULA , CLI_NOMBRE, CLI_APELLIDO, CLI_TELEFONO, CLI_EMAIL )VALUES 
(1312456871, 'JAVIER', 'GUTIERREZ', 0928825674,'XAGUR@GMAIL.COM');


CREATE TABLE EMPLEADO (
EM_CEDULA INTEGER PRIMARY KEY,
EM_NOMBRE VARCHAR (45),
EM_APELLIDO VARCHAR (45),
EM_TELEFONO INTEGER,
EM_DIRECCION VARCHAR (50),
EM_CARGO VARCHAR (50),
EM_EMAIL VARCHAR (50)
);

INSERT INTO EMPLEADO (EM_CEDULA , EM_NOMBRE, EM_APELLIDO, EM_TELEFONO, EM_DIRECCION, EM_CARGO, EM_EMAIL) VALUES
(1312567894, 'MARISOL',' QUIÑONEZ', 0968564678,'SANTA MARTHA' , 'VETERINARIO' , 'MARISOL@GMAIL.COM' );
INSERT INTO EMPLEADO (EM_CEDULA , EM_NOMBRE, EM_APELLIDO, EM_TELEFONO, EM_DIRECCION, EM_CARGO, EM_EMAIL) VALUES
(1312567876, 'KARLA',' CAÑARTE', 0968564576,'ALAJUELA Y 10 DE OCTUBRE',  'CUIDADOR',  'KARLA@GMAIL.COM' );
INSERT INTO EMPLEADO (EM_CEDULA , EM_NOMBRE, EM_APELLIDO, EM_TELEFONO, EM_DIRECCION, EM_CARGO, EM_EMAIL) VALUES
(1312567955, 'DIEGO',' MURILLO',0968556784, 'ELOY ALFARO Y URDANETA',  'VETERINARIO' , 'DIEGO@GMAIL.COM ');
INSERT INTO EMPLEADO (EM_CEDULA , EM_NOMBRE, EM_APELLIDO, EM_TELEFONO, EM_DIRECCION, EM_CARGO, EM_EMAIL) VALUES
(1312566875, 'MOISES',' PEREZ', 0968564675,'6 DE NOVIEMBRE',  'VENDEDOR' , 'MOISES@GMAIL.COM' );

CREATE TABLE ANIMAL (
AN_ID INTEGER PRIMARY KEY,
AN_TIPO VARCHAR (30),
AN_RAZA VARCHAR (50),
AN_CANTIDAD  INTEGER NULL
);

INSERT INTO ANIMAL VALUES (01,'VACA','MAINE ANJOU',1);
INSERT INTO ANIMAL VALUES (02,'VACA','HOLSTEIN',2);
INSERT INTO ANIMAL VALUES (03,'CERDO','CHANCHO BLANCO',3);
INSERT INTO ANIMAL VALUES (04,'CERDO','CHANCHO TRAMADO',4);
INSERT INTO ANIMAL VALUES (05,'GALLINA','-----------',5);


CREATE TABLE CAMADA (
CAM_ID INTEGER PRIMARY KEY,
CAM_DESCRIPCION VARCHAR (45),
CAM_CANTIDAD_ANIMAL INTEGER,
AN_ID INTEGER NULL,
CLI_CEDULA INTEGER NULL,
EM_CEDULA INTEGER NULL,
CONSTRAINT AN_ID foreign key (AN_ID)
REFERENCES ANIMAL(AN_ID) ON UPDATE CASCADE,
CONSTRAINT CLI_CEDULA foreign key (CLI_CEDULA )
REFERENCES CLIENTE(CLI_CEDULA ) ON UPDATE CASCADE,
CONSTRAINT EM_CEDULA foreign key (EM_CEDULA)
REFERENCES EMPLEADO(EM_CEDULA) ON UPDATE CASCADE
);

INSERT INTO CAMADA VALUES (01, 'CAMADA DE VACAS MAINE ANJOU', 50, 001, 1312458763, 1312567894);
INSERT INTO CAMADA VALUES (02, 'CAMADA DE VACAS HOLSTEIN', 50,  004, 1312491548, 1312567955);
INSERT INTO CAMADA VALUES (03, 'CAMADA DE CHANCHOS BLANCOS', 50,  002, 1312466637, 1312567876);
INSERT INTO CAMADA VALUES (04, 'CAMADA DE CHANCHOS TRAMADOS', 50,  005, 1312456871, 1312566875);
INSERT INTO CAMADA VALUES (05, 'CAMADA DE GALLINAS', 50,  003, 1312466145, 1312566875);


CREATE TABLE ESTADO_DEL_ANIMAL (
EST_ID INTEGER NULL PRIMARY KEY,
EST_ETAPAS VARCHAR(45) ,
EST_DESCRIPCION VARCHAR (45),
EST_FECHA_INICIAL DATE, 
AN_ID INTEGER NULL,
CONSTRAINT AN_ID  foreign key (AN_ID )
REFERENCES ANIMAL(AN_ID ) ON UPDATE CASCADE
);

INSERT INTO ESTADO_DEL_ANIMAL VALUES (01,'GRANDE','BUEN ESTADO', '2020-12-12',01);
INSERT INTO ESTADO_DEL_ANIMAL VALUES (02,'GRANDE','BUEN ESTADO', '2020-11-12',02);
INSERT INTO ESTADO_DEL_ANIMAL VALUES (03,'MEDIANO','REGULAR', '2020-10-12',03);
INSERT INTO ESTADO_DEL_ANIMAL VALUES (04,'PEQUEÑO','BUEN ESTADO', '2020-11-11',04);
INSERT INTO ESTADO_DEL_ANIMAL VALUES (05,'GRANDE','REGULAR', '2020-09-12',05);
INSERT INTO ESTADO_DEL_ANIMAL VALUES (06,'MEDIANO','BUEN ESTADO', '2020-12-10',04);

CREATE TABLE VENTA (
VEN_ID INTEGER NULL PRIMARY KEY,
VEN_PRECIO FLOAT,
VEN_FECHA DATE ,
VEN_DESCRIPCION VARCHAR(50) ,
VEN_CANTIDAD INTEGER,
EM_CEDULA INTEGER NULL,
CLI_CEDULA INTEGER NULL,
CAM_ID  INTEGER NULL, 
CONSTRAINT EM_CEDULA foreign key (EM_CEDULA)
REFERENCES EMPLEADO(EM_CEDULA) ON UPDATE CASCADE,
CONSTRAINT CLI_CEDULA foreign key (CLI_CEDULA)
REFERENCES CLIENTE (CLI_CEDULA) ON UPDATE CASCADE,
CONSTRAINT CAM_ID foreign key (CAM_ID)
REFERENCES CAMADA (CAM_ID) ON UPDATE CASCADE
);

INSERT INTO VENTA VALUES (01,3000,'2020-12-12','VENTA DE CAMADA DE VACAS CHANCHO TRAMADO',30, 1312567894, 1312466145,04);
INSERT INTO VENTA VALUES (02,3000,'2020-12-13','VENTA DE CAMADA DE VACAS MAINE ANJOU',30, 1312567894, 1316785490,01);
INSERT INTO VENTA VALUES (03,2000,'2020-12-14','VENTA DE CAMADA DE CHANCHO BLANCO', 50,1312567876, 1312466145,03);
INSERT INTO VENTA VALUES (01,3000,'2020-12-12','VENTA DE CAMADA DE VACAS MAINE ANJOU',30, 1312567894, 1312466145,01);
INSERT INTO VENTA VALUES (02,3000,'2020-12-13','VENTA DE CAMADA DE VACAS HOLSTEIN',40, 1312567894, 1316785490,02);
INSERT INTO VENTA VALUES (03,2000,'2020-12-14','VENTA DE CAMADA DE CHANCHO BLANCO', 50,1312567876, 1312466145,03);




--1. Mostrar el nombre de los clientes que compran con mayor frecuencia seguido del producto adquirido.
SELECT 
  cliente.cli_nombre,  
  COUNT( cliente.cli_nombre) AS CANTIDAD_de_veces_que_compro,  
  animal.an_tipo
FROM 
  public.camada
  INNER JOIN animal ON animal.an_id = camada.an_id
  INNER JOIN cliente ON  cliente.cli_cedula = camada.cli_cedula 
  INNER JOIN venta ON   venta.cam_id = camada.cam_id
GROUP BY 
  cliente.cli_nombre, 
  animal.an_tipo


HAVING COUNT(*)>1






--2. Mostrar el nombre de los productos que son  adquiridos durante una determinada fecha donde incluya la etapa de crecimiento de aquello
SELECT  
  venta.ven_fecha, 
  animal.an_tipo,
  estado_del_animal.est_etapas
FROM 
public.animal
INNER JOIN public.camada ON  animal.an_id = camada.an_id
INNER JOIN public.venta ON venta.cam_id = camada.cam_id
INNER JOIN public.estado_del_animal ON  estado_del_animal.est_id = animal.an_id

WHERE 
venta.ven_fecha>'01-12-2020' AND venta.ven_fecha<'31-12-2020'


--3. Mostrar cuántos productos de cada tipo se vendieron.

SELECT 
  animal.an_tipo,
  estado_del_animal.est_etapas,
  COUNT(animal.an_tipo) AS Cantidad_Animal
FROM 
public.animal
INNER JOIN public.camada ON  animal.an_id = camada.an_id
INNER JOIN public.estado_del_animal ON  estado_del_animal.est_id = animal.an_id
GROUP BY 
  animal.an_tipo,
  estado_del_animal.est_etapas




--4. Mostrar el numero total de animales vendidos con las ganancias totales obtenidas

SELECT 
sum(camada.cam_cantidad_animal) as cantidad_comprandos,
sum(venta.ven_precio) as Precio_total_de_venta
from 
public.camada
inner join public.venta on camada.cam_id = venta.cam_id
inner join public.cliente on cliente.cli_cedula = camada.cli_cedula