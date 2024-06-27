DROP DATABASE IF EXISTS `db_sisec`;
-- CREATE DATABASE IF NOT EXISTS `db_sisec` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */;
CREATE DATABASE IF NOT EXISTS `db_sisec` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci; 
USE `db_sisec`;



-- Volcando estructura para tabla db_sisec.t_persona
 CREATE TABLE IF NOT EXISTS `t_persona` (
  `persona_codigo` INT NOT NULL AUTO_INCREMENT,
  `persona_primer_nombre` VARCHAR(50) NOT NULL,
  `persona_segundo_nombre` VARCHAR(50) DEFAULT NULL,
  `persona_primer_apellido` VARCHAR(50) NOT NULL,
  `persona_segundo_apellido` VARCHAR(50) DEFAULT NULL,
  `persona_ci` CHAR(10) DEFAULT NULL,
  `titulo` CHAR(100) DEFAULT NULL,
  `p_fecha_nacimiento` DATETIME DEFAULT NULL,
  PRIMARY KEY (`persona_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


-- Volcando datos para la tabla db_sisec.t_persona: ~38 rows (aproximadamente)
INSERT INTO `t_persona` (`persona_codigo`, `persona_primer_nombre`, `persona_segundo_nombre`, `persona_primer_apellido`, `persona_segundo_apellido`, `persona_ci`, `titulo`, `p_fecha_nacimiento`) VALUES
	(1, 'teresa', NULL, 'Becerra', 'F.', '457698lp', 'Lic', '1970-03-24 00:00:00'),
	(2, 'Jorge', NULL, 'Miranda', 'Rios', NULL, NULL, NULL),
	(3, 'Carlos', 'Rafael', 'Ledezma', 'Jordan', NULL, NULL, NULL),
	(4, 'DOROTHY', NULL, 'TORRICO ', 'ANGULO', NULL, NULL, '1970-12-01 22:00:24'),
	(5, 'JUAN ', NULL, 'AYALA ', 'FUENTES', '123456', NULL, NULL),
	(6, 'JUAN', NULL, ' LAIME ', 'RICALDEZ', '987612', NULL, NULL),
	(7, 'MARIO', 'FERNANDO', ' COSIO ', 'O.', NULL, NULL, NULL),
	(8, 'MARIO ', 'ENRIQUE ', 'SEVERICH', 'BUSTAMENTE', NULL, 'Ing.', NULL),
	(9, 'JOSE', ' NELSON ', 'ROJAS ', 'ANGULO', NULL, NULL, NULL),
	(10, 'ROBERTO', NULL, ' JIMENEZ ', 'FERRUFINO', NULL, NULL, NULL),
	(11, 'WILSON', NULL, ' PONCE ', 'MONTERO', NULL, NULL, NULL),
	(13, 'raul', NULL, 'sanchez', NULL, NULL, 'ing.', NULL),
	(14, 'Sabino ', NULL, 'Arnez ', 'Camacho', NULL, NULL, NULL),
	(15, 'Norman  ', NULL, 'Juanes', 'Sanchez', NULL, 'Ing.', NULL),
	(16, 'sisec', NULL, '', NULL, '123456lp', 'ing.', '2013-11-01 00:00:00'),
	(17, 'JUAN', 'MANUEL', 'BARRIENTOS', NULL, NULL, 'Ing.', NULL),
	(18, 'ESTANISLAO', NULL, 'ALIAGA', 'FLORES', '471139 1H', 'Ing.', NULL),
	(19, 'ERWIN', 'SERGEI', 'VON BORRIES', 'DELGADILLO', '4829493 LP', 'Lic', '1981-05-05 00:00:00'),
	(20, 'JUAN', 'CARLOS', 'CORONADO', NULL, NULL, 'Ing.', NULL),
	(21, 'ARIEL', NULL, 'ZEBALLOS', NULL, NULL, 'Ing.', NULL),
	(22, 'JUAN', 'PABLO', 'DIAZ', NULL, NULL, 'Ing.', NULL),
	(23, 'CARMELO', NULL, 'VALDA', NULL, NULL, 'Ing.', NULL),
	(24, 'ORLANDO', NULL, 'REYES', NULL, NULL, 'Ing.', NULL),
	(25, 'jose', NULL, 'mariaca', NULL, NULL, NULL, NULL),
	(26, 'pablo', NULL, 'palacios', NULL, NULL, NULL, NULL),
	(27, 'pablo', NULL, 'badani', NULL, NULL, NULL, NULL),
	(28, 'MERCEDES', NULL, 'LOAYZA', 'MOLINA', '147212', 'Lic', NULL),
	(29, 'FERNANDO', NULL, 'GIL', NULL, NULL, 'Ing.', NULL),
	(30, 'RODMY', NULL, 'ALANEZ', 'MEDINA', NULL, NULL, NULL),
	(31, 'MAURICIO', NULL, 'ROJAS', 'QUIROZ', NULL, NULL, NULL),
	(32, 'WALTER', NULL, 'ZULETA', NULL, NULL, NULL, NULL),
	(33, 'Monica', NULL, 'Coria', 'Martinez', NULL, NULL, NULL),
	(34, 'Nadja', 'Carmen', 'Peña', 'Chumacero', NULL, NULL, NULL),
	(35, 'RONALD', NULL, 'OVANDO', NULL, NULL, NULL, NULL),
	(36, 'EDWIN', NULL, 'MERCADO', NULL, NULL, NULL, NULL),
	(37, 'TICONA', NULL, 'W', NULL, NULL, NULL, NULL),
	(38, 'OMAR', NULL, 'FERREIRA', NULL, NULL, NULL, NULL),
	(39, 'Ivan', NULL, 'Pinto', NULL, NULL, NULL, NULL);

CREATE  VIEW `v_persona` AS select `p`.`persona_codigo` AS `persona_codigo`,trim(ucase(concat_ws(' ',`p`.`persona_primer_apellido`,trim(coalesce(`p`.`persona_segundo_apellido`,'')),trim(`p`.`persona_primer_nombre`),trim(coalesce(`p`.`persona_segundo_nombre`,''))))) AS `nombres`,coalesce(`p`.`persona_ci`,'') AS `ci`,coalesce(date_format(`p`.`p_fecha_nacimiento`,'%d-%m-%Y'),'') AS `fecha_nacimiento` from `t_persona` `p` where (`p`.`persona_codigo` <> 16) ;


-- Volcando estructura para tabla db_sisec.s_usuario
DROP TABLE IF EXISTS `s_usuario`;
CREATE TABLE IF NOT EXISTS `s_usuario` (
  `usuario_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id_persona` int(10) DEFAULT NULL,
  `u_nivel` int(10) DEFAULT NULL,
  `u_login` varchar(20) DEFAULT NULL,
  `u_contrasenia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `fk_id_persona` (`u_id_persona`),
  CONSTRAINT `s_usuario_ibfk_1` FOREIGN KEY (`u_id_persona`) REFERENCES `t_persona` (`persona_codigo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT   CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla db_sisec.s_usuario: ~5 rows (aproximadamente)
INSERT INTO `s_usuario` (`usuario_id`, `u_id_persona`, `u_nivel`, `u_login`, `u_contrasenia`) VALUES
	(1, 16, 100, 'sisec', '2'),
	(6, 1, 1, 'sisec', '3'),
	(7, 19, 1, 'erwin', '666'),
	(8, 28, 1, 'MECHI', '123'),
	(9, 34, 1, 'Nadja', '123');





DROP TABLE IF EXISTS `v_usuario`;
CREATE  VIEW `v_usuario` AS select `s_usuario`.`usuario_id` AS `usuario_id`,`s_usuario`.`u_nivel` AS `u_nivel`,`s_usuario`.`u_login` AS `u_login`,`v_persona`.`nombres` AS `nombres`,`v_persona`.`ci` AS `ci` from (`s_usuario` join `v_persona` on((`s_usuario`.`u_id_persona` = `v_persona`.`persona_codigo`))) ;


 
DROP FUNCTION IF EXISTS `fn_login`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_login`(str_login VARCHAR(50), str_contrasenia VARCHAR(50)) RETURNS int(11) 
READS SQL DATA
BEGIN
    DECLARE int_result INT;
    DECLARE int_count INT;

    /*

    select fn_login('soletud','1')

    */

    SELECT count(*) INTO  int_count
    FROM s_usuario
    WHERE u_login = str_login AND u_contrasenia = str_contrasenia;

    IF int_count = 0 THEN
        SELECT count(*) INTO int_count
        FROM s_usuario
        WHERE u_login = str_login;

        IF int_count >= 1 THEN
            SET int_result = -1;
        ELSE
            SELECT count(*) INTO int_count
            FROM s_usuario
            WHERE u_contrasenia = str_contrasenia;

            IF int_count >= 1 THEN
                SET int_result = -2;
            ELSE
                SET int_result = -3;
            END IF;
        END IF;
	else 
		SELECT usuario_id INTO  int_result
		FROM s_usuario
		WHERE u_login = str_login AND u_contrasenia = str_contrasenia;

    END IF;

    RETURN int_result;
END//
DELIMITER ;
