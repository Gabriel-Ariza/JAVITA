-- Active: 1700176953797@@127.0.0.1@3306@java

DROP DATABASE IF EXISTS java;
CREATE DATABASE IF NOT EXISTS java CHARSET utf8mb4;

USE java;


--~ 1. Creando tabla ciudad
CREATE TABLE IF NOT EXISTS ciudad(
    id_ciudad SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    PRIMARY KEY(id_ciudad),
    CONSTRAINT ciudad_duplicada UNIQUE(nombre)
);


--~ 2. Creando tabla direccion
CREATE TABLE IF NOT EXISTS direccion(
    id_direccion INT UNSIGNED NOT NULL AUTO_INCREMENT,
    barrio VARCHAR(40) NOT NULL,
    calle VARCHAR(40) NOT NULL,
    numero_casa VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_direccion),
    CONSTRAINT direccion_duplicada UNIQUE(barrio, calle, numero_casa)
);


--~ 3. Creando tabla facultad
CREATE TABLE IF NOT EXISTS facultad(
    id_facultad TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    PRIMARY KEY(id_facultad),
    CONSTRAINT UNIQUE(nombre)
);


--~ 4. Creando tabla edificio
CREATE TABLE IF NOT EXISTS edificio(
    id_edificio SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre CHAR(1) NOT NULL,
    cantidad_pisos TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_edificio),
    CONSTRAINT edificio_duplicado UNIQUE(nombre),
    CONSTRAINT check_cantidad_pisos_validos CHECK (cantidad_pisos >= 1 AND cantidad_pisos <= 90)
);


--~ 5. Creando tabla programa
CREATE TABLE IF NOT EXISTS programa(
    id_programa SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    nivel ENUM('pregrado', 'posgrado') DEFAULT 'pregrado' NOT NULL,
    PRIMARY KEY(id_programa),
    CONSTRAINT programa_duplicado UNIQUE(nombre, nivel)
);


--~ 6. Creando tabla periodo
CREATE TABLE IF NOT EXISTS periodo(
    id_periodo SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(20) NOT NULL,
    año SMALLINT UNSIGNED NOT NULL,
    semestre TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_periodo),
    CONSTRAINT periodo_duplicado UNIQUE(año, semestre),
    CONSTRAINT soloDos_periodosPor_año CHECK (semestre <= 2 AND semestre >= 1),
    CONSTRAINT check_año_valido CHECK (año >= 1400 AND año <= 5000)
);


--~ 7. Creando tabla bloqueHorario
CREATE TABLE IF NOT EXISTS bloqueHorario(
    id_bloqueHorario SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    PRIMARY KEY(id_bloqueHorario),
    CONSTRAINT bloque_unico UNIQUE(hora_inicio, hora_fin)
);


--~ 8. Creando tabla curso
CREATE TABLE IF NOT EXISTS curso(
    id_curso SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    temas TEXT,
    competencias TEXT,
    PRIMARY KEY(id_curso)
);



--TODO -----  TABLAS CON FOREIGNS KEYS DESDE AQUI  -----
--TODO ------------------------------------------------- 



--~ 9. Creando tabla salon
CREATE TABLE IF NOT EXISTS salon(
    id_salon SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    capacidad_alumnos MEDIUMINT UNSIGNED NOT NULL,
    piso SMALLINT UNSIGNED NOT NULL,
    identificador VARCHAR(10) NOT NULL,
    id_edificio SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_salon),
    CONSTRAINT salon_duplicado UNIQUE(piso, identificador, id_edificio),
    CONSTRAINT fk_salon_edificio FOREIGN KEY (id_edificio) REFERENCES edificio(id_edificio)
        ON UPDATE CASCADE
);


