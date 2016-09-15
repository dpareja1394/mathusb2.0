
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta_correcta character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta1 character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta2 character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN descripcion_respuesta3 character varying(10485760);
ALTER TABLE public.pregunta ADD COLUMN tipo_respuesta character varying(1);