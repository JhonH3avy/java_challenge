CREATE TABLE IF NOT EXISTS `transmisiones_peliculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TRANSMISIONES_USUARIOS` (`alias`),
  KEY `FK_TRANSMISIONES_PELICULAS` (`pelicula_id`),
  CONSTRAINT `FK_TRANSMISIONES_PELICULAS` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`id`),
  CONSTRAINT `FK_TRANSMISIONES_USUARIOS` FOREIGN KEY (`alias`) REFERENCES `usuarios` (`alias`)
);

INSERT INTO `transmisiones_peliculas` (`id`, `alias`, `pelicula_id`, `fecha`) VALUES
	(1, 'lucky', 1, '2017-10-25 20:00:00'),
	(2, 'lucky', 4, '2019-03-15 18:30:00'),
	(3, 'malopez', 1, '2018-05-20 20:30:00'),
	(4, 'diva', 2, '2019-05-20 20:30:00'),
	(5, 'diva', 3, '2018-06-22 21:30:00'),
	(6, 'green', 2, '2020-01-10 17:30:20'),
	(7, 'green', 4, '2020-02-15 20:30:20'),
	(8, 'green', 5, '2020-03-17 18:30:20');