--~ 10. Creando tabla persona
CREATE TABLE IF NOT EXISTS persona(
    id_persona INT UNSIGNED NOT NULL AUTO_INCREMENT,
    tipo_documento ENUM('CC', 'TI', 'CE') NOT NULL,
    documento BIGINT UNSIGNED NOT NULL,
    nombres VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    id_ciudad SMALLINT UNSIGNED NOT NULL,
    id_direccion INT UNSIGNED NOT NULL,
    telefono VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo ENUM('masculino', 'femenino','no definido') NOT NULL,
    PRIMARY KEY(id_persona),
    CONSTRAINT persona_duplicada UNIQUE(tipo_documento, documento),
    CONSTRAINT fk_persona_ciudad FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
        ON UPDATE CASCADE,
    CONSTRAINT fk_persona_direccion FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
        ON UPDATE CASCADE
);


--~ 11. Creando tabla profesor
CREATE TABLE IF NOT EXISTS profesor(
    id_profesor SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_persona INT UNSIGNED NOT NULL,
    id_facultad TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_profesor),
    CONSTRAINT profesor_duplicado UNIQUE(id_persona, id_facultad),
    CONSTRAINT fk_profesor_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
        ON UPDATE CASCADE,
    CONSTRAINT fk_profesor_facultad FOREIGN KEY (id_facultad) REFERENCES facultad(id_facultad)
        ON UPDATE CASCADE
);


--~ 12. Creando tabla alumno
CREATE TABLE IF NOT EXISTS alumno(
    id_alumno INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_persona INT UNSIGNED NOT NULL,
    id_programa SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_alumno),
    CONSTRAINT alumno_duplicado UNIQUE(id_alumno, id_persona, id_programa),
    CONSTRAINT fk_alumno_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
        ON UPDATE CASCADE,
    CONSTRAINT fk_alumno_programa FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
        ON UPDATE CASCADE
);


--~ 13. Creando tabla asignatura
CREATE TABLE IF NOT EXISTS asignatura(
    id_asignatura SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    creditos TINYINT UNSIGNED NOT NULL,
    cupo_disponible MEDIUMINT UNSIGNED NOT NULL,
    id_programa SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_asignatura),
    CONSTRAINT asignatura_duplicada UNIQUE(nombre, id_programa),
    CONSTRAINT fk_asignatura_programa FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
        ON UPDATE CASCADE
);
--profesor puede impartir la asignatura de Matemáticas en el período 1 y también en el período 2


--~ 14. Creando tabla tarifa
CREATE TABLE IF NOT EXISTS tarifa(
    id_tarifa INT UNSIGNED NOT NULL AUTO_INCREMENT,
    valor_credito DOUBLE NOT NULL,
    id_programa SMALLINT UNSIGNED NOT NULL,
    id_periodo SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_tarifa),
    CONSTRAINT tarifa_duplicada UNIQUE(id_programa, id_periodo),
    CONSTRAINT fk_tarifa_programa FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
        ON UPDATE CASCADE,
    CONSTRAINT fk_tarifa_periodo FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo)
        ON UPDATE CASCADE,
    INDEX idx_id_tarifa (id_tarifa)
);


--~ 15. Creando tabla asignaturaPeriodo
CREATE TABLE IF NOT EXISTS asignaturaPeriodo(
    id_asignaturaPeriodo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_asignatura SMALLINT UNSIGNED NOT NULL,
    codigo_asignatura VARCHAR(65) NOT NULL,
    id_profesor SMALLINT UNSIGNED NOT NULL,
    id_periodo SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(id_asignaturaPeriodo),
        CONSTRAINT fk_hacia_profesor FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor)
        ON UPDATE CASCADE,
    CONSTRAINT fk_hacia_asignatura FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura)
        ON UPDATE CASCADE,
    CONSTRAINT fk_hacia_periodo FOREIGN KEY (id_periodo) REFERENCES periodo(id_periodo)
        ON UPDATE CASCADE
);


