CREATE DATABASE sisinf_grupo_B02;

CREATE SCHEMA sisinf_p2;

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA sisinf_p2;


CONEXIÓN POSTGRES

sudo -i -u postgres

COMANDO ACCESO BASE DE DATOS:

psql -h bvph293dkme5of0gtxqq-postgresql.services.clever-cloud.com -p 5432 -U ujehofnlmsw4huovwiwn -d bvph293dkme5of0gtxqq

CONTRASEÑA

13EQb6k7XUdKfXFWeIhAUwi9oVpRZ8


Comandos básicos:

Ver todas las bases de datos:
\l

Conectar a una base de datos:
\c nombre_de_la_base_de_datos

Listar tablas en la base de datos actual:
\dt

Mostrar la estructura de una tabla:
\d nombre_de_la_tabla

Realizar una consulta SELECT:
SELECT * FROM nombre_de_la_tabla;

Insertar datos en una tabla:
INSERT INTO nombre_de_la_tabla (columna1, columna2) VALUES (valor1, valor2);

Actualizar datos en una tabla:
UPDATE nombre_de_la_tabla SET columna1 = nuevo_valor WHERE condición;

Eliminar datos de una tabla:
DELETE FROM nombre_de_la_tabla WHERE condición;


