﻿
-- CREATE TABLES SECTION -------------------------------------------------

-- TABLE ASIGNATURA

CREATE TABLE ASIGNATURA(
 ASIG_ID BIGSERIAL NOT NULL,
 NOMBRE_ASIGNATURA CHARACTER VARYING(2500) NOT NULL
)
;

-- ADD KEYS FOR TABLE ASIGNATURA

ALTER TABLE ASIGNATURA ADD CONSTRAINT ASIGNATURA_PK PRIMARY KEY (ASIG_ID)
;

-- TABLE GRUPO

CREATE TABLE GRUPO(
 GRUP_ID BIGSERIAL NOT NULL,
 DESCRIPCION_GRUPO CHARACTER VARYING(2500) NOT NULL,
 ASIG_ID BIGINT
)
;

-- CREATE INDEXES FOR TABLE GRUPO

CREATE INDEX IX_RELATIONSHIP5 ON GRUPO (ASIG_ID)
;

-- ADD KEYS FOR TABLE GRUPO

ALTER TABLE GRUPO ADD CONSTRAINT GRUPO_PK PRIMARY KEY (GRUP_ID)
;

-- TABLE EVALUACION

CREATE TABLE EVALUACION(
 EVAL_ID BIGSERIAL NOT NULL,
 ESTADO_REGISTRO CHARACTER VARYING(1) NOT NULL,
 TIEV_ID BIGINT,
 GRUP_ID BIGINT
)
;

-- CREATE INDEXES FOR TABLE EVALUACION

CREATE INDEX IX_RELATIONSHIP4 ON EVALUACION (TIEV_ID)
;

CREATE INDEX IX_RELATIONSHIP13 ON EVALUACION (GRUP_ID);

-- ADD KEYS FOR TABLE EVALUACION

ALTER TABLE EVALUACION ADD CONSTRAINT EVALUACION_PK PRIMARY KEY (EVAL_ID)
;

-- TABLE TIPO_EVALUACION

CREATE TABLE TIPO_EVALUACION(
 TIEV_ID BIGSERIAL NOT NULL,
 DESCRIPCION_TIPO_EVALUACION CHARACTER VARYING(2500) NOT NULL,
 NOMBRE_CORTO CHARACTER VARYING(10) NOT NULL
)
;

-- ADD KEYS FOR TABLE TIPO_EVALUACION

ALTER TABLE TIPO_EVALUACION ADD CONSTRAINT TIPO_EVALUACION_PK PRIMARY KEY (TIEV_ID)
;

-- TABLE HERRAMIENTA

CREATE TABLE HERRAMIENTA(
 HERR_ID BIGSERIAL NOT NULL,
 VALOR_HERRAMIENTA CHARACTER VARYING(2500) NOT NULL,
 DESCRIPCION_HERRAMIENTA CHARACTER VARYING(2500) NOT NULL,
 ESTADO_REGISTRO CHARACTER VARYING(1) NOT NULL,
 TIHE_ID BIGINT,
 USUA_ID BIGINT,
 FECHA_PUBLICACION TIMESTAMP WITH TIME ZONE NOT NULL
)
;

-- CREATE INDEXES FOR TABLE HERRAMIENTA

CREATE INDEX IX_RELATIONSHIP2 ON HERRAMIENTA (TIHE_ID)
;

CREATE INDEX IX_RELATIONSHIP17 ON HERRAMIENTA (USUA_ID)
;

-- ADD KEYS FOR TABLE HERRAMIENTA

ALTER TABLE HERRAMIENTA ADD CONSTRAINT HERRAMIENTA_PK PRIMARY KEY (HERR_ID)
;

-- TABLE TIPO_HERRAMIENTA

CREATE TABLE TIPO_HERRAMIENTA(
 TIHE_ID BIGSERIAL NOT NULL,
 DESCRIPCION_HERRAMIENTA CHARACTER VARYING(2500) NOT NULL,
 NOMBRE_CORTO CHARACTER VARYING(10) NOT NULL
)
;

-- ADD KEYS FOR TABLE TIPO_HERRAMIENTA

ALTER TABLE TIPO_HERRAMIENTA ADD CONSTRAINT TIPO_HERRAMIENTA_PK PRIMARY KEY (TIHE_ID)
;

