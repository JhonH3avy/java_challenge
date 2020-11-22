
INSERT INTO `usuarios` (`alias`, `nombre`, `apellido`, `email`, `contraseña`, `fecha_nacimiento`, `celular`) VALUES
	('diva', 'Ana', 'Diaz', 'ana.diaz@unal.com', '12345', '2000-11-22', '3115112113'),
	('dreamer', 'Luis', 'Rojas', 'luis.rojas@unal.com', '12345', '2000-11-22', '3115112114'),
	('green', 'Jorge', 'Rodriguez', 'jorge.rodriguez@unal.com', '12345', '2000-11-22', '3115112118'),
	('lucky', 'Pedro', 'Perez', 'pedro.perez@unal.com', '12345', '2000-11-20', '3115112111'),
	('malopez', 'Maria', 'Lopez', 'maria.lopez@unal.com', '12345', '2000-11-22', '3115112112'),
	('neon', 'Nelson', 'Ruiz', 'nelson.ruiz@unal.com', '12345', '2000-11-22', '3115112116'),
	('ninja', 'Andres', 'Cruz', 'andres.cruz@unal.com', '12345', '2000-11-22', '3115112115'),
	('rose', 'Claudia', 'Mendez', 'claudia.mendez@unal.com', '12345', '2000-11-22', '3115112117');


INSERT INTO `directores` (`id`, `nombre`, `apellido`, `nacionalidad`) VALUES
	(1, 'Hayo', 'Miyazaki', 'japonés'),
	(2, 'Joss', 'Whedom', 'estadounidense'),
	(3, 'Christopher', 'Nolan', 'estadounidense'),
	(4, 'Bong', 'Joon-ho', 'coreano'),
	(5, 'Vincent', 'Ward', 'neozelandes');

INSERT INTO `peliculas` (`titulo`, `resumen`, `año`, `director`, `id`) VALUES
	('Los Vengadores', 'Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.', '1990', 2, 1),
	('Interestelar', 'Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.', '2014', 3, 2),
	('El viaje de Chihiro', 'Pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.', '2001', 1, 3),
	('Parasitos', 'Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.', '2019', 4, 4),
	('Mas alla de los sueños', 'Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.', '1998', 5, 5);

INSERT INTO `series` (`id`, `titulo`, `numero_temporadas`, `numero_episodios`) VALUES
	(1, 'The walking dead', 153, 11),
	(2, 'Viaje a las estrellas: la serie original', 80, 3),
	(3, 'Glow', 30, 3),
	(4, 'La casa de papel', 31, 4),
	(5, 'Friends', 236, 10),
	(6, 'Arrow', 170, 8),
	(7, 'The big bang theory', 279, 12),
	(8, 'Vikingos', 79, 6);

INSERT INTO `transmisiones_peliculas` (`id`, `alias`, `pelicula_id`, `fecha`) VALUES
	(1, 'lucky', 1, '2017-10-25 20:00:00'),
	(2, 'lucky', 4, '2019-03-15 18:30:00'),
	(3, 'malopez', 1, '2018-05-20 20:30:00'),
	(4, 'diva', 2, '2019-05-20 20:30:00'),
	(5, 'diva', 3, '2018-06-22 21:30:00'),
	(6, 'green', 2, '2020-01-10 17:30:20'),
	(7, 'green', 4, '2020-02-15 20:30:20'),
	(8, 'green', 5, '2020-03-17 18:30:20');

INSERT INTO `transmisiones_series` (`id`, `alias`, `serie_id`, `fecha`) VALUES
	(1, 'lucky', 4, '2019-05-20 20:30:00'),
	(2, 'malopez', 4, '2020-01-20 20:30:00'),
	(3, 'diva', 1, '2020-03-17 15:30:20'),
	(4, 'dreamer', 1, '2020-03-17 15:30:20'),
	(5, 'dreamer', 2, '2020-04-10 18:30:20'),
	(6, 'ninja', 3, '2020-02-17 20:30:20'),
	(7, 'ninja', 4, '2020-02-20 16:30:20'),
	(8, 'ninja', 6, '2020-03-27 18:30:20'),
	(9, 'rose', 5, '2020-03-20 21:30:20');


