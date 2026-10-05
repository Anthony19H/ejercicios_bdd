CREATE SCHEMA IF NOT EXISTS ejercicios_bdd;

USE ejercicios_bdd;

CREATE TABLE estudiantes(
	id_estudiante INT PRIMARY KEY,
	nombres VARCHAR(50),
	apellido VARCHAR(50),
	edad INT,
	curso VARCHAR(50),
	fecha_registro VARCHAR(10)
);

INSERT INTO estudiantes (
    id_estudiante,
    nombres,
    apellido,
    edad,
    curso,
    fecha_registro
) VALUES
(1, 'Anthony', 'Herrera', 26, 'Base de datos', '2026-01-01'),
(2, 'Carlos', 'Mendoza', 22, 'Programación Web', '2026-01-02'),
(3, 'María', 'López', 24, 'Estructura de Datos', '2026-01-03'),
(4, 'Juan', 'Pérez', 21, 'Base de datos', '2026-01-05'),
(5, 'Sofia', 'Gómez', 23, 'Sistemas Operativos', '2026-01-08'),
(6, 'Luis', 'Torres', 25, 'Programación Web', '2026-01-10'),
(7, 'Ana', 'Martínez', 20, 'Arquitectura de Software', '2026-01-12'),
(8, 'Diego', 'Ramírez', 27, 'Base de datos', '2026-01-15'),
(9, 'Valeria', 'Morales', 22, 'Redes de Computadoras', '2026-01-18'),
(10, 'Gabriel', 'Castillo', 24, 'Inteligencia Artificial', '2026-01-20'),
(11, 'Anthony', 'Herrera', 26, 'Programacion', '2026-02-10'),
(12, 'María', 'López', 24, 'Base de datos', '2026-03-15'),
(13, 'Pedro', 'Sánchez', 19, 'Programacion', '2026-03-15'),
(14, 'Laura', 'Gómez', 28, 'Programacion', '2026-01-25'),
(15, 'Esteban', 'Quito', 22, 'Base de datos', '2026-04-05');


-- mostrar todos
select * from estudiantes;

-- mostrar nombre y cursos
select nombres,curso from estudiantes;

-- mostrar mayores de 18
select * from estudiantes 
where edad > 18;

-- mosrtrar estudiantes entre 18 y 25 (incluye 18 y 25)
select * from estudiantes 
where edad between 18 and 25;

-- mostrar estudiantes del curso base de datos
select * from estudiantes
where curso = 'Base de datos';

-- mostrar registrados depues del 2026-03-01
select * from estudiantes
where fecha_registro > '2026-03-01';

-- mostrar estudiantes registrados entre el primero de enero y 30 de abril
select * from estudiantes
where fecha_registro between '2026-01-01' and '2026-04-30';

-- UPDATES (Se completa el quinto UPDATE para cambiar varios campos a la vez)
update estudiantes set curso = 'Inteligencia Artificial'
where id_estudiante = 1;

update estudiantes set edad = 17
where id_estudiante = 10;

update estudiantes set fecha_registro = '2026-12-03'
where id_estudiante = 2;

update estudiantes set nombres = 'Micaela', apellido = 'Haro'
where id_estudiante = 2;

update estudiantes set curso = 'Sistemas Operativos', edad = 25
where id_estudiante = 3;

-- DELETES
delete from estudiantes 
where id_estudiante = 8;

delete from estudiantes 
where curso = 'POO';

delete from estudiantes 
where edad = 22;

delete from estudiantes 
where fecha_registro = '2026-01-02';

delete from estudiantes 
where id_estudiante = 10;

--  Modificación de la Tabla 
ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);

-- Actualización de Scripts
INSERT INTO estudiantes (id_estudiante, nombres, apellido, edad, curso, fecha_registro, correo) VALUES
(16, 'Juan', 'Perez', 20, 'Programacion', '2026-01-10', 'juan@gmail.com');

--  Consultas con Fechas requeridas
--  Mostrar estudiantes registrados después de 2026-02-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';

--  Mostrar estudiantes registrados antes de 2026-05-01
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';

-- Mostrar estudiantes registrados entre dos fechas
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-04-01';

--  Mostrar estudiantes registrados exactamente en 2026-03-15
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';

-- Mostrar estudiantes del curso Programacion registrados después de 2026-01-01
SELECT * FROM estudiantes WHERE curso = 'Programacion' AND fecha_registro > '2026-01-01';