--~ 16. Creando tabla horario
CREATE TABLE IF NOT EXISTS horario(
    id_horario SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    dia ENUM('lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado') NOT NULL,
    id_bloqueHorario SMALLINT UNSIGNED NOT NULL,
    id_salon SMALLINT UNSIGNED NOT NULL,
    id_asignaturaPeriodo INT UNSIGNED NOT NULL,
    PRIMARY KEY(id_horario),
    CONSTRAINT horario_unico UNIQUE(dia, id_bloqueHorario, id_salon),
    CONSTRAINT fk_horario_bloque FOREIGN KEY (id_bloqueHorario) REFERENCES bloqueHorario(id_bloqueHorario)
        ON UPDATE CASCADE,
    CONSTRAINT fk_horario_salon FOREIGN KEY (id_salon) REFERENCES salon(id_salon)
        ON UPDATE CASCADE,
    CONSTRAINT fk_horario_asignaturaPeriodo FOREIGN KEY (id_asignaturaPeriodo) REFERENCES asignaturaPeriodo(id_asignaturaPeriodo)
        ON UPDATE CASCADE
);


--~ 17. Creando tabla matricula
CREATE TABLE IF NOT EXISTS matricula(
    id_matricula INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_alumno INT UNSIGNED NOT NULL,
    id_asignaturaPeriodo INT UNSIGNED NOT NULL,
    estado ENUM('aprobada', 'reprobada', 'en curso') DEFAULT 'en curso' NOT NULL,
    PRIMARY KEY(id_matricula),
    CONSTRAINT matricula_duplicada UNIQUE (id_alumno, id_asignaturaPeriodo),
    CONSTRAINT fk_matricula_alumno FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno)
        ON UPDATE CASCADE,
    CONSTRAINT fk_matricula_asignatura FOREIGN KEY (id_asignaturaPeriodo) REFERENCES asignaturaPeriodo(id_asignaturaPeriodo)
        ON UPDATE CASCADE
);



--TODO -----  PROCEDIMIENTO ALMACENADO A PARTIR DE AQUI  -----
--TODO -------------------------------------------------------


DROP PROCEDURE if EXISTS calcularPrecio_asignaturaMatricula;
DELIMITER //
CREATE PROCEDURE calcularPrecio_asignaturaMatricula(IN _id_asignatura SMALLINT, IN _id_periodo SMALLINT)
BEGIN
    DECLARE _nombre_asignatura VARCHAR(255);
    DECLARE _creditos TINYINT;
    DECLARE _id_programa SMALLINT;
    DECLARE _costo_por_credito DOUBLE;
    DECLARE _precio_matricula DOUBLE;
    DECLARE _codigo_periodo VARCHAR(255);

    SELECT nombre, creditos, id_programa INTO _nombre_asignatura, _creditos, _id_programa FROM asignatura WHERE id_asignatura = _id_asignatura LIMIT 1;
    SELECT valor_credito INTO _costo_por_credito FROM tarifa WHERE id_periodo = _id_periodo AND id_programa = _id_programa LIMIT 1;
    SELECT codigo INTO _codigo_periodo FROM periodo WHERE id_periodo = _id_periodo LIMIT 1;

    SET _precio_matricula = _creditos * _costo_por_credito;

    SELECT _nombre_asignatura AS 'Nombre Asignatura', _creditos AS 'Creditos', _costo_por_credito AS 'Costo por Credito', _precio_matricula AS 'Precio Matricula', _codigo_periodo AS 'Codigo Periodo';
END //
DELIMITER ;



