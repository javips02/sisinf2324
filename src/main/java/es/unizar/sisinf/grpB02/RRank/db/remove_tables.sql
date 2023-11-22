-- Primero, eliminamos las tablas que tienen relaciones de clave foránea
DROP TABLE IF EXISTS clasifica cascade;
DROP TABLE IF EXISTS publica cascade;
DROP TABLE IF EXISTS lee cascade;
DROP TABLE IF EXISTS escribe cascade;
DROP TABLE IF EXISTS trabaja cascade;

-- Luego, eliminamos las tablas principales
DROP TABLE IF EXISTS libro cascade;
DROP TABLE IF EXISTS editorial cascade;
DROP TABLE IF EXISTS persona cascade;
DROP TABLE IF EXISTS ranking cascade;

