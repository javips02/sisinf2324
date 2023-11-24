CREATE TABLE persona (
   	 nombreUsuario     	varchar(30) PRIMARY KEY,
   	 nombreCompleto     varchar(40),
   	 contraseña     	varchar(30),
   	 correoE    		varchar(40) UNIQUE,
   	 puntosLectura    	integer,
   	 seguidores     	integer,
   	 descripcionEscritor varchar(300)
);

CREATE TABLE editorial (
   	nombre 		varchar(30)    PRIMARY KEY
);

CREATE TABLE trabaja (
	nombreUsuario varchar(30),
	nombre varchar(30),
	PRIMARY KEY (nombreUsuario, nombre),
	FOREIGN KEY (nombreUsuario) REFERENCES persona(nombreUsuario),
	FOREIGN KEY (nombre) REFERENCES editorial(nombre)
);
--CREATE DATABASE sisinf_grupo_x;
--CREATE SCHEMA sisinf_p2;
--CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA sisinf_p2;
--drop table if exists system_properties;
CREATE TABLE libro (
    ISBN			varchar(13) PRIMARY KEY,
	titulo			varchar(100),
	nombreImagen   varchar(100) UNIQUE,
	numLectores		integer
);

CREATE TABLE ranking (
	liga	varchar(30) PRIMARY KEY
);



CREATE TABLE escribe (
	nombreUsuario varchar(30),
	ISBN varchar(13),
	PRIMARY KEY (nombreUsuario, ISBN),
	FOREIGN KEY (nombreUsuario) REFERENCES persona(nombreUsuario),
	FOREIGN KEY (ISBN) REFERENCES libro(ISBN)

);

CREATE TABLE lee (
	nombreUsuario varchar(30),
	ISBN varchar(13),
	PRIMARY KEY (nombreUsuario, ISBN),
	FOREIGN KEY (nombreUsuario) REFERENCES persona(nombreUsuario),
	FOREIGN KEY (ISBN) REFERENCES libro(ISBN)

);

CREATE TABLE publica (
	ISBN varchar(13),
	nombre varchar(30),
	PRIMARY KEY (ISBN, nombre),
	FOREIGN KEY (ISBN) REFERENCES libro(ISBN),
	FOREIGN KEY (nombre) REFERENCES editorial(nombre)
);

CREATE TABLE clasifica (
	liga varchar(30),
	nombreUsuario varchar(30),
	PRIMARY KEY (liga, nombreUsuario),
	FOREIGN KEY (liga) REFERENCES ranking(liga),
	FOREIGN KEY (nombreUsuario) REFERENCES persona(nombreUsuario)
);

