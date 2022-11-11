-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2022 a las 11:59:46
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
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`) VALUES
(1, 'It', 'https://robohash.org/aperiamfugiatnon.png?size=400x400&set=set1'),
(2, 'Redhold', 'https://robohash.org/temporibusnamassumenda.png?size=400x400&set=set1'),
(3, 'Alphazap', 'https://robohash.org/perspiciatisquiarepellendus.png?size=400x400&set=set1'),
(4, 'Sub-Ex', 'https://robohash.org/etrerumharum.png?size=400x400&set=set1'),
(5, 'Gembucket', 'https://robohash.org/facilisautnobis.png?size=400x400&set=set1'),
(6, 'Tin', 'https://robohash.org/sequiquianulla.png?size=400x400&set=set1'),
(7, 'Mat Lam Tam', 'https://robohash.org/recusandaeconsecteturmolestiae.png?size=400x400&set=set1'),
(8, 'Bamity', 'https://robohash.org/excepturietillo.png?size=400x400&set=set1'),
(9, 'Overhold', 'https://robohash.org/culpaquaequia.png?size=400x400&set=set1'),
(10, 'Toughjoyfax', 'https://robohash.org/sedomnisid.png?size=400x400&set=set1'),
(11, 'Prodder', 'https://robohash.org/rerumetcupiditate.png?size=400x400&set=set1'),
(12, 'Zaam-Dox', 'https://robohash.org/etsequimaiores.png?size=400x400&set=set1'),
(13, 'Stronghold', 'https://robohash.org/undetemporeut.png?size=400x400&set=set1'),
(14, 'Tin', 'https://robohash.org/quisquamutasperiores.png?size=400x400&set=set1'),
(15, 'Treeflex', 'https://robohash.org/reprehenderitutut.png?size=400x400&set=set1'),
(16, 'Zontrax', 'https://robohash.org/autenimpraesentium.png?size=400x400&set=set1'),
(17, 'Pannier', 'https://robohash.org/quosetillum.png?size=400x400&set=set1'),
(18, 'Daltfresh', 'https://robohash.org/remistein.png?size=400x400&set=set1'),
(19, 'Sonsing', 'https://robohash.org/etquialias.png?size=400x400&set=set1'),
(20, 'Duobam', 'https://robohash.org/quismagniminima.png?size=400x400&set=set1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(80) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `email_user` varchar(80) NOT NULL,
  `proceso` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
