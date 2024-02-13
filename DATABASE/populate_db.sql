-- Active: 1700176953797@@127.0.0.1@3306@java



USE java;


--~ 1. Poblando tabla ciudad
INSERT INTO ciudad (id_ciudad, nombre) VALUES 
(1, 'Bogotá'),
(2, 'Medellín'),
(3, 'Cali'),
(4, 'Barranquilla'),
(5, 'Cartagena'),
(6, 'Santa Marta'),
(7, 'Bucaramanga'),
(8, 'Pereira'),
(9, 'Cúcuta'),
(10, 'Villavicencio'),
(11, 'Manizales'),
(12, 'Pasto'),
(13, 'Ibague'),
(14, 'Neiva'),
(15, 'Montería');


--~ 2. Poblando tabla direccion
INSERT INTO direccion(barrio, calle, numero_casa) VALUES
('El Poblado', 'Calle 10', '123-45'),
('La Castellana', 'Carrera 15', '67-89'),
('Chapinero Alto', 'Avenida 7', '101-23'),
('Los Rosales', 'Calle 80', '34-56'),
('Santa Bárbara', 'Carrera 12', '78-90'),
('El Prado', 'Calle 20', '56-78'),
('El Recreo', 'Carrera 25', '90-12'),
('Miraflores', 'Avenida 5', '43-21'),
('La Esperanza', 'Calle 30', '89-01'),
('San Antonio', 'Carrera 10', '12-34'),
('El Rodeo', 'Avenida 3', '67-89'),
('Alameda', 'Calle 40', '45-67'),
('La Granja', 'Carrera 20', '78-90'),
('La Candelaria', 'Calle 50', '23-45'),
('Altos de Prado', 'Avenida 9', '56-78'),
('San Fernando', 'Carrera 30', '01-23'),
('El Carmen', 'Calle 60', '89-01'),
('Los Almendros', 'Carrera 40', '34-56'),
('Las Colinas', 'Calle 70', '67-89'),
('El Jardín', 'Carrera 50', '12-34'),
('San Isidro', 'Avenida 4', '78-90'),
('Los Laureles', 'Calle 80', '45-67'),
('Villa del Mar', 'Carrera 60', '23-45'),
('Barrio Nuevo', 'Calle 90', '56-78'),
('El Bosque', 'Avenida 8', '01-23'),
('La Pradera', 'Carrera 70', '89-01'),
('Las Acacias', 'Calle 100', '34-56'),
('La Aurora', 'Carrera 80', '67-89'),
('Los Cedros', 'Calle 110', '12-34'),
('Santa Helena', 'Avenida 6', '78-90'),
('La Floresta', 'Carrera 90', '45-67'),
('La Independencia', 'Calle 120', '23-45'),
('Los Pinos', 'Carrera 100', '56-78'),
('El Vergel', 'Calle 130', '89-01'),
('San José', 'Avenida 10', '34-56'),
('Las Palmas', 'Carrera 110', '67-89'),
('Santa Mónica', 'Calle 140', '12-34'),
('El Paraíso', 'Avenida 11', '78-90'),
('Bosque Alto', 'Carrera 90', '23-45'),
('La Marina', 'Carrera 120', '45-67');
--! ESTOS SON PROFESORES
INSERT INTO direccion (id_direccion, barrio, calle, numero_casa) VALUES
(41, 'Cabecera del Llano', 'Carrera 35', '54-67'),
(42, 'Laureles', 'Calle 70', '12-34'),
(43, 'San Francisco', 'Calle 44', '23-89'),
(44, 'Usaquén', 'Calle 116', '78-90'),
(45, 'Provenza', 'Calle 37', '45-78'),
(46, 'Envigado', 'Carrera 32', '56-78'),
(47, 'La Floresta', 'Avenida 29', '12-34'),
(48, 'El Poblado', 'Carrera 43A', '23-45'),
(49, 'Real de Minas', 'Carrera 33', '78-90'),
(50, 'Chapinero', 'Carrera 13', '45-67'),
(51, 'Centro', 'Calle 36', '12-45'),
(52, 'Provenza', 'Carrera 28', '78-90'),
(53, 'Ruitoque', 'Carrera 12A', '34-56'),
(54, 'Cañaveral', 'Calle 120', '56-78'),
(55, 'Floridablanca', 'Carrera 27', '23-45');


--~ 3. Poblando tabla facultad
INSERT INTO facultad (id_facultad, nombre) VALUES 
(1, 'Ciencias de la Salud'),
(2, 'Ciencias Jurídicas y Políticas'),
(3, 'Ciencias Sociales, Humanidades y Artes'),
(4, 'Economía y Negocios'),
(5, 'Ingeniería');



--~ 4. Poblando tabla edificio
INSERT INTO edificio (id_edificio, nombre, cantidad_pisos) VALUES 
(1, 'A', 3), -- Ciencias de la Salud
(2, 'B', 6), -- Ciencias de la Salud
(3, 'C', 4), -- Ciencias Jurídicas y Políticas
(4, 'D', 6), -- Ciencias Jurídicas y Políticas
(5, 'E', 3), -- Ciencias Sociales, Humanidades y Artes
(6, 'F', 5), -- Ciencias Sociales, Humanidades y Artes
(7, 'G', 3), -- Economía y Negocios
(8, 'H', 4), -- Economía y Negocios
(9, 'I', 5), -- Ingeniería
(10, 'J', 7); -- Ingeniería


--~ 5. Poblando tabla programa
INSERT INTO programa (id_programa, nombre, nivel) VALUES 
(1, 'Enfermeria', 1), -- Ciencias de la Salud
(2, 'Medicina', 1), -- Ciencias de la Salud
(3, 'Psicologia', 1), -- Ciencias de la Salud
(4, 'Derecho', 1), -- Ciencias Jurídicas y Políticas
(5, 'Artes Audiovisuales', 1), -- Ciencias Sociales, Humanidades y Artes
(6, 'Comunicación Social', 1), -- Ciencias Sociales, Humanidades y Artes
(7, 'Gastronomía y Alta Cocina', 1), -- Ciencias Sociales, Humanidades y Artes
(8, 'Música', 1), -- Ciencias Sociales, Humanidades y Artes
(9, 'Marketing', 1), -- Economía y Negocios
(10, 'Administración de Empresas', 1), -- Economía y Negocios
(11, 'Contaduría Publica', 1), -- Economía y Negocios
(12, 'Economía', 1), -- Economía y Negocios
(13, 'Ingeniería Biomédica', 1), -- Ingeniería
(14, 'Ingeniería de Sistemas', 1), -- Ingeniería
(15, 'Ingeniería Industrial', 1), -- Ingeniería
(16, 'Especializacion Medica en Oftalmologia', 2), 
(17, 'Especializacion en Derecho Comercial', 2),
(18, 'Especializacion en Educacion Inclusiva', 2),
(19, 'Especializacion en Direccion de Empresas', 2),
(20, 'Especializacion en Tecnologias Moviles', 2);


--~ 6. Poblando tabla periodo
INSERT INTO periodo (id_periodo, año, semestre) VALUES 
(1, 2021, 1),
(2, 2021, 2),
(3, 2022, 1),
(4, 2022, 2),
(5, 2023, 1),
(6, 2023, 2),
(7, 2024, 1),
(8, 2024, 2),
(9, 2025, 1),
(10, 2025, 2);


--~ 7. Poblando tabla bloqueHorario
INSERT INTO bloquehorario(id_bloqueHorario, hora_inicio, hora_fin) VALUES
(1, '06:00:00', '08:00:00'), -- jornada dia
(2, '08:00:00', '10:00:00'), -- jornada dia
(3, '10:00:00', '12:00:00'), -- jornada dia
(4, '14:00:00', '16:00:00'), -- jornada de la tarde
(5, '16:00:00', '18:00:00'), -- jornada de la tarde
(6, '18:00:00', '20:00:00'), -- jornada de la tarde
(7, '08:00:00', '09:00:00'), -- sueltos
(8, '9:00:00', '10:00:00'), -- sueltos
(9, '10:00:00', '11:00:00'), -- sueltos
(10, '11:00:00', '12:00:00'); -- sueltos


