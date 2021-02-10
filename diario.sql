-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2020 a las 18:05:05
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diario`
--
CREATE DATABASE IF NOT EXISTS `diario` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `diario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(200) NOT NULL,
  `Copete` varchar(200) NOT NULL,
  `Imagen` varchar(200) NOT NULL,
  `Texto` varchar(500) NOT NULL,
  `Autor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`ID`, `Titulo`, `Copete`, `Imagen`, `Texto`, `Autor`) VALUES
(2, 'Mascherano analizó la derrota del Barcelona ante Bayern Múnich y se refirió a la crisis de Messi.', 'El Jefecito dejó su mirada sobre el complicado presente del Blaugrana tras la dolorosa eliminación.', 'https://bucket3.glanacion.com/anexos/fotos/27/3199327.jpg', 'Si hay un futbolista que tiene voz autorizada para hablar sobre el FC Barcelona y Lionel Messi, ese es Javier Mascherano. El Jefecito ha jugado ocho temporadas con La Pulga en el elenco catalán (2010-2018) pero ya desde antes coincidían en la Selección Argentina. En ese contexto, el actual jugador de Estudiantes de La Plata analizó varios puntos que componen el pasado reciente de la entidad culé, desde el 2-8 ante Bayern ante Lisboa hasta la frustrada salida de Messi.\r\n', 'Vera Garelli'),
(3, 'Récord de contagios de coronavirus en Francia: ya son ocho las ciudades en “estado de alerta”', 'El Ministerio de Sanidad francés confirmó 26.896 nuevos casos detectados en las últimas 24 horas.', 'https://bucket3.glanacion.com/anexos/fotos/06/3363006w380.png', 'A partir de este sábado, ocho ciudades francesas se encuentran en “estado de alerta”, que rige en París desde el lunes pasado, por el repunte de casos de COVID-19, que alcanzó su récord en las últimas 24 horas, con casi 27 mil nuevos contagios.\r\n\r\nLas nuevas ciudades que entraron hoy en estado de alerta son Lille, Lyon, Grenoble y Saint-Etienne, que se suman a París, Marsella, Aix-en-Provence y a la isla de Guadalupe, en las Antillas. Además, Clermont-Ferrand y Dijon.', 'Cindy Levi'),
(4, 'Donald Trump encabezó su primer evento en la Casa Blanca tras contraer el Covid-19: “Me siento genial\"', 'Desde el balcón presidencial, el mandatario volvió a participar de la campaña', 'https://bucket2.glanacion.com/anexos/fotos/34/3204134w380.jpg', 'El presidente Donald Trump apareció ante cientos de seguidores el sábado para su primer evento público desde que dio positivo de Covid-19. Una vez que se asomó, se quitó la mascarillas y afirmó: “Me siento muy bien”.\r\n\r\n“Quiero que sepan que nuestra nación va a derrotar este terrible virus de China”, dijo a la multitud animada de cientos de personas, la mayoría con máscaras pero con muy poco distanciamiento social en el evento al aire libre. “Va a desaparecer, está desapareciendo”, dijo sobre el', 'Melanie Levi'),
(6, 'Las marcas que busca Rafael Nadal en Roland Garros: 20 grandes, 13 títulos y 100 victorias', 'El festejo, una marca natural de la historia de Nadal en Francia', 'https://bucket1.glanacion.com/anexos/fotos/32/3433032w1033.jpg', 'https://e00-marca.uecdn.es/assets/multimedia/imagenes/2020/10/09/16022602560177.jpg', 'Cindy Levi'),
(7, 'Propietarios cortaron la ruta 11 en General Lavalle para reclamar que los dejen llegar a sus casas en la Costa', 'Se manifestaron en ambos sentidos para reclamar que por las restricciones del coronavirus, no pueden llegar a sus inmuebles', 'https://bucket3.glanacion.com/anexos/fotos/26/3434726w1033.jpg', 'El reclamo provocó el bloqueo del tránsito en ambos sentidos desde la mañana. Los propietarios se quejan de que no puedan ingresar a sus casas de veraneo desde hace casi siete meses por las restricciones del aislamiento social, preventivo y obligatorio y los permisos que se les exigen para entrar.\r\n\r\nEn balnearios del partido de La Costa se establecieron en los últimos días una serie de registros para tramitar permisos online para ingresar, que dificultan la posibilidad de movilizarse e ingresar', 'Cindy Levi'),
(13, 'Femicidio en Pilar. Silvia Saravia forcejeó antes de que Jorge Neuss le disparara', 'Los investigadores deducen, a partir del informe de la autopsia y de otros datos contextuales, que Neuss irrumpió en el baño y allí dentro sorprendió a Saravia. Luego, la dominó tomándola del cabello,', 'https://bucket3.glanacion.com/anexos/fotos/87/3434587w1033.jpg', 'Los médicos forenses confirmaron que el empresario Jorge Neuss asesinó ayer en el country Martindale de Pilar a su esposa Silvia Saravia de un único disparo en la cabeza luego de un forcejeo que dejó signos de defensa en la mujer y un roce de bala en una mano del propio femicida, informaron hoy fuentes de la investigación.\r\n\r\nAsí se desprende de los primeros resultados de las autopsias realizadas en la madrugada del domingo en la morgue que funciona en el Hospital de San Fernando y de acuerdo a ', 'Cindy Levi'),
(14, 'Vuelta a las aulas. El anhelado reencuentro de un maestro con sus alumnos después de siete meses', 'El docente Eugenio Bret, de 57 años, dando clase de forma presencial en la Escuela Técnica N°35 Eduardo Latzina, en el barrio porteño de Villa Real, una de las dos que retomaron en la ciudad', 'https://bucket3.glanacion.com/anexos/fotos/16/3438216w1033.jpg', 'Eugenio Bret, de 57 años, es ingeniero y docente de la Escuela Técnica N°35 Eduardo Latzina, en el barrio porteño de Villa Real. Vive con su esposa, Claudia, que también es docente, en Villa Lynch, provincia de Buenos Aires. Son las 8 y su casa, de a poco, adquiere cierta efervescencia matutina. Bret toma un mate cocido que, esta vez, le dará la energía necesaria para ir más allá de la mesa de la cocina, donde tiene un pizarrón pequeño y donde marzo interactúa de manera virtual con sus alumnos d', 'Melanie Levi'),
(15, 'MasterChef Celebrity: Roberto Moldavsky se cansó del jurado y les respondió con ironía', 'El humorista tiene cada vez más problemas con las devoluciones.', 'https://bucket3.glanacion.com/anexos/fotos/09/3437409w1033.jpg', 'Es cierto que nunca estuvo entre los favoritos, pero luego de una semana y un día Roberto Moldavsky cada vez se ríe menos. El hombre que llegó a MasterChef Celebrity para aportarle humor a la cocina es vapuleado desafío tras desafío. El domingo quedó al borde de la eliminación junto a Nacho Sureda. Zafó, pero la alegría le duró menos de 24 horas.\r\nEn el desafío del lunes la idea era trabajar en parejas: cada uno debía presentar un plato, y así obtendrían dos puntajes que se promediarían. Moldavs', 'Fede Snieg'),
(16, 'iPhone 12: qué novedades presentará Apple hoy para sus nuevos teléfonos', 'El iPhone 12 estará disponible en cuatro modelos: el normal, el mini, Pro y Pro Max', 'https://bucket3.glanacion.com/anexos/fotos/68/3436868w1033.jpg', 'El próximo teléfono de Apple, que podría conocerse como iPhone 12, contará con un sistema de reconocimiento facial Face ID más rápido que las versiones anteriores, cámaras mejoradas y una mayor autonomía de la batería, según las últimas filtraciones.\r\n\r\nApple tiene la intención de añadir un nuevo sistema de algoritmos de \"zonificación dinámica\" para la matriz de cámaras TrueDepth, que podría permitir un sistema de reconocimiento facial más rápido.', 'Fede Snieg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
