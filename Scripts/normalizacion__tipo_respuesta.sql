CREATE TABLE tipo_respuesta
(
  tire_id character varying(1) NOT NULL,
  descripcion_tipo_respuesta character varying(2500) NOT NULL,
  CONSTRAINT tipo_respuesta_pk PRIMARY KEY (tire_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.tipo_respuesta
  OWNER TO postgres;
GRANT ALL ON TABLE public.tipo_evaluacion TO postgres;
GRANT ALL ON TABLE public.tipo_evaluacion TO mathusb_user;

ALTER TABLE public.pregunta ADD CONSTRAINT resp__fk FOREIGN KEY (tipo_respuesta)
      REFERENCES public.tipo_respuesta (tire_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO tipo_respuesta(tired_id, descripcion_tipo_respuesta) VALUES ('1', 'Respuesta abierta');
INSERT INTO tipo_respuesta(tired_id, descripcion_tipo_respuesta) VALUES ('2', 'Respuesta Multiple con unica solucion');