--~ 8. Poblando tabla salon
INSERT INTO salon (id_salon, capacidad_alumnos, piso, identificador, id_edificio) VALUES
(1, 32, 1, 'CSS', 1), -- Ciencias de la Salud
(2, 38, 2, 'CSS', 1), -- Ciencias de la Salud
(3, 38, 2, 'CSS', 1), -- Ciencias de la Salud
(4, 40, 3, 'CSS', 2), -- Ciencias de la Salud
(5, 38, 4, 'CSS', 2), -- Ciencias de la Salud
(6, 32, 5, 'CSS', 2), -- Ciencias de la Salud
(7, 40, 1, 'CJP', 3), -- Ciencias Jurídicas y Políticas
(8, 35, 2, 'CJP', 3), -- Ciencias Jurídicas y Políticas
(9, 40, 3, 'CJP', 3), -- Ciencias Jurídicas y Políticas
(10, 38, 4, 'CJP', 4), -- Ciencias Jurídicas y Políticas
(11, 40, 5, 'CJP', 4), -- Ciencias Jurídicas y Políticas
(12, 35, 5, 'CJP', 4), -- Ciencias Jurídicas y Políticas
(13, 30, 1, 'SHA', 5), -- Ciencias Sociales, Humanidades y Artes
(14, 37, 1, 'SHA', 5), -- Ciencias Sociales, Humanidades y Artes
(15, 30, 2, 'SHA', 5), -- Ciencias Sociales, Humanidades y Artes
(16, 37, 3, 'SHA', 6), -- Ciencias Sociales, Humanidades y Artes
(17, 30, 4, 'SHA', 6), -- Ciencias Sociales, Humanidades y Artes
(18, 37, 4, 'SHA', 6), -- Ciencias Sociales, Humanidades y Artes
(19, 44, 1, 'ENP', 7), -- Economía y Negocios
(20, 36, 2, 'ENP', 7), -- Economía y Negocios
(21, 44, 2, 'ENP', 7), -- Economía y Negocios
(22, 36, 3, 'ENP', 8), -- Economía y Negocios
(23, 44, 3, 'ENP', 8), -- Economía y Negocios
(24, 36, 4, 'ENP', 8), -- Economía y Negocios
(25, 39, 1, 'INF', 9), -- Ingeniería
(26, 43, 2, 'INF', 9), -- Ingeniería
(27, 39, 3, 'INF', 9), -- Ingeniería
(28, 43, 4, 'INF', 10), -- Ingeniería
(29, 43, 4, 'INF', 10), -- Ingeniería
(30, 43, 5, 'INF', 10); -- Ingeniería



--~ 9. Poblando tabla persona
INSERT INTO persona (tipo_documento, documento, nombres, apellidos, id_ciudad, id_direccion, telefono, fecha_nacimiento, sexo) VALUES
('CC', 1234567890, 'Juan', 'Gomez', 1, 1, '+57 3101234567', '1995-03-15', 'masculino'),
('CC', 2345678901, 'Maria', 'Hernandez', 2, 2, '+57 3202345678', '1994-07-20', 'femenino'),
('CC', 3456789012, 'Carlos', 'Rodriguez', 3, 3, '+57 3003456789', '1996-05-03', 'masculino'),
('TI', 4567890123, 'Laura', 'Garcia', 4, 4, '+57 3104567890', '2007-12-28', 'femenino'),
('CE', 5678901234, 'John', 'Smith', 5, 5, '+1 1234567890', '1992-09-10', 'masculino'),
('CE', 6789012345, 'Emily', 'Johnson', 1, 6, '+1 2345678901', '1995-06-25', 'femenino'),
('CE', 7890123456, 'Michael', 'Williams', 2, 7, '+1 3456789012', '1991-11-18', 'masculino'),
('CC', 8901234567, 'Jessica', 'Brown', 3, 8, '+57 3208901234', '1990-08-08', 'femenino'),
('CC', 9012345678, 'David', 'Martinez', 4, 9, '+57 3109876543', '1996-02-14', 'masculino'),
('CC', 0123456789, 'Sophia', 'Gonzalez', 5, 10, '+57 3108765432', '1994-04-30', 'femenino'),
('CE', 1234509876, 'William', 'Lee', 1, 11, '+1 4567890123', '1993-10-22', 'masculino'),
('CE', 2345098765, 'Olivia', 'Taylor', 2, 12, '+1 5678901234', '1995-08-14', 'femenino'),
('CC', 3450987654, 'Daniel', 'Johnson', 3, 13, '+57 3206789012', '1992-11-17', 'masculino'),
('CC', 4509876543, 'Emma', 'Hernandez', 4, 14, '+57 3105678901', '1994-06-20', 'femenino'),
('TI', 5609876543, 'Noah', 'Rodriguez', 5, 15, '+57 3104567890', '2008-03-07', 'masculino'),
('TI', 6709876543, 'Liam', 'Garcia', 1, 16, '+57 3203456789', '2007-09-28', 'masculino'),
('TI', 7809876543, 'Ava', 'Smith', 2, 17, '+1 1234567890', '2007-04-11', 3),
('CE', 8909876543, 'Mia', 'Johnson', 3, 18, '+1 2345678901', '1996-02-25', 'femenino'),
('CE', 9012876543, 'Alexander', 'Brown', 4, 19, '+1 3456789012', '1995-07-19', 'masculino'),
('CE', 1029876543, 'Charlotte', 'Martinez', 5, 20, '+57 3109876543', '1992-10-03', 'femenino'),
('CC', 2029876543, 'Logan', 'Gonzalez', 1, 21, '+57 3108765432', '1993-12-08', 3),
('CC', 3039876543, 'Isabella', 'Lee', 2, 22, '+1 4567890123', '1994-05-31', 'femenino'),
('CC', 4049876543, 'Ethan', 'Taylor', 3, 23, '+1 5678901234', '1991-08-27', 'masculino'),
('TI', 5059876543, 'Lucas', 'Johnson', 4, 24, '+57 3206789012', '2007-11-02', 'masculino'),
('TI', 6069876543, 'Mason', 'Hernandez', 5, 25, '+57 3105678901', '2007-03-15', 'masculino'),
('TI', 7079876543, 'Harper', 'Rodriguez', 1, 26, '+57 3204567890', '2008-06-20', 'femenino'),
('CE', 8089876543, 'Evelyn', 'Garcia', 2, 27, '+57 3103456789', '1994-09-28', 3),
('CE', 9099876543, 'Jackson', 'Smith', 3, 28, '+1 1234567890', '1995-02-11', 'masculino'),
('CE', 1009876543, 'Avery', 'Johnson', 4, 29, '+1 2345678901', '1993-05-25', 'femenino'),
('CC', 2009876543, 'Lily', 'Brown', 5, 30, '+1 3456789012', '1991-10-19', 'femenino'),
('CC', 3009876543, 'Jack', 'Martinez', 1, 31, '+57 3109876543', '1990-03-03', 'masculino'),
('CC', 4009876543, 'Madison', 'Gonzalez', 2, 32, '+57 3108765432', '1996-06-18', 'femenino'),
('TI', 5009876543, 'Scarlett', 'Lee', 3, 33, '+1 4567890123', '2007-09-11', 'femenino'),
('CC', 6009876543, 'Andres', 'Lopez', 1, 34, '+57 3101234567', '1993-07-30', 'masculino'),
('CC', 7009876543, 'Camila', 'Ramirez', 2, 35, '+57 3202345678', '1991-12-25', 'femenino'),
('CC', 8009876543, 'Santiago', 'Gonzalez', 3, 36, '+57 3003456789', '1992-08-10', 3),
('CC', 9009876543, 'Valentina', 'Martinez', 4, 37, '+57 3104567890', '1995-05-15', 'femenino'),
('CC', 1000987654, 'Mateo', 'Sanchez', 5, 38, '+57 3205678901', '1996-01-05', 'masculino'),
('CC', 2000987654, 'Isabella', 'Rodriguez', 1, 39, '+57 3106789012', '1993-04-20', 3),
('CC', 3000987654, 'Juan Jose', 'Hernandez', 2, 40, '+57 3207890123', '1994-10-12', 'masculino');
--! ESTOS SON PROFESORES
INSERT INTO persona (id_persona, tipo_documento, documento, nombres, apellidos, id_ciudad, id_direccion, telefono, fecha_nacimiento, sexo) VALUES
(41, 'CC', 1099567890, 'Jorge', 'Gómez', 7, 41, '+57 3101234567', '1975-05-15', 'masculino'),
(42, 'CC', 2005678901, 'María', 'Ramírez', 2, 42, '+57 3202345678', '1980-09-20', 'femenino'),
(43, 'CC', 3457739012, 'Luis', 'Rodríguez', 7, 43, '+57 3003456789', '1972-11-03', 'masculino'),
(44, 'CC', 4547830123, 'Ana', 'Martínez', 1, 44, '+57 3104567890', '1978-03-28', 'femenino'),
(45, 'CC', 5658961234, 'Carlos', 'López', 7, 45, '+57 3105678901', '1965-07-10', 'masculino'),
(46, 'CC', 6729017345, 'Laura', 'García', 2, 46, '+57 3206789012', '1970-01-25', 'femenino'),
(47, 'CC', 7840127456, 'Diego', 'Hernández', 7, 47, '+57 3007890123', '1982-08-18', 'masculino'),
(48, 'CC', 8901284767, 'Sandra', 'Martín', 2, 48, '+57 3108901234', '1976-04-08', 'femenino'),
(49, 'CC', 9014344678, 'Andrés', 'González', 7, 49, '+57 3209012345', '1974-12-14', 'masculino'),
(50, 'CC', 0126456789, 'Catalina', 'Díaz', 1, 50, '+57 3000123456', '1988-06-30', 'femenino'),
(51, 'CC', 1798028890, 'Pedro', 'González', 7, 51, '+57 3101112222', '1979-08-12', 'masculino'),
(52, 'CC', 2380382901, 'Luisa', 'Hernández', 7, 52, '+57 3202223333', '1985-03-25', 'femenino'),
(53, 'CC', 3803973012, 'Juan', 'Pérez', 7, 53, '+57 3003334444', '1970-11-15', 'masculino'),
(54, 'CC', 4569373123, 'Marcela', 'Díaz', 7, 54, '+57 3104445555', '1982-07-20', 'femenino'),
(55, 'CC', 5307949234, 'José', 'López', 7, 55, '+57 3105556666', '1977-01-05', 'masculino');



