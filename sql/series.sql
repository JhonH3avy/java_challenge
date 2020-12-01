CREATE TABLE IF NOT EXISTS `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `numero_temporadas` int(11) DEFAULT NULL,
  `numero_episodios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `series` (`id`, `titulo`, `numero_temporadas`, `numero_episodios`) VALUES
	(1, 'The walking dead', 153, 11),
	(2, 'Viaje a las estrellas: la serie original', 80, 3),
	(3, 'Glow', 30, 3),
	(4, 'La casa de papel', 31, 4),
	(5, 'Friends', 236, 10),
	(6, 'Arrow', 170, 8),
	(7, 'The big bang theory', 279, 12),
	(8, 'Vikingos', 79, 6);
