
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta_correcta character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta1 character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta2 character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta3 character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN tipo_respuesta character varying(1);

--ejecutar estos scripts
--nota de la tabla pregunta no dejen ningun atributo como null no hay validaciones para ello
ALTER TABLE public.pregunta DROP COLUMN tipo_respuesta;
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta4 character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN tipo_respuesta character varying(1);




--nuevo

ALTER TABLE public.eva_preg_res ADD COLUMN usua_id bigint;