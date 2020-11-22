USE `redflixpro`;


CREATE TABLE IF NOT EXISTS `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `numero_temporadas` int(11) DEFAULT NULL,
  `numero_episodios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