--~ 10. Poblando tabla profesor
INSERT INTO profesor (id_profesor, id_persona, id_facultad) VALUES
(1, 41, 1), -- José López, Ciencias de la Salud
(2, 42, 1), -- Marcela Díaz, Ciencias de la Salud
(3, 43, 1), -- Juan Pérez, Ciencias de la Salud
(4, 44, 2), -- Catalina Diaz, Ciencias Jurídicas y Políticas
(5, 45, 2), -- Pedro González, Ciencias Jurídicas y Políticas
(6, 46, 2), -- Luisa Hernández, Ciencias Jurídicas y Políticas
(7, 47, 3), -- Andrés González, Ciencias Sociales, Humanidades y Artes
(8, 48, 3), -- Sandra Martin, Ciencias Sociales, Humanidades y Artes
(9, 49, 3), -- Diego Hernández, Ciencias Sociales, Humanidades y Artes
(10, 50, 4), -- Catalina Díaz, Economía y Negocios
(11, 51, 4), -- Pedro González, Economía y Negocios
(12, 52, 4), -- Luisa Hernández, Economía y Negocios
(13, 53, 5), -- Juan Pérez, Ingenieria
(14, 54, 5), -- Marcela Díaz, Ingenieria
(15, 55, 5); -- José López, Ingenieria


--~ 11. Poblando tabla alumno
INSERT INTO alumno (id_alumno, id_persona, id_programa) VALUES
(1, 1, 1),  -- Juan Gómez - Enfermeria
(2, 2, 1),  -- María Hernández - Enfermeria
(3, 3, 2),  -- Carlos Rodríguez - Medicina
(4, 4, 2),  -- Laura García - Medicina
(5, 5, 3),  -- John Smith - Psicologia
(6, 6, 3),  -- Emily Johnson - Psicologia
(7, 7, 4),  -- Michael Williams - Derecho
(8, 8, 4),  -- Jessica Brown - Derecho
(9, 9, 5),  -- David Martínez - Artes Audiovisuales
(10, 10, 5), -- Sophia González - Artes Audiovisuales
(11, 11, 6), -- William Lee - Comunicación Social
(12, 12, 6), -- Olivia Taylor - Comunicación Social
(13, 13, 7), -- Daniel Johnson - Gastronomía y Alta Cocina
(14, 14, 7), -- Emma Hernández - Gastronomía y Alta Cocina
(15, 15, 8), -- Noah Rodríguez - Música
(16, 16, 8), -- Liam García - Música
(17, 17, 9), -- Ava Smith - Marketing
(18, 18, 9), -- Mia Johnson - Marketing
(19, 19, 10),-- Alexander Brown - Administración de Empresas
(20, 20, 10),-- Charlotte Martínez - Administración de Empresas
(21, 21, 11),-- Logan González - Contaduría Publica
(22, 22, 11),-- Isabella Lee - Contaduría Publica
(23, 23, 12),-- Ethan Taylor - Economía
(24, 24, 12),-- Lucas Johnson - Economía
(25, 25, 13),-- Mason Hernández - Ingeniería Biomédica
(26, 26, 13),-- Harper Rodríguez - Ingeniería Biomédica
(27, 27, 14),-- Evelyn García - Ingeniería de Sistemas
(28, 28, 14),-- Jackson Smith - Ingeniería de Sistemas
(29, 29, 15),-- Avery Johnson - Ingeniería Industrial
(30, 30, 15),-- Lily Brown - Ingeniería Industrial
(31, 31, 16), -- Jack Martínez - Especializacion Medica en Oftalmologia
(32, 32, 16), -- Madison González - Especializacion Medica en Oftalmologia
(33, 33, 16), -- Scarlett Lee - Especializacion en Derecho Comercial
(34, 34, 17), -- Andrés López - Especializacion en Derecho Comercial
(35, 35, 18), -- Camila Ramírez - Especializacion en Educacion Inclusiva
(36, 36, 18), -- Santiago González - Especializacion en Educacion Inclusiva
(37, 37, 19), -- Valentina Martínez - Especializacion en Direccion de Empresas
(38, 38, 19), -- Mateo Sánchez - Especializacion en Direccion de Empresas
(39, 39, 20), -- Isabella Rodríguez - Especializacion en Tecnologias Moviles
(40, 40, 20); -- Juan José Hernández - Especializacion en Tecnologias Moviles



