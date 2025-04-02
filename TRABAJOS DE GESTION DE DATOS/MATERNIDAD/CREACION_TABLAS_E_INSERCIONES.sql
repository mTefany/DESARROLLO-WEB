
----------------------------------------------------------------------------------------
---------------------------CREAR TABLA E INSERTAR DATOS---------------------------------
----------------------------------------------------------------------------------------


/*==============================================================*/
/* Table: MADRE                                                 */
/*==============================================================*/
create table MADRE (
   MAD_ID               INT                  not null,
   CON_ID               INT                  null,
   MAD_NOMBRE           VARCHAR(50)          not null,
   MAD_APELLIDO         VARCHAR(50)          not null,
   MAD_CEDULA           INT                  not null,
   MAD_TELEFONO         INT                  not null,
   MAD_CORREO           VARCHAR(50)          not null,
   MAD_EDAD             INT                  not null;
   constraint PK_MADRE primary key (MAD_ID)
);

/*==============================================================*/
insert into MADRE values
(1,null,'ELIZABETH','VELEZ',1231454571,0988824582,'daya2021@outlook.com', 17);
insert into MADRE values
(2,1,'GEMA','MENDOZA',1231257908,0988824582,'daya2021@outlook.com',18);
insert into MADRE values
(3,null,'GABRIELA','RODRIGUEZ',1847585893,0988824582,'daya2021@outlook.com',16);
insert into MADRE values
(4,2,'JOSSELYN','MACIAS',1231256511,0988824582,'daya2021@outlook.com', 21);
insert into MADRE values
(5,3,'MARTHA','SANCHEZ',1231343651,0988824582,'daya2021@outlook.com', 25);

/*==============================================================*/
/* Table: CONYUGE                                               */
/*==============================================================*/
create table CONYUGE (
   CON_ID               INT                  not null,
   MAD_ID               INT                  null,
   CON_NOMBRE           VARCHAR(50)          not null,
   CON_APELLIDO         VARCHAR(50)          not null,
   CON_CEDULA           INT                  not null,
   CON_TELEFONO         INT                  not null,
   CON_CORREO           VARCHAR(50)          not null,
   constraint PK_CONYUGE primary key (CON_ID)
);

/*==============================================================*/
insert into CONYUGE values
(1,2,'CARLOS','GARCIA',1231345151,0988824582,'daya2021@outlook.com');
insert into CONYUGE values
(2,4,'KEVIN','CEVALLOS',1231345151,0988824582,'daya2021@outlook.com');
insert into CONYUGE values
(3,5,'OMAR','REYES',1231345151,0988824582,'daya2021@outlook.com');

/*==============================================================*/
/* Table: DEPARTAMENTO_MEDICO                                   */
/*==============================================================*/
create table DEPARTAMENTO_MEDICO (
   DET_ME_ID            INT                  not null,
   DET_ME_AREA          VARCHAR(30)          not null,
   constraint PK_DEPARTAMENTO_MEDICO primary key (DET_ME_ID)
);

/*==============================================================*/
insert into DEPARTAMENTO_MEDICO values(1,'Ginecología');
insert into DEPARTAMENTO_MEDICO values(2,'Obstétrica');
insert into DEPARTAMENTO_MEDICO values(3,'Neonatología');

/*==============================================================*/
/* Table: DIVISION_MEDICA                                       */
/*==============================================================*/
create table DIVISION_MEDICA (
   DIV_MED_ID           INT                  not null,
   DIV_MED_DIVISION     VARCHAR(30)          not null,
   constraint PK_DIVISION_MEDICA primary key (DIV_MED_ID)
);

/*==============================================================*/
insert into DIVISION_MEDICA values(1,'Enfermera');
insert into DIVISION_MEDICA values(2,'Medico');

/*==============================================================*/
/* Table: SALA_PARTO                                            */
/*==============================================================*/
create table SALA_PARTO (
   SAL_PART_ID          INT                  not null,
   SAL_PART_NUMERO_SALA INT                  not null,
   SAL_PART_ESTADO_BB   VARCHAR(50)          not null,
   constraint PK_SALA_PARTO primary key (SAL_PART_ID)
);

/*==============================================================*/
insert into SALA_PARTO values (1,456,'Se va a casa');
insert into SALA_PARTO values (2,156,'Se va a casa');
insert into SALA_PARTO values (3,426,'Se va a casa');
insert into SALA_PARTO values (4,646,'Termocuna');
insert into SALA_PARTO values (5,326,'Termocuna');

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   EM_ID                INT                  not null,
   DIV_MED_ID           INT                  not null,
   DET_ME_ID            INT                  not null,
   SAL_PART_ID          INT                  not null,
   EM_NOMBRE            VARCHAR(50)          not null,
   EM_APELLIDO          VARCHAR(50)          not null,
   EM_CEDULA            INT                  not null,
   EM_TELEFONO          INT                  not null,
   EM_CORREO            VARCHAR(50)          not null,
   constraint PK_EMPLEADO primary key (EM_ID)
);
	
