CREATE TABLE IF NOT EXISTS `usuarios` (
  `alias` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`alias`)
);

INSERT INTO `usuarios` (`alias`, `nombre`, `apellido`, `email`, `contraseña`, `fecha_nacimiento`, `celular`) VALUES
	('diva', 'Ana', 'Diaz', 'ana.diaz@unal.com', '12345', '2000-11-22', '3115112113'),
	('dreamer', 'Luis', 'Rojas', 'luis.rojas@unal.com', '12345', '2000-11-22', '3115112114'),
	('green', 'Jorge', 'Rodriguez', 'jorge.rodriguez@unal.com', '12345', '2000-11-22', '3115112118'),
	('lucky', 'Pedro', 'Perez', 'pedro.perez@unal.com', '12345', '2000-11-20', '3115112111'),
	('malopez', 'Maria', 'Lopez', 'maria.lopez@unal.com', '12345', '2000-11-22', '3115112112'),
	('neon', 'Nelson', 'Ruiz', 'nelson.ruiz@unal.com', '12345', '2000-11-22', '3115112116'),
	('ninja', 'Andres', 'Cruz', 'andres.cruz@unal.com', '12345', '2000-11-22', '3115112115'),
	('rose', 'Claudia', 'Mendez', 'claudia.mendez@unal.com', '12345', '2000-11-22', '3115112117');