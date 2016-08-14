1. Base de datos a usar: PostgreSQL9.3.
2. Crear un usuario en la Base de datos mathusb_user, password: mathusb_user de la siguiente forma:
	CREATE USER mathusb_user PASSWORD 'mathusb_user';
3. Crear la base de datos MathUSB con el usuario mathusb_user como owner de esa base de datos de la siguiente forma:
	CREATE DATABASE mathusb WITH OWNER mathusb_user;
4. Conectar a la base de datos mathusb, creada en el paso anterior. La conexión debe hacerse con el usuario creado en el paso 2.
5. Ejecutar sobre la base de datos el query: MathUSB.sql.
6. Ejecutar sobre la base de datos el query: 0.SEG_TABLAS.sql.
7. Ejecutar sobre la base de datos el query: inserts_tipos.sql.
8. Ejecutar sobre la base de datos el query: 1.INSERT_SEGURIDAD.sql.

Los archivos permisos_mathusb_user.sql y permisos_secuencias_mathusb_user.sql son para dar permisos al usuario mathusb_user sobre las tablas y las secuencias de la base de datos solo si los scripts no se han ejecutado con este usuario conectado.