--~ 12. Poblando tabla curso
INSERT INTO curso(id_curso, nombre, temas, competencias) VALUES
(1, 'fundamentos cuidado holistico', 'Introducción al cuidado holístico, Dimensiones del ser humano, Modelos de atención holística','Comprensión del enfoque holístico, Habilidades de comunicación, Pensamiento crítico y reflexivo'),
(2, 'Psicología del Cuidado Holístico', 'Interacción entre psicología y salud holística, Estrategias psicológicas para el manejo del estrés y el dolor, Integración de principios psicológicos en la práctica del cuidado holístico', ' Comprender cómo los aspectos psicológicos influyen en la salud y el bienestar, Aplicar estrategias psicológicas para mejorar el bienestar emocional y mental, Integrar principios de psicología en la práctica del cuidado holístico'),
(3, 'Regulación y Señalización Celular', 'Mecanismos de Transducción de Señales Celulares, Regulación Epigenética de la Expresión Génica, Interacciones Proteína-Proteína en la Comunicación Celular, ', 'Análisis de transducción de señales celulares, Interpretación de regulación epigenética, Aplicación de técnicas experimentales en interacciones proteína-proteína.'),
(4, 'Biología Molecular de Enfermedades', 'Bases Moleculares de las Enfermedades Genéticas, Factores de Riesgo Ambientales en la Patogénesis de Enfermedades, Terapias Moleculares y Farmacogenómica', 'Identificación de bases moleculares de enfermedades genéticas, Análisis de impacto de factores de riesgo ambientales en patogénesis de enfermedades, Diseño de estrategias de terapias moleculares basadas en farmacogenómica.'),
(5, 'Promoción de la Salud y Prevención de Enfermedades', 'Epidemiología y Estadísticas de Salud, Determinantes Sociales de la Salud, Planificación y Evaluación de Programas de Salud', 'Análisis de datos epidemiológicos, Identificación de factores determinantes de salud, Diseño y evaluación de intervenciones de salud pública'),
(6, 'Gestión de Servicios de Salud', 'Organización y Administración de Servicios de Salud, Financiamiento y Economía de la Salud, Calidad y Seguridad en la Atención de la Salud', 'Planificación y gestión de recursos en servicios de salud, Análisis financiero en sistemas de salud, Implementación de medidas de calidad y seguridad en atención de salud'),
(7, 'Fisiopatología de Enfermedades', 'Mecanismos moleculares de enfermedades, Alteraciones celulares y tisulares en patologías, Manifestaciones clínicas de enfermedades', 'Interpretar los mecanismos moleculares subyacentes a las enfermedades, Analizar las alteraciones celulares y tisulares asociadas a las patologías, Reconocer las manifestaciones clínicas de diversas enfermedades'),
(8, 'Diagnóstico y Tratamiento de Enfermedades', 'Técnicas de diagnóstico médico, Estrategias terapéuticas en enfermedades, Avances en medicina personalizada', 'Aplicar técnicas de diagnóstico médico de manera efectiva, Diseñar estrategias terapéuticas adecuadas para diversas enfermedades, Mantenerse actualizado sobre los avances en medicina personalizada'),
(9, 'Abordaje Interdisciplinario de Problemas Sociales', 'Análisis de problemáticas sociales desde distintas disciplinas, Diseño de estrategias de intervención social, Evaluación de impacto de intervenciones sociales', 'Identificar y comprender problemáticas sociales desde múltiples perspectivas disciplinarias, Planificar intervenciones sociales efectivas, Evaluar el impacto de las intervenciones sociales en comunidades específicas'),
(10, 'Integración de Tecnologías en la Educación', 'Aplicaciones tecnológicas en procesos educativos, Diseño de entornos virtuales de aprendizaje, Evaluación de la efectividad de la integración tecnológica en la enseñanza', 'Utilizar herramientas tecnológicas para mejorar procesos educativos, Desarrollar entornos virtuales de aprendizaje efectivos, Evaluar la eficacia de la integración de tecnologías en la enseñanza'),
(11, 'Neurobiología del Comportamiento', 'Bases neuroanatómicas del comportamiento, Funcionamiento de neurotransmisores en la conducta, Impacto de lesiones cerebrales en el comportamiento', 'Comprender la relación entre la estructura cerebral y el comportamiento, Analizar el papel de los neurotransmisores en la regulación del comportamiento, Evaluar el efecto de las lesiones cerebrales en la conducta'),
(12, 'Genética del Comportamiento', 'Herencia de rasgos conductuales, Estudio de genes relacionados con la conducta, Influencia del ambiente en la expresión génica conductual', 'Entender los principios de la herencia de rasgos conductuales, Analizar la relación entre genes específicos y comportamientos, Evaluar cómo el ambiente modula la expresión de genes conductuales'),
(13, 'Comunicación Efectiva', 'Técnicas de comunicación verbal y no verbal, Desarrollo de habilidades de escucha activa, Estrategias para presentaciones efectivas', 'Dominar técnicas de comunicación para transmitir mensajes de manera clara y efectiva, Mejorar la capacidad de escuchar y comprender a los demás, Desarrollar habilidades para presentaciones impactantes'),
(14, 'Escritura Creativa', 'Técnicas de escritura literaria, Exploración de géneros literarios, Desarrollo de la creatividad en la escritura', 'Aprender y aplicar técnicas de escritura para diversos géneros literarios, Experimentar con la creatividad en la composición de textos, Mejorar la capacidad de expresión escrita de forma creativa y original'),
(15, 'Teoría de la Constitución', 'Orígenes y evolución de las constituciones, Principios constitucionales, Sistemas de gobierno y división de poderes', 'Analizar el desarrollo histórico de las constituciones, Comprender los principios fundamentales que rigen las constituciones, Evaluar los diferentes sistemas de gobierno y la separación de poderes'),
(16, 'Derechos y Garantías Constitucionales', 'Derechos fundamentales en la constitución, Mecanismos de protección de derechos, Limitaciones y excepciones a los derechos constitucionales', 'Interpretar y aplicar los derechos fundamentales consagrados en la constitución, Conocer los mecanismos legales para proteger los derechos constitucionales, Analizar las limitaciones y excepciones a los derechos en situaciones específicas'),
(17, 'Historia del Arte', 'Desarrollo de movimientos artísticos a lo largo del tiempo, Estudio de obras y artistas representativos, Contexto socio-cultural de la producción artística', 'Analizar la evolución del arte a través de diferentes épocas y culturas, Identificar obras y artistas significativos en la historia del arte, Comprender el impacto del contexto socio-cultural en la producción artística'),
(18, 'Estética y Crítica de Arte', 'Teorías estéticas y filosofía del arte, Análisis crítico de obras de arte, Interpretación y valoración estética', 'Explorar y comprender diversas teorías estéticas y filosóficas, Desarrollar habilidades para analizar críticamente obras de arte, Reflexionar sobre la interpretación y valoración estética de la creación artística'),
(19, 'Narrativa Literaria', 'Elementos de la narrativa (personajes, trama, punto de vista), Técnicas de construcción narrativa (diálogo, descripción, narrador), Géneros narrativos (novela, cuento, relato)', 'Identificar y analizar los elementos constitutivos de la narrativa literaria, Aplicar técnicas de construcción narrativa en la escritura creativa, Reconocer y diferenciar los distintos géneros narrativos'),
(20, 'Descripción Escénica y Pictórica', 'Técnicas de descripción de escenarios y ambientes, Representación verbal de imágenes y pinturas, Función de la descripción en diferentes contextos literarios y artísticos', 'Desarrollar habilidades para describir escenas y ambientes de manera vívida y evocadora, Utilizar el lenguaje para representar visualmente imágenes y obras pictóricas, Analizar el papel de la descripción en la literatura y en otras formas de expresión artística'),
(21, 'Comunicación Escrita Efectiva', 'Reglas gramaticales y sintácticas, Estructura y organización de textos, Estilo y claridad en la escritura', 'Dominio de la gramática y la sintaxis, Capacidad para estructurar y redactar textos coherentemente, Habilidad para comunicar de manera clara y efectiva'),
(22, 'Edición y Corrección de Textos', 'Técnicas de corrección ortográfica y gramatical, Análisis de estilo y tono en la escritura, Herramientas y software de edición de texto', 'Habilidad para identificar y corregir errores ortográficos y gramaticales, Capacidad para mejorar el estilo y la coherencia en los textos, Destreza en el uso de herramientas de edición y corrección de textos'),
(23, 'Teorías Clásicas de la Comunicación', 'Modelo lineal de comunicación, Teoría de la persuasión, Teoría de la agenda-setting', 'Comprender el modelo lineal de comunicación y sus críticas, Analizar la teoría de la persuasión y sus aplicaciones en la publicidad, Estudiar la teoría de la agenda-setting y su influencia en los medios de comunicación'),
(24, 'Enfoques Contemporáneos de la Comunicación', 'Teoría de la comunicación digital, Teoría de la espiral del silencio, Teoría de la economía política de la comunicación', 'Explorar la influencia de la comunicación digital en la sociedad actual, Analizar la teoría de la espiral del silencio y su relación con la opinión pública, Estudiar la teoría de la economía política de la comunicación y sus implicaciones en los medios de comunicación'),
(25, 'Seguridad Alimentaria y Normativas Sanitarias', 'Principios de higiene y manipulación de alimentos, Normativas sanitarias y estándares de calidad, Prevención de riesgos alimentarios y contaminación', 'Aplicación de medidas de higiene y seguridad en la manipulación de alimentos, Conocimiento y cumplimiento de las normativas sanitarias vigentes, Capacidad para identificar y prevenir riesgos de contaminación alimentaria'),
(26, 'Técnicas de Conservación de Alimentos', 'Métodos de conservación de alimentos: refrigeración, congelación, deshidratación, enlatado, Conservación mediante aditivos y procesos químicos, Estrategias de conservación en la industria alimentaria', 'Dominio de técnicas de conservación de alimentos para mantener su calidad y seguridad, Capacidad para seleccionar y aplicar el método de conservación adecuado según el tipo de alimento, Habilidad para implementar técnicas de conservación en entornos industriales y domésticos'),
(27, 'Técnicas de Cocina Fundamentales', 'Preparación de alimentos básicos, Métodos de cocción básicos, Principios de seguridad e higiene en la cocina', 'Dominar técnicas de preparación de alimentos básicos, Aplicar métodos de cocción esenciales, Garantizar la seguridad e higiene en el ambiente de trabajo en la cocina'),
(28, 'Menús y Presentación de Platos', 'Diseño de menús equilibrados, Técnicas de presentación de platos, Decoración culinaria', 'Elaborar menús balanceados y atractivos, Aplicar técnicas de presentación para resaltar los platos, Mejorar la estética de los platos a través de la decoración culinaria'),
(29, 'Técnica Instrumental Avanzada', 'Dominio técnico del instrumento, Ejercicios de digitación y posición, Desarrollo de habilidades de interpretación musical', 'Mejorar la destreza y fluidez en la ejecución del instrumento, Perfeccionar la precisión y la postura al tocar, Interpretar obras musicales con expresividad y musicalidad'),
(30, 'Repertorio y Estilos Musicales', 'Estudio de obras representativas para el instrumento, Exploración de diferentes estilos musicales, Interpretación de partituras y arreglos', 'Ampliar el repertorio musical del instrumentista, Conocer y experimentar con diversos estilos musicales, Interpretar con fidelidad y estilo las obras seleccionadas'),
(31, 'Historia de la Música', 'Desarrollo de la música a lo largo de la historia, Estudio de géneros y corrientes musicales, Contexto socio-cultural de la producción musical', 'Analizar la evolución de la música en diferentes épocas y culturas, Reconocer y comprender los géneros y estilos musicales, Relacionar la música con su contexto socio-cultural'),
(32, 'Música y Sociedad', 'Impacto de la música en la sociedad, Estudio de la música popular y su influencia, Análisis de la relación entre música y política', 'Comprender el papel de la música como fenómeno social, Analizar la influencia de la música popular en la cultura contemporánea, Reflexionar sobre la relación entre la música y el poder político'),
(33, 'Principios Básicos del Marketing', 'Conceptos fundamentales de marketing, Análisis del mercado y el consumidor, Estrategias de marketing mix', 'Comprender los principios esenciales del marketing, Analizar el comportamiento del mercado y del consumidor, Diseñar estrategias de marketing efectivas'),
(34, 'Marketing Digital y Redes Sociales', 'Herramientas del marketing digital, Estrategias de presencia en redes sociales, Análisis de métricas y resultados', 'Dominar las herramientas del marketing digital, Desarrollar estrategias efectivas para la presencia en redes sociales, Evaluar y mejorar el rendimiento a través del análisis de métricas'),
(35, 'Principios de Administración Empresarial', 'Conceptos fundamentales de negocios, Funciones básicas de administración, Tipos de organizaciones empresariales', 'Comprender los principios básicos del mundo empresarial, Desarrollar habilidades de gestión y administración, Conocer la diversidad de organizaciones empresariales'),
(36, 'Planificación Estratégica Empresarial', 'Análisis del entorno empresarial, Formulación de objetivos y estrategias, Implementación y control de planes estratégicos', 'Analizar el entorno empresarial para la toma de decisiones estratégicas, Diseñar planes estratégicos alineados con los objetivos empresariales, Evaluar y ajustar la implementación de planes estratégicos'),
(37, 'Gestión de Recursos Humanos', 'Proceso de reclutamiento y selección de personal, Desarrollo y capacitación de empleados, Evaluación del desempeño y gestión del talento', 'Aplicar técnicas efectivas de reclutamiento y selección de personal, Implementar programas de desarrollo y capacitación para empleados, Evaluar el desempeño y gestionar el talento humano de manera eficiente'),
(38, 'Finanzas Corporativas', 'Principios de finanzas empresariales, Análisis financiero y toma de decisiones, Administración del capital de trabajo y financiamiento', 'Comprender los fundamentos financieros de las empresas, Analizar estados financieros para la toma de decisiones, Gestionar eficientemente el capital de trabajo y las fuentes de financiamiento'),
(39, 'Contabilidad para la Toma de Decisiones', 'Principios contables básicos, Preparación y análisis de estados financieros, Uso de la contabilidad como herramienta de gestión', 'Aplicar los principios contables en la preparación y análisis de estados financieros, Utilizar la contabilidad como herramienta para la toma de decisiones empresariales, Interpretar la información contable para mejorar la gestión empresarial'),
(40, 'Ética Empresarial y Responsabilidad Social Corporativa', 'Principios éticos en los negocios, Desarrollo sostenible y responsabilidad social, Casos prácticos de ética empresarial', 'Comprender y aplicar principios éticos en el entorno empresarial, Integrar la responsabilidad social corporativa en la estrategia empresarial, Analizar casos prácticos para tomar decisiones éticas en los negocios'),
(41, 'Derecho Comercial', 'Conceptos fundamentales del derecho comercial, Tipos de sociedades y su regulación, Contratos comerciales y derecho de los consumidores', 'Comprender los principios del derecho comercial, Conocer la regulación de las diferentes formas de sociedades, Dominar los aspectos legales de los contratos comerciales y la protección al consumidor'),
(42, 'Gestión de Proyectos', 'Ciclo de vida de un proyecto, Planificación y programación de proyectos, Gestión de riesgos y calidad', 'Aplicar las etapas del ciclo de vida de un proyecto, Desarrollar planes y programaciones efectivas, Gestionar riesgos y asegurar la calidad en la ejecución del proyecto'),
(43, 'Liderazgo y Trabajo en Equipo', 'Teorías y estilos de liderazgo, Dinámicas de trabajo en equipo, Resolución de conflictos y toma de decisiones', 'Comprender las teorías y estilos de liderazgo, Fomentar la colaboración y cohesión en equipos de trabajo, Resolver conflictos y tomar decisiones efectivas para el logro de objetivos comunes'),
(44, 'Negociación y Resolución de Conflictos', 'Estrategias y técnicas de negociación, Gestión de conflictos interpersonales, Mediación y arbitraje', 'Aplicar estrategias de negociación para obtener acuerdos beneficiosos, Gestionar conflictos de manera constructiva en distintos contextos, Actuar como mediador o árbitro en situaciones de conflicto'),
(45, 'Economía Internacional', 'Teorías del comercio internacional, Políticas comerciales y barreras arancelarias, Integración económica y globalización', 'Analizar las teorías que explican el comercio internacional, Evaluar el impacto de las políticas comerciales y las barreras arancelarias, Comprender los procesos de integración económica y los efectos de la globalización'),
(46, 'Macroeconomía', 'Indicadores macroeconómicos, Funcionamiento del mercado de bienes y dinero, Política fiscal y monetaria', 'Interpretar los principales indicadores macroeconómicos, Analizar el funcionamiento del mercado de bienes y dinero en una economía, Evaluar el impacto de la política fiscal y monetaria en la actividad económica'),
(47, 'Microeconomía', 'Oferta y demanda de bienes y servicios, Teoría del consumidor y del productor, Equilibrio del mercado y competencia imperfecta', 'Aplicar conceptos de oferta y demanda en la toma de decisiones económicas, Comprender el comportamiento del consumidor y del productor, Analizar el equilibrio del mercado en diferentes estructuras de mercado'),
(48, 'Psicología Organizacional', 'Clima y cultura organizacional, Motivación y satisfacción laboral, Comunicación y liderazgo en las organizaciones', 'Evaluar el clima y la cultura organizacional para promover el bienestar laboral, Comprender los factores que influyen en la motivación y la satisfacción de los empleados, Mejorar la comunicación y el liderazgo dentro de las organizaciones'),
(49, 'Desarrollo Humano y Organizacional', 'Teorías del desarrollo humano, Aprendizaje organizacional y gestión del cambio, Desarrollo de competencias y carrera profesional', 'Aplicar teorías del desarrollo humano en el ámbito organizacional, Promover el aprendizaje y la adaptación al cambio dentro de las organizaciones, Desarrollar competencias y planificar la carrera profesional de los empleados'),
(50, 'Gestión de la Innovación y la Tecnología', 'Proceso de innovación y gestión del conocimiento, Estrategias de introducción de nuevas tecnologías, Cultura de la innovación y la creatividad', 'Fomentar la innovación y la transferencia de conocimiento en las organizaciones, Implementar estrategias para la adopción de nuevas tecnologías, Promover una cultura que estimule la creatividad y la innovación'),
(51, 'Diseño de Productos y Servicios', 'Análisis de mercado y diseño centrado en el usuario, Desarrollo de productos y servicios innovadores, Gestión del ciclo de vida de los productos', 'Identificar oportunidades de mercado y necesidades de los usuarios para el diseño de productos y servicios, Desarrollar soluciones innovadoras que agreguen valor a los clientes, Gestionar eficientemente el ciclo de vida de los productos desde su concepción hasta su retirada del mercado'),
(52, 'Marketing Estratégico', 'Segmentación, posicionamiento y diferenciación de mercado, Desarrollo y gestión de marcas, Marketing internacional', 'Elaborar estrategias de segmentación, posicionamiento y diferenciación para llegar al mercado objetivo, Gestionar marcas sólidas y desarrollar campañas de marketing efectivas, Adaptar estrategias de marketing al entorno internacional y a las características de los mercados globales'),
(53, 'Investigación de Mercados', 'Métodos de recopilación y análisis de datos, Técnicas de investigación cualitativa y cuantitativa, Aplicaciones de la investigación de mercados en la toma de decisiones', 'Seleccionar y aplicar métodos y técnicas de investigación de mercados para obtener información relevante, Analizar datos cualitativos y cuantitativos para comprender el comportamiento del consumidor, Utilizar los resultados de la investigación de mercados para la toma de decisiones comerciales'),
(54, 'Comercio Electrónico', 'Modelos de negocio en línea, Plataformas y tecnologías de comercio electrónico, Marketing y seguridad en el comercio electrónico', 'Conocer los diferentes modelos de negocio en línea y las plataformas de comercio electrónico disponibles, Utilizar estrategias de marketing digital para promocionar productos y servicios en línea, Implementar medidas de seguridad para proteger las transacciones en el comercio electrónico'),
(55, 'Logística y Cadena de Suministro', 'Gestión de inventarios y almacenes, Transporte y distribución de productos, Optimización de la cadena de suministro', 'Planificar y gestionar eficientemente los inventarios y almacenes de una empresa, Coordinar el transporte y la distribución de productos para asegurar la entrega oportuna, Optimizar la cadena de suministro para reducir costos y mejorar la eficiencia operativa'),
(56, 'Gestión de la Calidad', 'Principios y herramientas de calidad total, Normativas y certificaciones de calidad, Mejora continua y gestión de procesos', 'Aplicar los principios de calidad total para satisfacer las expectativas del cliente, Cumplir con las normativas y obtener certificaciones de calidad reconocidas, Implementar procesos de mejora continua para aumentar la eficiencia y la calidad en la organización'),
(57, 'Gestión Ambiental', 'Impacto ambiental de las actividades humanas, Normativas ambientales y gestión de residuos, Responsabilidad social empresarial y sostenibilidad', 'Evaluar y mitigar el impacto ambiental de las actividades de una organización, Cumplir con las normativas ambientales y gestionar adecuadamente los residuos, Integrar prácticas de responsabilidad social y sostenibilidad en la gestión empresarial'),
(58, 'Gestión de Recursos Humanos', 'Procesos de reclutamiento y selección de personal, Evaluación del desempeño y desarrollo profesional, Retribución y beneficios laborales', 'Diseñar e implementar procesos efectivos de reclutamiento y selección de personal, Evaluar el desempeño y promover el desarrollo profesional de los empleados, Administrar la retribución y los beneficios laborales de manera justa y equitativa'),
(59, 'Gestión Financiera', 'Análisis e interpretación de estados financieros, Planificación financiera y presupuestos, Evaluación de proyectos de inversión', 'Interpretar la información financiera para la toma de decisiones empresariales, Elaborar planes financieros y presupuestos que aseguren la viabilidad económica, Evaluar la rentabilidad y el riesgo de los proyectos de inversión para maximizar el valor de la empresa'),
(60, 'Gestión Estratégica', 'Análisis del entorno competitivo y la cadena de valor, Formulación y ejecución de estrategias empresariales, Control y evaluación del desempeño estratégico', 'Analizar el entorno empresarial y la cadena de valor para identificar oportunidades y amenazas, Formular e implementar estrategias que generen ventajas competitivas sostenibles, Controlar y evaluar el desempeño estratégico para garantizar el logro de los objetivos organizacionales');



