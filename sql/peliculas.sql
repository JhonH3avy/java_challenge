USE `redflixpro`;

CREATE TABLE IF NOT EXISTS `peliculas` (
  `titulo` varchar(50) DEFAULT NULL,
  `resumen` varchar(250) DEFAULT NULL,
  `año` varchar(4) DEFAULT NULL,
  `director` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK_PELICULA_DIRECTOR` (`director`),
  CONSTRAINT `FK_PELICULA_DIRECTOR` FOREIGN KEY (`director`) REFERENCES `directores` (`id`)
)