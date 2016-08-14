--REINICIAR ALGUNAS SECUENCIAS EN 0
ALTER SEQUENCE seg_usuario_usu_codigo_seq MINVALUE 0 START WITH 0 RESTART WITH 0;
ALTER SEQUENCE seg_rol_rol_codigo_seq MINVALUE 0 START WITH 0 RESTART WITH 0;
ALTER SEQUENCE seg_rol_usuario_rlu_codigo_seq MINVALUE 0 START WITH 0 RESTART WITH 0;
ALTER SEQUENCE seg_permiso_per_codigo_seq MINVALUE 0 START WITH 0 RESTART WITH 0;


--INSERT INTO USUARIO
INSERT INTO seg_usuario(usu_nombres, usu_apellidos, usu_login, usu_constrasena,
            usu_estado_registro, usu_codigo_interno, mod_usu_codigo, usu_ultmima_modificacion_pass,
            usu_correo, usu_intentos_fallidos, usu_compania_cia_codigo) VALUES ('SA', 'SA', 'SA_SEGURIDAD', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', 0, current_date, 'andresfvargasl94@gmail.com', 0, NULL);

-- INSERT INTO SEG_COMPANIA
INSERT INTO seg_compania(cia_codigo_interno, cia_nombre, cia_estado_registro,
            mod_usu_codigo) VALUES ('USB CALI', 'Universidad San Buenaventura - Seccional Cali', '1', 0);

--INSERT INTO USUARIO
INSERT INTO seg_usuario(usu_nombres, usu_apellidos, usu_login, usu_constrasena,
            usu_estado_registro, usu_codigo_interno, mod_usu_codigo, usu_ultmima_modificacion_pass,
            usu_correo, usu_intentos_fallidos, usu_compania_cia_codigo) VALUES ('ADMIN USB', 'ADMIN USB', 'ADMIN_USB', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', 0, current_date, 'andresfvargasl94@gmail.com', 0, 1);
INSERT INTO seg_usuario(usu_nombres, usu_apellidos, usu_login, usu_constrasena,
            usu_estado_registro, usu_codigo_interno, mod_usu_codigo, usu_ultmima_modificacion_pass,
            usu_correo, usu_intentos_fallidos, usu_compania_cia_codigo) VALUES ('ADMIN SECRETARIO', 'ADMIN SECRETARIO', 'ADMIN_SECRETARIO', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', 0, current_date, 'andresfvargasl94@gmail.com', 0, 1);
INSERT INTO seg_usuario(usu_nombres, usu_apellidos, usu_login, usu_constrasena,
            usu_estado_registro, usu_codigo_interno, mod_usu_codigo, usu_ultmima_modificacion_pass,
            usu_correo, usu_intentos_fallidos, usu_compania_cia_codigo) VALUES ('ADMIN PROFESORES', 'ADMIN PROFESORES', 'ADMIN_PROFESORES', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', 0, current_date, 'andresfvargasl94@gmail.com', 0, 1);
INSERT INTO seg_usuario(usu_nombres, usu_apellidos, usu_login, usu_constrasena,
            usu_estado_registro, usu_codigo_interno, mod_usu_codigo, usu_ultmima_modificacion_pass,
            usu_correo, usu_intentos_fallidos, usu_compania_cia_codigo) VALUES ('ADMIN ESTUDIANTES', 'ADMIN ESTUDIANTES', 'ADMIN_ESTUDIANTES', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', 0, current_date, 'andresfvargasl94@gmail.com', 0, 1);

-- INSERT INTO SISTEMA
INSERT INTO seg_sistema(sis_nombre, sis_descripcion, sis_estado_registro,
            mod_usu_codigo) VALUES ('SISTEMA DE SEGURIDAD', 'SISTEMA DE SEGURIDAD', '1', 0);
INSERT INTO seg_sistema(sis_nombre, sis_descripcion, sis_estado_registro,
            mod_usu_codigo) VALUES ('Universidad San Buenaventura - Seccional Cali', 'Universidad San Buenaventura - Seccional Cali', '1', 0);

--INSERT INTO SISTEMA_COMPANIA
INSERT INTO seg_sistema_cia(seg_sistema_sis_codigo, seg_compania_cia_codigo,
            sic_estado_registro, mod_usu_codigo) VALUES (1, 1, '1', 0);
INSERT INTO seg_sistema_cia(seg_sistema_sis_codigo, seg_compania_cia_codigo,
            sic_estado_registro, mod_usu_codigo) VALUES (2, 1, '1', 0);

-- INSERT INTO ROL
INSERT INTO seg_rol(rol_nombre, rol_descripcion, rol_dias_caducidad_pwd,
            seg_sistema_sis_codigo, rol_estado_registro, mod_usu_codigo) VALUES ('ADMIN SEGURIDAD', 'ADMINISTRADOR DEL SISTEMA DE SEGURIDAD', 999, 1, '1', 0);
INSERT INTO seg_rol(rol_nombre, rol_descripcion, rol_dias_caducidad_pwd,
            seg_sistema_sis_codigo, rol_estado_registro, mod_usu_codigo) VALUES ('ADMIN USB', 'ADMINISTRADOR DE LA APLICACION', 999, 2, '1', 0);
INSERT INTO seg_rol(rol_nombre, rol_descripcion, rol_dias_caducidad_pwd,
            seg_sistema_sis_codigo, rol_estado_registro, mod_usu_codigo) VALUES ('SECRETARIO ACADEMICO', 'ADMINISTRADOR DEL MODULO DEL SECRETARIO ACADEMICO', 999, 2, '1', 0);
INSERT INTO seg_rol(rol_nombre, rol_descripcion, rol_dias_caducidad_pwd,
            seg_sistema_sis_codigo, rol_estado_registro, mod_usu_codigo) VALUES ('PROFESOR', 'ADMINISTRADOR DEL MODULO DE PROFESORES', 999, 2, '1', 0);
INSERT INTO seg_rol(rol_nombre, rol_descripcion, rol_dias_caducidad_pwd,
            seg_sistema_sis_codigo, rol_estado_registro, mod_usu_codigo) VALUES ('ESTUDIANTE', 'ADMINISTRADOR DEL MODULO DE ESTUDIANTES', 999, 2, '1', 0);

--INSERT INTO ROL_USUARIO
INSERT INTO seg_rol_usuario(seg_usuario_usu_codigo, seg_rol_rol_codigo, rlu_estado_registro, mod_usu_codigo) VALUES (0, 0, '1', 0);
INSERT INTO seg_rol_usuario(seg_usuario_usu_codigo, seg_rol_rol_codigo, rlu_estado_registro, mod_usu_codigo) VALUES (1, 1, '1', 0);
INSERT INTO seg_rol_usuario(seg_usuario_usu_codigo, seg_rol_rol_codigo, rlu_estado_registro, mod_usu_codigo) VALUES (2, 2, '1', 1);
INSERT INTO seg_rol_usuario(seg_usuario_usu_codigo, seg_rol_rol_codigo, rlu_estado_registro, mod_usu_codigo) VALUES (3, 3, '1', 1);
INSERT INTO seg_rol_usuario(seg_usuario_usu_codigo, seg_rol_rol_codigo, rlu_estado_registro, mod_usu_codigo) VALUES (4, 4, '1', 1);

--INSERT INTO SUCURSAL
INSERT INTO seg_sucursal(suc_codigo_interno, cia_codigo, suc_nombre, suc_estado_registro, mod_usu_codigo) VALUES ('01', 1, 'Seccional Cali', '1', 0);

-- INSERT INTO PARAMETRO *
INSERT INTO seg_parametro(par_nombre, par_valor_numerico, par_valor_alfanumerico,
            par_valor_fecha, par_estado_registro, mod_usu_codigo) VALUES ('par 1', 1.0000, 'pr', '0001-04-16 BC', '1', 0);
INSERT INTO seg_parametro(par_nombre, par_valor_numerico, par_valor_alfanumerico,
            par_valor_fecha, par_estado_registro, mod_usu_codigo) VALUES ('dias_caducidad_pwd', 45.0000, NULL, NULL, '1', 0);

-- INSERT INTO GRUPO_OPCION
INSERT INTO seg_grupo_opcion(gru_nombre, gru_descripcion, gru_llave_acceso, gru_estado_registro,
            gru_icono, gru_codigo_padre, sis_codigo, mod_usu_codigo) VALUES ('SEGURIDAD', 'SEGURIDAD', NULL, '1', NULL, NULL, 1, 0);
INSERT INTO seg_grupo_opcion(gru_nombre, gru_descripcion, gru_llave_acceso, gru_estado_registro,
            gru_icono, gru_codigo_padre, sis_codigo, mod_usu_codigo) VALUES ('Secretario', 'Secretario', NULL, '1', 'ui-icon-document', NULL, 2, 0);
INSERT INTO seg_grupo_opcion(gru_nombre, gru_descripcion, gru_llave_acceso, gru_estado_registro,
            gru_icono, gru_codigo_padre, sis_codigo, mod_usu_codigo) VALUES ('Docente', 'Docente', NULL, '1', 'ui-icon-person', NULL, 2, 0);
INSERT INTO seg_grupo_opcion(gru_nombre, gru_descripcion, gru_llave_acceso, gru_estado_registro,
            gru_icono, gru_codigo_padre, sis_codigo, mod_usu_codigo) VALUES ('Estudiante', 'Estudiante', NULL, '1', 'ui-icon-note', NULL, 2, 0);
INSERT INTO seg_grupo_opcion(gru_nombre, gru_descripcion, gru_llave_acceso, gru_estado_registro,
            gru_icono, gru_codigo_padre, sis_codigo, mod_usu_codigo) VALUES ('Administrativo', 'Administrativo', NULL, '1', 'ui-icon-gear', NULL, 2, 0);







-- INSERT INTO SEG_OPCION * 1 *
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('USUARIO', 'USUARIO', '/XHTML/segUsuario.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('SUCURSAL', 'SUCURSAL', '/XHTML/segSucursal.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('SISTEMA', 'SISTEMA', '/XHTML/segSistema.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('ROL', 'ROL', '/XHTML/segRol.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('ROL X USUARIO', 'ROL X USUARIO', '/XHTML/segRolUsuario.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('GRUPO OPCION', 'GRUPO OPCION', '/XHTML/segGrupoOpcion.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('OPCION X ROL', 'OPCION X ROL', '/XHTML/tree.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('AUDITORIA', 'AUDITORIA', '/XHTML/segAuditoria.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('COMPANIA', 'COMPANIA', '/XHTML/segCompania.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('PARAMETROS', 'PARAMETROS', '/XHTML/segParametro.xhtml', 1, '0', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('SISTEMA X COMPANIA', 'SISTEMA X COMPANIA', '/XHTML/segSistemaCia.xhtml', 1, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('OPCION', 'OPCION', '/XHTML/segOpcion.xhtml', 1, '1', 0);

----SECRETARIO * 2 *

----DOCENTE * 3 *
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Crear Grupos', 'Crear Grupos', '/Presentation/crearGrupo.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Mis Grupos', 'Mis Grupos', '/Presentation/misGruposDocente.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Temas', 'Temas', '/Presentation/observarTemas.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Crear Documentos', 'Crear Documentos', '/Presentation/crearEvaluacion.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Mis Documentos', 'Mis Documentos', '/Presentation/misEvaluacionesDocente.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Mis herramientas', 'Mis Herramientas', '/Presentation/gestionarREA.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Repositorio Educativo Abierto', 'Repositorio Educativo Abierto', '/Presentation/repositorioREA.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Foro', 'Foro', '/Presentation/foroEducativo.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Ver Preguntas del Foro', 'Ver Preguntas del Foro', '/Presentation/verPreguntasForo.xhtml', 3, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Mis Preguntas del Foro', 'Mis Preguntas del Foro', '/Presentation/verMisPreguntasForo.xhtml', 3, '1', 0);





----ESTUDIANTE * 4 *
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Matricular Grupos', 'Matricular Grupos', '/Presentation/matricularGrupos.xhtml', 4, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Mis Grupos', 'Mis Grupos', '/Presentation/misGruposEstudiante.xhtml', 4, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Repositorio Educativo Abierto', 'Repositorio Educativo Abierto', '/Presentation/repositorioREA.xhtml', 4, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Foro', 'Foro', '/Presentation/foroEducativo.xhtml', 4, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Ver Preguntas del Foro', 'Ver Preguntas del Foro', '/Presentation/verPreguntasForo.xhtml', 4, '1', 0);
INSERT INTO seg_opcion(opc_nombre, opc_descripcion, opc_llave_acceso, seg_grupo_opcion_gru_codigo, opc_estado_registro, mod_usu_codigo) VALUES ('Mis Preguntas del Foro', 'Mis Preguntas del Foro', '/Presentation/verMisPreguntasForo.xhtml', 4, '1', 0);

----ADMINISTRATIVO * 5 *



-- INSERT INTO PERMISO
INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 0, NULL, 0, 1, 1, NULL, 0);

--ADMIN USB
INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 1, NULL, NULL, 2, 2, NULL, 0);

INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 1, NULL, NULL, 3, 2, NULL, 0);

INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 1, NULL, NULL, 4, 2, NULL, 0);

INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 1, NULL, NULL, 5, 2, NULL, 0);

--SECRETARIO
INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 2, NULL, NULL, 2, 2, NULL, 0);
--DOCENTE
INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 3, NULL, NULL, 3, 2, NULL, 0);
--ESTUDIANTE
INSERT INTO seg_permiso(per_estado_registro, rol_codigo, opc_codigo, usu_codigo,
            gru_codigo, sic_codigo, suc_codigo, mod_usu_codigo) VALUES ('1', 4, NULL, NULL, 4, 2, NULL, 0);





-- ACTUALIZACION DE LAS SECUENCIAS CORRESPONDIENTES A CADA TABLA

--ALTER SEQUENCE seg_compania_cia_codigo_seq RESTART WITH;
--ALTER SEQUENCE seg_sistema_sis_codigo_seq RESTART WITH;
--ALTER SEQUENCE seg_sistema_cia_sic_codigo_seq RESTART WITH;
--ALTER SEQUENCE seg_sucursal_suc_codigo_seq RESTART WITH;
--ALTER SEQUENCE seg_parametro_par_codigo_seq RESTART WITH;
--ALTER SEQUENCE seg_grupo_opcion_gru_codigo_seq RESTART WITH;
--ALTER SEQUENCE seg_opcion_opc_codigo_seq RESTART WITH;
