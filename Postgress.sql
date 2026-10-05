create table estudiantes(
	id_estudiante int primary key,
	nombres varchar(50),
	apellido varchar(50),
	edad int,
	curso varchar(50),
	fecha_registro varchar(10)
)

select * from estudiantes;

INSERT INTO estudiantes (
    id_estudiante,
    nombres,
    apellido,
    edad,
    curso,
    fecha_registro
) VALUES
(2, 'Carlos', 'Mendoza', 22, 'Programación Web', '2026-01-02'),
(3, 'María', 'López', 24, 'Estructura de Datos', '2026-01-03'),
(4, 'Juan', 'Pérez', 21, 'Base de datos', '2026-01-05'),
(5, 'Sofia', 'Gómez', 23, 'Sistemas Operativos', '2026-01-08'),
(6, 'Luis', 'Torres', 25, 'Programación Web', '2026-01-10'),
(7, 'Ana', 'Martínez', 20, 'Arquitectura de Software', '2026-01-12'),
(8, 'Diego', 'Ramírez', 27, 'Base de datos', '2026-01-15'),
(9, 'Valeria', 'Morales', 22, 'Redes de Computadoras', '2026-01-18'),
(10, 'Gabriel', 'Castillo', 24, 'Inteligencia Artificial', '2026-01-20');

--mostrar todos
select * from estudiantes;

--mostrar nombre y cursos
select nombres,curso from estudiantes;

-- mostrar mayores de 18 y 25 anios
select * from estudiantes 
where edad > 18 and edad <= 25;

--mosrtrar estudiantes entre 18 y 25(incluye 18 y 25)
select * from estudiantes 
where edad between 18 and 25;

--mostrar estudiantes del curso base de datos
select * from estudiantes
where curso = 'Base de datos';

--mostrar registrados depues del 2026-03-01
select * from estudiantes
where fecha_registro > '2026-03-01';

--mostrar estudiantes registrados entre el primero de enero y 30 de abril
select * from estudiantes
where fecha_registro between '2026-01-01' and '2026-04-30';

--UPDATES
update estudiantes set curso = 'Inteligencia Artificial'
where id_estudiante = 1;

update estudiantes set edad = 17
where id_estudiante = 10;

update estudiantes set fecha_registro = '2026-12-03'
where id_estudiante = 2;

update estudiantes set nombres = 'Micaela', apellido = 'Haro'
where id_estudiante = 2;

--DELETES

delete from estudiantes 
where id_estudiante = 8;

delete from estudiantes 
where curso = 'POO';

delete from estudiantes 
where edad = 22;

delete from estudiantes 
where fecha_registro = '2026-01-02';

delete from estudiantes 
where id_estudiante = 10