--~ 13. Poblando tabla asignatura
INSERT INTO asignatura (id_asignatura, nombre, creditos, cupo_disponible, id_programa) VALUES
(1, 'cuidado holistico', 4, 32, 1), -- enfermeria
(2, 'Biología Celular y Molecular Avanzada', 8, 32, 1),
(3, 'salud publica', 11, 38, 2), -- medicina
(4, 'procesos patologicos', 6, 38, 2),
(5, 'nucleo integrador', 3, 32, 3), -- psicologia
(6, 'psicobiologia', 4, 32, 3),
(7, 'expresion', 4, 30, 4), -- derecho
(8, 'teoria constitucional', 4, 30, 4),
(9, 'manifestaciones del arte', 3, 37, 5), -- artes audiovisuales
(10, 'narracion y descripcion', 3, 37, 5),
(11, 'redaccion y gramatica', 2, 30, 6), -- comunicacions social
(12, 'teorias de la comunicacion', 2, 30, 6),
(13, 'conservacion y manipulacion de alimentos', 3, 30, 7), -- gastronomia
(14, 'cocina basica', 3, 30, 7),
(15, 'instrumento ', 4, 30, 8), -- musica
(16, 'musicas y contextos I', 3, 30, 8),
(17, 'fundamentos de marketing', 4, 30, 9), -- marketing
(18, 'introduccion a los negocios', 3, 30, 9),
(19, 'estados financieros', 3, 36, 10), -- administración Empresas
(20, 'pensando problemas', 2, 36, 10),
(21, 'ciclo contable', 4, 36, 11), -- contaduría publica
(22, 'derecho publico general y laboral', 4, 36, 11),
(23, 'principios de microeconomia', 4, 36, 12), -- economia
(24, 'historia del pensamiento economico i', 4, 36, 12),
(25, 'biologia estructural', 2, 39, 13), -- ingenieria biomédica
(26, 'laboratorio bioquimica', 3, 39, 13),
(27, 'fundamentos de programacion', 3, 39, 14), -- ingenieria sistemas
(28, 'calculo diferencial', 4, 39, 14),
(29, 'quimica', 3, 43, 15), -- ingenieria industrial
(30, 'fisica mecanica y laboratorio', 4, 43, 15);