DROP PROCEDURE IF EXISTS CalcularCostoSemestre;
CREATE PROCEDURE CalcularCostoSemestre(IN id_alumno INT, IN id_periodo INT)
BEGIN
    DECLARE costo_total DOUBLE;
    DECLARE nombre_completo VARCHAR(255);

    CREATE TEMPORARY TABLE IF NOT EXISTS TempTable AS (
        SELECT ap.codigo_asignatura, a.creditos * t.valor_credito AS precio_matricula
        FROM matricula m
        INNER JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
        INNER JOIN asignatura a ON ap.id_asignatura = a.id_asignatura
        INNER JOIN tarifa t ON a.id_programa = t.id_programa
        WHERE m.id_alumno = id_alumno AND t.id_periodo = id_periodo /* AND m.estado = 'en curso' */
    );

    SELECT SUM(precio_matricula) INTO costo_total FROM TempTable;

    SELECT CONCAT(p.nombres, ' ', p.apellidos) INTO nombre_completo FROM alumno a
    JOIN persona p ON a.id_persona = p.id_persona
    WHERE a.id_alumno = id_alumno;

    SELECT nombre_completo AS 'Nombre del Alumno', codigo_asignatura AS 'Codigo Asignatura', precio_matricula AS 'Precio Matricula' FROM TempTable;

    SELECT nombre_completo AS 'Nombre del Alumno', costo_total AS 'Costo Total del Semestre';
    
    DROP TEMPORARY TABLE IF EXISTS TempTable;
END;



DROP PROCEDURE IF EXISTS IncrementarPrecio_tarifa;
DELIMITER //
CREATE PROCEDURE IncrementarPrecio_tarifa(IN periodo_a_incrementar INT, IN incremento DECIMAL(10,2), IN nuevo_periodo INT)
BEGIN
    DECLARE max_id_tarifa INT;

    -- Obtén el id_tarifa máximo actual
    SELECT MAX(id_tarifa) INTO max_id_tarifa FROM tarifa;

    -- Primero, clonamos las tarifas del período a incrementar para los programas que aún no tienen una tarifa para el nuevo período
    INSERT INTO tarifa (id_tarifa, valor_credito, id_programa, id_periodo)
    SELECT ROW_NUMBER() OVER (ORDER BY valor_credito) + max_id_tarifa, valor_credito, id_programa, nuevo_periodo
    FROM tarifa
    WHERE id_periodo = periodo_a_incrementar;

    -- Luego, incrementamos los precios
    UPDATE tarifa
    SET valor_credito = ROUND(valor_credito * (1 + incremento / 100))
    WHERE id_periodo = nuevo_periodo;
END//
DELIMITER ;



DROP PROCEDURE IF EXISTS clonar_asignaturasPara_nuevoSemestre;
DELIMITER //
CREATE PROCEDURE clonar_asignaturasPara_nuevoSemestre(IN periodo_a_clonar SMALLINT UNSIGNED, IN nuevo_periodo SMALLINT UNSIGNED)
BEGIN
    -- Primero, clonamos las asignaturas del periodo especificado
    INSERT INTO asignaturaPeriodo (id_asignatura, codigo_asignatura, id_profesor, id_periodo)
    SELECT id_asignatura, codigo_asignatura, id_profesor, nuevo_periodo
    FROM asignaturaPeriodo
    WHERE id_periodo = periodo_a_clonar;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetStudentSchedule(IN student_id INT)
BEGIN
    SELECT  CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante',
        h.dia,
        bh.hora_inicio,
        bh.hora_fin
    FROM horario h   
    JOIN bloquehorario bh ON h.id_bloqueHorario = bh.id_bloqueHorario
    JOIN asignaturaperiodo ap ON h.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
    JOIN matricula m ON ap.id_asignaturaPeriodo = m.id_asignaturaPeriodo
    JOIN alumno a ON m.id_alumno = a.id_alumno
    JOIN persona p ON a.id_persona = p.id_persona
    WHERE a.id_alumno = student_id;
END //
DELIMITER ;


DROP PROCEDURE IF EXISTS CalculateUniversityIncome;
DELIMITER //
CREATE PROCEDURE CalculateUniversityIncome(IN periodo INT)
BEGIN
    SELECT t.id_periodo, SUM(a.creditos * t.valor_credito) AS 'Ingresos'
    FROM matricula m
    INNER JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
    INNER JOIN asignatura a ON ap.id_asignatura = a.id_asignatura
    INNER JOIN tarifa t ON a.id_programa = t.id_programa AND ap.id_periodo = t.id_periodo
    WHERE t.id_periodo = periodo
    GROUP BY t.id_periodo;
