CREATE TABLE IF NOT EXISTS `peliculas` (
  `titulo` varchar(50) DEFAULT NULL,
  `resumen` varchar(250) DEFAULT NULL,
  `año` varchar(4) DEFAULT NULL,
  `director` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK_PELICULA_DIRECTOR` (`director`),
  CONSTRAINT `FK_PELICULA_DIRECTOR` FOREIGN KEY (`director`) REFERENCES `directores` (`id`)
);

INSERT INTO `peliculas` (`titulo`, `resumen`, `año`, `director`, `id`) VALUES
	('Los Vengadores', 'Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.', '1990', 2, 1),
	('Interestelar', 'Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.', '2014', 3, 2),
	('El viaje de Chihiro', 'Pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.', '2001', 1, 3),
	('Parasitos', 'Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.', '2019', 4, 4),
	('Mas alla de los sueños', 'Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.', '1998', 5, 5);
