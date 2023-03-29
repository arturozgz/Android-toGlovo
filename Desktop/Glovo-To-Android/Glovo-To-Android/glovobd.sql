-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2023 a las 20:07:18
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `glovobd`
--
CREATE DATABASE IF NOT EXISTS `glovobd` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `glovobd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebida`
--

CREATE TABLE `bebida` (
  `id_Bebida` int(11) NOT NULL,
  `id_Restaurante` int(2) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Imagen` varchar(255) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bebida`
--

INSERT INTO `bebida` (`id_Bebida`, `id_Restaurante`, `Nombre`, `Imagen`, `Precio`) VALUES
(1, 1, 'Coca-cola', 'https://w7.pngwing.com/pngs/574/913/png-transparent-coca-cola-coca-cola-bottle-glass-bottles.png', '2.99'),
(2, 1, 'Agua mineral', 'https://elfornet.com/media/catalog/product/cache/728587fcd73f36684dd4a1c3c4b36cfb/a/g/agua_sin_gas_01.jpg', '1.99'),
(3, 1, 'Sangría', 'https://images.hola.com/imagenes/cocina/recetas/20200514167988/receta-sangria-clasica/0-823-899/sangria-t.jpg', '4.99'),
(4, 1, 'Vino tinto', 'https://img2.freepng.es/20180525/xfq/kisspng-red-wine-distilled-beverage-pinotage-grape-saffron-5b084bf460bb57.4970590515272703883962.jpg', '22.99'),
(5, 1, 'Cerveza', 'https://www.paulaner.com/content/11-es/1-productos/1-weissbier/modules/1-product_intro-9p648i/bottle-int-1000x1550-hwbn.png', '3.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `id_Plato` int(11) NOT NULL,
  `id_Restaurante` int(2) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(450) NOT NULL,
  `Ingredientes` varchar(450) NOT NULL,
  `Precio` int(3) NOT NULL,
  `Imagen` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`id_Plato`, `id_Restaurante`, `Nombre`, `Descripcion`, `Ingredientes`, `Precio`, `Imagen`) VALUES
(1, 1, 'Cheeseburger', 'Deliciosa hamburguesa de carne de ternera con lechuga, tomate y queso', 'Carne de ternera, lechuga, tomate, queso, pan de hamburguesa', 8, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cheeseburger.jpg/640px-Cheeseburger.jpg'),
(2, 2, 'Kebab Completo', 'Ensalada de lechuga romana, pollo a la parrilla, croutones y salsa César', 'Lechuga romana, pollo, croutones, queso parmesano, salsa César', 10, 'https://estaticos-cdn.prensaiberica.es/clip/5916ba0b-5389-46ce-ae68-9b1ee30d8c1e_16-9-discover-aspect-ratio_default_0_x585y1103.jpg'),
(3, 3, 'Bravas', 'Patatas bravas', 'patatas y salsa brava', 12, 'https://www.lacocinadelila.com/wp-content/uploads/2012/05/patatas-bravas-600x450.jpg'),
(4, 4, 'Pizza napolitana', 'Pizza napolitana autentica', 'Salmón, pimiento rojo, pimiento verde, cebolla, calabacín, aceite de oliva', 18, 'https://lamafia.es/wp-content/uploads/2022/07/pizza-napolitana-1-1024x683.png'),
(5, 5, 'Pollo Tikka Masala', 'Pollo en una salsa cremosa de especias, servido con arroz basmati', 'Pollo, cebolla, jengibre, ajo, tomate, especias indias, leche de coco, arroz basmati', 15, 'https://entrenosotros.consum.es/public/Image/2021/4/adobestock_255420208.jpg'),
(6, 6, 'Cachopo', 'Cachopo', 'Cordero, cebolla, jengibre, ajo, tomate, especias indias, arroz basmati', 17, 'https://imag.bonviveur.com/cachopo-asturiano-de-ternera.jpg'),
(7, 7, 'Pollo Tandoori', 'Pollo marinado en yogur y especias, asado en horno tandoor', 'Pollo, yogur, especias indias, limón, jengibre, ajo', 16, 'https://cocina-casera.com/wp-content/uploads/2015/03/receta-pollo-tandoori.jpg'),
(8, 8, 'Spaghetti Mia Mamma', 'Spaghetti al pesto con albondigas', 'pasta tomate', 13, 'https://d320djwtwnl5uo.cloudfront.net/recetas/cover/spagh_e8DiuI5qVF4d3xokhn0EQAtHJYXSU6.png'),
(9, 9, 'Sushi variado', 'Plato NewDelhi', 'Arroz para sushi, alga nori, salmón, atún, aguacate, pepino, zanahoria', 20, 'https://www.pasaportealatierra.com/wp-content/uploads/2020/11/comida-india-2-1024x768.jpg'),
(10, 10, 'Indu Spicy', 'Arroz con pollo, conejo, garrofó, tomate y azafrán', 'Arroz, pollo, conejo, garrofó, tomate, azafrán', 16, 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2017/10/06/15072762183267.png'),
(11, 1, 'Croquetas Jamón', 'croquetas jamon tomate, pepino, pimiento y ajo', 'Tomate, pepino, pimiento, ajo, aceite de oliva', 9, 'https://www.consumer.es/app/uploads/2021/12/croquetas-precocinadas-elegir.jpg'),
(12, 2, 'Plato Ternera Kebab', 'Plato de berenjenas, carne picada, tomate y bechamel gratinado al horno', 'Berenjena, carne picada, tomate, cebolla, ajo, bechamel', 13, 'https://kebabpak.com/wp-content/uploads/2018/04/46.-Plato-Kebab-a-Domicilio-Guadalajara.png'),
(13, 3, 'Racion Calamares', 'Calamares', 'Lechuga, tomate, pepino, cebolla, aceitunas, queso feta', 10, 'https://recetasdecocina.elmundo.es/wp-content/uploads/2022/03/calamares-a-la-romana.jpg'),
(14, 4, 'Pasta Carbonara', 'Plato de pasta con nata y cordero', ' cordero, caldo de pollo, cebolla, zanahoria, garbanzos, pasas', 15, 'https://images.hola.com/imagenes/cocina/recetas/20210413187685/pasta-aglio-e-olio/0-940-104/aglio-e-oglio-adobe-t.jpg'),
(15, 5, 'Ramen', 'Fideos salsa miso, carne, sushi', 'Fideos orientales con salsa casera', 20, 'https://www.halfbakedharvest.com/wp-content/uploads/2020/02/30-Minute-Creamy-Sesame-Miso-Ramen-with-Crispy-Mushrooms-1.jpg'),
(16, 6, 'Filete con patatas', 'Pasta al pesto rosso con trufa y salsa de tomate', 'Pasta fresca, tomate natural, trufas de campo', 15, 'https://imag.bonviveur.com/filete-de-ternera-a-la-plancha.jpg'),
(17, 7, 'Pollo Teriyaki', 'pollo acompañado de ensalada con patatas', 'pollo de carne rollos de maiz, ensalada de huerta.', 12, 'https://tipsparatuviaje.com/wp-content/uploads/2019/11/comida-japonesa.jpg'),
(18, 8, 'Ravioli', 'ravioli con alga marina, y acompañado de un trozo de guacamole', 'tomate, salmon', 5, 'https://babycocina.com/wp-content/uploads/2021/06/Recetas-de-pastas-italianas.jpg'),
(19, 9, 'Costillas ', 'Costillas con patatas fritas', 'costillas, patatas, sal, especias', 7, 'https://cdn0.recetasgratis.net/es/posts/1/4/0/costillas_carmensita_38041_orig.jpg'),
(20, 10, 'Curry original', 'curry original de la india', 'arroz, curry, carne', 16, 'https://www.gourmet.cl/wp-content/uploads/2022/08/curry-de-garbanzos-ajustada-web-570x458.jpg'),
(21, 1, 'Pollo asado', 'Asado tipico argentino boca yo te amo lololo', 'carne patatas sal aderezo', 15, 'https://i.blogs.es/2c4901/pollo-asado-rapido-treinta-minutos-pakus-futurobloguero/1366_2000.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `id_Restaurante` int(2) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Ventas` int(99) NOT NULL,
  `Puntuacion` int(10) NOT NULL,
  `Imagen` varchar(535) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`id_Restaurante`, `Nombre`, `Tipo`, `Ventas`, `Puntuacion`, `Imagen`) VALUES
(1, 'Taberneta', 'Carnes', 10, 5, 'https://media-cdn.tripadvisor.com/media/photo-s/05/85/fc/3c/la-taberneta-ca-la-ingrid.jpg'),
(2, 'Kebab MariaZambrano', 'Kebab', 23, 5, 'https://comidasegipcias.com/wp-content/uploads/2019/10/doner-kebab-receta.jpg'),
(3, 'Canterbury', 'Tapeo', 29, 5, 'https://www.grupocanterbury.com/wp-content/uploads/local_salamero_interior.jpg'),
(4, 'Ginos', 'Italiano', 54, 4, 'https://media-cdn.tripadvisor.com/media/photo-s/12/e8/d4/ca/ginos-ristorante.jpg'),
(5, 'Miura', 'Japones', 60, 4, 'https://unbuendiaenmadrid.com/wp-content/uploads/2022/08/3ACF6795-8E13-47EF-A655-1932C6C5F5A3-e1663500732241.jpeg'),
(6, 'Cachopos', 'Carnes', 50, 4, 'https://unbuendiaenmadrid.com/wp-content/uploads/2022/08/3ACF6795-8E13-47EF-A655-1932C6C5F5A3-e1663500732241.jpeg'),
(7, 'Mushashi', 'Japones', 79, 3, 'https://images.adsttc.com/media/images/5b22/d9cf/f197/ccfa/2700/010f/newsletter/06075_140925-002D.jpg?1529010631'),
(8, 'Cossa Nosstra', 'Italiano', 73, 3, 'https://www.economiadigital.es/tendenciashoy/wp-content/uploads/2022/06/Foto-Numa-Pompilio-Madrid-1282x780.jpg'),
(9, 'NewDelhi', 'India', 10, 3, 'https://media-cdn.tripadvisor.com/media/photo-s/0f/54/87/17/interior-restaurante.jpg'),
(10, 'Goa', 'India', 20, 2, 'https://media-cdn.tripadvisor.com/media/photo-s/18/1a/a5/40/getlstd-property-photo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(2) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombre`, `Password`, `Email`) VALUES
(1, 'Arthur', '123', 'arthur@gmail');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bebida`
--
ALTER TABLE `bebida`
  ADD PRIMARY KEY (`id_Bebida`),
  ADD KEY `id_Restaurante` (`id_Restaurante`);

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`id_Plato`),
  ADD KEY `id_Restaurante` (`id_Restaurante`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id_Restaurante`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bebida`
--
ALTER TABLE `bebida`
  MODIFY `id_Bebida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `id_Plato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `id_Restaurante` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bebida`
--
ALTER TABLE `bebida`
  ADD CONSTRAINT `bebida_ibfk_1` FOREIGN KEY (`id_Restaurante`) REFERENCES `restaurante` (`id_Restaurante`);

--
-- Filtros para la tabla `platos`
--
ALTER TABLE `platos`
  ADD CONSTRAINT `platos_ibfk_1` FOREIGN KEY (`id_Restaurante`) REFERENCES `restaurante` (`id_Restaurante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