END //
DELIMITER ;



--TODO -----  VISTAS DE LAS TABLAS A PARTIR DE AQUI  -----
--TODO ---------------------------------------------------


CREATE VIEW vista_estudiantes AS
SELECT CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', p.documento,
    p.sexo, p.fecha_nacimiento,
    c.nombre AS 'Ciudad', d.barrio, d.calle, d.numero_casa
FROM alumno a
JOIN persona p ON a.id_persona = p.id_persona
JOIN direccion d ON p.id_direccion = d.id_direccion
JOIN ciudad c ON p.id_ciudad = c.id_ciudad;



CREATE VIEW EstudiantesPorPrograma AS
SELECT id_alumno, CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', pr.nombre AS 'Nombre del Programa' 
FROM alumno a
JOIN persona p ON a.id_persona = p.id_persona
JOIN programa pr ON a.id_programa = pr.id_programa
ORDER BY pr.nombre, CONCAT(p.nombres, ' ', p.apellidos), id_alumno;


CREATE VIEW matriculados_por_programa AS
SELECT pr.nombre AS 'Nombre del Programa', COUNT(a.id_alumno) AS 'Número de Matriculados'
FROM alumno a
JOIN programa pr ON a.id_programa = pr.id_programa
GROUP BY pr.nombre
ORDER BY COUNT(a.id_alumno) DESC;



DROP PROCEDURE IF EXISTS GetHorarioEstudiante;
DELIMITER //
CREATE PROCEDURE GetHorarioEstudiante(IN id_alumno INT)
BEGIN
    SELECT * FROM (
        SELECT al.id_alumno, CONCAT(p.nombres, ' ', p.apellidos) AS 'Estudiante', ap.codigo_asignatura AS 'Asignatura', h.dia AS 'Horario',
            hora_inicio, hora_fin, s.identificador AS 'Salon', s.piso, e.nombre AS 'Edificio'
        FROM alumno al
        JOIN persona p ON al.id_persona = p.id_persona
        JOIN matricula m ON al.id_alumno = m.id_alumno
        JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
        JOIN horario h ON ap.id_asignaturaPeriodo = h.id_asignaturaPeriodo
        JOIN bloquehorario bh ON h.id_bloqueHorario = bh.id_bloqueHorario
        JOIN salon s ON h.id_salon = s.id_salon
        JOIN edificio e ON s.id_edificio = e.id_edificio
        WHERE al.id_alumno = id_alumno
    ) AS HorarioEstudiante;
END //
DELIMITER ;



--TODO -----  TRIGGERS DE LAS TABLAS A PARTIR DE AQUI  -----
--TODO -----------------------------------------------------



