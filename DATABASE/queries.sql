
USE java;


--? 1. Listar los estudiantes matriculados por programa


SELECT id_alumno, CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiantes', pr.nombre AS 'Nombre del Programa' FROM alumno a
JOIN persona p ON a.id_persona = p.id_persona
JOIN programa pr ON a.id_programa = pr.id_programa
ORDER BY pr.nombre, CONCAT(p.nombres, ' ', p.apellidos), id_alumno;



--? 2. Calcular el costo del semestre de un estudiante según las asignaturas matriculadas. 

SELECT CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', pr.nombre FROM alumno a
JOIN persona p ON a.id_persona = p.id_persona
JOIN programa pr ON a.id_programa = pr.id_programa
WHERE id_alumno = 3;


533000 credito programa medicina
5863000
6

CALL CalcularCostoSemestre(3, 7)


CALL calcularPrecio_asignaturaMatricula(4, 7)


--? 3. Calcular los ingreso de la universidad por semestre

SELECT t.id_periodo, SUM(a.creditos * t.valor_credito) AS 'Ingresos'
FROM matricula m
INNER JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
INNER JOIN asignatura a ON ap.id_asignatura = a.id_asignatura
INNER JOIN tarifa t ON a.id_programa = t.id_programa AND ap.id_periodo = t.id_periodo
GROUP BY t.id_periodo;


--? 4. Imprimir el horario de un estudiante. Simplemente en forma de lista. 
CALL GetStudentSchedule(1);

CALL CalculateUniversityIncome(7);


CALL CalcularCostoSemestre(1, 7);


SELECT pr.nombre AS 'Nombre del Programa', COUNT(a.id_alumno) AS 'Número de Matriculados'
FROM alumno a
JOIN programa pr ON a.id_programa = pr.id_programa
GROUP BY pr.nombre
ORDER BY COUNT(a.id_alumno) DESC;


SELECT CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', ap.codigo_asignatura AS 'Asignatura', h.dia AS 'Horario',
    hora_inicio, hora_fin, s.identificador AS 'Salon', s.piso, e.nombre AS 'Edificio'
FROM alumno al
JOIN persona p ON al.id_persona = p.id_persona
JOIN matricula m ON al.id_alumno = m.id_alumno
JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
JOIN horario h ON ap.id_asignaturaPeriodo = h.id_asignaturaPeriodo
JOIN bloquehorario bh ON h.id_bloqueHorario = bh.id_bloqueHorario
JOIN salon s ON h.id_salon = s.id_salon
JOIN edificio e ON s.id_edificio = e.id_edificio




SELECT id_alumno, CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', pr.nombre AS 'Nombre del Programa' FROM alumno a
JOIN persona p ON a.id_persona = p.id_persona
JOIN programa pr ON a.id_programa = pr.id_programa
ORDER BY pr.nombre, CONCAT(p.nombres, ' ', p.apellidos), id_alumno;



SELECT al.id_alumno, CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', 
    pr1.nombre AS 'Carrera del Estudiante',
    a.id_asignatura,
    a.nombre AS 'Nombre Asignatura', 
    pr2.nombre AS 'Programa de la Asignatura'
FROM matricula m
INNER JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
INNER JOIN asignatura a ON ap.id_asignatura = a.id_asignatura
INNER JOIN alumno al ON m.id_alumno = al.id_alumno
INNER JOIN persona p ON al.id_persona = p.id_persona
INNER JOIN programa pr1 ON al.id_programa = pr1.id_programa
INNER JOIN programa pr2 ON a.id_programa = pr2.id_programa



SELECT *
FROM alumno
JOIN persona ON alumno.persona_id = persona.id
JOIN direccion ON persona.direccion_id = direccion.id;


SELECT CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', p.documento,
    p.sexo, p.fecha_nacimiento,
    c.nombre AS 'Ciudad', d.barrio, d.calle, d.numero_casa
FROM alumno a
JOIN persona p ON a.id_persona = p.id_persona
JOIN direccion d ON p.id_direccion = d.id_direccion
JOIN ciudad c ON p.id_ciudad = c.id_ciudad



SELECT id_asignatura, COUNT(*) as veces_dictada
FROM asignaturaperiodo
GROUP BY id_asignatura;



--^ Consultas que murieron en el proceso y pueden servir para despues

SELECT CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiantes', ap.codigo_asignatura FROM asignaturaperiodo ap
JOIN asignatura a ON ap.id_asignatura = a.id_asignatura
JOIN matricula m ON  ap.id_asignaturaPeriodo = m.id_asignaturaPeriodo
JOIN alumno al ON m.id_alumno = al.id_alumno
JOIN persona p ON al.id_persona = p.id_persona
ORDER BY CONCAT(p.nombres, ' ', p.apellidos), ap.codigo_asignatura;