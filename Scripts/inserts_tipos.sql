INSERT INTO tipo_evaluacion (descripcion_tipo_evaluacion,nombre_corto)VALUES('Parcial','PRC');
INSERT INTO tipo_evaluacion (descripcion_tipo_evaluacion,nombre_corto)VALUES('Taller','TLR');
INSERT INTO tipo_evaluacion (descripcion_tipo_evaluacion,nombre_corto)VALUES('Quiz','QIZ');

INSERT INTO tipo_herramienta (descripcion_herramienta,nombre_corto)VALUES('Videos','VID');
INSERT INTO tipo_herramienta (descripcion_herramienta,nombre_corto)VALUES('Libros','LIB');
INSERT INTO tipo_herramienta (descripcion_herramienta,nombre_corto)VALUES('Enlaces de Intereś','ENI');
INSERT INTO tipo_herramienta (descripcion_herramienta,nombre_corto)VALUES('Lecturas','LEC');

INSERT INTO tipo_usuario (tius_id, descripcion_tipo_de_usuario,nombre_corto)VALUES('1','Docente','DOC');
INSERT INTO tipo_usuario (tius_id, descripcion_tipo_de_usuario,nombre_corto)VALUES('2','Estudiante','EST');
INSERT INTO tipo_usuario (tius_id, descripcion_tipo_de_usuario,nombre_corto)VALUES('3','Secretario Académico','SEC');

INSERT INTO parametro (descripcion_parametros, valor_parametro, estado_registro) VALUES ('urlServiciosRest', 'http://127.0.0.1:8080/seguridad_system/controller/loginRestService/', 'A');
INSERT INTO parametro (descripcion_parametros, valor_parametro, estado_registro) VALUES ('urlCorreoRecuperacion', 'http://127.0.0.1:8080/MathUsb/recuperarClave.xhtml', 'A');
--Insert Daniel
INSERT INTO parametro (descripcion_parametros, valor_parametro, estado_registro) VALUES ('editorVacio', '<math xmlns="http://www.w3.org/1998/Math/MathML"/>', 'A');
--Este lo deben modificar dependiendo de la ruta en sus equipos, definan una ruta sencilla.
INSERT INTO parametro (descripcion_parametros, valor_parametro, estado_registro) VALUES ('rutaImagenPreguntaForo', 'C:/imgs/', 'A');
--Parametros para reporte
INSERT INTO parametro (descripcion_parametros, valor_parametro, estado_registro) VALUES ('urlReporte', 'http://127.0.0.1:8080/MathUsb/Reports/', 'A');

INSERT INTO usuario (nombre_usuario, apellido_usuario, email_usuario, password_usuario, codigo_usuario, estado_registro, tius_id)
VALUES ('ADMIN ESTUDIANTES','ADMIN ESTUDIANTES','admin_estudiantes','123456','12345','A','2');

INSERT INTO usuario (nombre_usuario, apellido_usuario, email_usuario, password_usuario, codigo_usuario, estado_registro, tius_id)
VALUES ('ADMIN PROFESORES','ADMIN PROFESORES','admin_profesores','123456','11111','A','1');

INSERT INTO asignatura (nombre_asignatura)
VALUES ('PRE CÁLCULO');

INSERT INTO asignatura (nombre_asignatura)
VALUES ('CÁLCULO DIFERENCIAL');

INSERT INTO asignatura (nombre_asignatura)
VALUES ('ÁLGEBRA LINEAL');

INSERT INTO asignatura (nombre_asignatura)
VALUES ('CÁLCULO INTEGRAL');

INSERT INTO asignatura (nombre_asignatura)
VALUES ('CÁLCULO MULTIVARIADO');

INSERT INTO asignatura (nombre_asignatura)
VALUES ('ECUACIONES DIFERENCIALES');

INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('CONJUNTOS ESPECIALES','CONJUNTOS, PRECÁLCULO, ESPECIALES','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('OPERACIONES CON CONJUNTOS','CONJUNTOS, PRECÁLCULO, ESPECIALES, OPERACIONES','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('ALGEBRA DE CONJUNTOS','CONJUNTOS, PRECÁLCULO, ESPECIALES, ÁLGEBRA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('PROBLEMAS DE CONTEO','CONJUNTOS, PRECÁLCULO, ESPECIALES, CONTEO','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('PRODUCTO CARTESIANO','CONJUNTOS, PRECÁLCULO, ESPECIALES, PRODUCTO, CARTESIANO','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('GRAFOS DE RELACIONES','GRAFOS, RELACIONES, PRECÁLCULO','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('RELACIONES DE EQUIVALENCIA','EQUIVALENCIA, RELACIONES, PRECÁLCULO','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('CLASES DE CONGRUENCIA','CONGRUENCIA, PRECÁLCULO','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('RELACIONES DE ORDEN','RELACIONES, RELACIÓN, PRECÁLCULO, ORDEN','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN CRECIENTE','FUNCIÓN, PRECÁLCULO, CRECIENTE','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN DECRECIENTE','FUNCIÓN, PRECÁLCULO, DECRECIENTE','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN PAR','FUNCIÓN, PRECÁLCULO, PAR','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN IMPAR','FUNCIÓN, PRECÁLCULO, IMPAR','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN CONSTANTE','FUNCIÓN, PRECÁLCULO, CONSTANTE','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN IDÉNTICA','FUNCIÓN, PRECÁLCULO, IDÉNTICA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN LINEAL','FUNCIÓN, PRECÁLCULO, LINEAL','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN CUADRÁTICA','FUNCIÓN, PRECÁLCULO, CUADRÁTICA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN CÚBICA','FUNCIÓN, PRECÁLCULO, CÚBICA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN ESCALADA','FUNCIÓN, PRECÁLCULO, ESCALADA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN A TROZOS','FUNCIÓN, PRECÁLCULO, TROZOS','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('OPERACIONES CON FUNCIONES','FUNCIÓN, PRECÁLCULO, OPERACIONES','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIÓN INVERSA','FUNCIÓN, PRECÁLCULO, INVERSA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('RANGO DE UNA FUNCIÓN BIYECTIVA','FUNCIÓN, PRECÁLCULO, BIYECTIVA, RANGO','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIONES EXPONENCIAL Y LOGARITMICA','FUNCIÓN, PRECÁLCULO, EXPONENCIAL, LOGARÍTMICA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIONES TRIGONOMÉTRICAS','FUNCIÓN, PRECÁLCULO, TRIGONOMÉTRICA, TRIGONOMETRÍA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('IDENTIDADES TRIGONOMÉTRICAS','FUNCIÓN, PRECÁLCULO, IDENTIDAD, TRIGONOMETRÍA, TRIGONOMÉTRICA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('CIRCUNFERENCIA','SECCIONES, CÓNICAS, PRECÁLCULO, CIRCUNFERENCIA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('PARÁBOLA','SECCIONES, CÓNICAS, PRECÁLCULO, PARÁBOLA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('ELIPSE','SECCIONES, CÓNICAS, PRECÁLCULO, ELIPSE','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('HIPÉRBOLA','SECCIONES, CÓNICAS, PRECÁLCULO, HIPÉRBOLA','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('ROTACIONES Y ECUACIÓN GENERAL DE SEGUNDO GRADO','SECCIONES, CÓNICAS, PRECÁLCULO, ROTACIÓN, ECUACIÓN GENERAL, SEGUNDO, GRADO','TEMA DE PRECÁLCULO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('LÍMITES','LÍMITES, CÁLCULO, DIFERENCIAL','TEMA DE CÁLCULO DIFERENCIAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('CONTINUIDAD','CONTINUIDAD, CÁLCULO, DIFERENCIAL','TEMA DE CÁLCULO DIFERENCIAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('DERIVADAS','DERIVADAS, CÁLCULO, DIFERENCIAL','TEMA DE CÁLCULO DIFERENCIAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('DERIVADA DE FUNCIONES TRASCENDENTALES','CÁLCULO, DIFERENCIAL, FUNCIONES, TRASCENDENTALES, DERIVADA','TEMA DE CÁLCULO DIFERENCIAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('ANTIDERIVADAS','CÁLCULO, INTEGRAL, ANTIDERIVADAS, ANTIDERIVAR','TEMA DE CÁLCULO INTEGRAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('INTEGRAL DEFINIDA','CÁLCULO, INTEGRAL, DEFINIDA','TEMA DE CÁLCULO INTEGRAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('TÉCNICAS DE INTEGRACIÓN','CÁLCULO, INTEGRAL, TÉCNICAS, INTEGRACIÓN','TEMA DE CÁLCULO INTEGRAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FORMAS INDETERMINADAS','CÁLCULO, INTEGRAL, FORMAS, INDETERMINADAS','TEMA DE CÁLCULO INTEGRAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('INTEGRALES IMPROPIAS','CÁLCULO, INTEGRAL, INTEGRALES, IMPROPIAS','TEMA DE CÁLCULO INTEGRAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('SUCESIONES Y SERIES','CÁLCULO, INTEGRAL, SUCESIONES, SERIES','TEMA DE CÁLCULO INTEGRAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('CALCULO VECTORIAL','CÁLCULO, MULTIVARIADO, VECTORIAL','TEMA DE CÁLCULO MULTIVARIADO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('COORDENADAS CARTESIANAS, POLARES, CILINDRICAS Y ESFERICAS','CÁLCULO, MULTIVARIADO, COORDENADAS, CARTESIANAS, POLARES, CILÍNDRICAS, ESFÉRICAS','TEMA DE CÁLCULO MULTIVARIADO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('FUNCIONES DE VARIAS VARIABLES','CÁLCULO, MULTIVARIADO, FUNCIONES, VARIABLES','TEMA DE CÁLCULO MULTIVARIADO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('INTEGRALES MÚLTIPLES','CÁLCULO, MULTIVARIADO, INTEGRALES, MÚLTIPLES','TEMA DE CÁLCULO MULTIVARIADO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('DERIVADAS PARCIALES','CÁLCULO, MULTIVARIADO, DERIVADAS, PARCIALES','TEMA DE CÁLCULO MULTIVARIADO');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('ECUACIONES DIFERENCIALES DE PRIMER ÓRDEN','ECUACIONES, DIFERENCIALES, PRIMER, ÓRDEN','TEMA DE ECUACIONES DIFERENCIALES');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('ECUACIONES DIFERENCIALES DE ÓRDEN SUPERIOR','ECUACIONES, DIFERENCIALES, ÓRDEN, SUPERIOR','TEMA DE ECUACIONES DIFERENCIALES');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('TRANSFORMADA DE LAPLACE','ECUACIONES, DIFERENCIALES, TRANSFORMADA, LAPLACE','TEMA DE ECUACIONES DIFERENCIALES');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('MATRICES','ÁLGEBRA, LINEAL, MATRICES','TEMA DE ÁLGEBRA LINEAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('SISTEMAS DE ECUACIONES LINEALES','ÁLGEBRA, LINEAL, ECUACIONES, LINEALES','TEMA DE ÁLGEBRA LINEAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('DETERMINANTES','ÁLGEBRA, LINEAL, DETERMINANTES','TEMA DE ÁLGEBRA LINEAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('VECTORES EN EL PLANO','ÁLGEBRA, LINEAL, VECTORES, PLANO','TEMA DE ÁLGEBRA LINEAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('VECTORES EN EL ESPACIO','ÁLGEBRA, LINEAL, VECTORES, ESPACIO','TEMA DE ÁLGEBRA LINEAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('RECTAS Y PLANOS EN EL ESPACIO','ÁLGEBRA, LINEAL, RECTAS, PLANOS, ESPACIO','TEMA DE ÁLGEBRA LINEAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('ESPACIOS VECTORIALES','ÁLGEBRA, LINEAL, ESPACIOS, VECTORIALES','TEMA DE ÁLGEBRA LINEAL');
INSERT INTO tema (titulo_tema, palabras_clave, descripcion_tema) VALUES ('TRANSFORMACIONES LINEALES','ÁLGEBRA, LINEAL, TRANSFORMACIONES, LINEALES','TEMA DE ÁLGEBRA LINEAL');

create or replace function sinacentos (text) returns text AS $$
select translate($1,'áéíóúÁÉÍÓÚäëïöüÄËÏÖÜ','aeiouAEIOUaeiouAEIOU');
$$ language sql;

INSERT INTO tipo_respuesta(tire_id, descripcion_tipo_respuesta) VALUES ('1', 'Respuesta abierta');
INSERT INTO tipo_respuesta(tire_id, descripcion_tipo_respuesta) VALUES ('2', 'Respuesta Multiple con unica solucion');