DELIMITER //
CREATE TRIGGER verificar_bloques_horario_salonDia BEFORE INSERT ON horario
FOR EACH ROW
BEGIN
    DECLARE inicio_nuevo TIME;
    DECLARE fin_nuevo TIME;

    SELECT hora_inicio, hora_fin INTO inicio_nuevo, fin_nuevo FROM bloqueHorario WHERE id_bloqueHorario = NEW.id_bloqueHorario;

    IF EXISTS (
        SELECT 1 FROM horario h
        JOIN bloqueHorario bh ON h.id_bloqueHorario = bh.id_bloqueHorario
        WHERE h.id_salon = NEW.id_salon AND h.dia = NEW.dia AND (inicio_nuevo < bh.hora_fin AND fin_nuevo > bh.hora_inicio)
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El nuevo bloque de horario se cruza con un bloque existente en el mismo día y salón.';
    END IF;
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER verificar_solapamiento_horario_profesor BEFORE INSERT ON horario
FOR EACH ROW
BEGIN
    DECLARE inicio_nuevo TIME;
    DECLARE fin_nuevo TIME;
    DECLARE id_profesor_nuevo SMALLINT UNSIGNED;

    SELECT hora_inicio, hora_fin INTO inicio_nuevo, fin_nuevo FROM bloqueHorario WHERE id_bloqueHorario = NEW.id_bloqueHorario;
    SELECT id_profesor INTO id_profesor_nuevo FROM asignaturaPeriodo WHERE id_asignaturaPeriodo = NEW.id_asignaturaPeriodo;

    IF EXISTS (
        SELECT 1 FROM horario h
        JOIN bloqueHorario bh ON h.id_bloqueHorario = bh.id_bloqueHorario
        JOIN asignaturaPeriodo ap ON h.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
        WHERE ap.id_profesor = id_profesor_nuevo AND h.dia = NEW.dia AND (inicio_nuevo < bh.hora_fin AND fin_nuevo > bh.hora_inicio)
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El profesor de esta asignatura ya tiene un horario en el mismo dia y hora';
    END IF;
END;
//
DELIMITER ;



DROP TRIGGER IF EXISTS salonTiene_capacidad_paraDar_asignatura;
--~ 16. horario TRIGGER
-- el cupo del salon sea apto con la capacidad de la asignatura
DELIMITER //
CREATE TRIGGER salonTiene_capacidad_paraDar_asignatura BEFORE INSERT ON horario
FOR EACH ROW
BEGIN
   DECLARE capacidad_salon MEDIUMINT;
   DECLARE cupo_asignatura MEDIUMINT;

   SELECT capacidad_alumnos INTO capacidad_salon FROM salon WHERE id_salon = NEW.id_salon;

   SELECT a.cupo_disponible INTO cupo_asignatura FROM asignatura a 
   JOIN asignaturaPeriodo ap ON a.id_asignatura = ap.id_asignatura
   WHERE ap.id_asignaturaPeriodo = NEW.id_asignaturaPeriodo;

   IF capacidad_salon < cupo_asignatura THEN 
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La capacidad del salón no es suficiente para el cupo de la asignatura';
   END IF;
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER verificar_solapamiento_horario_alumno BEFORE INSERT ON matricula
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM horario h1 
        JOIN horario h2 ON h1.dia = h2.dia 
        /* recorre cada fila de horario buscando dos dias iguales y los almacena*/
        JOIN bloqueHorario bh1 ON h1.id_bloqueHorario = bh1.id_bloqueHorario 
        JOIN bloqueHorario bh2 ON h2.id_bloqueHorario = bh2.id_bloqueHorario 
        /* entra a bloqueHorario si las horas de esos dos dias son iguales*/
        WHERE h1.id_asignaturaPeriodo = NEW.id_asignaturaPeriodo AND h2.id_asignaturaPeriodo IN (
            /*filtramos por asignatura para ver el horario de la nueva asignatura es igual*/
            SELECT id_asignaturaPeriodo 
            FROM matricula 
            WHERE id_alumno = NEW.id_alumno
        ) AND (bh1.hora_inicio < bh2.hora_fin AND bh1.hora_fin > bh2.hora_inicio)
            /*verificamos si las horas se solapan*/
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El horario de la nueva asignatura se solapa con el de una asignatura ya matriculada.';
    END IF;
END;
//
DELIMITER ;


DROP TRIGGER IF EXISTS verificar_cupoAsignatura_para_matricular;
--~ 17. matricula TRIGGER (cupo de la asignatura excedido)
-- el cupo de la asignatura sea apto con la capacidad de la asignatura
DELIMITER //
CREATE TRIGGER verificar_cupoAsignatura_para_matricular BEFORE INSERT ON matricula
FOR EACH ROW
BEGIN
   DECLARE cupo_asignatura MEDIUMINT;
   DECLARE matriculas_existentes MEDIUMINT;

   SELECT a.cupo_disponible INTO cupo_asignatura FROM asignatura a 
   JOIN asignaturaPeriodo ap ON ap.id_asignatura = a.id_asignatura 
   WHERE ap.id_asignaturaPeriodo = NEW.id_asignaturaPeriodo;

   SELECT COUNT(*) INTO matriculas_existentes FROM matricula 
   WHERE id_asignaturaPeriodo = NEW.id_asignaturaPeriodo;

   IF matriculas_existentes >= cupo_asignatura THEN 
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'la asignatura ha llegado a su cupo máximo, no se pueden inscribir más alumnos';
   END IF;
END;
//
DELIMITER ;



DROP TRIGGER IF EXISTS not_matricula_estudiante_semestreInvalido;
--~ 17. matricula TRIGGER (asignatura ya matriculada)
-- trigger asignatura en la matricula activa por el estudiante
DELIMITER //
CREATE TRIGGER not_matricula_estudiante_semestreInvalido BEFORE INSERT ON matricula FOR EACH ROW
BEGIN
    DECLARE año_actual SMALLINT;
    DECLARE año_matricula SMALLINT;

    SELECT YEAR(CURDATE()) INTO año_actual;

    SELECT año INTO año_matricula FROM periodo WHERE id_periodo = (SELECT id_periodo FROM asignaturaPeriodo WHERE id_asignaturaPeriodo = NEW.id_asignaturaPeriodo);

    IF año_matricula < año_actual AND NEW.estado = 'en curso' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No puede matricular una asignatura para un semestre que ya terminó';
    ELSEIF año_matricula > año_actual THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede matricular en un periodo que aún no ha comenzado.';
    END IF;
END;
//
DELIMITER ;


DROP TRIGGER IF EXISTS not_matricula_asignatura_duplicada;
DELIMITER //
CREATE TRIGGER not_matricula_asignatura_duplicada BEFORE INSERT ON matricula FOR EACH ROW
BEGIN
    DECLARE asignatura_en_curso INT;
    DECLARE asignatura_aprobada INT;

    SELECT COUNT(*) INTO asignatura_en_curso
    FROM matricula m
    INNER JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
    INNER JOIN asignaturaPeriodo ap_new ON NEW.id_asignaturaPeriodo = ap_new.id_asignaturaPeriodo
    WHERE m.id_alumno = NEW.id_alumno AND ap.id_asignatura = ap_new.id_asignatura AND m.estado = 'en curso';

    SELECT COUNT(*) INTO asignatura_aprobada
    FROM matricula m
    INNER JOIN asignaturaPeriodo ap ON m.id_asignaturaPeriodo = ap.id_asignaturaPeriodo
    INNER JOIN asignaturaPeriodo ap_new ON NEW.id_asignaturaPeriodo = ap_new.id_asignaturaPeriodo
    WHERE m.id_alumno = NEW.id_alumno AND ap.id_asignatura = ap_new.id_asignatura AND m.estado = 'aprobada';

    IF asignatura_en_curso > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El estudiante ya tiene una matricula en curso para esta asignatura.';
    ELSEIF asignatura_aprobada > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El estudiante ya ha aprobado esta asignatura.';
    END IF;
END;
//
DELIMITER ;


DROP TRIGGER IF EXISTS not_horario_en_periodo_pasado;
DELIMITER //
CREATE TRIGGER not_horario_en_periodo_pasado BEFORE INSERT ON horario
FOR EACH ROW
BEGIN
   DECLARE año_periodo SMALLINT;
   DECLARE año_actual SMALLINT;

   SELECT YEAR(CURDATE()) INTO año_actual;
   SELECT año INTO año_periodo FROM periodo WHERE id_periodo = (SELECT id_periodo FROM asignaturaPeriodo WHERE id_asignaturaPeriodo = NEW.id_asignaturaPeriodo);

   IF año_periodo < año_actual THEN 
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede establecer un horario en un semestre que ya se terminó.';
   END IF;
END;
//
DELIMITER ;



--TODO -----  3 GENERADORES DE CODIGOS EN CAMPOS DE LAS TABLAS A PARTIR DE AQUI  -----
--TODO -------------------------------------------------------------------------------




DROP TRIGGER IF EXISTS generar_codigo_asignatura;
--~ 6. asignaturaPeriodo TRIGGER
-- genera automaticamente el codigo del periodo con base a los otros datos
DELIMITER //
CREATE TRIGGER generar_codigo_asignatura BEFORE INSERT ON asignaturaPeriodo
FOR EACH ROW
BEGIN
  DECLARE programa_codigo VARCHAR(40);
  DECLARE profesor_id VARCHAR(40);
  DECLARE periodo_semestre VARCHAR(20);
  DECLARE asignatura_nombre VARCHAR(60);

  SELECT LPAD(p.id_programa, 2, '0') INTO programa_codigo FROM programa p 
  JOIN asignatura a ON a.id_programa = p.id_programa 
  WHERE a.id_asignatura = NEW.id_asignatura;

  SELECT LPAD(NEW.id_profesor, 2, '0') INTO profesor_id;

  SELECT pe.codigo INTO periodo_semestre FROM periodo pe 
  WHERE pe.id_periodo = NEW.id_periodo;

  SELECT a.nombre INTO asignatura_nombre FROM asignatura a 
  WHERE a.id_asignatura = NEW.id_asignatura;

  SET NEW.codigo_asignatura = CONCAT('PR',programa_codigo, '-', profesor_id, '-', periodo_semestre, '-', asignatura_nombre);
END;
//
DELIMITER ;

--SELECT pe.semestre INTO periodo_semestre FROM periodo pe 
--SET NEW.codigo_asignatura = CONCAT('PR',programa_codigo, '-', curso_codigo, '-PER-', periodo_semestre, '-', asignatura_nombre);


DROP TRIGGER IF EXISTS generar_codigo_periodo;
--~ 6. periodo TRIGGER
-- genera automaticamente el codigo del periodo con base a los otros datos
DELIMITER //
CREATE TRIGGER generar_codigo_periodo BEFORE INSERT ON periodo
FOR EACH ROW
BEGIN
  SET NEW.codigo = CONCAT('P', NEW.año, '-', LPAD(NEW.semestre, 2, '0'));
END;//
DELIMITER ;



DROP TRIGGER IF EXISTS generar_identificador_salon;
--~ 9. salon TRIGGER
-- genera automaticamente el identificador del salon con base a los otros datos
DELIMITER //
CREATE TRIGGER generar_identificador_salon BEFORE INSERT ON salon
FOR EACH ROW
BEGIN
  DECLARE edificio_nombre CHAR(1);
  DECLARE salon_numero INT;
  DECLARE cantidad_pisos_edificio TINYINT;

  SELECT cantidad_pisos INTO cantidad_pisos_edificio FROM edificio WHERE id_edificio = NEW.id_edificio;

  IF NEW.piso > cantidad_pisos_edificio THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El piso del salón no puede ser mayor que la cantidad de pisos del edificio.';
  END IF;

  SELECT nombre INTO edificio_nombre FROM edificio WHERE id_edificio = NEW.id_edificio;
  SET salon_numero = 1;
  WHILE EXISTS (SELECT 1 FROM salon WHERE id_edificio = NEW.id_edificio AND piso = NEW.piso AND identificador = CONCAT(edificio_nombre, NEW.piso, '-', salon_numero, NEW.identificador)) DO
    SET salon_numero = salon_numero + 1;
  END WHILE;

  IF salon_numero > 9 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Se ha excedido el número máximo de salones por piso.';
  ELSE
    SET NEW.identificador = CONCAT(edificio_nombre, NEW.piso, '-', salon_numero, UPPER(NEW.identificador));
  END IF;
END;
//
DELIMITER ;