-- TABLE DETALLE_EVALUACION

CREATE TABLE DETALLE_EVALUACION(
 DEEV_ID BIGSERIAL NOT NULL,
 EVAL_ID BIGINT,
 FECHA_INICIO_PUBLICACION TIMESTAMP WITH TIME ZONE NOT NULL,
 FECHA_FIN_PUBLICACION TIMESTAMP WITH TIME ZONE NOT NULL,
 FECHA_CREACION TIMESTAMP WITH TIME ZONE NOT NULL,
 CORTE BIGINT NOT NULL,
 ASUNTO CHARACTER VARYING(2500)
)
;

-- CREATE INDEXES FOR TABLE DETALLE_EVALUACION

CREATE INDEX IX_RELATIONSHIP14 ON DETALLE_EVALUACION (EVAL_ID)
;

-- ADD KEYS FOR TABLE DETALLE_EVALUACION

ALTER TABLE DETALLE_EVALUACION ADD CONSTRAINT DETALLE_EVALUACION_PK PRIMARY KEY (DEEV_ID)
;

-- TABLE PREGUNTA

CREATE TABLE PREGUNTA(
 PREG_ID BIGSERIAL NOT NULL,
 DESCRIPCION_PREGUNTA CHARACTER VARYING(10485760) NOT NULL,
 TEMA_ID BIGINT,
 descripcion_respuesta_correcta character varying(10485760),
 descripcion_respuesta1 character varying(10485760),
 descripcion_respuesta2 character varying(10485760),
 descripcion_respuesta3 character varying(10485760),
 descripcion_respuesta4 character varying(10485760),
 tipo_respuesta character varying(1);
)
;

CREATE INDEX IX_RELATIONSHIP18 ON PREGUNTA (TEMA_ID);
-- ADD KEYS FOR TABLE PREGUNTA

ALTER TABLE PREGUNTA ADD CONSTRAINT PREGUNTA_PK PRIMARY KEY (PREG_ID)
;

-- TABLE RESPUESTA

CREATE TABLE RESPUESTA(
 RESP_ID BIGSERIAL NOT NULL,
 DESCRIPCION_RESPUESTA CHARACTER VARYING(10485760) NOT NULL
)
;

-- ADD KEYS FOR TABLE RESPUESTA

ALTER TABLE RESPUESTA ADD CONSTRAINT RESPUESTA_PK PRIMARY KEY (RESP_ID)
;

-- TABLE TEMA

CREATE TABLE TEMA(
 TEMA_ID BIGSERIAL NOT NULL,
 DESCRIPCION_TEMA CHARACTER VARYING(2500) NOT NULL,
 TITULO_TEMA CHARACTER VARYING(2500),
 PALABRAS_CLAVE CHARACTER VARYING(2500) NOT NULL
)
;

-- ADD KEYS FOR TABLE TEMA

ALTER TABLE TEMA ADD CONSTRAINT TEMA_PK PRIMARY KEY (TEMA_ID)
;

-- TABLE USUARIO

CREATE TABLE USUARIO(
 USUA_ID BIGSERIAL NOT NULL,
 NOMBRE_USUARIO CHARACTER VARYING(2500) NOT NULL,
 APELLIDO_USUARIO CHARACTER VARYING(2500) NOT NULL,
 EMAIL_USUARIO CHARACTER VARYING(2500) NOT NULL,
 PASSWORD_USUARIO CHARACTER VARYING(2500) NOT NULL,
 CODIGO_USUARIO CHARACTER VARYING(2500) NOT NULL,
 ESTADO_REGISTRO CHARACTER VARYING(1) NOT NULL,
 TIUS_ID BIGINT
)
;

-- CREATE INDEXES FOR TABLE USUARIO

CREATE INDEX IX_RELATIONSHIP3 ON USUARIO (TIUS_ID)
;

-- ADD KEYS FOR TABLE USUARIO

ALTER TABLE USUARIO ADD CONSTRAINT USUARIO_PK PRIMARY KEY (USUA_ID)
;

-- TABLE TIPO_USUARIO