--~ 14. Poblando tabla tarifa
INSERT INTO tarifa (id_tarifa, valor_credito, id_programa, id_periodo) VALUES
(1, 231492245, 1, 1), -- Enfermeria
(2, 366609641, 2, 1), -- Medicina
(3, 291642312, 3, 1), -- Psicologia
(4, 238206122, 4, 1), -- Derecho
(5, 274084863, 5, 1), -- Artes Audiovisuales
(6, 295112727, 6, 1), -- Comunicación Social
(7, 354654376, 7, 1), -- Gastronomía y Alta Cocina
(8, 242286181, 8, 1), -- Musica
(9, 261927961, 9, 1), -- Marketing
(10, 295112727, 10, 1), -- Administración de Empresas
(11, 366609641, 11, 1), -- Contaduría Publica
(12, 215793249, 12, 1), -- Economía
(13, 306580514, 13, 1), -- Ingeniería Biomédica
(14, 266377603, 14, 1), -- Ingeniería de Sistemas
(15, 273341892, 15, 1), -- Ingeniería Industrial
(16, 82274836, 16, 1), -- Especializacion Medica en Oftalmologia
(17, 585184386, 17, 1), -- Especializacion en Derecho Comercial
(18, 433026416, 18, 1), -- Especializacion en Educacion Inclusiva
(19, 574186579, 19, 1), -- Especializacion en Direccion de Empresas
(20, 585184386, 20, 1); -- Especializacion en Tecnologias Moviles
--! ESTOS SON PRECIOS DE LOS PERIODOS 2021-02 a 2023-02
CALL IncrementarPrecio_tarifa(1, 5, 2); 
CALL IncrementarPrecio_tarifa(2, 5, 3); 
CALL IncrementarPrecio_tarifa(3, 5, 4); 
CALL IncrementarPrecio_tarifa(4, 5, 5); 
CALL IncrementarPrecio_tarifa(5, 5, 6); 

