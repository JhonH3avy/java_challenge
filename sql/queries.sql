
SELECT 'Consulta 1';
SELECT `c`.`titulo` FROM 
    (SELECT `titulo` FROM `peliculas` AS `p`
    UNION
    SELECT `titulo` FROM `series` AS `s`) AS c
    ORDER BY `c`.`titulo` ASC;


SELECT 'Consulta 2';
SELECT `titulo`, `resumen`, `año` 
    FROM `peliculas` 
    WHERE `año` > '2000' 
    ORDER BY `peliculas`.`titulo` ASC;


SELECT 'Consulta 3';
SELECT `titulo` FROM `peliculas` WHERE `director` = 5;


SELECT 'Consulta 4';
SELECT `pv`.`titulo` FROM (SELECT `p`.`titulo` FROM `transmisiones_peliculas` AS tp
		INNER JOIN `peliculas` AS p ON `tp`.`pelicula_id` = `p`.`id`
		WHERE `alias` = 'lucky'
		
		UNION
		
	SELECT `s`.`titulo` FROM `transmisiones_series` AS ts
		INNER JOIN `series` AS s ON `ts`.`serie_id` = `s`.`id`
		WHERE `alias` = 'lucky') AS pv
	ORDER BY `pv`.`titulo` ASC;


SELECT 'Consulta 5';
SELECT `u`.`alias`, `u`.`nombre`, `u`.`apellido` FROM `usuarios` AS u
	INNER JOIN `transmisiones_peliculas` AS tp ON `u`.`alias` = `tp`.`alias`
	WHERE `tp`.`pelicula_id` = 2
    ORDER BY `u`.`alias` ASC;


SELECT 'Consulta 6';
SELECT COUNT(*) AS `peliculas_2000` FROM `peliculas` WHERE `año` > '2000';
