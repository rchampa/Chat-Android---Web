-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2013 a las 15:34:13
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gcm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE IF NOT EXISTS `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `contacto` varchar(50) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `usuario`, `contacto`, `added_at`) VALUES
(1, 'Ricardo', 'Elizabeth', '2013-06-29 21:54:36'),
(2, 'Elizabeth', 'Ricardo', '2013-06-29 21:55:18'),
(3, 'Carlos', 'Ricardo', '2013-06-29 23:11:59'),
(4, 'Ricardo', 'Carlos', '2013-06-29 23:13:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gcm_users`
--

CREATE TABLE IF NOT EXISTS `gcm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gcm_regid` text,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `gcm_users`
--

INSERT INTO `gcm_users` (`id`, `gcm_regid`, `name`, `email`, `created_at`) VALUES
(1, 'APA91bFP6LYkO-JvA4mWXFjWyH-gsDLVvWH0d-s6WV-WZaPGBV3G9OsdDFRQ_jOAA9WJRZ2-N_TSEnGS6zzIUSMF8ABKaOJwd4RYfbY6t3faOR0sgZ9EsMepXS2MyV0krLiLrTCiLGpRYkezY15eS5EzUMJz5xqvzQ', 'Ricardo', 'cjckc', '2013-06-29 00:32:58'),
(2, 'APA91bGsz5ra0bjB3oHv4LcDNrAr1Wux0M5I-BkdIWTVnQX7i7awod2EeXft9ztoxx1Grb9_zP503RFTvHXL1OCaQMakkCWvTgNyLTeKAEvvXUPsv3_nae7Iv7O03n28t6-Ke4_lCRBye3zr798bogCzhxAwS705AQ', 'Elizabeth', 'figjk', '2013-06-29 08:59:22'),
(3, 'APA91bEHx7T7v-Z9oU9D43aebc7TXSzoqMuBpkzBYtQ26qJqs_TpmHFtpuexQHjGywZ97C4p3QTGatj61ZBZTTC_eeShVZ7X-FD-SXTBSxBZJ6XzBK7JCzPcRiW5ZrVPw6V8_K9i4-zmAYBJKVJelbo806uzzfpPLQ', 'Carlos', 'gkkg', '2013-06-29 22:58:15'),
(4, 'APA91bEHx7T7v-Z9oU9D43aebc7TXSzoqMuBpkzBYtQ26qJqs_TpmHFtpuexQHjGywZ97C4p3QTGatj61ZBZTTC_eeShVZ7X-FD-SXTBSxBZJ6XzBK7JCzPcRiW5ZrVPw6V8_K9i4-zmAYBJKVJelbo806uzzfpPLQ', 'Carlos', 'hjj', '2013-06-29 23:40:40'),
(5, 'APA91bFP6LYkO-JvA4mWXFjWyH-gsDLVvWH0d-s6WV-WZaPGBV3G9OsdDFRQ_jOAA9WJRZ2-N_TSEnGS6zzIUSMF8ABKaOJwd4RYfbY6t3faOR0sgZ9EsMepXS2MyV0krLiLrTCiLGpRYkezY15eS5EzUMJz5xqvzQ', 'Ricardo', 'aeg', '2013-06-29 23:54:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