--! ESTOS SON PRECIOS DEL PERIODO 1 DEL 2024
INSERT INTO tarifa (valor_credito, id_programa, id_periodo) VALUES
(336000, 1, 7), -- Enfermeria
(533000, 2, 7), -- Medicina
(424300, 3, 7), -- Psicologia
(347000, 4, 7), -- Derecho
(451000, 5, 7), -- Artes Audiovisuales
(428000, 6, 7), -- Comunicación Social
(515000, 7, 7), -- Gastronomía y Alta Cocina
(352000, 8, 7), -- Musica
(381000, 9, 7), -- Marketing
(428000, 10, 7), -- Administración de Empresas
(533000, 11, 7), -- Contaduría Publica
(314000, 12, 7), -- Economía
(445000, 13, 7), -- Ingeniería Biomédica
(387000, 14, 7), -- Ingeniería de Sistemas
(397000, 15, 7), -- Ingeniería Industrial
(120000, 16, 7), -- Especializacion Medica en Oftalmologia
(850000, 17, 7), -- Especializacion en Derecho Comercial
(630000, 18, 7), -- Especializacion en Educacion Inclusiva
(835000, 19, 7), -- Especializacion en Direccion de Empresas
(850000, 20, 7); -- especializacion en Tecnologias Moviles




--~ 15. Poblando tabla asignaturaPeriodo
INSERT INTO asignaturaPeriodo(id_asignatura, id_profesor, id_periodo) VALUES
(1, 1, 7), -- P2024-01 - fundamentos del cuidado holístico (enfermería)
(2, 1, 7), -- P2024-01 - procesos biológicos celulares y moleculares (enfermería)
(3, 2, 7), -- P2024-01 - biología celular y molecular (medicina)
(4, 2, 7), -- P2024-01 - fundamentos en salud pública (medicina)
(5, 3, 7), -- P2024-01 - introducción a la psicología (psicología)
(6, 3, 7), -- P2024-01 - psicobiología (psicología)
(7, 4, 7), -- P2024-01 - expresión (derecho)
(8, 4, 7), -- P2024-01 - teoría constitucional (derecho)
(9, 9, 7), -- P2024-01 - manifestaciones del arte clásico (artes audiovisuales)
(10, 9, 7), -- P2024-01 - narración y descripción (artes audiovisuales)
(11, 6, 7), -- P2024-01 - redacción y gramática (comunicaciones sociales)
(12, 6, 7), -- P2024-01 - teorías de la comunicación (comunicaciones sociales)
(13, 7, 7), -- P2024-01 - conservación y manipulación de alimentos (gastronomía)
(14, 7, 7), -- P2024-01 - cocina básica (gastronomía)
(15, 8, 7), -- P2024-01 - instrumento I (música)
(16, 8, 7), -- P2024-01 - músicas y contextos I (música)
(17, 11, 7), -- P2024-01 - fundamentos de marketing (marketing)
(18, 11, 7), -- P2024-01 - introducción a los negocios (marketing)
(19, 10, 7), -- P2024-01 - estados financieros (administración de empresas)
(20, 10, 7), -- P2024-01 - pensando problemas (administración de empresas)
(21, 5, 7), -- P2024-01 - ciclo contable (contaduría pública)
(22, 5, 7), -- P2024-01 - derecho público general y laboral (contaduría pública)
(23, 12, 7), -- P2024-01 - principios de microeconomía (economía)
(24, 12, 7), -- P2024-01 - historia del pensamiento económico I (economía)
(25, 13, 7), -- P2024-01 - biología estructural (ingeniería biomédica)
(26, 13, 7), -- P2024-01 - laboratorio bioquímica (ingeniería biomédica)
(27, 14, 7), -- P2024-01 - fundamentos de programación (ingeniería de sistemas)
(28, 14, 7), -- P2024-01 - cálculo diferencial (ingeniería de sistemas)
(29, 15, 7), -- P2024-01 - química (ingeniería industrial)
(30, 15, 7); -- P2024-01 - física mecánica y laboratorio (ingeniería industrial)



--~ poblando la tabla horarios
--! HORARIOS ASIGNATURAS QUE PODRIA SER DE UN ENFERMERO
INSERT INTO horario(dia, id_bloqueHorario, id_salon, id_asignaturaPeriodo) VALUES
('lunes', 1, 3, 2), -- ['06:00:00--08:00:00'] - procesos biologicos celulares y moleculares
('lunes', 2, 25, 28), -- ['08:00:00--10:00:00'] - calculo
('martes', 1, 2, 1), -- ['06:00:00--08:00:00'] - fundamentos del cuidado holistico 
('martes', 2, 27, 25), -- ['08:00:00--10:00:00'] - biologia estructural
('miercoles', 1, 1, 2), -- ['06:00:00--08:00:00'] - procesos biologicos celulares y moleculares
('miercoles', 2, 9, 7), -- ['08:00:00--10:00:00'] - expresion
('jueves', 1, 5, 1), -- ['06:00:00--08:00:00'] - fundamentos del cuidado holistico 
('jueves', 2, 26, 28), -- ['08:00:00--10:00:00'] - calculo
('jueves', 9, 28, 25), -- ['10:00:00--11:00:00'] - biologia estructural
('viernes', 7, 5, 2), -- ['8:00:00--09:00:00'] - procesos biologicos celulares y moleculares
('viernes', 8, 6, 1), -- ['09:00:00--10:00:00'] - fundamentos del cuidado holistico 
('viernes', 3, 10, 7); -- ['10:00:00--12:00:00'] - expresion
--! HORARIOS ASIGNATURAS QUE PODRIA SER DE UN INGENIERO
INSERT INTO horario(dia, id_bloqueHorario, id_salon, id_asignaturaPeriodo) VALUES
('lunes', 1, 10, 7), -- ['06:00:00--08:00:00'] - expresion 
('lunes', 7, 15, 15), -- ['08:00:00--09:00:00'] -  Instrumento I
('lunes', 3, 27, 27), -- ['10:00:00--12:00:00'] - fundamentos de programacion
('martes', 2, 30, 28), -- ['08:00:00--10:00:00'] - calculo
('martes', 3, 28, 30), -- ['10:00:00--12:00:00'] - fisica mecanica y laboratorio 30
('miercoles', 7, 16, 15), -- ['07:00:00--08:00:00'] - instrumento I
('miercoles', 8, 29, 27), -- ['09:00:00--10:00:00'] - fundamentos de programacion
('miercoles', 3, 10, 7), -- ['10:00:00--12:00:00'] - expresion
('jueves', 2, 16, 15), -- ['08:00:00--10:00:00'] - instrumento I
('jueves', 3, 30, 28), -- ['10:00:00--12:00:00'] - calculo
('viernes', 2, 28, 30), -- ['08:00:00--10:00:00'] - fisica mecanica y laboratorio 30
('viernes', 3, 27, 27); -- ['10:00:00--12:00:00'] - fundamentos de programacion
--! HORARIOS ASIGNATURAS QUE PODRIA SER DE UN MARKETING
INSERT INTO horario(dia, id_bloqueHorario, id_salon, id_asignaturaPeriodo) VALUES
('lunes', 2, 23, 17), -- ['08:00:00--10:00:00'] - fundamentos de marketing
('lunes', 3, 20, 20), -- ['10:00:00--12:00:00'] - pensando problemas
('martes', 1, 14, 12), -- ['06:00:00--08:00:00'] - teorias de la comunicacion
('martes', 2, 22, 18),  -- ['08:00:00--10:00:00'] - introduccion a los negocios
('martes', 10, 24, 19),  -- ['11:00:00--12:00:00'] - estados financieros
('miercoles', 2, 20, 19), -- ['08:00:00--10:00:00'] - estados financieros
('miercoles', 3, 23, 20), -- ['10:00:00--12:00:00'] - pensando problemas
('jueves', 1, 23, 17), -- ['06:00:00--08:00:00'] - fundamentos de marketing
('jueves', 2, 19, 18), -- ['08:00:00--10:00:00'] - introduccion a los negocios
('viernes', 3, 14, 12),  -- ['10:00:00--12:00:00'] - teorias de la comunicacion
('viernes', 2, 24, 19); -- ['10:00:00--12:00:00'] - estados financieros



