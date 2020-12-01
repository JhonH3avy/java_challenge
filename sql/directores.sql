CREATE TABLE IF NOT EXISTS `directores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `directores` (`id`, `nombre`, `apellido`, `nacionalidad`) VALUES
	(1, 'Hayo', 'Miyazaki', 'japonés'),
	(2, 'Joss', 'Whedom', 'estadounidense'),
	(3, 'Christopher', 'Nolan', 'estadounidense'),
	(4, 'Bong', 'Joon-ho', 'coreano'),
	(5, 'Vincent', 'Ward', 'neozelandes');