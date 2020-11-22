USE `redflixpro`;

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
)