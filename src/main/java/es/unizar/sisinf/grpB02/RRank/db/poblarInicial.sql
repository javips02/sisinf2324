-- Todo lo que queramso que este en la BD al cargar la pagina web tiene que venir con inserts/updates
-- en este fichero, asi podemos crear y borrar la BD para depurar y volverla a levantar rapido
-- Inserciones en la tabla editorial
INSERT INTO editorial (nombre)
VALUES ('Editorial A'),
       ('Editorial B'),
       ('Editorial C');

-- Inserciones en la tabla persona para los escritores
INSERT INTO persona (nombreUsuario, nombreCompleto)
VALUES ('Cervantes', 'Miguel de Cervantes'),
       ('GarciaLorca', 'Federico García Lorca'),
       ('Quevedo', 'Francisco de Quevedo'),
       ('Roiz', 'Fulano de Tal'),
       ('Calderon', 'Pedro Calderón de la Barca');

-- Inserciones en la tabla libro
INSERT INTO libro (ISBN, titulo, nombreImagen, numLectores)
VALUES ('ISBN1', 'Don Quijote de la Mancha', 'Don Quijote de la Mancha', 0),
       ('ISBN2', 'La Celestina', 'La Celestina', 0),
       ('ISBN3', 'Bodas de Sangre', 'Bodas de Sangre', 0),
       -- Agrega más libros y sus detalles aquí
       ('ISBN20', 'La vida es sueño', 'La vida es sueño', 0);

-- Inserciones en la tabla escribe para asignar autores a los libros
INSERT INTO escribe (nombreUsuario, ISBN)
VALUES ('Cervantes', 'ISBN1'),
       ('Roiz', 'ISBN2'),
       ('GarciaLorca', 'ISBN3'),
       -- Asigna más autores a los libros aquí
       ('Calderon', 'ISBN20');

-- Inserciones en la tabla publica para vincular libros y editoriales
INSERT INTO publica (ISBN, nombre)
VALUES ('ISBN1', 'Editorial A'),
       ('ISBN2', 'Editorial B'),
       ('ISBN3', 'Editorial C'),
       -- Vincula más libros con sus editoriales aquí
       ('ISBN20', 'Editorial A');