/*==============================================================*/
insert into EMPLEADO values
(1,2,1,2,'ERICKA','VELEZ',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(2,1,2,1,'SOFIA','ZAMBRANO',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(3,2,2,2,'ERICK','LOPEZ',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(4,2,3,4,'ANTONIO','LUCAS',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(5,1,2,4,'DIEGO','ARCENTALES',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(6,1,3,5,'CARLOTA','MOINA',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(7,1,1,5,'ADRIANA','VINCES',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(8,2,1,1,'NIMIA','GARCIA',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(9,1,1,3,'DAYANNA','PALMA',1231345151,0988824582,'daya2021@outlook.com');
insert into EMPLEADO values
(10,2,2,3,'ALEXIS','PICO',1231345151,0988824582,'daya2021@outlook.com');

/*==============================================================*/
/* Table: REGISTRO                                              */
/*==============================================================*/
create table REGISTRO (
   RES_ID               INT                  not null,
   MAD_ID               INT                  not null,
   EM_ID                INT                  not null,
   SAL_PART_ID          INT                  null,
   RES_MOTIVO_VISITA    VARCHAR(200)         null,
   RES_FECHA            DATE                 not null,
   RES_SINTOMAS         VARCHAR(200)         null,
   RES_PAGO             DECIMAL              not null,
   RES_PARTO            INT                  null,
   RES_FECHA_PARTO      DATE                 null,
   constraint PK_REGISTRO primary key (RES_ID)
);

/*==============================================================*/
insert into REGISTRO values
(1,1,3,1,'Evaluacion del Paciente','12-12-2021','Colico',100.00,3,'20-10-2022');
insert into REGISTRO values
(2,2,1,2,'Sintonmas de Embarazo','10-10-2021','Fatiga,Náuseas,Falta de menstruación',40.00,2,'30-11-2022');
insert into REGISTRO values
(3,3,4,3,'Sintonmas de Embarazo','22-01-2021','Diagnóstico y tratamiento de recién nacido trastornos respiratorios',150.00,1,'30-10-2022');
insert into REGISTRO values
(4,4,10,4,'Evaluacion del Paciente','30-08-2021','Colico',100.00,null,'30-10-2022');
insert into REGISTRO values
(5,5,8,5,'Sintonmas de Embarazo','05-12-20201','Fatiga,Náuseas,Falta de menstruación',40.00,2,'01-08-2021');

/*==============================================================*/
/* Table: VISITA                                                */
/*==============================================================*/
create table VISITA (
   VIS_ID               INT                  not null,
   EM_ID                INT                  not null,
   constraint PK_VISITA primary key (VIS_ID)
);

/*==============================================================*/
insert into VISITA values (1,2);
insert into VISITA values (2,5);
insert into VISITA values (3,6);
insert into VISITA values (4,7);
insert into VISITA values (5,9);
insert into VISITA values (6,9);
insert into VISITA values (7,7);
insert into VISITA values (8,6);
insert into VISITA values (9,5);
insert into VISITA values (10,2);
insert into VISITA values (11,2);
insert into VISITA values (12,5);
insert into VISITA values (13,6);
insert into VISITA values (14,7);
insert into VISITA values (15,9);
insert into VISITA values (16,2);

/*==============================================================*/
/* Table: RELATIONSHIP_14                                       */
/*==============================================================*/
create table RELATIONSHIP_14 (
   VIS_ID               INT                  not null,
   RES_ID               INT                  not null,
   constraint PK_RELATIONSHIP_14 primary key (VIS_ID, RES_ID)
);

/*==============================================================*/
insert into RELATIONSHIP_14 values (1,1);
insert into RELATIONSHIP_14 values (2,1);
insert into RELATIONSHIP_14 values (3,1);
insert into RELATIONSHIP_14 values (4,2);
insert into RELATIONSHIP_14 values (5,2);
insert into RELATIONSHIP_14 values (6,2);
insert into RELATIONSHIP_14 values (7,3);
insert into RELATIONSHIP_14 values (8,3);
insert into RELATIONSHIP_14 values (9,3);
insert into RELATIONSHIP_14 values (10,4);
insert into RELATIONSHIP_14 values (11,4);
insert into RELATIONSHIP_14 values (12,4);
insert into RELATIONSHIP_14 values (13,5);
insert into RELATIONSHIP_14 values (14,5);
insert into RELATIONSHIP_14 values (15,5);
insert into RELATIONSHIP_14 values (16,5);

/*==============================================================*/
/* Table: TERMOCUNA                                             */
/*==============================================================*/
create table TERMOCUNA (
   TER_ID               INT                  not null,
   SAL_PART_ID          INT                  not null,
   TER_NUMERO_ENCUVADORA VARCHAR(50)          null,
   TER_NOMBRE           VARCHAR(50)          null,
   constraint PK_TERMOCUNA primary key (TER_ID)
);

/*==============================================================*/
insert into TERMOCUNA values (1,4,100,'Issei');
insert into TERMOCUNA values (2,5,110,'Valy');

/*==============================================================*/
/* Table: RELATIONSHIP_15                                       */
/*==============================================================*/
create table RELATIONSHIP_15 (
   TER_ID               INT                  not null,
   EM_ID                INT                  not null,
   constraint PK_RELATIONSHIP_15 primary key (TER_ID, EM_ID)
);

/*==============================================================*/
insert into RELATIONSHIP_15 values (1,4);
insert into RELATIONSHIP_15 values (2,6);
	
/*==============================================================*/
/* Table: RECETA                                                */
/*==============================================================*/
create table RECETA (
   REC_ID               INT                  not null,
   SAL_PART_ID          INT                  null,
   TER_ID               INT                  null,
   RES_ID               INT                  null,
   REC_MEDICAMENTO      VARCHAR(100)         not null,
   constraint PK_RECETA primary key (REC_ID)
);

/*==============================================================*/
insert into RECETA values (1,1,1,1,'Paracetamol,Leche Nutribén,Pastillas,Agua,Suero');
insert into RECETA values (2,2,2,2,'Paracetamol,Leche Nutribén,Pastillas,Agua,Suero');
insert into RECETA values (3,3,null,3,'Paracetamol,Leche Nutribén,Pastillas,Agua');
insert into RECETA values (4,4,null,4,'Paracetamol,Leche Ensure,Pastillas,Agua');
insert into RECETA values (5,5,null,5,'Paracetamol,Leche Nutribén,Pastillas,Agua');
insert into RECETA values (6,null,1,4,'Paracetamol,Leche Nutribén,Pastillas,Agua,Suero');
insert into RECETA values (7,null,2,5,'Paracetamol,Leche Nutribén,Pastillas,Agua,Suero');
insert into RECETA values (8,3,null,3,'Paracetamol,Leche Ensure,Pastillas,Agua');
insert into RECETA values (9,4,null,4,'Paracetamol,Leche Nutribén,Pastillas,Agua');
insert into RECETA values (10,5,null,5,'Paracetamol,Leche Ensure,Pastillas,Agua');

----------------------------------------------------------------------------------------
---------------------------- INSERTAR LLAVES FORANEAS ----------------------------------
----------------------------------------------------------------------------------------

alter table CONYUGE
   add constraint FK_CONYUGE_RELATIONS_MADRE foreign key (MAD_ID)
      references MADRE (MAD_ID)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_SALA_PAR foreign key (SAL_PART_ID)
      references SALA_PARTO (SAL_PART_ID)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_DIVISION foreign key (DIV_MED_ID)
      references DIVISION_MEDICA (DIV_MED_ID)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_DEPARTAM foreign key (DET_ME_ID)
      references DEPARTAMENTO_MEDICO (DET_ME_ID)
      on delete restrict on update restrict;

alter table MADRE
   add constraint FK_MADRE_RELATIONS_CONYUGE foreign key (CON_ID)
      references CONYUGE (CON_ID)
      on delete restrict on update restrict;

alter table RECETA
   add constraint FK_RECETA_RELATIONS_SALA_PAR foreign key (SAL_PART_ID)
      references SALA_PARTO (SAL_PART_ID)
      on delete restrict on update restrict;

alter table RECETA
   add constraint FK_RECETA_RELATIONS_REGISTRO foreign key (RES_ID)
      references REGISTRO (RES_ID)
      on delete restrict on update restrict;

alter table RECETA
   add constraint FK_RECETA_RELATIONS_TERMOCUN foreign key (TER_ID)
      references TERMOCUNA (TER_ID)
      on delete restrict on update restrict;

alter table REGISTRO
   add constraint FK_REGISTRO_RELATIONS_MADRE foreign key (MAD_ID)
      references MADRE (MAD_ID)
      on delete restrict on update restrict;

alter table REGISTRO
   add constraint FK_REGISTRO_RELATIONS_SALA_PAR foreign key (SAL_PART_ID)
      references SALA_PARTO (SAL_PART_ID)
      on delete restrict on update restrict;

alter table REGISTRO
   add constraint FK_REGISTRO_RELATIONS_EMPLEADO foreign key (EM_ID)
      references EMPLEADO (EM_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP_14
   add constraint FK_RELATION_RELATIONS_VISITA foreign key (VIS_ID)
      references VISITA (VIS_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP_14
   add constraint FK_RELATION_RELATIONS_REGISTRO foreign key (RES_ID)
      references REGISTRO (RES_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP_15
   add constraint FK_RELATION_RELATIONS_TERMOCUN foreign key (TER_ID)
      references TERMOCUNA (TER_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP_15
   add constraint FK_RELATION_RELATIONS_EMPLEADO foreign key (EM_ID)
      references EMPLEADO (EM_ID)
      on delete restrict on update restrict;

alter table TERMOCUNA
   add constraint FK_TERMOCUN_RELATIONS_SALA_PAR foreign key (SAL_PART_ID)
      references SALA_PARTO (SAL_PART_ID)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_RELATIONS_EMPLEADO foreign key (EM_ID)
      references EMPLEADO (EM_ID)
      on delete restrict on update restrict;
