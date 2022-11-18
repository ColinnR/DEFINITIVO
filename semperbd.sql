-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2022 a las 05:27:28
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `semperbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'Juice - Orange, Concentrate', 'Excision of Right Zygomatic Bone, Percutaneous Endoscopic Approach, Diagnostic', '268.02', 23, 'https://robohash.org/eligendiprovidentvoluptatem.png?size=800x800&set=set1', 1),
(2, 'Gatorade - Lemon Lime', 'Excision of Cervical Vertebral Joint, Percutaneous Approach, Diagnostic', '320.53', 31080, 'https://robohash.org/quivoluptassunt.png?size=800x800&set=set1', 2),
(3, 'Roe - Flying Fish', 'Plain Radiography of Bilateral Temporomandibular Joints using High Osmolar Contrast', '535.57', 78, 'https://robohash.org/ullamdoloripsa.png?size=800x800&set=set1', 3),
(4, 'Beets', 'Excision of Perineum Muscle, Percutaneous Endoscopic Approach, Diagnostic', '869.09', 1950, 'https://robohash.org/eiuseteos.png?size=800x800&set=set1', 4),
(5, 'Nut - Hazelnut, Ground, Natural', 'Bypass Pancreatic Duct to Small Intestine, Percutaneous Endoscopic Approach', '406.20', 0, 'https://robohash.org/laudantiumdoloresipsum.png?size=800x800&set=set1', 5),
(6, 'Chocolate - Milk Coating', 'Excision of Sacrococcygeal Joint, Percutaneous Endoscopic Approach', '953.66', 782, 'https://robohash.org/quicommodiasperiores.png?size=800x800&set=set1', 6),
(7, 'Scampi Tail', 'Bypass Inferior Vena Cava to Inferior Mesenteric Vein, Open Approach', '166.66', 266, 'https://robohash.org/verodelectustotam.png?size=800x800&set=set1', 7),
(8, 'Banana - Leaves', 'Supplement Left Kidney Pelvis with Nonautologous Tissue Substitute, Via Natural or Artificial Opening Endoscopic', '660.22', 82, 'https://robohash.org/suntestatque.png?size=800x800&set=set1', 8),
(9, 'Bread - Hamburger Buns', 'Drainage of Right Carotid Body, Percutaneous Endoscopic Approach, Diagnostic', '592.91', 8, 'https://robohash.org/exercitationemnemoquo.png?size=800x800&set=set1', 9),
(10, 'Sauce - Marinara', 'Supplement Middle Esophagus with Autologous Tissue Substitute, Open Approach', '827.95', 45184, 'https://robohash.org/autsintquo.png?size=800x800&set=set1', 10),
(11, 'Bread - Pullman, Sliced', 'Reattachment of Left Kidney, Percutaneous Endoscopic Approach', '937.72', 33, 'https://robohash.org/quisquamexplicabomaiores.png?size=800x800&set=set1', 11),
(12, 'Pasta - Shells, Medium, Dry', 'Extirpation of Matter from Right Axillary Lymphatic, Percutaneous Endoscopic Approach', '478.74', 7888, 'https://robohash.org/inutculpa.png?size=800x800&set=set1', 12),
(13, 'Tea Leaves - Oolong', 'Repair Back Subcutaneous Tissue and Fascia, Percutaneous Approach', '544.75', 17755, 'https://robohash.org/eaetcorporis.png?size=800x800&set=set1', 13),
(14, 'Raisin - Dark', 'Drainage of Right Upper Lung Lobe with Drainage Device, Percutaneous Approach', '609.09', 4511, 'https://robohash.org/doloremqueperferendisea.png?size=800x800&set=set1', 14),
(15, 'Longos - Chicken Caeser Salad', 'Release Cul-de-sac, Percutaneous Endoscopic Approach', '424.37', 5, 'https://robohash.org/estnequeet.png?size=800x800&set=set1', 15),
(16, 'Wine - Toasted Head', 'Dilation of Tricuspid Valve with Drug-eluting Intraluminal Device, Open Approach', '717.00', 2, 'https://robohash.org/nostrumarchitectoqui.png?size=800x800&set=set1', 16),
(17, 'Nut - Almond, Blanched, Sliced', 'Replacement of Right Lower Femur with Autologous Tissue Substitute, Percutaneous Endoscopic Approach', '356.73', 563, 'https://robohash.org/isteomnisest.png?size=800x800&set=set1', 17),
(18, 'Veal - Knuckle', 'Bypass Left Vas Deferens to Right Epididymis, Percutaneous Endoscopic Approach', '880.24', 9160, 'https://robohash.org/molestiaeblanditiisvoluptas.png?size=800x800&set=set1', 18),
(19, 'The Pop Shoppe - Grape', 'Bypass Right Hepatic Duct to Right Hepatic Duct, Open Approach', '294.84', 61, 'https://robohash.org/quaeporronam.png?size=800x800&set=set1', 19),
(20, 'Cherries - Frozen', 'Dilation of Aortic Valve with Intraluminal Device, Percutaneous Approach', '276.73', 1032, 'https://robohash.org/voluptatemeosrepellat.png?size=800x800&set=set1', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