CREATE TABLE TIPO_USUARIO(
 TIUS_ID BIGSERIAL NOT NULL,
 DESCRIPCION_TIPO_DE_USUARIO CHARACTER VARYING(2500) NOT NULL,
 NOMBRE_CORTO CHARACTER VARYING(10) NOT NULL
)
;

-- ADD KEYS FOR TABLE TIPO_USUARIO

ALTER TABLE TIPO_USUARIO ADD CONSTRAINT TIPO_DE_USUARIO_PK PRIMARY KEY (TIUS_ID)
;

-- TABLE GRUPO_USUARIO

CREATE TABLE GRUPO_USUARIO(
 GRUS_ID BIGSERIAL NOT NULL,
 GRUP_ID BIGINT,
 USUA_ID BIGINT
)
;

-- CREATE INDEXES FOR TABLE GRUPO_USUARIO

CREATE INDEX IX_RELATIONSHIP6 ON GRUPO_USUARIO (GRUP_ID)
;

CREATE INDEX IX_RELATIONSHIP7 ON GRUPO_USUARIO (USUA_ID)
;

-- ADD KEYS FOR TABLE GRUPO_USUARIO

ALTER TABLE GRUPO_USUARIO ADD CONSTRAINT GRUPO_USUARIO_ID PRIMARY KEY (GRUS_ID)
;

-- TABLE USUARIO_EVALUACION

CREATE TABLE USUARIO_EVALUACION(
 USEV_ID BIGSERIAL NOT NULL,
 USUA_ID BIGINT,
 EVAL_ID BIGINT
)
;

-- CREATE INDEXES FOR TABLE USUARIO_EVALUACION

CREATE INDEX IX_RELATIONSHIP8 ON USUARIO_EVALUACION (USUA_ID)
;

CREATE INDEX IX_RELATIONSHIP12 ON USUARIO_EVALUACION (EVAL_ID)
;

-- ADD KEYS FOR TABLE USUARIO_EVALUACION

ALTER TABLE USUARIO_EVALUACION ADD CONSTRAINT USUARIO_EVALUACION_PK PRIMARY KEY (USEV_ID)
;

-- TABLE EVA_PREG_RES

CREATE TABLE EVA_PREG_RES(
 EVPR_ID BIGSERIAL NOT NULL,
 PREG_ID BIGINT,
 RESP_ID BIGINT,
 EVAL_ID BIGINT,
 INDICE_PREGUNTA BIGINT NOT NULL,
 USUA_ID bigint;
)
;

-- CREATE INDEXES FOR TABLE EVA_PREG_RES

CREATE INDEX IX_RELATIONSHIP9 ON EVA_PREG_RES (PREG_ID)
;

CREATE INDEX IX_RELATIONSHIP10 ON EVA_PREG_RES (RESP_ID)
;

CREATE INDEX IX_RELATIONSHIP11 ON EVA_PREG_RES (EVAL_ID)
;

-- ADD KEYS FOR TABLE EVA_PREG_RES

ALTER TABLE EVA_PREG_RES ADD CONSTRAINT EVA_PREG_RES_PK PRIMARY KEY (EVPR_ID)
;

-- TABLE COMENTARIO

CREATE TABLE COMENTARIO(
 COMEN_ID BIGSERIAL NOT NULL,
 TITULO_COMENTARIO CHARACTER VARYING(2500),
 CONTENIDO_COMENTARIO CHARACTER VARYING(10485760) NOT NULL,
 FK_COMEN_ID BIGINT,
 USUA_ID BIGINT
)
;

-- CREATE INDEXES FOR TABLE COMENTARIO

CREATE INDEX IX_RELATIONSHIP15 ON COMENTARIO (FK_COMEN_ID)
;

CREATE INDEX IX_RELATIONSHIP16 ON COMENTARIO (USUA_ID)
;

-- ADD KEYS FOR TABLE COMENTARIO

ALTER TABLE COMENTARIO ADD CONSTRAINT COMENTARIO_PK PRIMARY KEY (COMEN_ID)
;

-- TABLE PARAMETRO

