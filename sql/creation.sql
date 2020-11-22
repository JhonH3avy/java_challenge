
CREATE TABLE IF NOT EXISTS `directores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `numero_temporadas` int(11) DEFAULT NULL,
  `numero_episodios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

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
