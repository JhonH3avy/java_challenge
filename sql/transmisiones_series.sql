CREATE TABLE IF NOT EXISTS `transmisiones_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) NOT NULL,
  `serie_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TRANSMISIONES_SERIES_USUARIOS` (`alias`),
  KEY `FK_TRANSMISIONES_SERIES` (`serie_id`),
  CONSTRAINT `FK_TRANSMISIONES_SERIES` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`),
  CONSTRAINT `FK_TRANSMISIONES_SERIES_USUARIOS` FOREIGN KEY (`alias`) REFERENCES `usuarios` (`alias`)
);

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