CREATE TABLE PARAMETRO(
 PARAM_ID BIGSERIAL NOT NULL,
 DESCRIPCION_PARAMETROS CHARACTER VARYING(2500),
 VALOR_PARAMETRO CHARACTER VARYING(2500) NOT NULL,
 ESTADO_REGISTRO CHARACTER VARYING(1) NOT NULL
)
;



CREATE TABLE tipo_respuesta
(
  tire_id character varying(1) NOT NULL,
  descripcion_tipo_respuesta character varying(2500) NOT NULL,
  CONSTRAINT tipo_respuesta_pk PRIMARY KEY (tire_id)
)



-- ADD KEYS FOR TABLE PARAMETRO

ALTER TABLE PARAMETRO ADD CONSTRAINT PARAMETRO_PK PRIMARY KEY (PARAM_ID)
;

-- CREATE RELATIONSHIPS SECTION ------------------------------------------------- 

ALTER TABLE HERRAMIENTA ADD CONSTRAINT TIHE_HERR_FK FOREIGN KEY (TIHE_ID) REFERENCES TIPO_HERRAMIENTA (TIHE_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE USUARIO ADD CONSTRAINT TIUS_USUA_FK FOREIGN KEY (TIUS_ID) REFERENCES TIPO_USUARIO (TIUS_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE EVALUACION ADD CONSTRAINT TIEV_EVAL_FK FOREIGN KEY (TIEV_ID) REFERENCES TIPO_EVALUACION (TIEV_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE GRUPO ADD CONSTRAINT ASIG_GRUP_FK FOREIGN KEY (ASIG_ID) REFERENCES ASIGNATURA (ASIG_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE GRUPO_USUARIO ADD CONSTRAINT GRUP_GRUS_FK FOREIGN KEY (GRUP_ID) REFERENCES GRUPO (GRUP_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE GRUPO_USUARIO ADD CONSTRAINT USUA_GRUS_FK FOREIGN KEY (USUA_ID) REFERENCES USUARIO (USUA_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE USUARIO_EVALUACION ADD CONSTRAINT USUA_USEV_FK FOREIGN KEY (USUA_ID) REFERENCES USUARIO (USUA_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE EVA_PREG_RES ADD CONSTRAINT PREG_EVPR_FK FOREIGN KEY (PREG_ID) REFERENCES PREGUNTA (PREG_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE EVA_PREG_RES ADD CONSTRAINT RESP_EVPR_FK FOREIGN KEY (RESP_ID) REFERENCES RESPUESTA (RESP_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE EVA_PREG_RES ADD CONSTRAINT EVAL_EVPR_FK FOREIGN KEY (EVAL_ID) REFERENCES EVALUACION (EVAL_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE USUARIO_EVALUACION ADD CONSTRAINT EVAL_USUA_FK FOREIGN KEY (EVAL_ID) REFERENCES EVALUACION (EVAL_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

--ALTER TABLE EVALUACION ADD CONSTRAINT TEMA_EVAL_FK FOREIGN KEY (TEMA_ID) REFERENCES TEMA (TEMA_ID) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE DETALLE_EVALUACION ADD CONSTRAINT EVAL_DEEV_FK FOREIGN KEY (EVAL_ID) REFERENCES EVALUACION (EVAL_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE COMENTARIO ADD CONSTRAINT COME_COME_FK FOREIGN KEY (FK_COMEN_ID) REFERENCES COMENTARIO (COMEN_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE COMENTARIO ADD CONSTRAINT USUA_COME_FK FOREIGN KEY (USUA_ID) REFERENCES USUARIO (USUA_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE HERRAMIENTA ADD CONSTRAINT USUA_HERR_FK FOREIGN KEY (USUA_ID) REFERENCES USUARIO (USUA_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

--Modificaciones Daniel
ALTER TABLE EVALUACION ADD CONSTRAINT GRUP_EVAL_FK FOREIGN KEY (GRUP_ID) REFERENCES GRUPO (GRUP_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE PREGUNTA ADD CONSTRAINT TEMA_PREG_FK FOREIGN KEY (TEMA_ID) REFERENCES TEMA (TEMA_ID) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE pregunta ADD CONSTRAINT resp_fk FOREIGN KEY (tipo_respuesta) REFERENCES tipo_respuesta (tire_id) ON DELETE NO ACTION ON UPDATE NO ACTION
;