--~ 16. Poblando tabla matricula
INSERT INTO matricula(id_alumno, id_asignaturaPeriodo, estado) VALUES
(1, 1, 'en curso'),   -- Juan Gómez, Enfermería, Cuidado Holístico (Enfermería)
(2, 2, 'en curso'),   -- María Hernández, Enfermería, Biología Celular y Molecular Avanzada (Enfermería)
(3, 3, 'en curso'),   -- Carlos Rodríguez, Medicina, Salud Pública (Medicina)
(4, 4, 'en curso'),   -- Laura García, Medicina, Procesos Patológicos (Medicina)
(5, 5, 'en curso'),   -- John Smith, Psicología, Núcleo Integrador (Psicología)
(6, 6, 'en curso'),   -- Emily Johnson, Psicología, Psicobiología (Psicología)
(7, 7, 'en curso'),   -- Michael Williams, Derecho, Expresión (Derecho)
(8, 8, 'en curso'),   -- Jessica Brown, Derecho, Teoría Constitucional (Derecho)
(9, 9, 'en curso'),   -- David Martínez, Artes Audiovisuales, Manifestaciones del Arte (Artes Audiovisuales)
(10, 10, 'en curso'), -- Sophia González, Artes Audiovisuales, Narración y Descripción (Artes Audiovisuales)
(11, 11, 'en curso'), -- William Lee, Comunicación Social, Redacción y Gramática (Comunicación Social)
(12, 12, 'en curso'), -- Olivia Taylor, Comunicación Social, Teorías de la Comunicación (Comunicación Social)
(13, 13, 'en curso'), -- Daniel Johnson, Gastronomía y Alta Cocina, Conservación y Manipulación de Alimentos (Gastronomía y Alta Cocina)
(14, 14, 'en curso'), -- Emma Hernández, Gastronomía y Alta Cocina, Cocina Básica (Gastronomía y Alta Cocina)
(15, 15, 'en curso'), -- Noah Rodríguez, Música, Instrumento (Música)
(16, 16, 'en curso'), -- Liam García, Música, Músicas y Contextos I (Música)
(17, 17, 'en curso'), -- Ava Smith, Marketing, Fundamentos de Marketing (Marketing)
(18, 18, 'en curso'), -- Mia Johnson, Marketing, Introducción a los Negocios (Marketing)
(19, 19, 'en curso'), -- Alexander Brown, Administración de Empresas, Estados Financieros (Administración de Empresas)
(20, 20, 'en curso'), -- Charlotte Martínez, Administración de Empresas, Pensando Problemas (Administración de Empresas)
(21, 21, 'en curso'), -- Logan González, Contaduría Pública, Ciclo Contable (Contaduría Pública)
(22, 22, 'en curso'), -- Isabella Lee, Contaduría Pública, Derecho Público General y Laboral (Contaduría Pública)
(23, 23, 'en curso'), -- Ethan Taylor, Economía, Principios de Microeconomía (Economía)
(24, 24, 'en curso'), -- Lucas Johnson, Economía, Historia del Pensamiento Económico I (Economía)
(25, 25, 'en curso'), -- Mason Hernández, Ingeniería Biomédica, Biología Estructural (Ingeniería Biomédica)
(26, 26, 'en curso'), -- Harper Rodríguez, Ingeniería Biomédica, Laboratorio Bioquímica (Ingeniería Biomédica)
(27, 27, 'en curso'), -- Evelyn García, Ingeniería de Sistemas, Fundamentos de Programación (Ingeniería de Sistemas)
(28, 28, 'en curso'), -- Jackson Smith, Ingeniería de Sistemas, Cálculo Diferencial (Ingeniería de Sistemas)
(29, 29, 'en curso'), -- Avery Johnson, Ingeniería Industrial, Química (Ingeniería Industrial)
(30, 30, 'en curso'); -- Lily Brown, Ingeniería Industrial, Física Mecánica y Laboratorio (Ingeniería Industrial)


INSERT INTO matricula(id_alumno, id_asignaturaPeriodo, estado) VALUES
(1, 2, 'en curso'),    -- Juan Gómez, Enfermería, Biología Celular y Molecular Avanzada (Enfermería)
(2, 1, 'en curso'),    -- María Hernández, Enfermería, Cuidado Holístico (Enfermería)
(3, 4, 'en curso'),    -- Carlos Rodríguez, Medicina, Procesos Patológicos (Medicina)
(4, 3, 'en curso'),    -- Laura García, Medicina, Salud Pública (Medicina)
(5, 6, 'en curso'),    -- John Smith, Psicología, Psicobiología (Psicología)
(6, 5, 'en curso'),    -- Emily Johnson, Psicología, Núcleo Integrador (Psicología)
(7, 8, 'en curso'),    -- Michael Williams, Derecho, Teoría Constitucional (Derecho)
(8, 7, 'en curso'),    -- Jessica Brown, Derecho, Expresión (Derecho)
(9, 10, 'en curso'),   -- David Martínez, Artes Audiovisuales, Narración y Descripción (Artes Audiovisuales)
(10, 9, 'en curso'),   -- Sophia González, Artes Audiovisuales, Manifestaciones del Arte (Artes Audiovisuales)
(11, 12, 'en curso'),  -- William Lee, Comunicación Social, Teorías de la Comunicación (Comunicación Social)
(12, 11, 'en curso'),  -- Olivia Taylor, Comunicación Social, Redacción y Gramática (Comunicación Social)
(13, 14, 'en curso'),  -- Daniel Johnson, Gastronomía y Alta Cocina, Cocina Básica (Gastronomía y Alta Cocina)
(14, 13, 'en curso'),  -- Emma Hernández, Gastronomía y Alta Cocina, Conservación y Manipulación de Alimentos (Gastronomía y Alta Cocina)
(15, 16, 'en curso'),  -- Noah Rodríguez, Música, Músicas y Contextos I (Música)
(16, 15, 'en curso'),  -- Liam García, Música, Instrumento (Música)
(17, 18, 'en curso'),  -- Ava Smith, Marketing, Introducción a los Negocios (Marketing)
(18, 17, 'en curso'),  -- Mia Johnson, Marketing, Fundamentos de Marketing (Marketing)
(19, 20, 'en curso'),  -- Alexander Brown, Administración de Empresas, Pensando Problemas (Administración de Empresas)
(20, 19, 'en curso'),  -- Charlotte Martínez, Administración de Empresas, Estados Financieros (Administración de Empresas)
(21, 22, 'en curso'),  -- Logan González, Contaduría Pública, Derecho Público General y Laboral (Contaduría Pública)
(22, 21, 'en curso'),  -- Isabella Lee, Contaduría Pública, Ciclo Contable (Contaduría Pública)
(23, 24, 'en curso'),  -- Ethan Taylor, Economía, Historia del Pensamiento Económico I (Economía)
(24, 23, 'en curso'),  -- Lucas Johnson, Economía, Principios de Microeconomía (Economía)
(25, 26, 'en curso'),  -- Mason Hernández, Ingeniería Biomédica, Laboratorio Bioquímica (Ingeniería Biomédica)
(26, 25, 'en curso'),  -- Harper Rodríguez, Ingeniería Biomédica, Biología Estructural (Ingeniería Biomédica)
(27, 28, 'en curso'),  -- Evelyn García, Ingeniería de Sistemas, Cálculo Diferencial (Ingeniería de Sistemas)
(28, 27, 'en curso'),  -- Jackson Smith, Ingeniería de Sistemas, Fundamentos de Programación (Ingeniería de Sistemas)
(29, 30, 'en curso'),  -- Avery Johnson, Ingeniería Industrial, Física Mecánica y Laboratorio (Ingeniería Industrial)
(30, 29, 'en curso');  -- Lily Brown, Ingeniería Industrial, Química (Ingeniería Industrial)
