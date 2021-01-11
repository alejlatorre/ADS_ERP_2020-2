-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-12-2020 a las 19:46:34
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_erp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biconcetl`
--

CREATE TABLE `biconcetl` (
  `idProcesoETL` int(11) NOT NULL,
  `nomProcesoETL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `biconcetl`
--

INSERT INTO `biconcetl` (`idProcesoETL`, `nomProcesoETL`) VALUES
(1, 'Carga_Colaboradores'),
(2, 'Carga_Proveedores'),
(4, 'Carga_Categorias'),
(5, 'Carga_SubCategorias'),
(6, 'Carga_Gerencia'),
(7, 'Carga_Marca'),
(8, 'Carga_Modelo'),
(9, 'Carga_TipoProducto'),
(10, 'Carga_Turno'),
(11, 'Carga_KPI_PROD_A'),
(12, 'Carga_KPI_PROD_B'),
(13, 'Carga_KPI_GRP_A'),
(14, 'Carga_KPI_GRP_B'),
(15, 'Carga_KPI_RRHH_A'),
(16, 'Carga_KPI_RRHH_B'),
(17, 'Carga_KPI_LOG_A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biprocetl`
--

CREATE TABLE `biprocetl` (
  `idFPA` int(11) NOT NULL,
  `fechaActualizacion` date NOT NULL,
  `idProcesoETL` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `estadoProceso` varchar(100) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `biprocetl`
--

INSERT INTO `biprocetl` (`idFPA`, `fechaActualizacion`, `idProcesoETL`, `idPersonal`, `estadoProceso`, `horaInicio`, `horaFin`) VALUES
(1, '2020-11-19', 1, 1, 'Completado', '03:00:00', '03:30:00'),
(2, '2020-11-19', 2, 1, 'Completado', '03:30:00', '04:00:00'),
(4, '2020-11-19', 4, 7, 'Error', '04:30:00', '04:45:00'),
(5, '2020-11-19', 5, 4, 'Completado', '04:30:00', '05:00:00'),
(6, '2020-11-19', 6, 3, 'Retraso', '05:00:00', '05:40:00'),
(7, '2020-11-19', 7, 7, 'Completado', '05:30:00', '06:00:00'),
(8, '2020-11-19', 8, 9, 'Completado', '06:00:00', '06:30:00'),
(9, '2020-11-19', 9, 6, 'Completado', '06:30:00', '07:00:00'),
(10, '2020-11-19', 10, 4, 'Error', '07:00:00', '07:05:00'),
(11, '2020-11-19', 11, 8, 'Completado', '07:00:00', '07:30:00'),
(12, '2020-11-19', 12, 3, 'Completado', '07:30:00', '08:00:00'),
(13, '2020-11-19', 13, 2, 'Completado', '08:00:00', '08:30:00'),
(14, '2020-11-19', 14, 1, 'Completado', '08:30:00', '08:45:00'),
(15, '2020-11-19', 15, 2, 'Error', '08:45:00', '08:47:00'),
(16, '2020-11-19', 16, 1, 'Completado', '08:45:00', '09:00:00'),
(17, '2020-11-19', 17, 1, 'Completado', '09:00:00', '09:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimusuarios`
--

CREATE TABLE `dimusuarios` (
  `idUsuario` varchar(20) NOT NULL,
  `pwUsuario` varchar(20) NOT NULL,
  `rolUsuario` varchar(20) DEFAULT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `apellidoUsuario` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dimusuarios`
--

INSERT INTO `dimusuarios` (`idUsuario`, `pwUsuario`, `rolUsuario`, `nombreUsuario`, `apellidoUsuario`, `fechaNacimiento`) VALUES
('11111111', '24264', 'admin', 'BBBB', 'CCCC', '2020-12-24'),
('1233254', '12235', 'admin', 'asdasdhg', 'fgcbnbg', '1111-11-14'),
('22222222', '24263', 'admin', 'Aaa', 'Bbb', '2020-12-23'),
('31231231', '22003', 'admin', 'asdasd', 'asdasda', '1999-11-14'),
('33333333', '24261', 'admin', 'DDDD', 'EEEE', '2020-12-21'),
('720612312', '22003', 'admin', 'asdasdas', 'asdasd', '1999-11-14'),
('72970608', '16004', 'admin', 'Alejandro', 'Latorre', '1998-08-20'),
('72971111', '1991', 'an_prod', 'TEST_Prod', 'TEST_Prod', '1990-01-01'),
('72972222', '3984', 'an_log', 'TEST_Log', 'TEST_Log', '1991-02-02'),
('72973333', '5979', 'an_rrhh', 'TEST_RRHH', 'TEST_RRHH', '1992-03-03'),
('72974444', '7976', 'an_grp', 'TEST_GRP', 'TEST_GRP', '1993-04-04'),
('72975555', '9975', 'an_bi', 'TEST_BI', 'TEST_BI', '1994-05-05'),
('77775555', '24020', 'admin', 'Test', 'Test2', '2000-12-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grpnuevasoc`
--

CREATE TABLE `grpnuevasoc` (
  `OC` int(11) NOT NULL,
  `Concepto` varchar(100) DEFAULT NULL,
  `Precio` varchar(100) DEFAULT NULL,
  `Proveedor` varchar(100) DEFAULT NULL,
  `CentroCostos` varchar(100) DEFAULT NULL,
  `Cantidad` varchar(100) DEFAULT NULL,
  `Unidad` varchar(100) DEFAULT NULL,
  `FechaCrea_OC` date DEFAULT NULL,
  `Aprob_Legal` varchar(100) DEFAULT NULL,
  `Aprob_Finanzas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grpnuevasoc`
--

INSERT INTO `grpnuevasoc` (`OC`, `Concepto`, `Precio`, `Proveedor`, `CentroCostos`, `Cantidad`, `Unidad`, `FechaCrea_OC`, `Aprob_Legal`, `Aprob_Finanzas`) VALUES
(4, 'Camu Camu', '88', 'Insumos Premium', 'Logística', '7', 'UNI', '2020-10-22', '', ''),
(14, 'Camu Camu 5', '100', 'LUPILUP', 'Lupulo', '456', 'UNID', '2020-12-29', 'PENDIENTE', 'PENDIENTE'),
(15, 'Papel Higienico', '30', 'ALICORP', 'Inteligencia Comercial', '50', 'UNID', '2020-12-19', 'PENDIENTE', 'PENDIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grpocs`
--

CREATE TABLE `grpocs` (
  `id` int(11) NOT NULL,
  `RUC` varchar(11) NOT NULL,
  `RazonSocial` varchar(50) NOT NULL,
  `RepresentanteComercial` varchar(50) NOT NULL,
  `Celular` varchar(9) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Rubro` varchar(200) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grpocs`
--

INSERT INTO `grpocs` (`id`, `RUC`, `RazonSocial`, `RepresentanteComercial`, `Celular`, `Correo`, `Rubro`, `Direccion`, `Descripcion`) VALUES
(1, '20647899991', 'Inversiones Lili', 'Carlos Ruiz Zarate', '989999777', 'carlos.ruiz@inversionesdeko.com', 'Servicios de limpieza', '206478999', 'Empresa con 20 años de experiencia en el mercado con altos estándares de calidad.'),
(2, '22998988922', 'Insumos Premium', 'Fernanda Zavala Paz', '988877222', 'f.zavala@insumospremium.com', 'Comercio', 'Av. Conquistadores 330 - Miraflores', 'Empresa que cuenta con los mejores insumos en el mercado para preparar cerveza artesanal.'),
(3, '20553522777', 'Cerveceros S.A.C', 'Raúl Vargas Perez', '966655535', 'raul.vargas@cerveceros.com', 'Comercio', 'Calle Las Margaritas 120 - Pueblo Libre', 'Empresa con 15 años de experiencia en el mercado que cuenta con los mejores insumos para la producción de cerveza artesanal en el Perú.'),
(4, '21113336788', 'Mis Negocios S.A.C', 'Francisca Zela Cruz', '990303034', 'f.zela@misnegocios.com', 'Servicios', 'Av. Santa Paula 581 - Cercado de Lima', 'Empresa dedicada a la comercialización de productos.'),
(5, '28882222920', 'miguel.castro@homebrew.com', 'Comercio', '288822229', 'Homebrew Peru', 'Miguel Castro Diaz', 'AAA', 'Empresa dedicada a la venta de botellas de vidrio.'),
(10, '20132201325', 'PEPITOS SAC - 2', 'Pepito', '999999999', 'pepito@pepitosac.com', 'Financiera', 'San Carlos 280', '50% MS de cajas financieras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grpremesas`
--

CREATE TABLE `grpremesas` (
  `idFactura` int(11) NOT NULL,
  `numFactura` varchar(100) NOT NULL,
  `NomRemesa` varchar(100) NOT NULL,
  `Ordenante` varchar(100) NOT NULL,
  `RUC` varchar(100) NOT NULL,
  `ConcepFactura` varchar(100) NOT NULL,
  `Fecha_emi` date NOT NULL,
  `Fecha_venc` date NOT NULL,
  `Importe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grpremesas`
--

INSERT INTO `grpremesas` (`idFactura`, `numFactura`, `NomRemesa`, `Ordenante`, `RUC`, `ConcepFactura`, `Fecha_emi`, `Fecha_venc`, `Importe`) VALUES
(1, 'F001-000000010', 'Cebada malteada Pale Ale', 'Analista de compras', '22998988922', 'Factura por cebada malteada Pale Ale', '2020-12-01', '2020-12-11', '100'),
(2, 'F001-000000011', 'Levadura Safale', 'Analista de compras', '20553522777', 'Factura por Levadura Safale', '2020-12-03', '2020-12-14', '550'),
(7, 'F001-000000013', 'Factura por Lúpulo', 'Analista de compras', '34567890999', 'Lupulo', '2020-12-17', '2020-12-24', '100'),
(8, 'F001-000000014', 'Descuento de Facturas', 'Alicorp', '12312312312', 'Descuento por adq. de maq. ', '2020-12-19', '2021-02-19', '600000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logentrada_mp`
--

CREATE TABLE `logentrada_mp` (
  `idPersonal` int(11) NOT NULL,
  `codEntradaMP` int(11) NOT NULL,
  `codMP` int(2) NOT NULL,
  `Cantidad` float NOT NULL,
  `Unidad` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `f_entrada` date NOT NULL,
  `h_entrada` time DEFAULT NULL,
  `fecha_ven` date DEFAULT NULL,
  `T_ref` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `logentrada_mp`
--

INSERT INTO `logentrada_mp` (`idPersonal`, `codEntradaMP`, `codMP`, `Cantidad`, `Unidad`, `f_entrada`, `h_entrada`, `fecha_ven`, `T_ref`) VALUES
(1, 11, 2, 963, 'litros', '2020-12-22', '04:25:00', '2020-12-29', 60),
(2, 12, 5, 666, 'kilogramos', '2020-12-23', '04:25:00', '2021-01-27', 70),
(1, 13, 2, 213, 'litros', '2020-12-20', '02:38:00', '2021-01-26', 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logentrada_pt`
--

CREATE TABLE `logentrada_pt` (
  `idPersonal` int(11) DEFAULT NULL,
  `codEntradaProducto` int(11) NOT NULL,
  `idLote` int(11) DEFAULT NULL,
  `Cantidad` float DEFAULT NULL,
  `Unidad` varchar(25) COLLATE latin1_spanish_ci DEFAULT NULL,
  `f_entrada` date DEFAULT NULL,
  `h_entrada` time DEFAULT NULL,
  `fecha_ven` date DEFAULT NULL,
  `T_ref` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `logentrada_pt`
--

INSERT INTO `logentrada_pt` (`idPersonal`, `codEntradaProducto`, `idLote`, `Cantidad`, `Unidad`, `f_entrada`, `h_entrada`, `fecha_ven`, `T_ref`) VALUES
(1, 9, 7, 213, 'botella', '2020-12-21', '04:25:00', '2020-12-21', 55),
(1, 10, 7, 963, 'botella', '2020-12-22', '02:30:00', '2020-12-22', 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginput`
--

CREATE TABLE `loginput` (
  `codMP` int(11) NOT NULL,
  `nomMP` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Unidad` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `Marca` varchar(35) COLLATE latin1_spanish_ci NOT NULL,
  `T_ref` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `loginput`
--

INSERT INTO `loginput` (`codMP`, `nomMP`, `Unidad`, `Marca`, `T_ref`) VALUES
(1, 'Agua embotellada', 'litros', 'Cielo', 30),
(2, 'Cebada malteada Pale Ale', 'kilogramos', 'Best', 15),
(3, 'Cebada malteada Caramel', 'kilogramos', 'Best', 15),
(4, 'Lúpulo', 'kilogramos', 'Hallertau Hallertauer Tradition', 0),
(5, 'Levadura Safale', 'kilogramos', 'Fermentis', 0),
(6, 'Camu camu', 'kilogramos', 'Wong', 37),
(7, 'Arandanos', 'kilogramos', 'Wong', 37),
(8, 'Maracuya', 'kilogramos', 'Wong', 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logsolcompra`
--

CREATE TABLE `logsolcompra` (
  `idPersonal` int(11) NOT NULL,
  `codSolC` int(11) NOT NULL,
  `codMP` int(2) NOT NULL,
  `Cantidad` float NOT NULL,
  `Unidad` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `f_solicitudc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `logsolcompra`
--

INSERT INTO `logsolcompra` (`idPersonal`, `codSolC`, `codMP`, `Cantidad`, `Unidad`, `f_solicitudc`) VALUES
(1, 24, 3, 666, 'litros', '2020-12-21'),
(3, 25, 5, 4323, 'litros', '2020-12-26'),
(4, 26, 5, 555, 'litros', '2020-12-28'),
(7, 27, 7, 110, 'kilogramos', '2020-12-22'),
(8, 28, 3, 999, 'litros', '2020-12-28'),
(1, 29, 3, 12, 'litros', '2020-12-27'),
(8, 30, 1, 456, 'litros', '2020-12-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logsolprod`
--

CREATE TABLE `logsolprod` (
  `idPersonal` int(11) NOT NULL,
  `codSolP` int(11) NOT NULL,
  `codMP` int(2) NOT NULL,
  `Cantidad` float NOT NULL,
  `Unidad` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `f_solicitudp` date NOT NULL,
  `f_req_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodconexion`
--

CREATE TABLE `prodconexion` (
  `codMP` int(11) NOT NULL,
  `codTipoProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodconexion`
--

INSERT INTO `prodconexion` (`codMP`, `codTipoProducto`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodlinea`
--

CREATE TABLE `prodlinea` (
  `codLinea` int(11) NOT NULL,
  `Unidad` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Cantidad_MP_entrada` int(11) NOT NULL,
  `Cantidad_PT` int(11) NOT NULL,
  `cantidadMerma` int(11) NOT NULL,
  `numOperarios` int(11) NOT NULL,
  `Estado` varchar(20) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodlinea`
--

INSERT INTO `prodlinea` (`codLinea`, `Unidad`, `Cantidad_MP_entrada`, `Cantidad_PT`, `cantidadMerma`, `numOperarios`, `Estado`) VALUES
(1, 'kg', 100, 2000, 10, 5, 'ACTIVA'),
(2, 'kg', 100, 1000, 15, 6, 'ACTIVA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodmaquina`
--

CREATE TABLE `prodmaquina` (
  `codMáquina` int(11) NOT NULL,
  `Tipo` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Capacidad` int(11) NOT NULL,
  `codMarca` int(11) NOT NULL,
  `codModelo` int(11) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_ult_manten` date NOT NULL,
  `nomMaquina` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `codLinea` int(11) NOT NULL,
  `Unidad` varchar(10) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodmaquina`
--

INSERT INTO `prodmaquina` (`codMáquina`, `Tipo`, `Capacidad`, `codMarca`, `codModelo`, `Fecha_inicio`, `Fecha_ult_manten`, `nomMaquina`, `codLinea`, `Unidad`) VALUES
(1, 'Tanque', 1000, 5, 1, '2019-09-04', '2020-01-09', 'Tanque de Cerveza', 1, 'lt'),
(2, 'Tanque', 2000, 6, 2, '2019-07-01', '2020-02-19', 'Tanque de cerveza2', 2, 'lt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodmarca`
--

CREATE TABLE `prodmarca` (
  `codMarca` int(11) NOT NULL,
  `nomMarca` varchar(20) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodmarca`
--

INSERT INTO `prodmarca` (`codMarca`, `nomMarca`) VALUES
(1, 'CERVEZA DU'),
(2, 'CERVEZA ART DU'),
(3, 'RON DU'),
(4, 'PISCO DU'),
(5, 'SK'),
(6, 'BOSCH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodmodelo`
--

CREATE TABLE `prodmodelo` (
  `codModelo` int(11) NOT NULL,
  `nomModelo` varchar(20) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodmodelo`
--

INSERT INTO `prodmodelo` (`codModelo`, `nomModelo`) VALUES
(1, 'TANQUED1'),
(2, 'TANQUED2'),
(3, 'EMBASADORD1'),
(4, 'FERMENTD1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodoperaciones`
--

CREATE TABLE `prodoperaciones` (
  `codOperacion` int(11) NOT NULL,
  `nomOperario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `celOperario` int(11) NOT NULL,
  `idPosicion` int(11) NOT NULL,
  `cantProducida` int(11) NOT NULL,
  `cantNecesaria` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `codLinea` int(11) NOT NULL,
  `codTurno` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodoperaciones`
--

INSERT INTO `prodoperaciones` (`codOperacion`, `nomOperario`, `celOperario`, `idPosicion`, `cantProducida`, `cantNecesaria`, `Fecha`, `codLinea`, `codTurno`, `idPersonal`) VALUES
(1, 'JOSÉ GUERRERO', 967872934, 3, 1500, 2000, '2020-11-20', 1, 1, 3),
(2, 'AGUSTÍN FARFÁN', 987674999, 3, 1200, 1400, '2020-10-30', 1, 2, 3),
(4, 'PAOLO GUERRERO', 123123123, 3, 7000, 500, '2020-12-31', 3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodoutput`
--

CREATE TABLE `prodoutput` (
  `idLote` int(11) NOT NULL,
  `fecha_ven` date NOT NULL,
  `codTipoProducto` int(11) NOT NULL,
  `Observacion` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL,
  `codLinea` int(11) NOT NULL,
  `nomPT` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `cantidadReal` int(11) NOT NULL,
  `cantidadMerma` int(11) NOT NULL,
  `Unidad` varchar(10) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodoutput`
--

INSERT INTO `prodoutput` (`idLote`, `fecha_ven`, `codTipoProducto`, `Observacion`, `Fecha_inicio`, `Fecha_fin`, `codLinea`, `nomPT`, `cantidadReal`, `cantidadMerma`, `Unidad`) VALUES
(12, '2021-11-20', 3, 'PÃ‰SIMA', '2020-11-20', '2020-12-20', 5, 'CERVEZA ART CC11', 300, 5, 'unid'),
(13, '2021-06-26', 750, 'BUENA', '2020-01-01', '2025-12-31', 2, 'CERVEZA ART CC 2', 518, 47, 'UNID'),
(14, '2021-05-23', 79, 'MALA', '2020-12-31', '2025-12-31', 2, 'CERVEZA ART MYA 2', 311, 233, 'UNID'),
(15, '2021-07-20', 496, 'BUENA', '2020-03-09', '2025-12-31', 2, 'CERVEZA ART CC7', 49, 42, 'UNID'),
(16, '2021-05-31', 288, 'BUENA', '2020-11-05', '2025-12-31', 2, 'CERVEZA ART MORA', 322, 20, 'UNID'),
(17, '2021-07-19', 787, 'BUENA', '2020-12-04', '2025-12-31', 3, 'RON', 632, 32, 'UNID'),
(18, '2021-10-07', 424, 'BUENA', '2020-07-18', '2025-12-31', 2, 'CERVEZA ART MYA', 684, 312, 'UNID'),
(19, '2021-03-06', 716, 'BUENA', '2020-06-27', '2025-12-31', 2, 'CERVEZA ART CC7', 561, 11, 'UNID'),
(20, '2021-01-05', 817, 'BUENA', '2020-06-28', '2025-12-31', 3, 'RON', 725, 139, 'UNID'),
(21, '2021-05-04', 264, 'BUENA', '2020-04-08', '2025-12-31', 2, 'CERVEZA ART MYA', 997, 350, 'UNID'),
(22, '2021-10-08', 495, 'BUENA', '2020-07-14', '2025-12-31', 2, 'CERVEZA ART CC5', 9, 1, 'UNID'),
(23, '2021-03-10', 345, 'BUENA', '2020-07-23', '2025-12-31', 2, 'CERVEZA ART CC5', 123, 25, 'UNID'),
(24, '2021-02-13', 316, 'BUENA', '2020-11-10', '2025-12-31', 2, 'CERVEZA ART CC7', 128, 48, 'UNID'),
(25, '2021-01-07', 801, 'BUENA', '2020-05-29', '2025-12-31', 2, 'CERVEZA ART CC', 348, 100, 'UNID'),
(26, '2021-09-17', 316, 'BUENA', '2020-02-21', '2025-12-31', 2, 'CERVEZA ART CC7', 109, 32, 'UNID'),
(27, '2021-03-16', 833, 'BUENA', '2020-08-31', '2025-12-31', 4, 'PISCO', 136, 57, 'UNID'),
(28, '2021-02-09', 269, 'BUENA', '2020-10-18', '2025-12-31', 2, 'CERVEZA ART MYA 2', 915, 863, 'UNID'),
(29, '2021-01-17', 466, 'BUENA', '2020-07-09', '2025-12-31', 2, 'CERVEZA ART CC7', 884, 481, 'UNID'),
(30, '2021-04-02', 66, 'BUENA', '2020-05-19', '2025-12-31', 2, 'CERVEZA ART CC7', 465, 194, 'UNID'),
(31, '2021-04-03', 187, 'BUENA', '2020-06-11', '2025-12-31', 3, 'RON', 531, 4, 'UNID'),
(32, '2021-04-21', 23, 'BUENA', '2020-07-17', '2025-12-31', 4, 'PISCO', 283, 206, 'UNID'),
(33, '2021-05-08', 300, 'MALA', '2020-06-13', '2025-12-31', 2, 'CERVEZA ART CC 2', 854, 782, 'UNID'),
(34, '2021-04-10', 530, 'BUENA', '2020-06-12', '2025-12-31', 2, 'CERVEZA ART CC 2', 499, 446, 'UNID'),
(35, '2021-02-14', 524, 'BUENA', '2020-06-24', '2025-12-31', 2, 'CERVEZA ART MYA', 518, 281, 'UNID'),
(36, '2021-06-11', 956, 'BUENA', '2020-03-27', '2025-12-31', 2, 'CERVEZA ART CC7', 199, 148, 'UNID'),
(37, '2021-02-06', 843, 'BUENA', '2020-09-02', '2025-12-31', 4, 'PISCO', 385, 201, 'UNID'),
(38, '2021-05-25', 902, 'BUENA', '2020-03-10', '2025-12-31', 1, 'CERVEZA ', 511, 100, 'UNID'),
(39, '2021-03-12', 919, 'BUENA', '2020-05-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 630, 150, 'UNID'),
(40, '2021-08-31', 679, 'BUENA', '2020-09-27', '2025-12-31', 2, 'CERVEZA ART MYA 2', 279, 216, 'UNID'),
(41, '2021-01-07', 881, 'BUENA', '2020-09-20', '2025-12-31', 2, 'CERVEZA ART CC', 275, 65, 'UNID'),
(42, '2021-07-26', 378, 'BUENA', '2020-01-23', '2025-12-31', 2, 'CERVEZA ART MORA', 574, 377, 'UNID'),
(43, '2021-01-20', 244, 'BUENA', '2020-04-20', '2025-12-31', 2, 'CERVEZA ART MYA', 999, 777, 'UNID'),
(44, '2021-01-24', 102, 'BUENA', '2020-06-18', '2025-12-31', 1, 'CERVEZA ', 767, 653, 'UNID'),
(45, '2021-01-25', 288, 'BUENA', '2020-06-22', '2025-12-31', 2, 'CERVEZA ART MORA', 183, 133, 'UNID'),
(46, '2021-02-22', 330, 'BUENA', '2020-08-30', '2025-12-31', 2, 'CERVEZA ART CC 2', 843, 738, 'UNID'),
(47, '2021-05-04', 530, 'BUENA', '2020-06-24', '2025-12-31', 2, 'CERVEZA ART CC 2', 89, 31, 'UNID'),
(48, '2021-09-29', 94, 'BUENA', '2020-03-02', '2025-12-31', 2, 'CERVEZA ART MYA', 416, 160, 'UNID'),
(49, '2021-08-20', 182, 'BUENA', '2020-03-05', '2025-12-31', 1, 'CERVEZA ', 45, 1, 'UNID'),
(50, '2021-09-07', 930, 'BUENA', '2020-03-01', '2025-12-31', 2, 'CERVEZA ART CC 2', 157, 106, 'UNID'),
(51, '2021-08-12', 207, 'BUENA', '2020-05-24', '2025-12-31', 3, 'RON', 513, 158, 'UNID'),
(52, '2021-08-13', 513, 'BUENA', '2020-05-20', '2025-12-31', 4, 'PISCO', 723, 585, 'UNID'),
(53, '2021-01-10', 128, 'BUENA', '2020-09-10', '2025-12-31', 2, 'CERVEZA ART MORA', 895, 144, 'UNID'),
(54, '2021-06-08', 655, 'BUENA', '2020-02-24', '2025-12-31', 2, 'CERVEZA ART CC5', 373, 252, 'UNID'),
(55, '2021-08-02', 718, 'BUENA', '2020-10-30', '2025-12-31', 2, 'CERVEZA ART MORA', 863, 301, 'UNID'),
(56, '2021-02-21', 938, 'BUENA', '2020-02-12', '2025-12-31', 2, 'CERVEZA ART MORA', 17, 5, 'UNID'),
(57, '2021-07-19', 906, 'BUENA', '2020-11-22', '2025-12-31', 2, 'CERVEZA ART CC7', 629, 121, 'UNID'),
(58, '2021-03-28', 366, 'BUENA', '2020-04-03', '2025-12-31', 2, 'CERVEZA ART CC7', 94, 60, 'UNID'),
(59, '2021-08-09', 648, 'BUENA', '2020-01-23', '2025-12-31', 2, 'CERVEZA ART MORA', 960, 862, 'UNID'),
(60, '2021-02-02', 698, 'BUENA', '2020-11-22', '2025-12-31', 2, 'CERVEZA ART MORA', 695, 169, 'UNID'),
(61, '2021-10-21', 610, 'BUENA', '2020-02-05', '2025-12-31', 2, 'CERVEZA ART CC 2', 407, 403, 'UNID'),
(62, '2021-04-10', 557, 'BUENA', '2020-12-23', '2025-12-31', 3, 'RON', 383, 118, 'UNID'),
(63, '2021-06-24', 330, 'BUENA', '2020-06-06', '2025-12-31', 2, 'CERVEZA ART CC 2', 549, 485, 'UNID'),
(64, '2021-09-18', 373, 'BUENA', '2020-08-20', '2025-12-31', 4, 'PISCO', 570, 54, 'UNID'),
(65, '2021-07-18', 245, 'BUENA', '2020-02-05', '2025-12-31', 2, 'CERVEZA ART CC5', 570, 442, 'UNID'),
(66, '2021-08-12', 562, 'BUENA', '2020-09-11', '2025-12-31', 1, 'CERVEZA ', 818, 702, 'UNID'),
(67, '2021-09-08', 843, 'BUENA', '2020-04-04', '2025-12-31', 4, 'PISCO', 142, 23, 'UNID'),
(68, '2021-04-16', 181, 'BUENA', '2020-07-09', '2025-12-31', 2, 'CERVEZA ART CC', 106, 49, 'UNID'),
(69, '2021-10-18', 941, 'BUENA', '2020-09-09', '2025-12-31', 2, 'CERVEZA ART CC', 456, 430, 'UNID'),
(70, '2021-06-22', 906, 'BUENA', '2020-08-20', '2025-12-31', 2, 'CERVEZA ART CC7', 707, 494, 'UNID'),
(71, '2021-08-13', 79, 'BUENA', '2020-08-21', '2025-12-31', 2, 'CERVEZA ART MYA 2', 6, 5, 'UNID'),
(72, '2021-01-23', 888, 'BUENA', '2020-07-06', '2025-12-31', 2, 'CERVEZA ART MORA', 756, 377, 'UNID'),
(73, '2021-04-12', 996, 'MALA', '2020-07-10', '2025-12-31', 2, 'CERVEZA ART CC7', 556, 179, 'UNID'),
(74, '2021-04-15', 872, 'BUENA', '2020-08-20', '2025-12-31', 1, 'CERVEZA ', 505, 487, 'UNID'),
(75, '2021-09-15', 376, 'BUENA', '2020-02-27', '2025-12-31', 2, 'CERVEZA ART CC7', 3, 2, 'UNID'),
(76, '2021-04-18', 811, 'BUENA', '2020-01-30', '2025-12-31', 2, 'CERVEZA ART CC', 328, 251, 'UNID'),
(77, '2021-03-13', 653, 'BUENA', '2020-07-04', '2025-12-31', 4, 'PISCO', 240, 53, 'UNID'),
(78, '2021-10-06', 475, 'BUENA', '2020-01-25', '2025-12-31', 2, 'CERVEZA ART CC5', 785, 243, 'UNID'),
(79, '2021-10-21', 160, 'BUENA', '2020-08-20', '2025-12-31', 2, 'CERVEZA ART CC 2', 236, 80, 'UNID'),
(80, '2021-02-12', 37, 'BUENA', '2020-10-10', '2025-12-31', 3, 'RON', 289, 85, 'UNID'),
(81, '2021-03-05', 742, 'BUENA', '2020-11-15', '2025-12-31', 1, 'CERVEZA ', 850, 100, 'UNID'),
(82, '2021-01-21', 208, 'BUENA', '2020-04-09', '2025-12-31', 2, 'CERVEZA ART MORA', 181, 3, 'UNID'),
(83, '2021-08-04', 715, 'BUENA', '2020-02-20', '2025-12-31', 2, 'CERVEZA ART CC5', 833, 436, 'UNID'),
(84, '2021-06-29', 843, 'BUENA', '2020-11-15', '2025-12-31', 4, 'PISCO', 487, 413, 'UNID'),
(85, '2021-07-18', 985, 'BUENA', '2020-11-06', '2025-12-31', 2, 'CERVEZA ART CC5', 126, 79, 'UNID'),
(86, '2021-03-21', 111, 'BUENA', '2020-11-20', '2025-12-31', 2, 'CERVEZA ART CC', 74, 45, 'UNID'),
(87, '2021-09-15', 516, 'BUENA', '2020-01-15', '2025-12-31', 2, 'CERVEZA ART CC7', 251, 52, 'UNID'),
(88, '2021-01-21', 641, 'BUENA', '2020-11-27', '2025-12-31', 2, 'CERVEZA ART CC', 676, 314, 'UNID'),
(89, '2021-05-04', 473, 'BUENA', '2020-12-29', '2025-12-31', 4, 'PISCO', 524, 499, 'UNID'),
(90, '2021-04-09', 447, 'BUENA', '2020-12-26', '2025-12-31', 3, 'RON', 362, 361, 'UNID'),
(91, '2021-09-24', 910, 'MALA', '2020-11-04', '2025-12-31', 2, 'CERVEZA ART CC 2', 52, 26, 'UNID'),
(92, '2021-07-02', 483, 'BUENA', '2020-03-16', '2025-12-31', 4, 'PISCO', 721, 452, 'UNID'),
(93, '2021-09-22', 987, 'BUENA', '2020-05-02', '2025-12-31', 3, 'RON', 664, 143, 'UNID'),
(94, '2021-03-14', 34, 'BUENA', '2020-08-06', '2025-12-31', 2, 'CERVEZA ART MYA', 108, 62, 'UNID'),
(95, '2021-05-16', 937, 'BUENA', '2020-08-28', '2025-12-31', 3, 'RON', 857, 324, 'UNID'),
(96, '2021-02-13', 996, 'BUENA', '2020-06-03', '2025-12-31', 2, 'CERVEZA ART CC7', 724, 416, 'UNID'),
(97, '2021-10-04', 660, 'BUENA', '2020-11-03', '2025-12-31', 2, 'CERVEZA ART CC 2', 618, 390, 'UNID'),
(98, '2021-05-31', 318, 'BUENA', '2020-11-11', '2025-12-31', 2, 'CERVEZA ART MORA', 626, 149, 'UNID'),
(99, '2021-05-07', 921, 'BUENA', '2020-11-23', '2025-12-31', 2, 'CERVEZA ART CC', 338, 209, 'UNID'),
(100, '2021-06-15', 252, 'BUENA', '2020-07-17', '2025-12-31', 1, 'CERVEZA ', 371, 36, 'UNID'),
(101, '2021-09-25', 916, 'BUENA', '2020-12-23', '2025-12-31', 2, 'CERVEZA ART CC7', 96, 23, 'UNID'),
(102, '2021-09-29', 85, 'BUENA', '2020-07-05', '2025-12-31', 2, 'CERVEZA ART CC5', 287, 222, 'UNID'),
(103, '2021-05-21', 177, 'BUENA', '2020-10-24', '2025-12-31', 3, 'RON', 931, 84, 'UNID'),
(104, '2021-03-01', 360, 'BUENA', '2020-02-15', '2025-12-31', 2, 'CERVEZA ART CC 2', 686, 631, 'UNID'),
(105, '2021-08-27', 761, 'MALA', '2020-01-24', '2025-12-31', 2, 'CERVEZA ART CC', 647, 641, 'UNID'),
(106, '2021-05-23', 538, 'MALA', '2020-10-23', '2025-12-31', 2, 'CERVEZA ART MORA', 78, 50, 'UNID'),
(107, '2021-05-16', 891, 'MALA', '2020-11-26', '2025-12-31', 2, 'CERVEZA ART CC', 998, 889, 'UNID'),
(108, '2021-04-04', 763, 'MALA', '2020-04-29', '2025-12-31', 4, 'PISCO', 683, 627, 'UNID'),
(109, '2021-05-14', 810, 'BUENA', '2020-08-21', '2025-12-31', 2, 'CERVEZA ART CC 2', 100, 47, 'UNID'),
(110, '2021-10-20', 81, 'BUENA', '2020-09-14', '2025-12-31', 2, 'CERVEZA ART CC', 809, 91, 'UNID'),
(111, '2021-07-05', 316, 'BUENA', '2020-01-31', '2025-12-31', 2, 'CERVEZA ART CC7', 701, 49, 'UNID'),
(112, '2021-05-13', 630, 'BUENA', '2020-01-12', '2025-12-31', 2, 'CERVEZA ART CC 2', 610, 500, 'UNID'),
(113, '2021-09-09', 616, 'BUENA', '2020-07-01', '2025-12-31', 2, 'CERVEZA ART CC7', 834, 269, 'UNID'),
(114, '2021-06-09', 236, 'BUENA', '2020-09-21', '2025-12-31', 2, 'CERVEZA ART CC7', 168, 77, 'UNID'),
(115, '2021-07-12', 532, 'BUENA', '2020-09-28', '2025-12-31', 1, 'CERVEZA ', 553, 438, 'UNID'),
(116, '2021-07-10', 940, 'BUENA', '2020-10-17', '2025-12-31', 2, 'CERVEZA ART CC 2', 210, 67, 'UNID'),
(117, '2021-07-10', 996, 'BUENA', '2020-11-01', '2025-12-31', 2, 'CERVEZA ART CC7', 424, 54, 'UNID'),
(118, '2021-09-20', 812, 'BUENA', '2020-12-15', '2025-12-31', 1, 'CERVEZA ', 525, 254, 'UNID'),
(119, '2021-07-14', 606, 'BUENA', '2020-04-26', '2025-12-31', 2, 'CERVEZA ART CC7', 337, 254, 'UNID'),
(120, '2021-04-15', 740, 'BUENA', '2020-10-25', '2025-12-31', 2, 'CERVEZA ART CC 2', 98, 57, 'UNID'),
(121, '2021-03-11', 167, 'BUENA', '2020-12-13', '2025-12-31', 3, 'RON', 268, 167, 'UNID'),
(122, '2021-01-01', 441, 'BUENA', '2020-12-23', '2025-12-31', 2, 'CERVEZA ART CC', 963, 357, 'UNID'),
(123, '2021-01-25', 437, 'BUENA', '2020-06-10', '2025-12-31', 3, 'RON', 222, 153, 'UNID'),
(124, '2021-08-05', 524, 'BUENA', '2020-03-26', '2025-12-31', 2, 'CERVEZA ART MYA', 840, 328, 'UNID'),
(125, '2021-04-26', 953, 'BUENA', '2020-10-30', '2025-12-31', 4, 'PISCO', 770, 409, 'UNID'),
(126, '2021-08-07', 950, 'BUENA', '2020-12-01', '2025-12-31', 2, 'CERVEZA ART CC 2', 438, 336, 'UNID'),
(127, '2021-05-30', 887, 'MALA', '2020-01-12', '2025-12-31', 3, 'RON', 226, 222, 'UNID'),
(128, '2021-06-06', 70, 'MALA', '2020-10-17', '2025-12-31', 2, 'CERVEZA ART CC 2', 524, 502, 'UNID'),
(129, '2021-01-19', 271, 'MALA', '2020-08-05', '2025-12-31', 2, 'CERVEZA ART CC', 128, 88, 'UNID'),
(130, '2021-02-03', 280, 'MALA', '2020-05-01', '2025-12-31', 2, 'CERVEZA ART CC 2', 180, 171, 'UNID'),
(131, '2021-08-20', 11, 'MALA', '2020-07-18', '2025-12-31', 2, 'CERVEZA ART CC', 375, 144, 'UNID'),
(132, '2021-08-13', 782, 'MALA', '2020-05-23', '2025-12-31', 1, 'CERVEZA ', 44, 6, 'UNID'),
(133, '2021-01-17', 625, 'MALA', '2020-03-06', '2025-12-31', 2, 'CERVEZA ART CC5', 578, 443, 'UNID'),
(134, '2021-03-07', 972, 'MALA', '2020-10-06', '2025-12-31', 1, 'CERVEZA ', 525, 12, 'UNID'),
(135, '2021-05-11', 835, 'MALA', '2020-03-27', '2025-12-31', 2, 'CERVEZA ART CC5', 513, 470, 'UNID'),
(136, '2021-08-10', 528, 'BUENA', '2020-08-14', '2025-12-31', 2, 'CERVEZA ART MORA', 824, 564, 'UNID'),
(137, '2021-10-25', 1, 'BUENA', '2020-02-29', '2025-12-31', 2, 'CERVEZA ART CC', 274, 166, 'UNID'),
(138, '2021-01-13', 662, 'BUENA', '2020-05-11', '2025-12-31', 1, 'CERVEZA ', 143, 86, 'UNID'),
(139, '2021-10-31', 593, 'BUENA', '2020-02-06', '2025-12-31', 4, 'PISCO', 548, 468, 'UNID'),
(140, '2021-01-26', 965, 'BUENA', '2020-05-01', '2025-12-31', 2, 'CERVEZA ART CC5', 959, 478, 'UNID'),
(141, '2021-07-16', 741, 'BUENA', '2020-11-14', '2025-12-31', 2, 'CERVEZA ART CC', 138, 37, 'UNID'),
(142, '2021-05-28', 587, 'BUENA', '2020-09-22', '2025-12-31', 3, 'RON', 430, 330, 'UNID'),
(143, '2021-09-26', 531, 'BUENA', '2020-02-25', '2025-12-31', 2, 'CERVEZA ART CC', 316, 19, 'UNID'),
(144, '2021-10-12', 455, 'BUENA', '2020-08-14', '2025-12-31', 2, 'CERVEZA ART CC5', 84, 28, 'UNID'),
(145, '2021-05-29', 327, 'BUENA', '2020-08-29', '2025-12-31', 3, 'RON', 500, 387, 'UNID'),
(146, '2021-01-18', 379, 'BUENA', '2020-09-11', '2025-12-31', 2, 'CERVEZA ART MYA 2', 372, 104, 'UNID'),
(147, '2021-10-06', 74, 'BUENA', '2020-09-19', '2025-12-31', 2, 'CERVEZA ART MYA', 455, 193, 'UNID'),
(148, '2021-04-15', 696, 'BUENA', '2020-11-22', '2025-12-31', 2, 'CERVEZA ART CC7', 914, 106, 'UNID'),
(149, '2021-03-17', 99, 'BUENA', '2020-05-22', '2025-12-31', 2, 'CERVEZA ART MYA 2', 728, 467, 'UNID'),
(150, '2021-04-28', 418, 'BUENA', '2020-10-09', '2025-12-31', 2, 'CERVEZA ART MORA', 176, 24, 'UNID'),
(151, '2021-07-31', 838, 'BUENA', '2020-11-19', '2025-12-31', 2, 'CERVEZA ART MORA', 475, 475, 'UNID'),
(152, '2021-02-06', 960, 'BUENA', '2020-12-31', '2025-12-31', 2, 'CERVEZA ART CC 2', 244, 96, 'UNID'),
(153, '2021-09-02', 193, 'BUENA', '2020-10-01', '2025-12-31', 4, 'PISCO', 968, 72, 'UNID'),
(154, '2021-07-25', 147, 'BUENA', '2020-06-14', '2025-12-31', 3, 'RON', 890, 165, 'UNID'),
(155, '2021-06-01', 541, 'BUENA', '2020-12-19', '2025-12-31', 2, 'CERVEZA ART CC', 134, 20, 'UNID'),
(156, '2021-01-23', 568, 'BUENA', '2020-03-22', '2025-12-31', 2, 'CERVEZA ART MORA', 491, 64, 'UNID'),
(157, '2021-10-06', 962, 'BUENA', '2020-12-01', '2025-12-31', 1, 'CERVEZA ', 252, 29, 'UNID'),
(158, '2021-03-14', 217, 'BUENA', '2020-09-12', '2025-12-31', 3, 'RON', 915, 649, 'UNID'),
(159, '2021-10-07', 847, 'BUENA', '2020-12-27', '2025-12-31', 3, 'RON', 134, 43, 'UNID'),
(160, '2021-01-08', 905, 'BUENA', '2020-06-26', '2025-12-31', 2, 'CERVEZA ART CC5', 914, 907, 'UNID'),
(161, '2021-02-12', 468, 'BUENA', '2020-09-16', '2025-12-31', 2, 'CERVEZA ART MORA', 598, 563, 'UNID'),
(162, '2021-03-01', 684, 'MALA', '2020-05-14', '2025-12-31', 2, 'CERVEZA ART MYA', 554, 443, 'UNID'),
(163, '2021-04-05', 360, 'BUENA', '2020-09-19', '2025-12-31', 2, 'CERVEZA ART CC 2', 16, 16, 'UNID'),
(164, '2021-05-31', 330, 'BUENA', '2020-12-08', '2025-12-31', 2, 'CERVEZA ART CC 2', 499, 275, 'UNID'),
(165, '2021-05-30', 619, 'BUENA', '2020-11-29', '2025-12-31', 2, 'CERVEZA ART MYA 2', 499, 323, 'UNID'),
(166, '2021-02-13', 788, 'BUENA', '2020-12-06', '2025-12-31', 2, 'CERVEZA ART MORA', 399, 204, 'UNID'),
(167, '2021-07-02', 769, 'BUENA', '2020-08-12', '2025-12-31', 2, 'CERVEZA ART MYA 2', 763, 188, 'UNID'),
(168, '2021-03-22', 742, 'BUENA', '2020-06-12', '2025-12-31', 1, 'CERVEZA ', 303, 70, 'UNID'),
(169, '2021-08-18', 424, 'BUENA', '2020-03-07', '2025-12-31', 2, 'CERVEZA ART MYA', 999, 431, 'UNID'),
(170, '2021-08-03', 413, 'BUENA', '2020-11-06', '2025-12-31', 4, 'PISCO', 658, 504, 'UNID'),
(171, '2021-06-27', 275, 'BUENA', '2020-11-09', '2025-12-31', 2, 'CERVEZA ART CC5', 509, 246, 'UNID'),
(172, '2021-10-02', 264, 'BUENA', '2020-09-21', '2025-12-31', 2, 'CERVEZA ART MYA', 918, 201, 'UNID'),
(173, '2021-08-06', 744, 'BUENA', '2020-10-22', '2025-12-31', 2, 'CERVEZA ART MYA', 717, 702, 'UNID'),
(174, '2021-01-14', 729, 'BUENA', '2020-03-23', '2025-12-31', 2, 'CERVEZA ART MYA 2', 482, 193, 'UNID'),
(175, '2021-10-24', 318, 'BUENA', '2020-06-21', '2025-12-31', 2, 'CERVEZA ART MORA', 183, 30, 'UNID'),
(176, '2021-01-22', 676, 'BUENA', '2020-01-01', '2025-12-31', 2, 'CERVEZA ART CC7', 194, 94, 'UNID'),
(177, '2021-09-10', 321, 'BUENA', '2020-05-03', '2025-12-31', 2, 'CERVEZA ART CC', 382, 244, 'UNID'),
(178, '2021-09-02', 497, 'BUENA', '2020-06-08', '2025-12-31', 3, 'RON', 883, 505, 'UNID'),
(179, '2021-10-10', 704, 'BUENA', '2020-02-20', '2025-12-31', 2, 'CERVEZA ART MYA', 367, 278, 'UNID'),
(180, '2021-03-16', 137, 'BUENA', '2020-02-10', '2025-12-31', 3, 'RON', 670, 291, 'UNID'),
(181, '2021-03-03', 744, 'MALA', '2020-03-16', '2025-12-31', 2, 'CERVEZA ART MYA', 649, 445, 'UNID'),
(182, '2021-06-27', 459, 'BUENA', '2020-05-22', '2025-12-31', 2, 'CERVEZA ART MYA 2', 869, 39, 'UNID'),
(183, '2021-02-06', 391, 'BUENA', '2020-12-08', '2025-12-31', 2, 'CERVEZA ART CC', 909, 501, 'UNID'),
(184, '2021-08-03', 672, 'BUENA', '2020-09-19', '2025-12-31', 1, 'CERVEZA ', 585, 365, 'UNID'),
(185, '2021-10-31', 810, 'BUENA', '2020-01-18', '2025-12-31', 2, 'CERVEZA ART CC 2', 27, 23, 'UNID'),
(186, '2021-06-18', 832, 'BUENA', '2020-08-24', '2025-12-31', 1, 'CERVEZA ', 595, 562, 'UNID'),
(187, '2021-08-22', 280, 'BUENA', '2020-03-06', '2025-12-31', 2, 'CERVEZA ART CC 2', 21, 7, 'UNID'),
(188, '2021-06-18', 254, 'BUENA', '2020-11-14', '2025-12-31', 2, 'CERVEZA ART MYA', 994, 627, 'UNID'),
(189, '2021-09-19', 895, 'BUENA', '2020-09-30', '2025-12-31', 2, 'CERVEZA ART CC5', 507, 417, 'UNID'),
(190, '2021-10-20', 242, 'BUENA', '2020-12-28', '2025-12-31', 1, 'CERVEZA ', 454, 195, 'UNID'),
(191, '2021-08-20', 293, 'BUENA', '2020-08-25', '2025-12-31', 4, 'PISCO', 721, 661, 'UNID'),
(192, '2021-10-04', 786, 'BUENA', '2020-12-23', '2025-12-31', 2, 'CERVEZA ART CC7', 486, 47, 'UNID'),
(193, '2021-01-03', 936, 'BUENA', '2020-02-03', '2025-12-31', 2, 'CERVEZA ART CC7', 156, 45, 'UNID'),
(194, '2021-09-23', 639, 'BUENA', '2020-09-15', '2025-12-31', 2, 'CERVEZA ART MYA 2', 368, 39, 'UNID'),
(195, '2021-02-26', 608, 'BUENA', '2020-12-31', '2025-12-31', 2, 'CERVEZA ART MORA', 334, 30, 'UNID'),
(196, '2021-03-01', 510, 'BUENA', '2020-09-25', '2025-12-31', 2, 'CERVEZA ART CC 2', 210, 98, 'UNID'),
(197, '2021-05-25', 96, 'BUENA', '2020-10-01', '2025-12-31', 2, 'CERVEZA ART CC7', 772, 365, 'UNID'),
(198, '2021-01-04', 894, 'BUENA', '2020-12-22', '2025-12-31', 2, 'CERVEZA ART MYA', 990, 863, 'UNID'),
(199, '2021-07-15', 812, 'BUENA', '2020-06-02', '2025-12-31', 1, 'CERVEZA ', 885, 841, 'UNID'),
(200, '2021-03-30', 249, 'BUENA', '2020-12-30', '2025-12-31', 2, 'CERVEZA ART MYA 2', 699, 131, 'UNID'),
(201, '2021-08-09', 52, 'BUENA', '2020-04-26', '2025-12-31', 1, 'CERVEZA ', 455, 192, 'UNID'),
(202, '2021-07-20', 112, 'BUENA', '2020-12-20', '2025-12-31', 1, 'CERVEZA ', 265, 136, 'UNID'),
(203, '2021-03-16', 388, 'BUENA', '2020-12-15', '2025-12-31', 2, 'CERVEZA ART MORA', 569, 20, 'UNID'),
(204, '2021-10-31', 515, 'BUENA', '2020-10-12', '2025-12-31', 2, 'CERVEZA ART CC5', 214, 73, 'UNID'),
(205, '2021-10-30', 92, 'BUENA', '2020-11-28', '2025-12-31', 1, 'CERVEZA ', 17, 13, 'UNID'),
(206, '2021-04-23', 924, 'BUENA', '2020-08-22', '2025-12-31', 2, 'CERVEZA ART MYA', 37, 30, 'UNID'),
(207, '2021-08-25', 653, 'BUENA', '2020-08-19', '2025-12-31', 4, 'PISCO', 86, 61, 'UNID'),
(208, '2021-08-21', 260, 'BUENA', '2020-09-21', '2025-12-31', 2, 'CERVEZA ART CC 2', 51, 50, 'UNID'),
(209, '2021-06-15', 534, 'BUENA', '2020-02-04', '2025-12-31', 2, 'CERVEZA ART MYA', 628, 29, 'UNID'),
(210, '2021-08-01', 56, 'BUENA', '2020-06-26', '2025-12-31', 2, 'CERVEZA ART CC7', 154, 16, 'UNID'),
(211, '2021-08-24', 609, 'BUENA', '2020-05-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 195, 159, 'UNID'),
(212, '2021-10-18', 128, 'BUENA', '2020-11-04', '2025-12-31', 2, 'CERVEZA ART MORA', 950, 472, 'UNID'),
(213, '2021-01-02', 869, 'BUENA', '2020-12-20', '2025-12-31', 2, 'CERVEZA ART MYA 2', 989, 61, 'UNID'),
(214, '2021-06-27', 279, 'BUENA', '2020-04-21', '2025-12-31', 2, 'CERVEZA ART MYA 2', 510, 448, 'UNID'),
(215, '2021-04-02', 315, 'BUENA', '2020-09-27', '2025-12-31', 2, 'CERVEZA ART CC5', 595, 46, 'UNID'),
(216, '2021-08-18', 934, 'BUENA', '2020-08-13', '2025-12-31', 2, 'CERVEZA ART MYA', 419, 159, 'UNID'),
(217, '2021-05-16', 172, 'BUENA', '2020-12-01', '2025-12-31', 1, 'CERVEZA ', 464, 129, 'UNID'),
(218, '2021-05-07', 918, 'BUENA', '2020-10-31', '2025-12-31', 2, 'CERVEZA ART MORA', 867, 690, 'UNID'),
(219, '2021-08-17', 187, 'BUENA', '2020-01-29', '2025-12-31', 3, 'RON', 573, 191, 'UNID'),
(220, '2021-06-21', 597, 'BUENA', '2020-11-12', '2025-12-31', 3, 'RON', 536, 363, 'UNID'),
(221, '2021-09-06', 458, 'BUENA', '2020-05-09', '2025-12-31', 2, 'CERVEZA ART MORA', 138, 33, 'UNID'),
(222, '2021-06-28', 339, 'BUENA', '2020-10-28', '2025-12-31', 2, 'CERVEZA ART MYA 2', 814, 349, 'UNID'),
(223, '2021-04-01', 631, 'BUENA', '2020-10-24', '2025-12-31', 2, 'CERVEZA ART CC', 566, 19, 'UNID'),
(224, '2021-10-05', 860, 'BUENA', '2020-08-16', '2025-12-31', 2, 'CERVEZA ART CC 2', 514, 320, 'UNID'),
(225, '2021-01-21', 156, 'BUENA', '2020-05-02', '2025-12-31', 2, 'CERVEZA ART CC7', 41, 22, 'UNID'),
(226, '2021-08-26', 80, 'BUENA', '2020-04-22', '2025-12-31', 2, 'CERVEZA ART CC 2', 289, 277, 'UNID'),
(227, '2021-01-17', 397, 'BUENA', '2020-02-13', '2025-12-31', 3, 'RON', 399, 271, 'UNID'),
(228, '2021-06-19', 255, 'BUENA', '2020-03-30', '2025-12-31', 2, 'CERVEZA ART CC5', 175, 107, 'UNID'),
(229, '2021-02-22', 680, 'MALA', '2020-02-04', '2025-12-31', 2, 'CERVEZA ART CC 2', 732, 59, 'UNID'),
(230, '2021-03-04', 25, 'BUENA', '2020-10-24', '2025-12-31', 2, 'CERVEZA ART CC5', 139, 53, 'UNID'),
(231, '2021-06-26', 80, 'BUENA', '2020-08-28', '2025-12-31', 2, 'CERVEZA ART CC 2', 729, 258, 'UNID'),
(232, '2021-05-20', 974, 'BUENA', '2020-02-04', '2025-12-31', 2, 'CERVEZA ART MYA', 820, 91, 'UNID'),
(233, '2021-04-17', 444, 'MALA', '2020-09-10', '2025-12-31', 2, 'CERVEZA ART MYA', 135, 89, 'UNID'),
(234, '2021-06-19', 53, 'BUENA', '2020-04-01', '2025-12-31', 4, 'PISCO', 460, 438, 'UNID'),
(235, '2021-09-15', 625, 'BUENA', '2020-12-27', '2025-12-31', 2, 'CERVEZA ART CC5', 120, 12, 'UNID'),
(236, '2021-04-11', 543, 'BUENA', '2020-08-13', '2025-12-31', 4, 'PISCO', 578, 105, 'UNID'),
(237, '2021-03-03', 141, 'BUENA', '2020-01-08', '2025-12-31', 2, 'CERVEZA ART CC', 35, 3, 'UNID'),
(238, '2021-08-15', 662, 'BUENA', '2020-09-13', '2025-12-31', 1, 'CERVEZA ', 65, 19, 'UNID'),
(239, '2021-06-13', 641, 'BUENA', '2020-10-22', '2025-12-31', 2, 'CERVEZA ART CC', 429, 242, 'UNID'),
(240, '2021-09-17', 137, 'BUENA', '2020-07-08', '2025-12-31', 3, 'RON', 613, 554, 'UNID'),
(241, '2021-03-21', 162, 'BUENA', '2020-08-31', '2025-12-31', 1, 'CERVEZA ', 906, 34, 'UNID'),
(242, '2021-02-13', 942, 'BUENA', '2020-08-05', '2025-12-31', 1, 'CERVEZA ', 753, 351, 'UNID'),
(243, '2021-03-30', 473, 'BUENA', '2020-10-23', '2025-12-31', 4, 'PISCO', 308, 160, 'UNID'),
(244, '2021-08-16', 402, 'BUENA', '2020-09-06', '2025-12-31', 1, 'CERVEZA ', 116, 104, 'UNID'),
(245, '2021-09-25', 340, 'BUENA', '2020-12-30', '2025-12-31', 2, 'CERVEZA ART CC 2', 881, 133, 'UNID'),
(246, '2021-05-20', 258, 'BUENA', '2020-03-08', '2025-12-31', 2, 'CERVEZA ART MORA', 63, 33, 'UNID'),
(247, '2021-01-28', 516, 'BUENA', '2020-03-03', '2025-12-31', 2, 'CERVEZA ART CC7', 42, 39, 'UNID'),
(248, '2021-02-19', 918, 'BUENA', '2020-02-12', '2025-12-31', 2, 'CERVEZA ART MORA', 891, 262, 'UNID'),
(249, '2021-08-23', 155, 'MALA', '2020-08-10', '2025-12-31', 2, 'CERVEZA ART CC5', 875, 198, 'UNID'),
(250, '2021-02-12', 763, 'MALA', '2020-04-18', '2025-12-31', 4, 'PISCO', 907, 137, 'UNID'),
(251, '2021-09-15', 251, 'MALA', '2020-06-09', '2025-12-31', 2, 'CERVEZA ART CC', 292, 235, 'UNID'),
(252, '2021-01-25', 907, 'MALA', '2020-04-30', '2025-12-31', 3, 'RON', 68, 6, 'UNID'),
(253, '2021-04-11', 727, 'BUENA', '2020-07-31', '2025-12-31', 3, 'RON', 436, 405, 'UNID'),
(254, '2021-01-29', 181, 'BUENA', '2020-02-07', '2025-12-31', 2, 'CERVEZA ART CC', 328, 136, 'UNID'),
(255, '2021-01-13', 233, 'BUENA', '2020-04-19', '2025-12-31', 4, 'PISCO', 439, 339, 'UNID'),
(256, '2021-07-30', 159, 'BUENA', '2020-02-04', '2025-12-31', 2, 'CERVEZA ART MYA 2', 57, 10, 'UNID'),
(257, '2021-08-06', 197, 'BUENA', '2020-11-02', '2025-12-31', 3, 'RON', 176, 104, 'UNID'),
(258, '2021-06-22', 829, 'BUENA', '2020-06-13', '2025-12-31', 2, 'CERVEZA ART MYA 2', 895, 884, 'UNID'),
(259, '2021-01-18', 436, 'BUENA', '2020-11-08', '2025-12-31', 2, 'CERVEZA ART CC7', 215, 50, 'UNID'),
(260, '2021-07-15', 282, 'BUENA', '2020-11-25', '2025-12-31', 1, 'CERVEZA ', 775, 721, 'UNID'),
(261, '2021-07-07', 105, 'BUENA', '2020-01-05', '2025-12-31', 2, 'CERVEZA ART CC5', 707, 416, 'UNID'),
(262, '2021-08-03', 589, 'BUENA', '2020-08-29', '2025-12-31', 2, 'CERVEZA ART MYA 2', 583, 464, 'UNID'),
(263, '2021-10-28', 795, 'BUENA', '2020-08-22', '2025-12-31', 2, 'CERVEZA ART CC5', 35, 8, 'UNID'),
(264, '2021-02-07', 513, 'BUENA', '2020-04-27', '2025-12-31', 4, 'PISCO', 151, 66, 'UNID'),
(265, '2021-05-11', 259, 'BUENA', '2020-11-14', '2025-12-31', 2, 'CERVEZA ART MYA 2', 885, 733, 'UNID'),
(266, '2021-09-13', 231, 'BUENA', '2020-09-13', '2025-12-31', 2, 'CERVEZA ART CC', 102, 41, 'UNID'),
(267, '2021-08-04', 588, 'BUENA', '2020-08-11', '2025-12-31', 2, 'CERVEZA ART MORA', 465, 119, 'UNID'),
(268, '2021-06-16', 507, 'BUENA', '2020-01-27', '2025-12-31', 3, 'RON', 320, 70, 'UNID'),
(269, '2021-06-09', 214, 'BUENA', '2020-03-26', '2025-12-31', 2, 'CERVEZA ART MYA', 737, 612, 'UNID'),
(270, '2021-09-26', 514, 'BUENA', '2020-09-01', '2025-12-31', 2, 'CERVEZA ART MYA', 846, 610, 'UNID'),
(271, '2021-02-26', 816, 'BUENA', '2020-05-10', '2025-12-31', 2, 'CERVEZA ART CC7', 844, 706, 'UNID'),
(272, '2021-09-07', 91, 'BUENA', '2020-10-15', '2025-12-31', 2, 'CERVEZA ART CC', 528, 58, 'UNID'),
(273, '2021-02-05', 519, 'BUENA', '2020-01-14', '2025-12-31', 2, 'CERVEZA ART MYA 2', 422, 6, 'UNID'),
(274, '2021-02-20', 3, 'BUENA', '2020-11-13', '2025-12-31', 4, 'PISCO', 827, 367, 'UNID'),
(275, '2021-01-21', 509, 'BUENA', '2020-09-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 373, 270, 'UNID'),
(276, '2021-08-01', 937, 'BUENA', '2020-05-16', '2025-12-31', 3, 'RON', 413, 322, 'UNID'),
(277, '2021-04-04', 789, 'BUENA', '2020-08-14', '2025-12-31', 2, 'CERVEZA ART MYA 2', 633, 40, 'UNID'),
(278, '2021-08-19', 541, 'BUENA', '2020-05-07', '2025-12-31', 2, 'CERVEZA ART CC', 883, 832, 'UNID'),
(279, '2021-07-09', 936, 'BUENA', '2020-04-16', '2025-12-31', 2, 'CERVEZA ART CC7', 874, 669, 'UNID'),
(280, '2021-03-15', 798, 'BUENA', '2020-12-26', '2025-12-31', 2, 'CERVEZA ART MORA', 264, 108, 'UNID'),
(281, '2021-03-01', 971, 'BUENA', '2020-06-25', '2025-12-31', 2, 'CERVEZA ART CC', 767, 291, 'UNID'),
(282, '2021-09-01', 887, 'BUENA', '2020-07-18', '2025-12-31', 3, 'RON', 477, 308, 'UNID'),
(283, '2021-10-26', 837, 'BUENA', '2020-05-26', '2025-12-31', 3, 'RON', 215, 74, 'UNID'),
(284, '2021-02-20', 792, 'BUENA', '2020-07-09', '2025-12-31', 1, 'CERVEZA ', 277, 71, 'UNID'),
(285, '2021-08-31', 520, 'BUENA', '2020-08-28', '2025-12-31', 2, 'CERVEZA ART CC 2', 48, 41, 'UNID'),
(286, '2021-07-03', 753, 'BUENA', '2020-06-09', '2025-12-31', 4, 'PISCO', 877, 239, 'UNID'),
(287, '2021-06-02', 877, 'BUENA', '2020-12-30', '2025-12-31', 3, 'RON', 379, 6, 'UNID'),
(288, '2021-08-04', 424, 'BUENA', '2020-12-07', '2025-12-31', 2, 'CERVEZA ART MYA', 814, 521, 'UNID'),
(289, '2021-09-11', 3, 'BUENA', '2020-04-26', '2025-12-31', 4, 'PISCO', 837, 406, 'UNID'),
(290, '2021-09-26', 270, 'BUENA', '2020-02-01', '2025-12-31', 2, 'CERVEZA ART CC 2', 556, 190, 'UNID'),
(291, '2021-01-19', 26, 'BUENA', '2020-08-16', '2025-12-31', 2, 'CERVEZA ART CC7', 646, 526, 'UNID'),
(292, '2021-09-04', 553, 'BUENA', '2020-12-09', '2025-12-31', 4, 'PISCO', 375, 146, 'UNID'),
(293, '2021-06-27', 496, 'BUENA', '2020-03-14', '2025-12-31', 2, 'CERVEZA ART CC7', 312, 29, 'UNID'),
(294, '2021-09-21', 879, 'BUENA', '2020-02-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 562, 80, 'UNID'),
(295, '2021-01-03', 52, 'BUENA', '2020-08-04', '2025-12-31', 1, 'CERVEZA ', 339, 157, 'UNID'),
(296, '2021-05-13', 960, 'BUENA', '2020-09-22', '2025-12-31', 2, 'CERVEZA ART CC 2', 317, 22, 'UNID'),
(297, '2021-06-08', 224, 'BUENA', '2020-02-25', '2025-12-31', 2, 'CERVEZA ART MYA', 875, 265, 'UNID'),
(298, '2021-03-27', 58, 'BUENA', '2020-08-23', '2025-12-31', 2, 'CERVEZA ART MORA', 865, 163, 'UNID'),
(299, '2021-07-08', 195, 'BUENA', '2020-04-17', '2025-12-31', 2, 'CERVEZA ART CC5', 439, 338, 'UNID'),
(300, '2021-03-30', 7, 'BUENA', '2020-03-19', '2025-12-31', 3, 'RON', 34, 12, 'UNID'),
(301, '2021-01-19', 867, 'BUENA', '2020-11-05', '2025-12-31', 3, 'RON', 747, 528, 'UNID'),
(302, '2021-01-04', 95, 'BUENA', '2020-07-13', '2025-12-31', 2, 'CERVEZA ART CC5', 512, 174, 'UNID'),
(303, '2021-04-09', 645, 'BUENA', '2020-02-07', '2025-12-31', 2, 'CERVEZA ART CC5', 437, 213, 'UNID'),
(304, '2021-06-29', 603, 'BUENA', '2020-07-31', '2025-12-31', 4, 'PISCO', 749, 259, 'UNID'),
(305, '2021-04-16', 248, 'BUENA', '2020-12-16', '2025-12-31', 2, 'CERVEZA ART MORA', 661, 74, 'UNID'),
(306, '2021-07-03', 109, 'BUENA', '2020-09-20', '2025-12-31', 2, 'CERVEZA ART MYA 2', 790, 607, 'UNID'),
(307, '2021-06-03', 914, 'BUENA', '2020-06-12', '2025-12-31', 2, 'CERVEZA ART MYA', 902, 282, 'UNID'),
(308, '2021-08-17', 133, 'BUENA', '2020-04-18', '2025-12-31', 4, 'PISCO', 800, 712, 'UNID'),
(309, '2021-06-03', 749, 'BUENA', '2020-06-10', '2025-12-31', 2, 'CERVEZA ART MYA 2', 504, 111, 'UNID'),
(310, '2021-08-04', 450, 'BUENA', '2020-09-11', '2025-12-31', 2, 'CERVEZA ART CC 2', 216, 37, 'UNID'),
(311, '2021-06-18', 6, 'BUENA', '2020-11-30', '2025-12-31', 2, 'CERVEZA ART CC7', 368, 326, 'UNID'),
(312, '2021-05-06', 720, 'BUENA', '2020-08-06', '2025-12-31', 2, 'CERVEZA ART CC 2', 167, 26, 'UNID'),
(313, '2021-09-14', 423, 'BUENA', '2020-10-28', '2025-12-31', 4, 'PISCO', 850, 501, 'UNID'),
(314, '2021-03-05', 345, 'BUENA', '2020-05-25', '2025-12-31', 2, 'CERVEZA ART CC5', 243, 230, 'UNID'),
(315, '2021-04-03', 433, 'BUENA', '2020-05-17', '2025-12-31', 4, 'PISCO', 735, 23, 'UNID'),
(316, '2021-06-07', 173, 'BUENA', '2020-02-24', '2025-12-31', 4, 'PISCO', 145, 104, 'UNID'),
(317, '2021-06-25', 610, 'BUENA', '2020-03-12', '2025-12-31', 2, 'CERVEZA ART CC 2', 344, 96, 'UNID'),
(318, '2021-06-27', 941, 'BUENA', '2020-05-19', '2025-12-31', 2, 'CERVEZA ART CC', 520, 255, 'UNID'),
(319, '2021-08-03', 209, 'BUENA', '2020-04-27', '2025-12-31', 2, 'CERVEZA ART MYA 2', 253, 122, 'UNID'),
(320, '2021-08-05', 301, 'BUENA', '2020-06-24', '2025-12-31', 2, 'CERVEZA ART CC', 230, 48, 'UNID'),
(321, '2021-04-15', 477, 'BUENA', '2020-01-18', '2025-12-31', 3, 'RON', 543, 379, 'UNID'),
(322, '2021-03-01', 928, 'BUENA', '2020-02-01', '2025-12-31', 2, 'CERVEZA ART MORA', 178, 85, 'UNID'),
(323, '2021-02-18', 709, 'BUENA', '2020-04-17', '2025-12-31', 2, 'CERVEZA ART MYA 2', 10, 9, 'UNID'),
(324, '2021-06-03', 990, 'BUENA', '2020-12-20', '2025-12-31', 2, 'CERVEZA ART CC 2', 409, 77, 'UNID'),
(325, '2021-05-13', 981, 'BUENA', '2020-08-05', '2025-12-31', 2, 'CERVEZA ART CC', 510, 370, 'UNID'),
(326, '2021-08-20', 1001, 'BUENA', '2020-06-22', '2025-12-31', 2, 'CERVEZA ART CC', 697, 490, 'UNID'),
(327, '2021-02-07', 369, 'BUENA', '2020-12-16', '2025-12-31', 2, 'CERVEZA ART MYA 2', 897, 310, 'UNID'),
(328, '2021-07-27', 688, 'BUENA', '2020-04-24', '2025-12-31', 2, 'CERVEZA ART MORA', 341, 210, 'UNID'),
(329, '2021-09-08', 474, 'BUENA', '2020-10-27', '2025-12-31', 2, 'CERVEZA ART MYA', 495, 283, 'UNID'),
(330, '2021-06-21', 950, 'BUENA', '2020-06-23', '2025-12-31', 2, 'CERVEZA ART CC 2', 274, 237, 'UNID'),
(331, '2021-01-07', 952, 'BUENA', '2020-11-11', '2025-12-31', 1, 'CERVEZA ', 938, 125, 'UNID'),
(332, '2021-01-25', 171, 'BUENA', '2020-10-31', '2025-12-31', 2, 'CERVEZA ART CC', 913, 453, 'UNID'),
(333, '2021-05-03', 401, 'BUENA', '2020-06-19', '2025-12-31', 2, 'CERVEZA ART CC', 301, 3, 'UNID'),
(334, '2021-03-05', 236, 'BUENA', '2020-02-20', '2025-12-31', 2, 'CERVEZA ART CC7', 990, 424, 'UNID'),
(335, '2021-04-03', 43, 'BUENA', '2020-12-18', '2025-12-31', 4, 'PISCO', 924, 97, 'UNID'),
(336, '2021-03-08', 787, 'BUENA', '2020-07-16', '2025-12-31', 3, 'RON', 660, 35, 'UNID'),
(337, '2021-04-14', 138, 'BUENA', '2020-01-02', '2025-12-31', 2, 'CERVEZA ART MORA', 490, 443, 'UNID'),
(338, '2021-04-28', 909, 'BUENA', '2020-08-20', '2025-12-31', 2, 'CERVEZA ART MYA 2', 280, 81, 'UNID'),
(339, '2021-03-12', 152, 'BUENA', '2020-06-29', '2025-12-31', 1, 'CERVEZA ', 908, 220, 'UNID'),
(340, '2021-07-19', 909, 'BUENA', '2020-09-28', '2025-12-31', 2, 'CERVEZA ART MYA 2', 379, 33, 'UNID'),
(341, '2021-05-11', 177, 'BUENA', '2020-04-14', '2025-12-31', 3, 'RON', 704, 109, 'UNID'),
(342, '2021-03-10', 891, 'BUENA', '2020-06-18', '2025-12-31', 2, 'CERVEZA ART CC', 38, 8, 'UNID'),
(343, '2021-08-01', 305, 'BUENA', '2020-11-14', '2025-12-31', 2, 'CERVEZA ART CC5', 366, 185, 'UNID'),
(344, '2021-07-20', 89, 'BUENA', '2020-09-14', '2025-12-31', 2, 'CERVEZA ART MYA 2', 246, 88, 'UNID'),
(345, '2021-02-23', 751, 'BUENA', '2020-03-03', '2025-12-31', 2, 'CERVEZA ART CC', 572, 311, 'UNID'),
(346, '2021-08-23', 708, 'BUENA', '2020-06-30', '2025-12-31', 2, 'CERVEZA ART MORA', 522, 7, 'UNID'),
(347, '2021-03-27', 571, 'BUENA', '2020-05-09', '2025-12-31', 2, 'CERVEZA ART CC', 203, 40, 'UNID'),
(348, '2021-01-22', 68, 'BUENA', '2020-04-28', '2025-12-31', 2, 'CERVEZA ART MORA', 832, 99, 'UNID'),
(349, '2021-03-07', 348, 'BUENA', '2020-10-12', '2025-12-31', 2, 'CERVEZA ART MORA', 789, 609, 'UNID'),
(350, '2021-06-28', 62, 'BUENA', '2020-06-30', '2025-12-31', 1, 'CERVEZA ', 579, 197, 'UNID'),
(351, '2021-02-17', 540, 'BUENA', '2020-01-14', '2025-12-31', 2, 'CERVEZA ART CC 2', 163, 67, 'UNID'),
(352, '2021-01-06', 803, 'BUENA', '2020-03-31', '2025-12-31', 4, 'PISCO', 427, 217, 'UNID'),
(353, '2021-09-22', 53, 'BUENA', '2020-11-10', '2025-12-31', 4, 'PISCO', 462, 92, 'UNID'),
(354, '2021-06-25', 130, 'BUENA', '2020-06-02', '2025-12-31', 2, 'CERVEZA ART CC 2', 57, 33, 'UNID'),
(355, '2021-03-15', 410, 'BUENA', '2020-10-31', '2025-12-31', 2, 'CERVEZA ART CC 2', 258, 231, 'UNID'),
(356, '2021-05-09', 887, 'BUENA', '2020-09-02', '2025-12-31', 3, 'RON', 156, 149, 'UNID'),
(357, '2021-07-29', 479, 'BUENA', '2020-07-21', '2025-12-31', 2, 'CERVEZA ART MYA 2', 136, 48, 'UNID'),
(358, '2021-02-10', 27, 'BUENA', '2020-04-18', '2025-12-31', 3, 'RON', 916, 872, 'UNID'),
(359, '2021-10-06', 500, 'BUENA', '2020-02-19', '2025-12-31', 2, 'CERVEZA ART CC 2', 425, 103, 'UNID'),
(360, '2021-08-29', 417, 'BUENA', '2020-08-25', '2025-12-31', 3, 'RON', 701, 333, 'UNID'),
(361, '2021-08-28', 144, 'BUENA', '2020-11-24', '2025-12-31', 2, 'CERVEZA ART MYA', 76, 55, 'UNID'),
(362, '2021-04-02', 690, 'BUENA', '2020-10-11', '2025-12-31', 2, 'CERVEZA ART CC 2', 830, 86, 'UNID'),
(363, '2021-10-17', 542, 'BUENA', '2020-05-14', '2025-12-31', 1, 'CERVEZA ', 991, 696, 'UNID'),
(364, '2021-01-10', 408, 'BUENA', '2020-08-08', '2025-12-31', 2, 'CERVEZA ART MORA', 981, 643, 'UNID'),
(365, '2021-05-19', 203, 'BUENA', '2020-07-24', '2025-12-31', 4, 'PISCO', 526, 177, 'UNID'),
(366, '2021-05-22', 895, 'BUENA', '2020-07-14', '2025-12-31', 2, 'CERVEZA ART CC5', 680, 106, 'UNID'),
(367, '2021-02-28', 167, 'BUENA', '2020-06-30', '2025-12-31', 3, 'RON', 144, 42, 'UNID'),
(368, '2021-06-04', 792, 'BUENA', '2020-12-30', '2025-12-31', 1, 'CERVEZA ', 639, 533, 'UNID'),
(369, '2021-10-17', 604, 'BUENA', '2020-04-23', '2025-12-31', 2, 'CERVEZA ART MYA', 587, 437, 'UNID'),
(370, '2021-04-02', 37, 'BUENA', '2020-07-24', '2025-12-31', 3, 'RON', 357, 288, 'UNID'),
(371, '2021-01-01', 936, 'BUENA', '2020-12-14', '2025-12-31', 2, 'CERVEZA ART CC7', 990, 977, 'UNID'),
(372, '2021-01-20', 102, 'BUENA', '2020-04-11', '2025-12-31', 1, 'CERVEZA ', 896, 630, 'UNID'),
(373, '2021-01-30', 792, 'BUENA', '2020-12-09', '2025-12-31', 1, 'CERVEZA ', 996, 535, 'UNID'),
(374, '2021-05-22', 97, 'BUENA', '2020-04-14', '2025-12-31', 3, 'RON', 313, 141, 'UNID'),
(375, '2021-04-30', 496, 'BUENA', '2020-08-25', '2025-12-31', 2, 'CERVEZA ART CC7', 270, 254, 'UNID'),
(376, '2021-04-21', 797, 'BUENA', '2020-03-22', '2025-12-31', 3, 'RON', 679, 496, 'UNID'),
(377, '2021-09-02', 468, 'BUENA', '2020-01-09', '2025-12-31', 2, 'CERVEZA ART MORA', 445, 126, 'UNID'),
(378, '2021-02-09', 880, 'BUENA', '2020-12-21', '2025-12-31', 2, 'CERVEZA ART CC 2', 652, 29, 'UNID'),
(379, '2021-10-16', 126, 'BUENA', '2020-09-14', '2025-12-31', 2, 'CERVEZA ART CC7', 689, 444, 'UNID'),
(380, '2021-01-01', 311, 'BUENA', '2020-12-18', '2025-12-31', 2, 'CERVEZA ART CC', 671, 336, 'UNID'),
(381, '2021-03-30', 780, 'BUENA', '2020-09-22', '2025-12-31', 2, 'CERVEZA ART CC 2', 428, 242, 'UNID'),
(382, '2021-02-08', 542, 'BUENA', '2020-03-11', '2025-12-31', 1, 'CERVEZA ', 269, 213, 'UNID'),
(383, '2021-09-16', 107, 'BUENA', '2020-11-04', '2025-12-31', 3, 'RON', 36, 18, 'UNID'),
(384, '2021-04-02', 697, 'BUENA', '2020-09-13', '2025-12-31', 3, 'RON', 23, 8, 'UNID'),
(385, '2021-10-22', 66, 'BUENA', '2020-08-04', '2025-12-31', 2, 'CERVEZA ART CC7', 391, 174, 'UNID'),
(386, '2021-06-29', 369, 'BUENA', '2020-08-27', '2025-12-31', 2, 'CERVEZA ART MYA 2', 320, 260, 'UNID'),
(387, '2021-09-04', 247, 'BUENA', '2020-05-17', '2025-12-31', 3, 'RON', 803, 347, 'UNID'),
(388, '2021-07-12', 259, 'BUENA', '2020-11-11', '2025-12-31', 2, 'CERVEZA ART MYA 2', 994, 760, 'UNID'),
(389, '2021-01-22', 372, 'BUENA', '2020-09-02', '2025-12-31', 1, 'CERVEZA ', 845, 511, 'UNID'),
(390, '2021-01-23', 823, 'BUENA', '2020-06-17', '2025-12-31', 4, 'PISCO', 533, 402, 'UNID'),
(391, '2021-07-25', 663, 'BUENA', '2020-08-13', '2025-12-31', 4, 'PISCO', 456, 289, 'UNID'),
(392, '2021-01-03', 980, 'BUENA', '2020-02-20', '2025-12-31', 2, 'CERVEZA ART CC 2', 748, 472, 'UNID'),
(393, '2021-03-30', 796, 'BUENA', '2020-05-22', '2025-12-31', 2, 'CERVEZA ART CC7', 892, 887, 'UNID'),
(394, '2021-07-28', 904, 'BUENA', '2020-06-28', '2025-12-31', 2, 'CERVEZA ART MYA', 182, 92, 'UNID'),
(395, '2021-03-23', 401, 'BUENA', '2020-01-28', '2025-12-31', 2, 'CERVEZA ART CC', 426, 97, 'UNID'),
(396, '2021-04-29', 815, 'BUENA', '2020-03-03', '2025-12-31', 2, 'CERVEZA ART CC5', 821, 427, 'UNID'),
(397, '2021-10-27', 770, 'BUENA', '2020-11-16', '2025-12-31', 2, 'CERVEZA ART CC 2', 782, 172, 'UNID'),
(398, '2021-08-29', 392, 'BUENA', '2020-03-06', '2025-12-31', 1, 'CERVEZA ', 71, 31, 'UNID'),
(399, '2021-10-21', 996, 'BUENA', '2020-11-01', '2025-12-31', 2, 'CERVEZA ART CC7', 651, 361, 'UNID'),
(400, '2021-02-24', 296, 'BUENA', '2020-11-15', '2025-12-31', 2, 'CERVEZA ART CC7', 308, 41, 'UNID'),
(401, '2021-07-29', 828, 'BUENA', '2020-05-16', '2025-12-31', 2, 'CERVEZA ART MORA', 277, 91, 'UNID'),
(402, '2021-05-22', 166, 'BUENA', '2020-06-23', '2025-12-31', 2, 'CERVEZA ART CC7', 364, 25, 'UNID'),
(403, '2021-04-23', 87, 'BUENA', '2020-04-07', '2025-12-31', 3, 'RON', 190, 165, 'UNID'),
(404, '2021-03-04', 433, 'BUENA', '2020-11-05', '2025-12-31', 4, 'PISCO', 126, 28, 'UNID'),
(405, '2021-04-16', 485, 'BUENA', '2020-07-14', '2025-12-31', 2, 'CERVEZA ART CC5', 615, 558, 'UNID'),
(406, '2021-02-09', 322, 'BUENA', '2020-11-19', '2025-12-31', 1, 'CERVEZA ', 720, 164, 'UNID'),
(407, '2021-01-06', 309, 'BUENA', '2020-08-09', '2025-12-31', 2, 'CERVEZA ART MYA 2', 401, 304, 'UNID'),
(408, '2021-01-12', 355, 'BUENA', '2020-05-09', '2025-12-31', 2, 'CERVEZA ART CC5', 283, 125, 'UNID'),
(409, '2021-09-18', 369, 'BUENA', '2020-09-16', '2025-12-31', 2, 'CERVEZA ART MYA 2', 192, 92, 'UNID'),
(410, '2021-10-28', 29, 'BUENA', '2020-10-05', '2025-12-31', 2, 'CERVEZA ART MYA 2', 595, 531, 'UNID'),
(411, '2021-06-10', 946, 'BUENA', '2020-01-22', '2025-12-31', 2, 'CERVEZA ART CC7', 54, 15, 'UNID'),
(412, '2021-05-30', 752, 'BUENA', '2020-09-03', '2025-12-31', 1, 'CERVEZA ', 855, 387, 'UNID'),
(413, '2021-04-15', 595, 'BUENA', '2020-11-27', '2025-12-31', 2, 'CERVEZA ART CC5', 572, 554, 'UNID'),
(414, '2021-05-19', 129, 'BUENA', '2020-07-08', '2025-12-31', 2, 'CERVEZA ART MYA 2', 709, 59, 'UNID'),
(415, '2021-08-30', 439, 'BUENA', '2020-07-22', '2025-12-31', 2, 'CERVEZA ART MYA 2', 782, 753, 'UNID'),
(416, '2021-10-20', 491, 'BUENA', '2020-04-22', '2025-12-31', 2, 'CERVEZA ART CC', 331, 61, 'UNID'),
(417, '2021-03-20', 963, 'BUENA', '2020-01-26', '2025-12-31', 4, 'PISCO', 336, 200, 'UNID'),
(418, '2021-06-06', 298, 'BUENA', '2020-02-27', '2025-12-31', 2, 'CERVEZA ART MORA', 931, 206, 'UNID'),
(419, '2021-03-27', 204, 'BUENA', '2020-05-12', '2025-12-31', 2, 'CERVEZA ART MYA', 227, 30, 'UNID'),
(420, '2021-08-04', 909, 'BUENA', '2020-02-13', '2025-12-31', 2, 'CERVEZA ART MYA 2', 112, 85, 'UNID'),
(421, '2021-07-14', 540, 'BUENA', '2020-01-28', '2025-12-31', 2, 'CERVEZA ART CC 2', 793, 142, 'UNID'),
(422, '2021-02-13', 878, 'BUENA', '2020-11-13', '2025-12-31', 2, 'CERVEZA ART MORA', 600, 388, 'UNID'),
(423, '2021-05-26', 187, 'BUENA', '2020-02-03', '2025-12-31', 3, 'RON', 485, 456, 'UNID'),
(424, '2021-05-29', 513, 'BUENA', '2020-12-15', '2025-12-31', 4, 'PISCO', 402, 101, 'UNID'),
(425, '2021-03-06', 606, 'BUENA', '2020-02-01', '2025-12-31', 2, 'CERVEZA ART CC7', 35, 6, 'UNID'),
(426, '2021-03-28', 148, 'BUENA', '2020-11-23', '2025-12-31', 2, 'CERVEZA ART MORA', 222, 161, 'UNID'),
(427, '2021-07-13', 164, 'BUENA', '2020-02-01', '2025-12-31', 2, 'CERVEZA ART MYA', 690, 105, 'UNID'),
(428, '2021-02-23', 806, 'BUENA', '2020-03-02', '2025-12-31', 2, 'CERVEZA ART CC7', 311, 181, 'UNID'),
(429, '2021-04-27', 321, 'BUENA', '2020-11-25', '2025-12-31', 2, 'CERVEZA ART CC', 957, 419, 'UNID'),
(430, '2021-06-15', 492, 'BUENA', '2020-04-29', '2025-12-31', 1, 'CERVEZA ', 976, 578, 'UNID'),
(431, '2021-05-21', 151, 'BUENA', '2020-05-03', '2025-12-31', 2, 'CERVEZA ART CC', 707, 640, 'UNID'),
(432, '2021-10-05', 665, 'BUENA', '2020-08-28', '2025-12-31', 2, 'CERVEZA ART CC5', 77, 13, 'UNID'),
(433, '2021-05-27', 872, 'BUENA', '2020-08-06', '2025-12-31', 1, 'CERVEZA ', 199, 84, 'UNID'),
(434, '2021-08-04', 175, 'BUENA', '2020-09-24', '2025-12-31', 2, 'CERVEZA ART CC5', 134, 108, 'UNID'),
(435, '2021-04-26', 372, 'BUENA', '2020-11-05', '2025-12-31', 1, 'CERVEZA ', 903, 738, 'UNID'),
(436, '2021-05-20', 399, 'BUENA', '2020-11-13', '2025-12-31', 2, 'CERVEZA ART MYA 2', 449, 4, 'UNID'),
(437, '2021-04-30', 615, 'BUENA', '2020-08-18', '2025-12-31', 2, 'CERVEZA ART CC5', 452, 148, 'UNID'),
(438, '2021-02-15', 184, 'BUENA', '2020-07-05', '2025-12-31', 2, 'CERVEZA ART MYA', 33, 8, 'UNID'),
(439, '2021-10-08', 549, 'BUENA', '2020-01-23', '2025-12-31', 2, 'CERVEZA ART MYA 2', 349, 114, 'UNID'),
(440, '2021-03-16', 107, 'BUENA', '2020-04-28', '2025-12-31', 3, 'RON', 20, 6, 'UNID'),
(441, '2021-07-17', 598, 'BUENA', '2020-05-29', '2025-12-31', 2, 'CERVEZA ART MORA', 737, 29, 'UNID'),
(442, '2021-03-26', 739, 'BUENA', '2020-08-17', '2025-12-31', 2, 'CERVEZA ART MYA 2', 687, 678, 'UNID'),
(443, '2021-08-01', 811, 'BUENA', '2020-07-29', '2025-12-31', 2, 'CERVEZA ART CC', 111, 37, 'UNID'),
(444, '2021-02-27', 217, 'BUENA', '2020-06-18', '2025-12-31', 3, 'RON', 758, 514, 'UNID'),
(445, '2021-10-20', 715, 'BUENA', '2020-02-28', '2025-12-31', 2, 'CERVEZA ART CC5', 321, 181, 'UNID'),
(446, '2021-04-14', 832, 'BUENA', '2020-02-10', '2025-12-31', 1, 'CERVEZA ', 491, 16, 'UNID'),
(447, '2021-09-20', 441, 'BUENA', '2020-02-11', '2025-12-31', 2, 'CERVEZA ART CC', 52, 26, 'UNID'),
(448, '2021-10-08', 629, 'BUENA', '2020-12-28', '2025-12-31', 2, 'CERVEZA ART MYA 2', 359, 146, 'UNID'),
(449, '2021-03-01', 847, 'BUENA', '2020-06-22', '2025-12-31', 3, 'RON', 297, 21, 'UNID'),
(450, '2021-09-30', 979, 'BUENA', '2020-11-13', '2025-12-31', 2, 'CERVEZA ART MYA 2', 413, 129, 'UNID'),
(451, '2021-02-10', 492, 'BUENA', '2020-08-15', '2025-12-31', 1, 'CERVEZA ', 821, 782, 'UNID'),
(452, '2021-09-29', 501, 'BUENA', '2020-04-30', '2025-12-31', 2, 'CERVEZA ART CC', 913, 641, 'UNID'),
(453, '2021-08-14', 742, 'BUENA', '2020-05-20', '2025-12-31', 1, 'CERVEZA ', 610, 575, 'UNID'),
(454, '2021-08-06', 804, 'BUENA', '2020-08-17', '2025-12-31', 2, 'CERVEZA ART MYA', 928, 637, 'UNID'),
(455, '2021-05-08', 515, 'BUENA', '2020-11-03', '2025-12-31', 2, 'CERVEZA ART CC5', 651, 29, 'UNID'),
(456, '2021-07-06', 723, 'BUENA', '2020-07-09', '2025-12-31', 4, 'PISCO', 989, 482, 'UNID'),
(457, '2021-01-31', 98, 'BUENA', '2020-08-04', '2025-12-31', 2, 'CERVEZA ART MORA', 812, 545, 'UNID'),
(458, '2021-01-07', 467, 'BUENA', '2020-06-17', '2025-12-31', 3, 'RON', 968, 266, 'UNID'),
(459, '2021-07-13', 370, 'BUENA', '2020-12-28', '2025-12-31', 2, 'CERVEZA ART CC 2', 153, 104, 'UNID'),
(460, '2021-05-12', 299, 'BUENA', '2020-03-26', '2025-12-31', 2, 'CERVEZA ART MYA 2', 633, 258, 'UNID'),
(461, '2021-03-15', 430, 'BUENA', '2020-12-01', '2025-12-31', 2, 'CERVEZA ART CC 2', 425, 215, 'UNID'),
(462, '2021-01-12', 300, 'BUENA', '2020-10-22', '2025-12-31', 2, 'CERVEZA ART CC 2', 452, 220, 'UNID'),
(463, '2021-04-21', 615, 'BUENA', '2020-06-26', '2025-12-31', 2, 'CERVEZA ART CC5', 928, 386, 'UNID'),
(464, '2021-07-22', 182, 'BUENA', '2020-12-25', '2025-12-31', 1, 'CERVEZA ', 665, 300, 'UNID'),
(465, '2021-05-21', 567, 'BUENA', '2020-01-15', '2025-12-31', 3, 'RON', 234, 55, 'UNID'),
(466, '2021-01-11', 690, 'BUENA', '2020-05-03', '2025-12-31', 2, 'CERVEZA ART CC 2', 66, 19, 'UNID'),
(467, '2021-02-19', 735, 'BUENA', '2020-01-24', '2025-12-31', 2, 'CERVEZA ART CC5', 77, 73, 'UNID'),
(468, '2021-05-07', 21, 'BUENA', '2020-07-08', '2025-12-31', 2, 'CERVEZA ART CC', 572, 85, 'UNID'),
(469, '2021-03-10', 806, 'BUENA', '2020-02-19', '2025-12-31', 2, 'CERVEZA ART CC7', 559, 556, 'UNID'),
(470, '2021-09-10', 764, 'BUENA', '2020-07-15', '2025-12-31', 2, 'CERVEZA ART MYA', 882, 463, 'UNID'),
(471, '2021-05-29', 321, 'BUENA', '2020-01-03', '2025-12-31', 2, 'CERVEZA ART CC', 864, 359, 'UNID'),
(472, '2021-09-21', 192, 'BUENA', '2020-06-21', '2025-12-31', 1, 'CERVEZA ', 245, 188, 'UNID'),
(473, '2021-06-18', 45, 'BUENA', '2020-08-24', '2025-12-31', 2, 'CERVEZA ART CC5', 302, 34, 'UNID'),
(474, '2021-05-05', 961, 'BUENA', '2020-07-08', '2025-12-31', 2, 'CERVEZA ART CC', 41, 7, 'UNID'),
(475, '2021-04-15', 223, 'BUENA', '2020-07-04', '2025-12-31', 4, 'PISCO', 845, 646, 'UNID'),
(476, '2021-09-23', 695, 'BUENA', '2020-12-11', '2025-12-31', 2, 'CERVEZA ART CC5', 938, 669, 'UNID'),
(477, '2021-03-15', 928, 'BUENA', '2020-11-21', '2025-12-31', 2, 'CERVEZA ART MORA', 572, 14, 'UNID'),
(478, '2021-10-09', 946, 'BUENA', '2020-03-21', '2025-12-31', 2, 'CERVEZA ART CC7', 695, 481, 'UNID'),
(479, '2021-03-25', 50, 'BUENA', '2020-01-03', '2025-12-31', 2, 'CERVEZA ART CC 2', 119, 108, 'UNID'),
(480, '2021-09-06', 558, 'BUENA', '2020-06-06', '2025-12-31', 2, 'CERVEZA ART MORA', 231, 125, 'UNID'),
(481, '2021-08-15', 325, 'BUENA', '2020-04-15', '2025-12-31', 2, 'CERVEZA ART CC5', 661, 79, 'UNID'),
(482, '2021-05-21', 692, 'BUENA', '2020-04-14', '2025-12-31', 1, 'CERVEZA ', 550, 446, 'UNID'),
(483, '2021-02-25', 987, 'BUENA', '2020-12-01', '2025-12-31', 3, 'RON', 163, 71, 'UNID'),
(484, '2021-01-18', 39, 'BUENA', '2020-02-23', '2025-12-31', 2, 'CERVEZA ART MYA 2', 279, 71, 'UNID'),
(485, '2021-05-28', 540, 'BUENA', '2020-02-25', '2025-12-31', 2, 'CERVEZA ART CC 2', 461, 403, 'UNID'),
(486, '2021-04-29', 617, 'BUENA', '2020-05-17', '2025-12-31', 3, 'RON', 920, 789, 'UNID'),
(487, '2021-04-15', 839, 'BUENA', '2020-06-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 803, 630, 'UNID'),
(488, '2021-09-15', 741, 'BUENA', '2020-10-23', '2025-12-31', 2, 'CERVEZA ART CC', 679, 603, 'UNID'),
(489, '2021-08-27', 109, 'BUENA', '2020-10-14', '2025-12-31', 2, 'CERVEZA ART MYA 2', 627, 272, 'UNID'),
(490, '2021-07-28', 310, 'BUENA', '2020-04-12', '2025-12-31', 2, 'CERVEZA ART CC 2', 2, 1, 'UNID'),
(491, '2021-09-01', 527, 'BUENA', '2020-09-29', '2025-12-31', 3, 'RON', 562, 497, 'UNID'),
(492, '2021-07-07', 491, 'BUENA', '2020-04-01', '2025-12-31', 2, 'CERVEZA ART CC', 376, 101, 'UNID'),
(493, '2021-02-13', 441, 'BUENA', '2020-03-17', '2025-12-31', 2, 'CERVEZA ART CC', 606, 132, 'UNID'),
(494, '2021-05-10', 16, 'BUENA', '2020-05-19', '2025-12-31', 2, 'CERVEZA ART CC7', 611, 448, 'UNID'),
(495, '2021-04-12', 564, 'BUENA', '2020-11-19', '2025-12-31', 2, 'CERVEZA ART MYA', 671, 591, 'UNID'),
(496, '2021-06-17', 768, 'BUENA', '2020-08-20', '2025-12-31', 2, 'CERVEZA ART MORA', 735, 497, 'UNID'),
(497, '2021-08-16', 137, 'BUENA', '2020-12-11', '2025-12-31', 3, 'RON', 365, 337, 'UNID'),
(498, '2021-10-11', 730, 'BUENA', '2020-05-23', '2025-12-31', 2, 'CERVEZA ART CC 2', 97, 25, 'UNID'),
(499, '2021-07-15', 225, 'BUENA', '2020-02-11', '2025-12-31', 2, 'CERVEZA ART CC5', 406, 374, 'UNID'),
(500, '2021-04-25', 346, 'BUENA', '2020-07-21', '2025-12-31', 2, 'CERVEZA ART CC7', 258, 3, 'UNID'),
(501, '2021-07-20', 367, 'BUENA', '2020-12-09', '2025-12-31', 3, 'RON', 613, 355, 'UNID'),
(502, '2021-07-20', 811, 'BUENA', '2020-04-11', '2025-12-31', 2, 'CERVEZA ART CC', 368, 149, 'UNID'),
(503, '2021-03-08', 312, 'BUENA', '2020-03-09', '2025-12-31', 1, 'CERVEZA ', 911, 814, 'UNID'),
(504, '2021-05-02', 247, 'BUENA', '2020-09-28', '2025-12-31', 3, 'RON', 633, 386, 'UNID'),
(505, '2021-03-30', 755, 'BUENA', '2020-10-17', '2025-12-31', 2, 'CERVEZA ART CC5', 9, 8, 'UNID'),
(506, '2021-08-17', 874, 'BUENA', '2020-06-29', '2025-12-31', 2, 'CERVEZA ART MYA', 852, 647, 'UNID'),
(507, '2021-04-18', 455, 'BUENA', '2020-05-31', '2025-12-31', 2, 'CERVEZA ART CC5', 176, 23, 'UNID'),
(508, '2021-04-23', 429, 'BUENA', '2020-05-01', '2025-12-31', 2, 'CERVEZA ART MYA 2', 952, 882, 'UNID'),
(509, '2021-01-31', 307, 'BUENA', '2020-02-23', '2025-12-31', 3, 'RON', 653, 467, 'UNID'),
(510, '2021-10-25', 191, 'BUENA', '2020-11-17', '2025-12-31', 2, 'CERVEZA ART CC', 651, 132, 'UNID'),
(511, '2021-09-18', 437, 'BUENA', '2020-02-02', '2025-12-31', 3, 'RON', 351, 224, 'UNID'),
(512, '2021-04-09', 929, 'BUENA', '2020-02-01', '2025-12-31', 2, 'CERVEZA ART MYA 2', 18, 11, 'UNID'),
(513, '2021-09-05', 363, 'BUENA', '2020-08-08', '2025-12-31', 4, 'PISCO', 378, 20, 'UNID'),
(514, '2021-01-11', 866, 'BUENA', '2020-02-06', '2025-12-31', 2, 'CERVEZA ART CC7', 79, 46, 'UNID'),
(515, '2021-06-09', 548, 'BUENA', '2020-11-26', '2025-12-31', 2, 'CERVEZA ART MORA', 181, 160, 'UNID'),
(516, '2021-06-21', 662, 'BUENA', '2020-09-06', '2025-12-31', 1, 'CERVEZA ', 629, 227, 'UNID'),
(517, '2021-07-05', 746, 'BUENA', '2020-10-27', '2025-12-31', 2, 'CERVEZA ART CC7', 558, 139, 'UNID'),
(518, '2021-03-24', 745, 'BUENA', '2020-02-19', '2025-12-31', 2, 'CERVEZA ART CC5', 141, 115, 'UNID'),
(519, '2021-07-23', 111, 'BUENA', '2020-01-26', '2025-12-31', 2, 'CERVEZA ART CC', 764, 738, 'UNID'),
(520, '2021-02-18', 154, 'BUENA', '2020-11-16', '2025-12-31', 2, 'CERVEZA ART MYA', 678, 501, 'UNID'),
(521, '2021-02-20', 865, 'BUENA', '2020-05-13', '2025-12-31', 2, 'CERVEZA ART CC5', 635, 145, 'UNID'),
(522, '2021-10-21', 440, 'BUENA', '2020-11-14', '2025-12-31', 2, 'CERVEZA ART CC 2', 941, 562, 'UNID');
INSERT INTO `prodoutput` (`idLote`, `fecha_ven`, `codTipoProducto`, `Observacion`, `Fecha_inicio`, `Fecha_fin`, `codLinea`, `nomPT`, `cantidadReal`, `cantidadMerma`, `Unidad`) VALUES
(523, '2021-05-02', 375, 'BUENA', '2020-03-10', '2025-12-31', 2, 'CERVEZA ART CC5', 741, 25, 'UNID'),
(524, '2021-04-30', 940, 'BUENA', '2020-08-05', '2025-12-31', 2, 'CERVEZA ART CC 2', 466, 310, 'UNID'),
(525, '2021-04-28', 842, 'BUENA', '2020-08-13', '2025-12-31', 1, 'CERVEZA ', 503, 15, 'UNID'),
(526, '2021-02-10', 301, 'BUENA', '2020-08-23', '2025-12-31', 2, 'CERVEZA ART CC', 163, 138, 'UNID'),
(527, '2021-10-06', 113, 'BUENA', '2020-08-26', '2025-12-31', 4, 'PISCO', 385, 277, 'UNID'),
(528, '2021-04-04', 78, 'BUENA', '2020-09-16', '2025-12-31', 2, 'CERVEZA ART MORA', 266, 123, 'UNID'),
(529, '2021-07-29', 25, 'BUENA', '2020-02-25', '2025-12-31', 2, 'CERVEZA ART CC5', 41, 41, 'UNID'),
(530, '2021-04-15', 502, 'BUENA', '2020-12-22', '2025-12-31', 1, 'CERVEZA ', 481, 404, 'UNID'),
(531, '2021-02-27', 948, 'BUENA', '2020-06-02', '2025-12-31', 2, 'CERVEZA ART MORA', 288, 252, 'UNID'),
(532, '2021-06-29', 232, 'BUENA', '2020-08-04', '2025-12-31', 1, 'CERVEZA ', 814, 594, 'UNID'),
(533, '2021-08-01', 719, 'BUENA', '2020-12-11', '2025-12-31', 2, 'CERVEZA ART MYA 2', 927, 294, 'UNID'),
(534, '2021-04-19', 306, 'BUENA', '2020-11-17', '2025-12-31', 2, 'CERVEZA ART CC7', 416, 47, 'UNID'),
(535, '2021-09-25', 580, 'BUENA', '2020-05-22', '2025-12-31', 2, 'CERVEZA ART CC 2', 933, 445, 'UNID'),
(536, '2021-05-29', 971, 'BUENA', '2020-05-25', '2025-12-31', 2, 'CERVEZA ART CC', 115, 98, 'UNID'),
(537, '2021-02-08', 803, 'BUENA', '2020-01-23', '2025-12-31', 4, 'PISCO', 602, 26, 'UNID'),
(538, '2021-07-27', 477, 'BUENA', '2020-03-18', '2025-12-31', 3, 'RON', 859, 808, 'UNID'),
(539, '2021-07-14', 164, 'BUENA', '2020-09-17', '2025-12-31', 2, 'CERVEZA ART MYA', 748, 349, 'UNID'),
(540, '2021-10-18', 929, 'BUENA', '2020-07-03', '2025-12-31', 2, 'CERVEZA ART MYA 2', 489, 482, 'UNID'),
(541, '2021-07-04', 985, 'BUENA', '2020-01-19', '2025-12-31', 2, 'CERVEZA ART CC5', 474, 283, 'UNID'),
(542, '2021-06-13', 703, 'BUENA', '2020-11-22', '2025-12-31', 4, 'PISCO', 999, 11, 'UNID'),
(543, '2021-05-01', 653, 'BUENA', '2020-06-12', '2025-12-31', 4, 'PISCO', 789, 575, 'UNID'),
(544, '2021-05-31', 252, 'BUENA', '2020-05-17', '2025-12-31', 1, 'CERVEZA ', 922, 499, 'UNID'),
(545, '2021-01-30', 333, 'BUENA', '2020-10-13', '2025-12-31', 4, 'PISCO', 423, 81, 'UNID'),
(546, '2021-07-15', 291, 'BUENA', '2020-06-29', '2025-12-31', 2, 'CERVEZA ART CC', 848, 236, 'UNID'),
(547, '2021-05-05', 5, 'BUENA', '2020-01-18', '2025-12-31', 2, 'CERVEZA ART CC5', 827, 122, 'UNID'),
(548, '2021-08-26', 135, 'BUENA', '2020-05-08', '2025-12-31', 2, 'CERVEZA ART CC5', 874, 218, 'UNID'),
(549, '2021-07-23', 117, 'BUENA', '2020-01-28', '2025-12-31', 3, 'RON', 459, 9, 'UNID'),
(550, '2021-08-17', 35, 'BUENA', '2020-08-27', '2025-12-31', 2, 'CERVEZA ART CC5', 179, 177, 'UNID'),
(551, '2021-02-10', 774, 'BUENA', '2020-12-11', '2025-12-31', 2, 'CERVEZA ART MYA', 786, 401, 'UNID'),
(552, '2021-04-05', 780, 'BUENA', '2020-12-20', '2025-12-31', 2, 'CERVEZA ART CC 2', 826, 203, 'UNID'),
(553, '2021-07-10', 465, 'BUENA', '2020-05-07', '2025-12-31', 2, 'CERVEZA ART CC5', 170, 47, 'UNID'),
(554, '2021-04-17', 768, 'BUENA', '2020-03-27', '2025-12-31', 2, 'CERVEZA ART MORA', 129, 122, 'UNID'),
(555, '2021-04-23', 374, 'BUENA', '2020-07-24', '2025-12-31', 2, 'CERVEZA ART MYA', 55, 11, 'UNID'),
(556, '2021-09-21', 917, 'BUENA', '2020-02-29', '2025-12-31', 3, 'RON', 431, 241, 'UNID'),
(557, '2021-04-05', 209, 'BUENA', '2020-03-20', '2025-12-31', 2, 'CERVEZA ART MYA 2', 626, 593, 'UNID'),
(558, '2021-04-13', 503, 'BUENA', '2020-06-25', '2025-12-31', 4, 'PISCO', 149, 110, 'UNID'),
(559, '2021-07-14', 668, 'BUENA', '2020-04-25', '2025-12-31', 2, 'CERVEZA ART MORA', 214, 24, 'UNID'),
(560, '2021-10-09', 78, 'BUENA', '2020-08-22', '2025-12-31', 2, 'CERVEZA ART MORA', 193, 76, 'UNID'),
(561, '2021-07-09', 688, 'BUENA', '2020-07-10', '2025-12-31', 2, 'CERVEZA ART MORA', 445, 167, 'UNID'),
(562, '2021-01-06', 247, 'BUENA', '2020-12-31', '2025-12-31', 3, 'RON', 678, 388, 'UNID'),
(563, '2021-05-29', 701, 'BUENA', '2020-04-27', '2025-12-31', 2, 'CERVEZA ART CC', 566, 27, 'UNID'),
(564, '2021-04-21', 811, 'BUENA', '2020-11-25', '2025-12-31', 2, 'CERVEZA ART CC', 868, 144, 'UNID'),
(565, '2021-09-11', 72, 'BUENA', '2020-02-23', '2025-12-31', 1, 'CERVEZA ', 643, 31, 'UNID'),
(566, '2021-08-20', 351, 'BUENA', '2020-01-20', '2025-12-31', 2, 'CERVEZA ART CC', 585, 506, 'UNID'),
(567, '2021-03-10', 955, 'BUENA', '2020-06-19', '2025-12-31', 2, 'CERVEZA ART CC5', 868, 394, 'UNID'),
(568, '2021-09-21', 571, 'BUENA', '2020-03-13', '2025-12-31', 2, 'CERVEZA ART CC', 620, 388, 'UNID'),
(569, '2021-03-22', 179, 'BUENA', '2020-01-04', '2025-12-31', 2, 'CERVEZA ART MYA 2', 309, 48, 'UNID'),
(570, '2021-01-08', 308, 'BUENA', '2020-03-12', '2025-12-31', 2, 'CERVEZA ART MORA', 676, 565, 'UNID'),
(571, '2021-06-18', 333, 'BUENA', '2020-04-16', '2025-12-31', 4, 'PISCO', 1000, 218, 'UNID'),
(572, '2021-07-18', 655, 'BUENA', '2020-10-07', '2025-12-31', 2, 'CERVEZA ART CC5', 494, 170, 'UNID'),
(573, '2021-03-04', 215, 'BUENA', '2020-04-15', '2025-12-31', 2, 'CERVEZA ART CC5', 273, 107, 'UNID'),
(574, '2021-10-22', 722, 'BUENA', '2020-04-14', '2025-12-31', 1, 'CERVEZA ', 502, 338, 'UNID'),
(575, '2021-06-22', 883, 'BUENA', '2020-01-23', '2025-12-31', 4, 'PISCO', 438, 48, 'UNID'),
(576, '2021-06-15', 162, 'BUENA', '2020-06-04', '2025-12-31', 1, 'CERVEZA ', 319, 164, 'UNID'),
(577, '2021-08-01', 17, 'BUENA', '2020-06-08', '2025-12-31', 3, 'RON', 653, 636, 'UNID'),
(578, '2021-05-26', 328, 'BUENA', '2020-03-14', '2025-12-31', 2, 'CERVEZA ART MORA', 486, 193, 'UNID'),
(579, '2021-06-15', 720, 'BUENA', '2020-03-18', '2025-12-31', 2, 'CERVEZA ART CC 2', 237, 147, 'UNID'),
(580, '2021-02-04', 59, 'BUENA', '2020-06-24', '2025-12-31', 2, 'CERVEZA ART MYA 2', 145, 33, 'UNID'),
(581, '2021-09-03', 47, 'BUENA', '2020-03-29', '2025-12-31', 3, 'RON', 82, 6, 'UNID'),
(582, '2021-03-31', 917, 'BUENA', '2020-08-28', '2025-12-31', 3, 'RON', 321, 118, 'UNID'),
(583, '2021-05-05', 863, 'BUENA', '2020-06-23', '2025-12-31', 4, 'PISCO', 626, 509, 'UNID'),
(584, '2021-01-21', 580, 'BUENA', '2020-05-09', '2025-12-31', 2, 'CERVEZA ART CC 2', 836, 296, 'UNID'),
(585, '2021-10-03', 71, 'BUENA', '2020-12-23', '2025-12-31', 2, 'CERVEZA ART CC', 587, 94, 'UNID'),
(586, '2021-09-03', 165, 'BUENA', '2020-06-03', '2025-12-31', 2, 'CERVEZA ART CC5', 274, 214, 'UNID'),
(587, '2021-08-31', 789, 'BUENA', '2020-06-03', '2025-12-31', 2, 'CERVEZA ART MYA 2', 436, 61, 'UNID'),
(588, '2021-07-31', 554, 'BUENA', '2020-03-06', '2025-12-31', 2, 'CERVEZA ART MYA', 831, 11, 'UNID'),
(589, '2021-01-10', 132, 'BUENA', '2020-06-26', '2025-12-31', 1, 'CERVEZA ', 106, 3, 'UNID'),
(590, '2021-08-16', 399, 'BUENA', '2020-10-04', '2025-12-31', 2, 'CERVEZA ART MYA 2', 502, 470, 'UNID'),
(591, '2021-08-20', 490, 'BUENA', '2020-11-04', '2025-12-31', 2, 'CERVEZA ART CC 2', 783, 320, 'UNID'),
(592, '2021-02-13', 159, 'BUENA', '2020-09-28', '2025-12-31', 2, 'CERVEZA ART MYA 2', 991, 204, 'UNID'),
(593, '2021-07-07', 458, 'BUENA', '2020-06-23', '2025-12-31', 2, 'CERVEZA ART MORA', 546, 206, 'UNID'),
(594, '2021-08-19', 885, 'BUENA', '2020-06-12', '2025-12-31', 2, 'CERVEZA ART CC5', 410, 345, 'UNID'),
(595, '2021-03-29', 439, 'BUENA', '2020-07-19', '2025-12-31', 2, 'CERVEZA ART MYA 2', 185, 14, 'UNID'),
(596, '2021-01-06', 682, 'BUENA', '2020-08-11', '2025-12-31', 1, 'CERVEZA ', 308, 281, 'UNID'),
(597, '2021-05-09', 655, 'BUENA', '2020-07-16', '2025-12-31', 2, 'CERVEZA ART CC5', 707, 544, 'UNID'),
(598, '2021-01-16', 79, 'BUENA', '2020-03-11', '2025-12-31', 2, 'CERVEZA ART MYA 2', 245, 88, 'UNID'),
(599, '2021-10-22', 709, 'BUENA', '2020-07-08', '2025-12-31', 2, 'CERVEZA ART MYA 2', 70, 52, 'UNID'),
(600, '2021-01-17', 38, 'BUENA', '2020-06-02', '2025-12-31', 2, 'CERVEZA ART MORA', 319, 40, 'UNID'),
(601, '2021-08-11', 236, 'BUENA', '2020-02-26', '2025-12-31', 2, 'CERVEZA ART CC7', 858, 140, 'UNID'),
(602, '2021-08-29', 345, 'BUENA', '2020-04-24', '2025-12-31', 2, 'CERVEZA ART CC5', 799, 653, 'UNID'),
(603, '2021-01-10', 612, 'BUENA', '2020-04-24', '2025-12-31', 1, 'CERVEZA ', 61, 28, 'UNID'),
(604, '2021-06-26', 958, 'BUENA', '2020-02-07', '2025-12-31', 2, 'CERVEZA ART MORA', 546, 186, 'UNID'),
(605, '2021-09-24', 559, 'BUENA', '2020-06-07', '2025-12-31', 2, 'CERVEZA ART MYA 2', 258, 239, 'UNID'),
(606, '2021-06-28', 111, 'BUENA', '2020-05-18', '2025-12-31', 2, 'CERVEZA ART CC', 894, 827, 'UNID'),
(607, '2021-09-08', 420, 'BUENA', '2020-03-04', '2025-12-31', 2, 'CERVEZA ART CC 2', 740, 337, 'UNID'),
(608, '2021-07-17', 927, 'BUENA', '2020-04-18', '2025-12-31', 3, 'RON', 630, 202, 'UNID'),
(609, '2021-02-16', 498, 'BUENA', '2020-03-04', '2025-12-31', 2, 'CERVEZA ART MORA', 542, 76, 'UNID'),
(610, '2021-07-26', 78, 'BUENA', '2020-06-19', '2025-12-31', 2, 'CERVEZA ART MORA', 168, 150, 'UNID'),
(611, '2021-09-23', 814, 'BUENA', '2020-07-16', '2025-12-31', 2, 'CERVEZA ART MYA', 997, 587, 'UNID'),
(612, '2021-02-07', 719, 'BUENA', '2020-06-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 723, 529, 'UNID'),
(613, '2021-01-19', 247, 'BUENA', '2020-02-29', '2025-12-31', 3, 'RON', 278, 36, 'UNID'),
(614, '2021-09-08', 67, 'BUENA', '2020-10-15', '2025-12-31', 3, 'RON', 33, 6, 'UNID'),
(615, '2021-01-03', 105, 'BUENA', '2020-02-15', '2025-12-31', 2, 'CERVEZA ART CC5', 853, 125, 'UNID'),
(616, '2021-03-03', 126, 'BUENA', '2020-12-17', '2025-12-31', 2, 'CERVEZA ART CC7', 308, 3, 'UNID'),
(617, '2021-10-07', 842, 'BUENA', '2020-10-11', '2025-12-31', 1, 'CERVEZA ', 321, 159, 'UNID'),
(618, '2021-04-04', 922, 'BUENA', '2020-12-07', '2025-12-31', 1, 'CERVEZA ', 683, 106, 'UNID'),
(619, '2021-04-29', 733, 'BUENA', '2020-01-22', '2025-12-31', 4, 'PISCO', 685, 607, 'UNID'),
(620, '2021-09-25', 48, 'BUENA', '2020-03-14', '2025-12-31', 2, 'CERVEZA ART MORA', 899, 253, 'UNID'),
(621, '2021-03-03', 994, 'BUENA', '2020-03-20', '2025-12-31', 2, 'CERVEZA ART MYA', 542, 379, 'UNID'),
(622, '2021-03-15', 433, 'BUENA', '2020-04-11', '2025-12-31', 4, 'PISCO', 890, 137, 'UNID'),
(623, '2021-06-23', 965, 'BUENA', '2020-11-17', '2025-12-31', 2, 'CERVEZA ART CC5', 839, 125, 'UNID'),
(624, '2021-06-02', 638, 'BUENA', '2020-03-23', '2025-12-31', 2, 'CERVEZA ART MORA', 613, 210, 'UNID'),
(625, '2021-02-02', 919, 'BUENA', '2020-03-08', '2025-12-31', 2, 'CERVEZA ART MYA 2', 256, 121, 'UNID'),
(626, '2021-01-16', 801, 'BUENA', '2020-10-24', '2025-12-31', 2, 'CERVEZA ART CC', 757, 621, 'UNID'),
(627, '2021-02-21', 140, 'BUENA', '2020-02-27', '2025-12-31', 2, 'CERVEZA ART CC 2', 365, 173, 'UNID'),
(628, '2021-08-03', 356, 'BUENA', '2020-08-29', '2025-12-31', 2, 'CERVEZA ART CC7', 178, 76, 'UNID'),
(629, '2021-04-10', 611, 'BUENA', '2020-07-28', '2025-12-31', 2, 'CERVEZA ART CC', 926, 842, 'UNID'),
(630, '2021-08-23', 966, 'BUENA', '2020-07-25', '2025-12-31', 2, 'CERVEZA ART CC7', 650, 620, 'UNID'),
(631, '2021-07-24', 190, 'BUENA', '2020-03-30', '2025-12-31', 2, 'CERVEZA ART CC 2', 527, 99, 'UNID'),
(632, '2021-08-14', 465, 'BUENA', '2020-03-19', '2025-12-31', 2, 'CERVEZA ART CC5', 455, 312, 'UNID'),
(633, '2021-09-03', 164, 'BUENA', '2020-08-16', '2025-12-31', 2, 'CERVEZA ART MYA', 621, 473, 'UNID'),
(634, '2021-10-13', 413, 'BUENA', '2020-12-23', '2025-12-31', 4, 'PISCO', 784, 382, 'UNID'),
(635, '2021-02-26', 460, 'BUENA', '2020-07-24', '2025-12-31', 2, 'CERVEZA ART CC 2', 777, 575, 'UNID'),
(636, '2021-02-22', 669, 'BUENA', '2020-11-28', '2025-12-31', 2, 'CERVEZA ART MYA 2', 947, 733, 'UNID'),
(637, '2021-08-03', 902, 'BUENA', '2020-03-24', '2025-12-31', 1, 'CERVEZA ', 425, 317, 'UNID'),
(638, '2021-04-19', 284, 'BUENA', '2020-04-07', '2025-12-31', 2, 'CERVEZA ART MYA', 32, 17, 'UNID'),
(639, '2021-08-10', 939, 'BUENA', '2020-09-23', '2025-12-31', 2, 'CERVEZA ART MYA 2', 20, 10, 'UNID'),
(640, '2021-03-22', 82, 'BUENA', '2020-11-16', '2025-12-31', 1, 'CERVEZA ', 271, 79, 'UNID'),
(641, '2021-07-24', 443, 'BUENA', '2020-08-28', '2025-12-31', 4, 'PISCO', 521, 437, 'UNID'),
(642, '2021-06-16', 56, 'BUENA', '2020-02-17', '2025-12-31', 2, 'CERVEZA ART CC7', 537, 509, 'UNID'),
(643, '2021-10-20', 953, 'BUENA', '2020-05-11', '2025-12-31', 4, 'PISCO', 519, 221, 'UNID'),
(644, '2021-08-11', 5, 'BUENA', '2020-01-15', '2025-12-31', 2, 'CERVEZA ART CC5', 826, 141, 'UNID'),
(645, '2021-08-18', 167, 'BUENA', '2020-11-07', '2025-12-31', 3, 'RON', 137, 4, 'UNID'),
(646, '2021-10-08', 190, 'BUENA', '2020-02-17', '2025-12-31', 2, 'CERVEZA ART CC 2', 990, 956, 'UNID'),
(647, '2021-06-29', 14, 'BUENA', '2020-08-15', '2025-12-31', 2, 'CERVEZA ART MYA', 172, 169, 'UNID'),
(648, '2021-09-03', 397, 'BUENA', '2020-05-03', '2025-12-31', 3, 'RON', 52, 2, 'UNID'),
(649, '2021-06-15', 269, 'BUENA', '2020-01-21', '2025-12-31', 2, 'CERVEZA ART MYA 2', 467, 261, 'UNID'),
(650, '2021-05-06', 146, 'BUENA', '2020-02-09', '2025-12-31', 2, 'CERVEZA ART CC7', 414, 128, 'UNID'),
(651, '2021-01-29', 473, 'BUENA', '2020-12-06', '2025-12-31', 4, 'PISCO', 837, 194, 'UNID'),
(652, '2021-02-18', 61, 'BUENA', '2020-05-17', '2025-12-31', 2, 'CERVEZA ART CC', 369, 149, 'UNID'),
(653, '2021-01-07', 492, 'BUENA', '2020-10-17', '2025-12-31', 1, 'CERVEZA ', 535, 206, 'UNID'),
(654, '2021-04-09', 968, 'BUENA', '2020-12-03', '2025-12-31', 2, 'CERVEZA ART MORA', 881, 95, 'UNID'),
(655, '2021-05-09', 507, 'BUENA', '2020-10-30', '2025-12-31', 3, 'RON', 943, 81, 'UNID'),
(656, '2021-08-31', 355, 'BUENA', '2020-06-04', '2025-12-31', 2, 'CERVEZA ART CC5', 375, 98, 'UNID'),
(657, '2021-08-17', 49, 'BUENA', '2020-08-28', '2025-12-31', 2, 'CERVEZA ART MYA 2', 693, 469, 'UNID'),
(658, '2021-02-03', 977, 'BUENA', '2020-03-06', '2025-12-31', 3, 'RON', 66, 38, 'UNID'),
(659, '2021-07-18', 378, 'BUENA', '2020-07-27', '2025-12-31', 2, 'CERVEZA ART MORA', 318, 310, 'UNID'),
(660, '2021-05-30', 560, 'BUENA', '2020-07-15', '2025-12-31', 2, 'CERVEZA ART CC 2', 72, 28, 'UNID'),
(661, '2021-04-23', 604, 'BUENA', '2020-09-27', '2025-12-31', 2, 'CERVEZA ART MYA', 971, 888, 'UNID'),
(662, '2021-02-20', 600, 'BUENA', '2020-09-22', '2025-12-31', 2, 'CERVEZA ART CC 2', 71, 49, 'UNID'),
(663, '2021-07-09', 362, 'BUENA', '2020-03-23', '2025-12-31', 1, 'CERVEZA ', 921, 60, 'UNID'),
(664, '2021-08-29', 837, 'BUENA', '2020-10-25', '2025-12-31', 3, 'RON', 107, 104, 'UNID'),
(665, '2021-09-09', 267, 'BUENA', '2020-03-05', '2025-12-31', 3, 'RON', 467, 397, 'UNID'),
(666, '2021-03-18', 640, 'BUENA', '2020-04-07', '2025-12-31', 2, 'CERVEZA ART CC 2', 781, 779, 'UNID'),
(667, '2021-07-23', 72, 'BUENA', '2020-05-22', '2025-12-31', 1, 'CERVEZA ', 351, 108, 'UNID'),
(668, '2021-09-28', 691, 'BUENA', '2020-05-19', '2025-12-31', 2, 'CERVEZA ART CC', 763, 461, 'UNID'),
(669, '2021-05-09', 743, 'BUENA', '2020-10-14', '2025-12-31', 4, 'PISCO', 571, 456, 'UNID'),
(670, '2021-01-28', 818, 'BUENA', '2020-09-16', '2025-12-31', 2, 'CERVEZA ART MORA', 339, 109, 'UNID'),
(671, '2021-10-07', 923, 'BUENA', '2020-05-03', '2025-12-31', 4, 'PISCO', 931, 924, 'UNID'),
(672, '2021-10-27', 856, 'BUENA', '2020-03-21', '2025-12-31', 2, 'CERVEZA ART CC7', 341, 54, 'UNID'),
(673, '2021-03-27', 589, 'BUENA', '2020-08-29', '2025-12-31', 2, 'CERVEZA ART MYA 2', 634, 55, 'UNID'),
(674, '2021-07-13', 786, 'BUENA', '2020-01-02', '2025-12-31', 2, 'CERVEZA ART CC7', 438, 360, 'UNID'),
(675, '2021-10-22', 706, 'BUENA', '2020-06-17', '2025-12-31', 2, 'CERVEZA ART CC7', 15, 4, 'UNID'),
(676, '2021-03-20', 753, 'BUENA', '2020-02-16', '2025-12-31', 4, 'PISCO', 344, 5, 'UNID'),
(677, '2021-08-02', 134, 'BUENA', '2020-08-09', '2025-12-31', 2, 'CERVEZA ART MYA', 511, 297, 'UNID'),
(678, '2021-02-06', 733, 'BUENA', '2020-11-27', '2025-12-31', 4, 'PISCO', 18, 9, 'UNID'),
(679, '2021-04-24', 799, 'BUENA', '2020-05-18', '2025-12-31', 2, 'CERVEZA ART MYA 2', 796, 493, 'UNID'),
(680, '2021-03-16', 306, 'BUENA', '2020-12-04', '2025-12-31', 2, 'CERVEZA ART CC7', 608, 123, 'UNID'),
(681, '2021-01-28', 725, 'BUENA', '2020-01-26', '2025-12-31', 2, 'CERVEZA ART CC5', 373, 173, 'UNID'),
(682, '2021-03-21', 859, 'BUENA', '2020-08-30', '2025-12-31', 2, 'CERVEZA ART MYA 2', 87, 79, 'UNID'),
(683, '2021-09-26', 851, 'BUENA', '2020-05-04', '2025-12-31', 2, 'CERVEZA ART CC', 859, 709, 'UNID'),
(684, '2021-01-26', 201, 'BUENA', '2020-02-03', '2025-12-31', 2, 'CERVEZA ART CC', 575, 304, 'UNID'),
(685, '2021-09-15', 438, 'BUENA', '2020-03-07', '2025-12-31', 2, 'CERVEZA ART MORA', 647, 437, 'UNID'),
(686, '2021-01-14', 382, 'BUENA', '2020-12-19', '2025-12-31', 1, 'CERVEZA ', 25, 13, 'UNID'),
(687, '2021-07-09', 389, 'BUENA', '2020-06-05', '2025-12-31', 2, 'CERVEZA ART MYA 2', 629, 71, 'UNID'),
(688, '2021-03-13', 395, 'BUENA', '2020-03-11', '2025-12-31', 2, 'CERVEZA ART CC5', 669, 643, 'UNID'),
(689, '2021-05-02', 312, 'BUENA', '2020-01-22', '2025-12-31', 1, 'CERVEZA ', 266, 13, 'UNID'),
(690, '2021-07-26', 930, 'BUENA', '2020-12-24', '2025-12-31', 2, 'CERVEZA ART CC 2', 25, 23, 'UNID'),
(691, '2021-09-26', 79, 'BUENA', '2020-11-23', '2025-12-31', 2, 'CERVEZA ART MYA 2', 184, 79, 'UNID'),
(692, '2021-01-30', 424, 'BUENA', '2020-09-02', '2025-12-31', 2, 'CERVEZA ART MYA', 664, 657, 'UNID'),
(693, '2021-05-31', 409, 'BUENA', '2020-12-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 810, 767, 'UNID'),
(694, '2021-05-26', 302, 'BUENA', '2020-06-18', '2025-12-31', 1, 'CERVEZA ', 831, 175, 'UNID'),
(695, '2021-01-02', 635, 'BUENA', '2020-07-29', '2025-12-31', 2, 'CERVEZA ART CC5', 627, 471, 'UNID'),
(696, '2021-09-03', 398, 'BUENA', '2020-08-28', '2025-12-31', 2, 'CERVEZA ART MORA', 669, 90, 'UNID'),
(697, '2021-02-03', 656, 'BUENA', '2020-07-12', '2025-12-31', 2, 'CERVEZA ART CC7', 833, 99, 'UNID'),
(698, '2021-01-19', 527, 'BUENA', '2020-09-07', '2025-12-31', 3, 'RON', 453, 222, 'UNID'),
(699, '2021-01-18', 675, 'BUENA', '2020-04-22', '2025-12-31', 2, 'CERVEZA ART CC5', 980, 511, 'UNID'),
(700, '2021-10-01', 871, 'BUENA', '2020-12-08', '2025-12-31', 2, 'CERVEZA ART CC', 20, 15, 'UNID'),
(701, '2021-10-14', 381, 'BUENA', '2020-01-07', '2025-12-31', 2, 'CERVEZA ART CC', 730, 195, 'UNID'),
(702, '2021-03-01', 903, 'BUENA', '2020-04-09', '2025-12-31', 4, 'PISCO', 172, 69, 'UNID'),
(703, '2021-07-19', 367, 'BUENA', '2020-07-21', '2025-12-31', 3, 'RON', 130, 48, 'UNID'),
(704, '2021-09-10', 207, 'BUENA', '2020-10-16', '2025-12-31', 3, 'RON', 95, 92, 'UNID'),
(705, '2021-09-29', 183, 'BUENA', '2020-10-16', '2025-12-31', 4, 'PISCO', 682, 73, 'UNID'),
(706, '2021-04-11', 61, 'BUENA', '2020-07-06', '2025-12-31', 2, 'CERVEZA ART CC', 623, 237, 'UNID'),
(707, '2021-05-10', 125, 'BUENA', '2020-09-29', '2025-12-31', 2, 'CERVEZA ART CC5', 688, 100, 'UNID'),
(708, '2021-08-20', 959, 'BUENA', '2020-03-16', '2025-12-31', 2, 'CERVEZA ART MYA 2', 163, 106, 'UNID'),
(709, '2021-09-26', 853, 'BUENA', '2020-04-10', '2025-12-31', 4, 'PISCO', 115, 25, 'UNID'),
(710, '2021-02-17', 486, 'BUENA', '2020-11-22', '2025-12-31', 2, 'CERVEZA ART CC7', 773, 705, 'UNID'),
(711, '2021-04-23', 682, 'BUENA', '2020-01-19', '2025-12-31', 1, 'CERVEZA ', 952, 577, 'UNID'),
(712, '2021-09-15', 726, 'BUENA', '2020-07-12', '2025-12-31', 2, 'CERVEZA ART CC7', 139, 27, 'UNID'),
(713, '2021-05-11', 279, 'BUENA', '2020-08-13', '2025-12-31', 2, 'CERVEZA ART MYA 2', 881, 529, 'UNID'),
(714, '2021-05-13', 548, 'BUENA', '2020-05-24', '2025-12-31', 2, 'CERVEZA ART MORA', 864, 533, 'UNID'),
(715, '2021-05-11', 689, 'BUENA', '2020-07-10', '2025-12-31', 2, 'CERVEZA ART MYA 2', 227, 175, 'UNID'),
(716, '2021-04-07', 796, 'BUENA', '2020-10-21', '2025-12-31', 2, 'CERVEZA ART CC7', 159, 111, 'UNID'),
(717, '2021-06-03', 764, 'BUENA', '2020-09-25', '2025-12-31', 2, 'CERVEZA ART MYA', 537, 439, 'UNID'),
(718, '2021-08-09', 571, 'BUENA', '2020-11-22', '2025-12-31', 2, 'CERVEZA ART CC', 198, 135, 'UNID'),
(719, '2021-07-14', 510, 'BUENA', '2020-10-02', '2025-12-31', 2, 'CERVEZA ART CC 2', 835, 178, 'UNID'),
(720, '2021-01-23', 27, 'BUENA', '2020-04-09', '2025-12-31', 3, 'RON', 668, 531, 'UNID'),
(721, '2021-09-11', 997, 'BUENA', '2020-12-15', '2025-12-31', 3, 'RON', 155, 124, 'UNID'),
(722, '2021-06-13', 514, 'BUENA', '2020-01-17', '2025-12-31', 2, 'CERVEZA ART MYA', 311, 209, 'UNID'),
(723, '2021-10-03', 234, 'BUENA', '2020-05-10', '2025-12-31', 2, 'CERVEZA ART MYA', 103, 20, 'UNID'),
(724, '2021-01-07', 385, 'BUENA', '2020-05-25', '2025-12-31', 2, 'CERVEZA ART CC5', 443, 124, 'UNID'),
(725, '2021-05-29', 463, 'BUENA', '2020-03-13', '2025-12-31', 4, 'PISCO', 658, 385, 'UNID'),
(726, '2021-08-04', 425, 'BUENA', '2020-11-20', '2025-12-31', 2, 'CERVEZA ART CC5', 730, 18, 'UNID'),
(727, '2021-03-03', 811, 'BUENA', '2020-01-25', '2025-12-31', 2, 'CERVEZA ART CC', 417, 215, 'UNID'),
(728, '2021-08-01', 691, 'BUENA', '2020-08-26', '2025-12-31', 2, 'CERVEZA ART CC', 810, 33, 'UNID'),
(729, '2021-09-22', 293, 'BUENA', '2020-10-24', '2025-12-31', 4, 'PISCO', 775, 401, 'UNID'),
(730, '2021-06-11', 479, 'BUENA', '2020-08-29', '2025-12-31', 2, 'CERVEZA ART MYA 2', 605, 386, 'UNID'),
(731, '2021-07-25', 190, 'BUENA', '2020-05-07', '2025-12-31', 2, 'CERVEZA ART CC 2', 183, 156, 'UNID'),
(732, '2021-06-27', 139, 'BUENA', '2020-03-14', '2025-12-31', 2, 'CERVEZA ART MYA 2', 896, 400, 'UNID'),
(733, '2021-07-16', 790, 'BUENA', '2020-01-19', '2025-12-31', 2, 'CERVEZA ART CC 2', 773, 424, 'UNID'),
(734, '2021-01-19', 339, 'BUENA', '2020-10-16', '2025-12-31', 2, 'CERVEZA ART MYA 2', 561, 176, 'UNID'),
(735, '2021-06-30', 374, 'BUENA', '2020-09-08', '2025-12-31', 2, 'CERVEZA ART MYA', 332, 52, 'UNID'),
(736, '2021-01-28', 543, 'BUENA', '2020-08-06', '2025-12-31', 4, 'PISCO', 878, 252, 'UNID'),
(737, '2021-07-17', 186, 'BUENA', '2020-08-28', '2025-12-31', 2, 'CERVEZA ART CC7', 679, 28, 'UNID'),
(738, '2021-09-21', 336, 'BUENA', '2020-12-07', '2025-12-31', 2, 'CERVEZA ART CC7', 233, 147, 'UNID'),
(739, '2021-01-18', 83, 'BUENA', '2020-03-03', '2025-12-31', 4, 'PISCO', 712, 383, 'UNID'),
(740, '2021-01-21', 237, 'BUENA', '2020-09-03', '2025-12-31', 3, 'RON', 536, 183, 'UNID'),
(741, '2021-06-05', 98, 'BUENA', '2020-05-19', '2025-12-31', 2, 'CERVEZA ART MORA', 698, 319, 'UNID'),
(742, '2021-09-22', 800, 'BUENA', '2020-02-24', '2025-12-31', 2, 'CERVEZA ART CC 2', 635, 105, 'UNID'),
(743, '2021-08-10', 854, 'BUENA', '2020-04-25', '2025-12-31', 2, 'CERVEZA ART MYA', 599, 126, 'UNID'),
(744, '2021-04-01', 244, 'BUENA', '2020-10-31', '2025-12-31', 2, 'CERVEZA ART MYA', 559, 428, 'UNID'),
(745, '2021-09-22', 940, 'BUENA', '2020-08-18', '2025-12-31', 2, 'CERVEZA ART CC 2', 713, 512, 'UNID'),
(746, '2021-02-09', 756, 'BUENA', '2020-03-15', '2025-12-31', 2, 'CERVEZA ART CC7', 380, 229, 'UNID'),
(747, '2021-08-04', 212, 'BUENA', '2020-05-01', '2025-12-31', 1, 'CERVEZA ', 845, 64, 'UNID'),
(748, '2021-10-07', 662, 'BUENA', '2020-12-28', '2025-12-31', 1, 'CERVEZA ', 174, 72, 'UNID'),
(749, '2021-05-25', 83, 'BUENA', '2020-01-01', '2025-12-31', 4, 'PISCO', 365, 50, 'UNID'),
(750, '2021-01-09', 851, 'BUENA', '2020-01-13', '2025-12-31', 2, 'CERVEZA ART CC', 34, 27, 'UNID'),
(751, '2021-05-23', 539, 'BUENA', '2020-09-15', '2025-12-31', 2, 'CERVEZA ART MYA 2', 626, 138, 'UNID'),
(752, '2021-03-13', 603, 'BUENA', '2020-01-14', '2025-12-31', 4, 'PISCO', 42, 40, 'UNID'),
(753, '2021-04-16', 426, 'BUENA', '2020-10-07', '2025-12-31', 2, 'CERVEZA ART CC7', 531, 170, 'UNID'),
(754, '2021-04-22', 944, 'BUENA', '2020-10-07', '2025-12-31', 2, 'CERVEZA ART MYA', 987, 313, 'UNID'),
(755, '2021-04-12', 527, 'BUENA', '2020-09-20', '2025-12-31', 3, 'RON', 587, 568, 'UNID'),
(756, '2021-10-31', 849, 'BUENA', '2020-05-22', '2025-12-31', 2, 'CERVEZA ART MYA 2', 78, 16, 'UNID'),
(757, '2021-08-24', 58, 'BUENA', '2020-03-14', '2025-12-31', 2, 'CERVEZA ART MORA', 932, 577, 'UNID'),
(758, '2021-03-26', 324, 'BUENA', '2020-06-08', '2025-12-31', 2, 'CERVEZA ART MYA', 761, 407, 'UNID'),
(759, '2021-05-27', 277, 'BUENA', '2020-02-26', '2025-12-31', 3, 'RON', 928, 324, 'UNID'),
(760, '2021-04-05', 313, 'BUENA', '2020-01-14', '2025-12-31', 4, 'PISCO', 796, 274, 'UNID'),
(761, '2021-09-03', 617, 'BUENA', '2020-08-06', '2025-12-31', 3, 'RON', 144, 116, 'UNID'),
(762, '2021-04-04', 166, 'BUENA', '2020-04-19', '2025-12-31', 2, 'CERVEZA ART CC7', 495, 393, 'UNID'),
(763, '2021-08-26', 515, 'BUENA', '2020-08-27', '2025-12-31', 2, 'CERVEZA ART CC5', 17, 1, 'UNID'),
(764, '2021-07-27', 120, 'BUENA', '2020-02-23', '2025-12-31', 2, 'CERVEZA ART CC 2', 998, 5, 'UNID'),
(765, '2021-05-14', 225, 'BUENA', '2020-02-07', '2025-12-31', 2, 'CERVEZA ART CC5', 458, 51, 'UNID'),
(766, '2021-01-16', 915, 'BUENA', '2020-11-27', '2025-12-31', 2, 'CERVEZA ART CC5', 503, 47, 'UNID'),
(767, '2021-02-27', 384, 'BUENA', '2020-05-16', '2025-12-31', 2, 'CERVEZA ART MYA', 311, 139, 'UNID'),
(768, '2021-08-31', 433, 'BUENA', '2020-08-06', '2025-12-31', 4, 'PISCO', 302, 100, 'UNID'),
(769, '2021-06-25', 596, 'BUENA', '2020-09-26', '2025-12-31', 2, 'CERVEZA ART CC7', 904, 28, 'UNID'),
(770, '2021-10-15', 224, 'BUENA', '2020-09-13', '2025-12-31', 2, 'CERVEZA ART MYA', 417, 290, 'UNID'),
(771, '2021-03-31', 364, 'BUENA', '2020-11-20', '2025-12-31', 2, 'CERVEZA ART MYA', 176, 57, 'UNID'),
(772, '2021-07-25', 29, 'BUENA', '2020-06-07', '2025-12-31', 2, 'CERVEZA ART MYA 2', 375, 186, 'UNID'),
(773, '2021-01-22', 90, 'BUENA', '2020-12-01', '2025-12-31', 2, 'CERVEZA ART CC 2', 834, 197, 'UNID'),
(774, '2021-05-25', 634, 'BUENA', '2020-09-07', '2025-12-31', 2, 'CERVEZA ART MYA', 422, 399, 'UNID'),
(775, '2021-02-07', 98, 'BUENA', '2020-01-08', '2025-12-31', 2, 'CERVEZA ART MORA', 441, 42, 'UNID'),
(776, '2021-05-23', 427, 'BUENA', '2020-03-08', '2025-12-31', 3, 'RON', 657, 358, 'UNID'),
(777, '2021-08-12', 211, 'BUENA', '2020-08-29', '2025-12-31', 2, 'CERVEZA ART CC', 277, 87, 'UNID'),
(778, '2021-06-26', 714, 'BUENA', '2020-10-12', '2025-12-31', 2, 'CERVEZA ART MYA', 875, 570, 'UNID'),
(779, '2021-07-26', 691, 'BUENA', '2020-08-02', '2025-12-31', 2, 'CERVEZA ART CC', 589, 257, 'UNID'),
(780, '2021-03-25', 205, 'BUENA', '2020-03-06', '2025-12-31', 2, 'CERVEZA ART CC5', 747, 108, 'UNID'),
(781, '2021-04-20', 517, 'BUENA', '2020-01-21', '2025-12-31', 3, 'RON', 457, 189, 'UNID'),
(782, '2021-06-26', 392, 'BUENA', '2020-05-03', '2025-12-31', 1, 'CERVEZA ', 650, 127, 'UNID'),
(783, '2021-08-22', 372, 'BUENA', '2020-02-06', '2025-12-31', 1, 'CERVEZA ', 872, 83, 'UNID'),
(784, '2021-07-09', 134, 'BUENA', '2020-01-06', '2025-12-31', 2, 'CERVEZA ART MYA', 449, 72, 'UNID'),
(785, '2021-03-23', 28, 'BUENA', '2020-01-01', '2025-12-31', 2, 'CERVEZA ART MORA', 396, 197, 'UNID'),
(786, '2021-02-10', 152, 'BUENA', '2020-12-26', '2025-12-31', 1, 'CERVEZA ', 570, 118, 'UNID'),
(787, '2021-01-22', 503, 'BUENA', '2020-04-21', '2025-12-31', 4, 'PISCO', 355, 34, 'UNID'),
(788, '2021-02-13', 154, 'BUENA', '2020-12-19', '2025-12-31', 2, 'CERVEZA ART MYA', 366, 350, 'UNID'),
(789, '2021-02-18', 630, 'BUENA', '2020-04-07', '2025-12-31', 2, 'CERVEZA ART CC 2', 675, 569, 'UNID'),
(790, '2021-04-03', 42, 'BUENA', '2020-03-12', '2025-12-31', 1, 'CERVEZA ', 912, 466, 'UNID'),
(791, '2021-05-03', 263, 'BUENA', '2020-09-17', '2025-12-31', 4, 'PISCO', 393, 107, 'UNID'),
(792, '2021-09-09', 638, 'BUENA', '2020-06-03', '2025-12-31', 2, 'CERVEZA ART MORA', 698, 507, 'UNID'),
(793, '2021-01-06', 744, 'BUENA', '2020-01-11', '2025-12-31', 2, 'CERVEZA ART MYA', 480, 287, 'UNID'),
(794, '2021-10-24', 55, 'BUENA', '2020-08-02', '2025-12-31', 2, 'CERVEZA ART CC5', 602, 177, 'UNID'),
(795, '2021-10-01', 438, 'BUENA', '2020-05-18', '2025-12-31', 2, 'CERVEZA ART MORA', 119, 110, 'UNID'),
(796, '2021-05-23', 237, 'BUENA', '2020-05-14', '2025-12-31', 3, 'RON', 266, 255, 'UNID'),
(797, '2021-03-07', 783, 'BUENA', '2020-07-29', '2025-12-31', 4, 'PISCO', 118, 31, 'UNID'),
(798, '2021-09-15', 968, 'BUENA', '2020-10-21', '2025-12-31', 2, 'CERVEZA ART MORA', 358, 244, 'UNID'),
(799, '2021-07-13', 7, 'BUENA', '2020-12-05', '2025-12-31', 3, 'RON', 80, 14, 'UNID'),
(800, '2021-08-12', 953, 'BUENA', '2020-06-04', '2025-12-31', 4, 'PISCO', 430, 23, 'UNID'),
(801, '2021-04-10', 713, 'BUENA', '2020-02-14', '2025-12-31', 4, 'PISCO', 941, 347, 'UNID'),
(802, '2021-06-30', 207, 'BUENA', '2020-08-04', '2025-12-31', 3, 'RON', 41, 34, 'UNID'),
(803, '2021-07-23', 531, 'BUENA', '2020-07-28', '2025-12-31', 2, 'CERVEZA ART CC', 8, 2, 'UNID'),
(804, '2021-06-26', 943, 'BUENA', '2020-02-24', '2025-12-31', 4, 'PISCO', 865, 241, 'UNID'),
(805, '2021-03-22', 208, 'BUENA', '2020-09-04', '2025-12-31', 2, 'CERVEZA ART MORA', 72, 28, 'UNID'),
(806, '2021-06-17', 726, 'BUENA', '2020-06-18', '2025-12-31', 2, 'CERVEZA ART CC7', 137, 6, 'UNID'),
(807, '2021-01-01', 301, 'BUENA', '2020-03-27', '2025-12-31', 2, 'CERVEZA ART CC', 982, 178, 'UNID'),
(808, '2021-08-19', 943, 'BUENA', '2020-02-22', '2025-12-31', 4, 'PISCO', 56, 44, 'UNID'),
(809, '2021-01-11', 480, 'BUENA', '2020-02-08', '2025-12-31', 2, 'CERVEZA ART CC 2', 878, 124, 'UNID'),
(810, '2021-01-07', 183, 'BUENA', '2020-05-31', '2025-12-31', 4, 'PISCO', 706, 307, 'UNID'),
(811, '2021-09-27', 245, 'BUENA', '2020-01-22', '2025-12-31', 2, 'CERVEZA ART CC5', 340, 80, 'UNID'),
(812, '2021-08-31', 331, 'BUENA', '2020-12-12', '2025-12-31', 2, 'CERVEZA ART CC', 628, 209, 'UNID'),
(813, '2021-03-16', 368, 'BUENA', '2020-11-01', '2025-12-31', 2, 'CERVEZA ART MORA', 203, 17, 'UNID'),
(814, '2021-03-08', 111, 'BUENA', '2020-05-08', '2025-12-31', 2, 'CERVEZA ART CC', 173, 156, 'UNID'),
(815, '2021-10-19', 650, 'BUENA', '2020-06-07', '2025-12-31', 2, 'CERVEZA ART CC 2', 746, 37, 'UNID'),
(816, '2021-08-07', 99, 'BUENA', '2020-05-01', '2025-12-31', 2, 'CERVEZA ART MYA 2', 564, 244, 'UNID'),
(817, '2021-05-11', 172, 'BUENA', '2020-01-25', '2025-12-31', 1, 'CERVEZA ', 240, 134, 'UNID'),
(818, '2021-02-21', 878, 'BUENA', '2020-02-29', '2025-12-31', 2, 'CERVEZA ART MORA', 725, 458, 'UNID'),
(819, '2021-10-29', 812, 'BUENA', '2020-03-04', '2025-12-31', 1, 'CERVEZA ', 46, 9, 'UNID'),
(820, '2021-10-09', 971, 'BUENA', '2020-03-20', '2025-12-31', 2, 'CERVEZA ART CC', 430, 306, 'UNID'),
(821, '2021-07-04', 846, 'BUENA', '2020-05-05', '2025-12-31', 2, 'CERVEZA ART CC7', 802, 279, 'UNID'),
(822, '2021-02-19', 205, 'BUENA', '2020-07-25', '2025-12-31', 2, 'CERVEZA ART CC5', 123, 51, 'UNID'),
(823, '2021-04-28', 933, 'BUENA', '2020-12-01', '2025-12-31', 4, 'PISCO', 556, 437, 'UNID'),
(824, '2021-06-05', 624, 'BUENA', '2020-12-29', '2025-12-31', 2, 'CERVEZA ART MYA', 161, 29, 'UNID'),
(825, '2021-07-16', 596, 'BUENA', '2020-01-14', '2025-12-31', 2, 'CERVEZA ART CC7', 265, 115, 'UNID'),
(826, '2021-08-22', 471, 'BUENA', '2020-02-02', '2025-12-31', 2, 'CERVEZA ART CC', 500, 3, 'UNID'),
(827, '2021-08-12', 456, 'BUENA', '2020-05-04', '2025-12-31', 2, 'CERVEZA ART CC7', 842, 113, 'UNID'),
(828, '2021-10-18', 38, 'BUENA', '2020-06-09', '2025-12-31', 2, 'CERVEZA ART MORA', 720, 436, 'UNID'),
(829, '2021-04-20', 894, 'BUENA', '2020-09-20', '2025-12-31', 2, 'CERVEZA ART MYA', 876, 199, 'UNID'),
(830, '2021-08-14', 577, 'BUENA', '2020-10-01', '2025-12-31', 3, 'RON', 769, 513, 'UNID'),
(831, '2021-07-06', 585, 'BUENA', '2020-12-31', '2025-12-31', 2, 'CERVEZA ART CC5', 186, 109, 'UNID'),
(832, '2021-06-10', 510, 'BUENA', '2020-08-18', '2025-12-31', 2, 'CERVEZA ART CC 2', 211, 119, 'UNID'),
(833, '2021-08-13', 935, 'BUENA', '2020-11-30', '2025-12-31', 2, 'CERVEZA ART CC5', 474, 68, 'UNID'),
(834, '2021-04-25', 877, 'BUENA', '2020-12-29', '2025-12-31', 3, 'RON', 400, 245, 'UNID'),
(835, '2021-05-15', 896, 'BUENA', '2020-07-29', '2025-12-31', 2, 'CERVEZA ART CC7', 852, 95, 'UNID'),
(836, '2021-03-11', 203, 'BUENA', '2020-06-12', '2025-12-31', 4, 'PISCO', 559, 429, 'UNID'),
(837, '2021-07-03', 80, 'BUENA', '2020-02-20', '2025-12-31', 2, 'CERVEZA ART CC 2', 670, 309, 'UNID'),
(838, '2021-01-12', 258, 'BUENA', '2020-02-15', '2025-12-31', 2, 'CERVEZA ART MORA', 550, 293, 'UNID'),
(839, '2021-04-16', 499, 'BUENA', '2020-06-06', '2025-12-31', 2, 'CERVEZA ART MYA 2', 46, 1, 'UNID'),
(840, '2021-02-12', 122, 'BUENA', '2020-02-20', '2025-12-31', 1, 'CERVEZA ', 171, 157, 'UNID'),
(841, '2021-08-14', 188, 'BUENA', '2020-05-27', '2025-12-31', 2, 'CERVEZA ART MORA', 432, 276, 'UNID'),
(842, '2021-10-14', 757, 'BUENA', '2020-11-01', '2025-12-31', 3, 'RON', 128, 5, 'UNID'),
(843, '2021-03-14', 899, 'BUENA', '2020-11-03', '2025-12-31', 2, 'CERVEZA ART MYA 2', 120, 12, 'UNID'),
(844, '2021-02-14', 983, 'BUENA', '2020-03-29', '2025-12-31', 4, 'PISCO', 259, 104, 'UNID'),
(845, '2021-08-28', 42, 'BUENA', '2020-11-05', '2025-12-31', 1, 'CERVEZA ', 648, 433, 'UNID'),
(846, '2021-06-10', 217, 'BUENA', '2020-05-20', '2025-12-31', 3, 'RON', 938, 544, 'UNID'),
(847, '2021-06-21', 4, 'BUENA', '2020-04-21', '2025-12-31', 2, 'CERVEZA ART MYA', 768, 157, 'UNID'),
(848, '2021-01-22', 164, 'BUENA', '2020-09-09', '2025-12-31', 2, 'CERVEZA ART MYA', 451, 73, 'UNID'),
(849, '2021-04-17', 166, 'BUENA', '2020-03-19', '2025-12-31', 2, 'CERVEZA ART CC7', 613, 136, 'UNID'),
(850, '2021-06-24', 438, 'BUENA', '2020-06-19', '2025-12-31', 2, 'CERVEZA ART MORA', 588, 59, 'UNID'),
(851, '2021-02-22', 982, 'BUENA', '2020-11-21', '2025-12-31', 1, 'CERVEZA ', 428, 36, 'UNID'),
(852, '2021-08-20', 87, 'BUENA', '2020-09-27', '2025-12-31', 3, 'RON', 394, 139, 'UNID'),
(853, '2021-06-16', 259, 'BUENA', '2020-06-04', '2025-12-31', 2, 'CERVEZA ART MYA 2', 44, 30, 'UNID'),
(854, '2021-01-08', 400, 'BUENA', '2020-12-02', '2025-12-31', 2, 'CERVEZA ART CC 2', 982, 49, 'UNID'),
(855, '2021-04-15', 873, 'BUENA', '2020-03-23', '2025-12-31', 4, 'PISCO', 870, 635, 'UNID'),
(856, '2021-07-31', 657, 'BUENA', '2020-01-26', '2025-12-31', 3, 'RON', 953, 201, 'UNID'),
(857, '2021-07-09', 360, 'BUENA', '2020-03-23', '2025-12-31', 2, 'CERVEZA ART CC 2', 122, 70, 'UNID'),
(858, '2021-05-04', 142, 'BUENA', '2020-04-15', '2025-12-31', 1, 'CERVEZA ', 445, 417, 'UNID'),
(859, '2021-07-31', 303, 'BUENA', '2020-03-20', '2025-12-31', 4, 'PISCO', 325, 149, 'UNID'),
(860, '2021-06-03', 362, 'BUENA', '2020-07-08', '2025-12-31', 1, 'CERVEZA ', 503, 186, 'UNID'),
(861, '2021-05-26', 507, 'BUENA', '2020-07-17', '2025-12-31', 3, 'RON', 725, 164, 'UNID'),
(862, '2021-04-30', 896, 'BUENA', '2020-04-22', '2025-12-31', 2, 'CERVEZA ART CC7', 177, 87, 'UNID'),
(863, '2021-08-28', 325, 'BUENA', '2020-02-06', '2025-12-31', 2, 'CERVEZA ART CC5', 879, 659, 'UNID'),
(864, '2021-09-08', 383, 'BUENA', '2020-12-16', '2025-12-31', 4, 'PISCO', 214, 116, 'UNID'),
(865, '2021-06-20', 531, 'BUENA', '2020-05-29', '2025-12-31', 2, 'CERVEZA ART CC', 521, 68, 'UNID'),
(866, '2021-09-02', 318, 'BUENA', '2020-02-20', '2025-12-31', 2, 'CERVEZA ART MORA', 212, 108, 'UNID'),
(867, '2021-02-27', 516, 'BUENA', '2020-10-11', '2025-12-31', 2, 'CERVEZA ART CC7', 159, 13, 'UNID'),
(868, '2021-10-13', 95, 'BUENA', '2020-01-31', '2025-12-31', 2, 'CERVEZA ART CC5', 104, 31, 'UNID'),
(869, '2021-01-14', 236, 'BUENA', '2020-07-19', '2025-12-31', 2, 'CERVEZA ART CC7', 135, 109, 'UNID'),
(870, '2021-09-18', 507, 'BUENA', '2020-09-11', '2025-12-31', 3, 'RON', 480, 248, 'UNID'),
(871, '2021-09-11', 186, 'BUENA', '2020-09-18', '2025-12-31', 2, 'CERVEZA ART CC7', 198, 191, 'UNID'),
(872, '2021-07-16', 907, 'BUENA', '2020-09-07', '2025-12-31', 3, 'RON', 169, 8, 'UNID'),
(873, '2021-05-12', 810, 'BUENA', '2020-01-28', '2025-12-31', 2, 'CERVEZA ART CC 2', 824, 490, 'UNID'),
(874, '2021-10-03', 955, 'BUENA', '2020-11-21', '2025-12-31', 2, 'CERVEZA ART CC5', 372, 276, 'UNID'),
(875, '2021-02-28', 182, 'BUENA', '2020-03-21', '2025-12-31', 1, 'CERVEZA ', 72, 25, 'UNID'),
(876, '2021-01-01', 177, 'BUENA', '2020-05-08', '2025-12-31', 3, 'RON', 589, 83, 'UNID'),
(877, '2021-04-03', 389, 'BUENA', '2020-06-17', '2025-12-31', 2, 'CERVEZA ART MYA 2', 365, 52, 'UNID'),
(878, '2021-06-06', 794, 'BUENA', '2020-04-30', '2025-12-31', 2, 'CERVEZA ART MYA', 466, 280, 'UNID'),
(879, '2021-09-12', 23, 'BUENA', '2020-01-05', '2025-12-31', 4, 'PISCO', 548, 278, 'UNID'),
(880, '2021-04-25', 407, 'BUENA', '2020-08-18', '2025-12-31', 3, 'RON', 785, 464, 'UNID'),
(881, '2021-10-17', 976, 'BUENA', '2020-04-03', '2025-12-31', 2, 'CERVEZA ART CC7', 122, 41, 'UNID'),
(882, '2021-03-06', 434, 'BUENA', '2020-11-10', '2025-12-31', 2, 'CERVEZA ART MYA', 259, 104, 'UNID'),
(883, '2021-06-21', 313, 'BUENA', '2020-09-11', '2025-12-31', 4, 'PISCO', 253, 147, 'UNID'),
(884, '2021-06-14', 48, 'BUENA', '2020-03-30', '2025-12-31', 2, 'CERVEZA ART MORA', 952, 776, 'UNID'),
(885, '2021-09-12', 944, 'BUENA', '2020-10-24', '2025-12-31', 2, 'CERVEZA ART MYA', 521, 500, 'UNID'),
(886, '2021-05-01', 811, 'BUENA', '2020-06-01', '2025-12-31', 2, 'CERVEZA ART CC', 880, 405, 'UNID'),
(887, '2021-08-07', 997, 'BUENA', '2020-10-03', '2025-12-31', 3, 'RON', 467, 453, 'UNID'),
(888, '2021-04-23', 479, 'BUENA', '2020-06-18', '2025-12-31', 2, 'CERVEZA ART MYA 2', 972, 361, 'UNID'),
(889, '2021-03-18', 963, 'BUENA', '2020-07-15', '2025-12-31', 4, 'PISCO', 220, 177, 'UNID'),
(890, '2021-06-30', 136, 'BUENA', '2020-02-10', '2025-12-31', 2, 'CERVEZA ART CC7', 735, 564, 'UNID'),
(891, '2021-09-27', 368, 'BUENA', '2020-12-22', '2025-12-31', 2, 'CERVEZA ART MORA', 127, 18, 'UNID'),
(892, '2021-05-24', 711, 'BUENA', '2020-09-02', '2025-12-31', 2, 'CERVEZA ART CC', 112, 43, 'UNID'),
(893, '2021-07-09', 675, 'BUENA', '2020-02-10', '2025-12-31', 2, 'CERVEZA ART CC5', 619, 548, 'UNID'),
(894, '2021-01-29', 74, 'BUENA', '2020-05-29', '2025-12-31', 2, 'CERVEZA ART MYA', 673, 392, 'UNID'),
(895, '2021-09-17', 744, 'BUENA', '2020-02-01', '2025-12-31', 2, 'CERVEZA ART MYA', 907, 359, 'UNID'),
(896, '2021-06-14', 37, 'BUENA', '2020-05-10', '2025-12-31', 3, 'RON', 415, 95, 'UNID'),
(897, '2021-06-26', 707, 'BUENA', '2020-06-12', '2025-12-31', 3, 'RON', 438, 7, 'UNID'),
(898, '2021-10-29', 602, 'BUENA', '2020-06-01', '2025-12-31', 1, 'CERVEZA ', 450, 162, 'UNID'),
(899, '2021-02-21', 983, 'BUENA', '2020-12-16', '2025-12-31', 4, 'PISCO', 434, 403, 'UNID'),
(900, '2021-04-01', 801, 'BUENA', '2020-10-12', '2025-12-31', 2, 'CERVEZA ART CC', 290, 48, 'UNID'),
(901, '2021-08-26', 313, 'BUENA', '2020-03-26', '2025-12-31', 4, 'PISCO', 45, 11, 'UNID'),
(902, '2021-02-25', 419, 'BUENA', '2020-06-22', '2025-12-31', 2, 'CERVEZA ART MYA 2', 128, 70, 'UNID'),
(903, '2021-06-19', 428, 'BUENA', '2020-02-01', '2025-12-31', 2, 'CERVEZA ART MORA', 42, 28, 'UNID'),
(904, '2021-06-28', 82, 'BUENA', '2020-01-16', '2025-12-31', 1, 'CERVEZA ', 555, 110, 'UNID'),
(905, '2021-08-15', 910, 'BUENA', '2020-05-13', '2025-12-31', 2, 'CERVEZA ART CC 2', 364, 245, 'UNID'),
(906, '2021-01-28', 451, 'BUENA', '2020-08-01', '2025-12-31', 2, 'CERVEZA ART CC', 877, 378, 'UNID'),
(907, '2021-05-27', 860, 'BUENA', '2020-01-30', '2025-12-31', 2, 'CERVEZA ART CC 2', 147, 43, 'UNID'),
(908, '2021-02-18', 523, 'BUENA', '2020-10-20', '2025-12-31', 4, 'PISCO', 865, 615, 'UNID'),
(909, '2021-08-27', 291, 'BUENA', '2020-04-11', '2025-12-31', 2, 'CERVEZA ART CC', 355, 75, 'UNID'),
(910, '2021-01-01', 174, 'BUENA', '2020-10-24', '2025-12-31', 2, 'CERVEZA ART MYA', 797, 487, 'UNID'),
(911, '2021-08-14', 489, 'BUENA', '2020-09-08', '2025-12-31', 2, 'CERVEZA ART MYA 2', 760, 586, 'UNID'),
(912, '2021-09-24', 541, 'BUENA', '2020-01-18', '2025-12-31', 2, 'CERVEZA ART CC', 171, 77, 'UNID'),
(913, '2021-02-08', 427, 'BUENA', '2020-04-26', '2025-12-31', 3, 'RON', 792, 566, 'UNID'),
(914, '2021-05-04', 709, 'BUENA', '2020-12-29', '2025-12-31', 2, 'CERVEZA ART MYA 2', 264, 95, 'UNID'),
(915, '2021-04-08', 240, 'BUENA', '2020-08-13', '2025-12-31', 2, 'CERVEZA ART CC 2', 510, 39, 'UNID'),
(916, '2021-04-10', 757, 'BUENA', '2020-04-11', '2025-12-31', 3, 'RON', 590, 163, 'UNID'),
(917, '2021-05-04', 56, 'BUENA', '2020-04-02', '2025-12-31', 2, 'CERVEZA ART CC7', 615, 602, 'UNID'),
(918, '2021-10-30', 329, 'BUENA', '2020-01-29', '2025-12-31', 2, 'CERVEZA ART MYA 2', 438, 243, 'UNID'),
(919, '2021-04-29', 932, 'BUENA', '2020-09-11', '2025-12-31', 1, 'CERVEZA ', 594, 548, 'UNID'),
(920, '2021-06-16', 852, 'BUENA', '2020-05-29', '2025-12-31', 1, 'CERVEZA ', 604, 113, 'UNID'),
(921, '2021-05-26', 310, 'BUENA', '2020-08-12', '2025-12-31', 2, 'CERVEZA ART CC 2', 652, 406, 'UNID'),
(922, '2021-05-16', 509, 'BUENA', '2020-08-04', '2025-12-31', 2, 'CERVEZA ART MYA 2', 302, 245, 'UNID'),
(923, '2021-02-16', 375, 'BUENA', '2020-09-05', '2025-12-31', 2, 'CERVEZA ART CC5', 350, 144, 'UNID'),
(924, '2021-06-28', 276, 'BUENA', '2020-07-03', '2025-12-31', 2, 'CERVEZA ART CC7', 806, 381, 'UNID'),
(925, '2021-09-28', 993, 'BUENA', '2020-07-04', '2025-12-31', 4, 'PISCO', 128, 109, 'UNID'),
(926, '2021-05-10', 811, 'BUENA', '2020-01-09', '2025-12-31', 2, 'CERVEZA ART CC', 349, 267, 'UNID'),
(927, '2021-03-18', 981, 'BUENA', '2020-08-25', '2025-12-31', 2, 'CERVEZA ART CC', 52, 38, 'UNID'),
(928, '2021-09-07', 539, 'BUENA', '2020-04-15', '2025-12-31', 2, 'CERVEZA ART MYA 2', 952, 670, 'UNID'),
(929, '2021-07-19', 817, 'BUENA', '2020-05-18', '2025-12-31', 3, 'RON', 182, 17, 'UNID'),
(930, '2021-04-05', 786, 'BUENA', '2020-01-31', '2025-12-31', 2, 'CERVEZA ART CC7', 2, 2, 'UNID'),
(931, '2021-03-10', 926, 'BUENA', '2020-09-19', '2025-12-31', 2, 'CERVEZA ART CC7', 54, 39, 'UNID'),
(932, '2021-04-09', 73, 'BUENA', '2020-01-29', '2025-12-31', 4, 'PISCO', 300, 183, 'UNID'),
(933, '2021-10-10', 564, 'BUENA', '2020-11-06', '2025-12-31', 2, 'CERVEZA ART MYA', 849, 604, 'UNID'),
(934, '2021-05-12', 951, 'BUENA', '2020-06-30', '2025-12-31', 2, 'CERVEZA ART CC', 387, 254, 'UNID'),
(935, '2021-06-12', 27, 'BUENA', '2020-10-21', '2025-12-31', 3, 'RON', 838, 729, 'UNID'),
(936, '2021-08-02', 53, 'BUENA', '2020-05-10', '2025-12-31', 4, 'PISCO', 384, 108, 'UNID'),
(937, '2021-07-29', 897, 'BUENA', '2020-10-15', '2025-12-31', 3, 'RON', 236, 49, 'UNID'),
(938, '2021-07-08', 318, 'BUENA', '2020-03-08', '2025-12-31', 2, 'CERVEZA ART MORA', 966, 952, 'UNID'),
(939, '2021-10-31', 790, 'BUENA', '2020-01-09', '2025-12-31', 2, 'CERVEZA ART CC 2', 597, 535, 'UNID'),
(940, '2021-02-02', 203, 'BUENA', '2020-04-30', '2025-12-31', 4, 'PISCO', 556, 351, 'UNID'),
(941, '2021-04-07', 331, 'BUENA', '2020-03-01', '2025-12-31', 2, 'CERVEZA ART CC', 125, 59, 'UNID'),
(942, '2021-06-09', 91, 'BUENA', '2020-04-20', '2025-12-31', 2, 'CERVEZA ART CC', 841, 30, 'UNID'),
(943, '2021-10-24', 206, 'BUENA', '2020-04-08', '2025-12-31', 2, 'CERVEZA ART CC7', 643, 593, 'UNID'),
(944, '2021-10-15', 407, 'BUENA', '2020-02-26', '2025-12-31', 3, 'RON', 890, 425, 'UNID'),
(945, '2021-02-01', 736, 'BUENA', '2020-07-02', '2025-12-31', 2, 'CERVEZA ART CC7', 473, 410, 'UNID'),
(946, '2021-10-24', 490, 'BUENA', '2020-03-19', '2025-12-31', 2, 'CERVEZA ART CC 2', 716, 590, 'UNID'),
(947, '2021-01-13', 792, 'BUENA', '2020-02-03', '2025-12-31', 1, 'CERVEZA ', 648, 43, 'UNID'),
(948, '2021-03-24', 659, 'BUENA', '2020-02-19', '2025-12-31', 2, 'CERVEZA ART MYA 2', 904, 389, 'UNID'),
(949, '2021-04-01', 776, 'BUENA', '2020-10-18', '2025-12-31', 2, 'CERVEZA ART CC7', 368, 302, 'UNID'),
(950, '2021-07-27', 298, 'BUENA', '2020-12-07', '2025-12-31', 2, 'CERVEZA ART MORA', 608, 496, 'UNID'),
(951, '2021-10-07', 514, 'BUENA', '2020-09-08', '2025-12-31', 2, 'CERVEZA ART MYA', 529, 433, 'UNID'),
(952, '2021-05-28', 717, 'BUENA', '2020-07-30', '2025-12-31', 3, 'RON', 796, 216, 'UNID'),
(953, '2021-01-03', 469, 'BUENA', '2020-02-08', '2025-12-31', 2, 'CERVEZA ART MYA 2', 168, 150, 'UNID'),
(954, '2021-04-22', 190, 'BUENA', '2020-01-30', '2025-12-31', 2, 'CERVEZA ART CC 2', 886, 404, 'UNID'),
(955, '2021-01-09', 309, 'BUENA', '2020-06-02', '2025-12-31', 2, 'CERVEZA ART MYA 2', 115, 109, 'UNID'),
(956, '2021-10-29', 123, 'BUENA', '2020-02-20', '2025-12-31', 4, 'PISCO', 231, 19, 'UNID'),
(957, '2021-05-07', 846, 'BUENA', '2020-03-18', '2025-12-31', 2, 'CERVEZA ART CC7', 413, 348, 'UNID'),
(958, '2021-03-17', 794, 'BUENA', '2020-11-09', '2025-12-31', 2, 'CERVEZA ART MYA', 851, 450, 'UNID'),
(959, '2021-09-12', 885, 'BUENA', '2020-04-05', '2025-12-31', 2, 'CERVEZA ART CC5', 977, 511, 'UNID'),
(960, '2021-08-06', 582, 'BUENA', '2020-06-07', '2025-12-31', 1, 'CERVEZA ', 571, 42, 'UNID'),
(961, '2021-02-25', 456, 'BUENA', '2020-10-08', '2025-12-31', 2, 'CERVEZA ART CC7', 703, 99, 'UNID'),
(962, '2021-03-02', 359, 'BUENA', '2020-01-25', '2025-12-31', 2, 'CERVEZA ART MYA 2', 108, 80, 'UNID'),
(963, '2021-02-02', 294, 'BUENA', '2020-07-21', '2025-12-31', 2, 'CERVEZA ART MYA', 968, 548, 'UNID'),
(964, '2021-02-16', 786, 'BUENA', '2020-12-25', '2025-12-31', 2, 'CERVEZA ART CC7', 398, 340, 'UNID'),
(965, '2021-06-20', 538, 'BUENA', '2020-06-01', '2025-12-31', 2, 'CERVEZA ART MORA', 20, 6, 'UNID'),
(966, '2021-03-24', 25, 'BUENA', '2020-03-11', '2025-12-31', 2, 'CERVEZA ART CC5', 85, 24, 'UNID'),
(967, '2021-09-16', 143, 'BUENA', '2020-08-18', '2025-12-31', 4, 'PISCO', 12, 5, 'UNID'),
(968, '2021-04-23', 37, 'BUENA', '2020-08-25', '2025-12-31', 3, 'RON', 410, 198, 'UNID'),
(969, '2021-01-17', 623, 'BUENA', '2020-12-17', '2025-12-31', 4, 'PISCO', 31, 26, 'UNID'),
(970, '2021-02-17', 411, 'BUENA', '2020-07-31', '2025-12-31', 2, 'CERVEZA ART CC', 915, 386, 'UNID'),
(971, '2021-05-22', 19, 'BUENA', '2020-07-17', '2025-12-31', 2, 'CERVEZA ART MYA 2', 855, 190, 'UNID'),
(972, '2021-09-29', 203, 'BUENA', '2020-08-26', '2025-12-31', 4, 'PISCO', 341, 258, 'UNID'),
(973, '2021-06-16', 46, 'BUENA', '2020-08-25', '2025-12-31', 2, 'CERVEZA ART CC7', 896, 673, 'UNID'),
(974, '2021-10-11', 23, 'BUENA', '2020-02-25', '2025-12-31', 4, 'PISCO', 854, 813, 'UNID'),
(975, '2021-04-28', 198, 'BUENA', '2020-01-29', '2025-12-31', 2, 'CERVEZA ART MORA', 671, 393, 'UNID'),
(976, '2021-02-12', 660, 'BUENA', '2020-09-23', '2025-12-31', 2, 'CERVEZA ART CC 2', 948, 816, 'UNID'),
(977, '2021-01-15', 364, 'BUENA', '2020-10-31', '2025-12-31', 2, 'CERVEZA ART MYA', 1, 1, 'UNID'),
(978, '2021-05-29', 120, 'BUENA', '2020-06-07', '2025-12-31', 2, 'CERVEZA ART CC 2', 182, 3, 'UNID'),
(979, '2021-03-04', 136, 'BUENA', '2020-03-14', '2025-12-31', 2, 'CERVEZA ART CC7', 506, 504, 'UNID'),
(980, '2021-02-06', 162, 'BUENA', '2020-08-14', '2025-12-31', 1, 'CERVEZA ', 800, 168, 'UNID'),
(981, '2021-02-08', 541, 'BUENA', '2020-04-24', '2025-12-31', 2, 'CERVEZA ART CC', 111, 7, 'UNID'),
(982, '2021-02-14', 143, 'BUENA', '2020-04-13', '2025-12-31', 4, 'PISCO', 892, 721, 'UNID'),
(983, '2021-05-21', 727, 'BUENA', '2020-05-05', '2025-12-31', 3, 'RON', 916, 500, 'UNID'),
(984, '2021-01-28', 448, 'BUENA', '2020-08-12', '2025-12-31', 2, 'CERVEZA ART MORA', 102, 35, 'UNID'),
(985, '2021-02-17', 969, 'BUENA', '2020-01-19', '2025-12-31', 2, 'CERVEZA ART MYA 2', 858, 824, 'UNID'),
(986, '2021-10-05', 990, 'BUENA', '2020-10-14', '2025-12-31', 2, 'CERVEZA ART CC 2', 997, 844, 'UNID'),
(987, '2021-09-05', 283, 'BUENA', '2020-08-14', '2025-12-31', 4, 'PISCO', 624, 430, 'UNID'),
(988, '2021-02-26', 356, 'BUENA', '2020-11-30', '2025-12-31', 2, 'CERVEZA ART CC7', 755, 545, 'UNID'),
(989, '2021-09-24', 656, 'BUENA', '2020-04-29', '2025-12-31', 2, 'CERVEZA ART CC7', 103, 90, 'UNID'),
(990, '2021-07-27', 301, 'BUENA', '2020-02-26', '2025-12-31', 2, 'CERVEZA ART CC', 882, 206, 'UNID'),
(991, '2021-04-09', 969, 'BUENA', '2020-03-27', '2025-12-31', 2, 'CERVEZA ART MYA 2', 260, 42, 'UNID'),
(992, '2021-04-30', 420, 'BUENA', '2020-06-21', '2025-12-31', 2, 'CERVEZA ART CC 2', 84, 16, 'UNID'),
(993, '2021-03-11', 468, 'BUENA', '2020-10-31', '2025-12-31', 2, 'CERVEZA ART MORA', 893, 296, 'UNID'),
(994, '2021-05-30', 625, 'BUENA', '2020-06-04', '2025-12-31', 2, 'CERVEZA ART CC5', 363, 189, 'UNID'),
(995, '2021-03-08', 204, 'BUENA', '2020-06-12', '2025-12-31', 2, 'CERVEZA ART MYA', 820, 135, 'UNID'),
(996, '2021-03-27', 664, 'BUENA', '2020-04-15', '2025-12-31', 2, 'CERVEZA ART MYA', 829, 822, 'UNID'),
(997, '2021-06-27', 50, 'BUENA', '2020-05-08', '2025-12-31', 2, 'CERVEZA ART CC 2', 706, 82, 'UNID'),
(998, '2021-03-02', 956, 'BUENA', '2020-06-25', '2025-12-31', 2, 'CERVEZA ART CC7', 557, 526, 'UNID'),
(999, '2021-02-06', 762, 'BUENA', '2020-06-01', '2025-12-31', 1, 'CERVEZA ', 394, 95, 'UNID'),
(1000, '2021-01-03', 991, 'BUENA', '2020-03-10', '2025-12-31', 2, 'CERVEZA ART CC', 798, 146, 'UNID'),
(1001, '2021-05-13', 728, 'BUENA', '2020-09-30', '2025-12-31', 2, 'CERVEZA ART MORA', 324, 34, 'UNID'),
(1002, '2021-06-27', 216, 'BUENA', '2020-09-01', '2025-12-31', 2, 'CERVEZA ART CC7', 137, 25, 'UNID'),
(1003, '2021-07-30', 131, 'BUENA', '2020-07-19', '2025-12-31', 2, 'CERVEZA ART CC', 208, 103, 'UNID'),
(1004, '2021-05-21', 516, 'BUENA', '2020-02-27', '2025-12-31', 2, 'CERVEZA ART CC7', 339, 210, 'UNID'),
(1005, '2021-05-28', 908, 'BUENA', '2020-09-20', '2025-12-31', 2, 'CERVEZA ART MORA', 565, 542, 'UNID'),
(1006, '2021-08-03', 453, 'BUENA', '2020-08-04', '2025-12-31', 4, 'PISCO', 81, 59, 'UNID'),
(1007, '2021-04-20', 961, 'BUENA', '2020-05-20', '2025-12-31', 2, 'CERVEZA ART CC', 380, 172, 'UNID'),
(1008, '2021-05-06', 926, 'BUENA', '2020-05-29', '2025-12-31', 2, 'CERVEZA ART CC7', 716, 581, 'UNID'),
(1009, '2021-07-12', 674, 'BUENA', '2020-03-23', '2025-12-31', 2, 'CERVEZA ART MYA', 917, 21, 'UNID'),
(1010, '2021-07-21', 754, 'BUENA', '2020-02-20', '2025-12-31', 2, 'CERVEZA ART MYA', 936, 789, 'UNID'),
(1011, '2021-03-06', 228, 'BUENA', '2020-04-03', '2025-12-31', 2, 'CERVEZA ART MORA', 997, 803, 'UNID'),
(1012, '2021-10-19', 336, 'MALA', '2020-04-07', '2025-12-31', 2, 'CERVEZA ART CC7', 357, 166, 'UNID'),
(1013, '2021-02-15', 124, 'BUENA', '2020-08-07', '2025-12-31', 2, 'CERVEZA ART MYA', 863, 512, 'UNID'),
(1014, '2021-10-25', 740, 'BUENA', '2020-03-08', '2025-12-31', 2, 'CERVEZA ART CC 2', 16, 9, 'UNID');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodtipoprod`
--

CREATE TABLE `prodtipoprod` (
  `codTipoProducto` int(11) NOT NULL,
  `tipoProducto` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `codLinea` int(11) NOT NULL,
  `codMarca` int(11) NOT NULL,
  `Presentación` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodtipoprod`
--

INSERT INTO `prodtipoprod` (`codTipoProducto`, `tipoProducto`, `codLinea`, `codMarca`, `Presentación`) VALUES
(1, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(2, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(3, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(4, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(5, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(6, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(7, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(8, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(9, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(10, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(11, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(12, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(13, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(14, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(15, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(16, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(17, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(18, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(19, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(20, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(21, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(22, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(23, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(24, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(25, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(26, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(27, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(28, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(29, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(30, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(31, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(32, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(33, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(34, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(35, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(36, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(37, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(38, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(39, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(40, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(41, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(42, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(43, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(44, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(45, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(46, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(47, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(48, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(49, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(50, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(51, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(52, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(53, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(54, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(55, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(56, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(57, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(58, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(59, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(60, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(61, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(62, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(63, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(64, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(65, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(66, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(67, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(68, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(69, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(70, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(71, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(72, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(73, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(74, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(75, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(76, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(77, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(78, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(79, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(80, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(81, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(82, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(83, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(84, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(85, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(86, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(87, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(88, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(89, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(90, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(91, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(92, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(93, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(94, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(95, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(96, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(97, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(98, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(99, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(100, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(101, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(102, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(103, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(104, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(105, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(106, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(107, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(108, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(109, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(110, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(111, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(112, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(113, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(114, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(115, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(116, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(117, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(118, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(119, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(120, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(121, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(122, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(123, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(124, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(125, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(126, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(127, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(128, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(129, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(130, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(131, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(132, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(133, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(134, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(135, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(136, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(137, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(138, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(139, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(140, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(141, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(142, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(143, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(144, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(145, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(146, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(147, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(148, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(149, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(150, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(151, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(152, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(153, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(154, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(155, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(156, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(157, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(158, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(159, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(160, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(161, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(162, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(163, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(164, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(165, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(166, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(167, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(168, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(169, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(170, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(171, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(172, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(173, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(174, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(175, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(176, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(177, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(178, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(179, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(180, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(181, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(182, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(183, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(184, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(185, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(186, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(187, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(188, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(189, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(190, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(191, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(192, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(193, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(194, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(195, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(196, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(197, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(198, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(199, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(200, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(201, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(202, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(203, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(204, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(205, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(206, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(207, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(208, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(209, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(210, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(211, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(212, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(213, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(214, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(215, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(216, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(217, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(218, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(219, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(220, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(221, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(222, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(223, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(224, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(225, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(226, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(227, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(228, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(229, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(230, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(231, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(232, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(233, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(234, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(235, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(236, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(237, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(238, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(239, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(240, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(241, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(242, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(243, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(244, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(245, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(246, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(247, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(248, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(249, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(250, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(251, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(252, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(253, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(254, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(255, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(256, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(257, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(258, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(259, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(260, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(261, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(262, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(263, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(264, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(265, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(266, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(267, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(268, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(269, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(270, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(271, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(272, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(273, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(274, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(275, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(276, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(277, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(278, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(279, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(280, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(281, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(282, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(283, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(284, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(285, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(286, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(287, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(288, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(289, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(290, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(291, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(292, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(293, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(294, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(295, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(296, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(297, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(298, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(299, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(300, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(301, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(302, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(303, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(304, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(305, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(306, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(307, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(308, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(309, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(310, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(311, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(312, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(313, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(314, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(315, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(316, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(317, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(318, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(319, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(320, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(321, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(322, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(323, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(324, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(325, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(326, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(327, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(328, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(329, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(330, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(331, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(332, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(333, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(334, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(335, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(336, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(337, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(338, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(339, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(340, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(341, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(342, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(343, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(344, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(345, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(346, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(347, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(348, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(349, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(350, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(351, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(352, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(353, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(354, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(355, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(356, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(357, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(358, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(359, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(360, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(361, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(362, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(363, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(364, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(365, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(366, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(367, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(368, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(369, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(370, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(371, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(372, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(373, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(374, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(375, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(376, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(377, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(378, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(379, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(380, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(381, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(382, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(383, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(384, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(385, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(386, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(387, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(388, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(389, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(390, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(391, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(392, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(393, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(394, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(395, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(396, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(397, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(398, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(399, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(400, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(401, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(402, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(403, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(404, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(405, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(406, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(407, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(408, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(409, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(410, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(411, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(412, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(413, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(414, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(415, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(416, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(417, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(418, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(419, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(420, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(421, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(422, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(423, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(424, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(425, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(426, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(427, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(428, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(429, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(430, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(431, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(432, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(433, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(434, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(435, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(436, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(437, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(438, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(439, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(440, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(441, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(442, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(443, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(444, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(445, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(446, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(447, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(448, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(449, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(450, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(451, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(452, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(453, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(454, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(455, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(456, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(457, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(458, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(459, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(460, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(461, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(462, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(463, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(464, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(465, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(466, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(467, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(468, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(469, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(470, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(471, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(472, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(473, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(474, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(475, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(476, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(477, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(478, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(479, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(480, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(481, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(482, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(483, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(484, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(485, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(486, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(487, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(488, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(489, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(490, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(491, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(492, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(493, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(494, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(495, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(496, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(497, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(498, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(499, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(500, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(501, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(502, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(503, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(504, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(505, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(506, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(507, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(508, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(509, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(510, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(511, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(512, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(513, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(514, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(515, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(516, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(517, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(518, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(519, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(520, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(521, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(522, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(523, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(524, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(525, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(526, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(527, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(528, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(529, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(530, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(531, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(532, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(533, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(534, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(535, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(536, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(537, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(538, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(539, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(540, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(541, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(542, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(543, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(544, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(545, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(546, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(547, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(548, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(549, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(550, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(551, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(552, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(553, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(554, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(555, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(556, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(557, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(558, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(559, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(560, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(561, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(562, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(563, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(564, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(565, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(566, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(567, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(568, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(569, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(570, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(571, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(572, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(573, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(574, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(575, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(576, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(577, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(578, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(579, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(580, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(581, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(582, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(583, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(584, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(585, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(586, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(587, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(588, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(589, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(590, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(591, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(592, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(593, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(594, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(595, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(596, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(597, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(598, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(599, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(600, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(601, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(602, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(603, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(604, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(605, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(606, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(607, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(608, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(609, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(610, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(611, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(612, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(613, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(614, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(615, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(616, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(617, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(618, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(619, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(620, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml');
INSERT INTO `prodtipoprod` (`codTipoProducto`, `tipoProducto`, `codLinea`, `codMarca`, `Presentación`) VALUES
(621, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(622, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(623, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(624, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(625, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(626, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(627, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(628, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(629, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(630, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(631, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(632, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(633, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(634, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(635, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(636, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(637, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(638, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(639, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(640, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(641, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(642, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(643, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(644, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(645, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(646, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(647, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(648, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(649, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(650, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(651, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(652, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(653, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(654, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(655, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(656, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(657, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(658, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(659, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(660, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(661, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(662, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(663, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(664, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(665, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(666, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(667, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(668, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(669, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(670, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(671, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(672, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(673, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(674, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(675, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(676, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(677, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(678, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(679, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(680, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(681, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(682, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(683, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(684, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(685, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(686, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(687, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(688, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(689, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(690, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(691, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(692, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(693, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(694, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(695, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(696, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(697, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(698, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(699, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(700, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(701, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(702, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(703, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(704, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(705, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(706, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(707, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(708, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(709, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(710, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(711, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(712, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(713, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(714, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(715, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(716, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(717, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(718, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(719, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(720, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(721, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(722, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(723, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(724, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(725, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(726, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(727, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(728, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(729, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(730, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(731, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(732, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(733, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(734, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(735, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(736, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(737, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(738, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(739, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(740, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(741, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(742, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(743, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(744, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(745, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(746, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(747, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(748, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(749, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(750, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(751, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(752, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(753, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(754, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(755, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(756, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(757, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(758, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(759, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(760, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(761, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(762, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(763, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(764, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(765, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(766, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(767, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(768, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(769, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(770, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(771, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(772, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(773, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(774, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(775, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(776, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(777, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(778, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(779, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(780, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(781, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(782, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(783, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(784, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(785, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(786, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(787, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(788, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(789, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(790, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(791, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(792, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(793, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(794, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(795, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(796, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(797, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(798, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(799, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(800, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(801, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(802, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(803, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(804, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(805, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(806, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(807, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(808, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(809, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(810, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(811, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(812, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(813, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(814, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(815, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(816, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(817, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(818, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(819, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(820, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(821, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(822, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(823, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(824, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(825, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(826, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(827, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(828, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(829, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(830, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(831, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(832, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(833, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(834, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(835, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(836, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(837, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(838, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(839, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(840, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(841, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(842, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(843, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(844, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(845, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(846, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(847, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(848, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(849, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(850, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(851, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(852, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(853, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(854, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(855, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(856, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(857, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(858, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(859, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(860, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(861, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(862, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(863, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(864, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(865, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(866, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(867, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(868, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(869, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(870, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(871, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(872, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(873, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(874, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(875, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(876, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(877, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(878, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(879, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(880, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(881, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(882, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(883, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(884, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(885, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(886, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(887, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(888, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(889, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(890, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(891, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(892, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(893, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(894, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(895, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(896, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(897, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(898, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(899, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(900, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(901, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(902, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(903, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(904, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(905, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(906, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(907, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(908, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(909, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(910, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(911, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(912, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(913, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(914, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(915, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(916, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(917, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(918, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(919, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(920, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(921, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(922, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(923, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(924, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(925, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(926, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(927, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(928, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(929, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(930, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(931, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(932, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(933, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(934, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(935, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(936, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(937, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(938, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(939, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(940, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(941, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(942, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(943, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(944, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(945, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(946, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(947, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(948, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(949, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(950, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(951, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(952, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(953, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(954, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(955, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(956, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(957, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(958, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(959, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(960, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(961, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(962, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(963, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(964, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(965, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(966, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(967, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(968, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(969, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(970, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(971, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(972, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(973, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(974, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(975, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(976, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(977, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(978, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(979, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(980, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(981, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(982, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(983, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(984, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(985, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(986, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(987, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(988, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(989, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(990, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(991, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(992, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(993, 'PISCO', 4, 4, 'Botella de pisco de 330 ml'),
(994, 'CERVEZA ART MYA', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(995, 'CERVEZA ART CC5', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(996, 'CERVEZA ART CC7', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(997, 'RON', 3, 2, 'Botella de ron de 330 ml'),
(998, 'CERVEZA ART MORA', 2, 1, 'Botella de cerveza artesanal sabor mora de 330 ml'),
(999, 'CERVEZA ART MYA 2', 2, 1, 'Botella de cerveza artesanal sabor maracuya camu de 330 ml'),
(1000, 'CERVEZA ART CC 2', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(1001, 'CERVEZA ART CC', 2, 1, 'Botella de cerveza artesanal sabor a camu camu de 330 ml'),
(1002, 'CERVEZA ', 1, 1, 'Botella de cerveza artesanal sabor original de 330 ml'),
(1003, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prodturno`
--

CREATE TABLE `prodturno` (
  `codTurno` int(11) NOT NULL,
  `horaEntrada` time NOT NULL,
  `horaSalida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `prodturno`
--

INSERT INTO `prodturno` (`codTurno`, `horaEntrada`, `horaSalida`) VALUES
(1, '07:00:00', '16:00:00'),
(2, '14:00:00', '23:00:00'),
(3, '22:00:00', '07:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhhcategoria`
--

CREATE TABLE `rrhhcategoria` (
  `idCategoria` int(11) NOT NULL,
  `nomCategoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rrhhcategoria`
--

INSERT INTO `rrhhcategoria` (`idCategoria`, `nomCategoria`) VALUES
(1, 'Administrativo'),
(2, 'Operativo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhhgerencia`
--

CREATE TABLE `rrhhgerencia` (
  `idGerencia` int(11) NOT NULL,
  `nomGerencia` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rrhhgerencia`
--

INSERT INTO `rrhhgerencia` (`idGerencia`, `nomGerencia`, `area`) VALUES
(1, 'Producción', 'Licores'),
(2, 'Producción', 'Certezas'),
(3, 'General', 'General'),
(4, 'Comercial', 'Ventas'),
(5, 'Comercial', 'Planeamiento'),
(6, 'Marketing', 'Marketing'),
(7, 'Finanzas', 'Finanzas'),
(8, 'Logística', 'Logística'),
(9, 'Logística', 'Compras'),
(10, 'Recursos Humanos', 'Selección y Nómina'),
(11, 'Recursos Humanos', 'Clima y Cultura'),
(13, 'Investigación y Desarrollo', 'I & D'),
(14, 'Inteligencia Comercial', 'Int. Comercial'),
(15, 'Legal', 'Legal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhhpersonal`
--

CREATE TABLE `rrhhpersonal` (
  `idPersonal` int(11) NOT NULL,
  `nomPersonal` varchar(100) DEFAULT NULL,
  `apellidoPersonal` varchar(100) DEFAULT NULL,
  `sexoPersonal` varchar(100) DEFAULT NULL,
  `edadPersonal` int(2) DEFAULT NULL,
  `dniPersonal` int(8) DEFAULT NULL,
  `celularPersonal` int(9) DEFAULT NULL,
  `correoPersonal` varchar(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaPosActual` date DEFAULT NULL,
  `fechaCese` date DEFAULT NULL,
  `idPosicion` int(11) DEFAULT NULL,
  `idJefe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rrhhpersonal`
--

INSERT INTO `rrhhpersonal` (`idPersonal`, `nomPersonal`, `apellidoPersonal`, `sexoPersonal`, `edadPersonal`, `dniPersonal`, `celularPersonal`, `correoPersonal`, `fechaNacimiento`, `fechaIngreso`, `fechaPosActual`, `fechaCese`, `idPosicion`, `idJefe`) VALUES
(1, 'Merces Fujiko', 'Delgado Loli', 'Femenino', 40, 78764576, 9887675, 'angie.delgado@drinkup.com.pe', '1980-08-16', '2016-03-15', '2016-03-15', NULL, 1, 5),
(2, 'Giacomo Sebastian', 'Thomas Fernandez', 'Masculino', 50, 75634623, 976342345, 'giacomo.thomas@drinkup.com.pe', '1970-10-30', '2015-08-01', '2019-01-01', NULL, 3, 1),
(3, 'Angel Fernando', 'Sanchez Romero', 'Masculino', 28, 71236456, 985630444, 'angel.sanchez@drinkup.com.pe', '1993-04-21', '2020-03-24', '2020-03-24', NULL, 4, 4),
(4, 'Adriana Cristina', 'Pacheco Rodriguez', 'Femenino', 30, 56733834, 98076354, 'adriana.pacheco@drinkup.com.pe', '1990-02-22', '2017-07-15', '2018-12-20', NULL, 2, 6),
(5, 'Alejandra', 'Murillo Diaz', 'Femenino', 35, 8974721, 988764932, 'alejandra.murillo@drinkup.com.pe', '1981-12-30', '2017-06-15', '2017-06-15', NULL, 5, 7),
(6, 'Nicole Alison', 'Osorio Cruz', 'Femenino', 25, 65472345, 9882356, 'nicole.osorio@drinkup.com.pe', '1995-07-08', '2018-12-15', '2020-10-18', NULL, 6, 7),
(7, 'Carmen Sofia', 'Gomez Gonzales', 'Femenino', 21, 71446834, 988800444, 'carmen.gomez@drinkup.com.pe', '1999-07-29', '2020-09-02', '2020-09-02', NULL, 7, 14),
(8, 'Martha Rosmery', 'Chavez Sanches', 'Femenino', 45, 8097654, 985670423, 'martha.chavez@drinkup.com.pe', '1975-04-02', '2015-11-02', '2018-06-02', NULL, 8, 11),
(9, 'Jose Luis', 'Sarango Mejia', 'Masculino', 20, 78665432, 987633245, 'jose.sarango@drinkup.com.pe', '2000-12-29', '2020-01-22', '2020-01-22', NULL, 9, 10),
(10, 'Diego Rolando', 'Quispe Mautino', 'Masculino', 25, 67553452, 997866555, 'diego.quispe@drinkup.com.pe', '1996-03-22', '2019-08-05', '2019-08-05', NULL, 10, 11),
(11, 'Claudia Stefany', 'Garay Del Castillo', 'Femenino', 24, 74563234, 999212321, 'claudia.garay@drinkup.com.pe', '1995-04-13', '2019-10-16', '2019-10-16', NULL, 11, 13),
(12, 'Valeria', 'Guillen Morales', 'Femenino', 50, 8067457, 969578231, 'valeria.guillen@drinkup.com.pe', '1971-04-30', '2018-08-08', '2018-08-08', NULL, 12, 13),
(13, 'Fabricio Alonso', 'Suarez Palomino', 'Masculino', 55, 7096543, 969253431, 'fabricio.suarez@drinkup.com.pe', '1965-12-28', '2019-08-26', '2019-08-26', NULL, 13, 14),
(14, 'Alejandro Manuel', 'Latorre Flores', 'Masculino', 60, 8967432, 988906253, 'alejandro.latorre@drinkup.com.pe', '1960-12-19', '2019-05-14', '2019-05-14', NULL, 17, 14),
(15, 'Rafael Julio', 'Carreño Costilla', 'Masculino', 40, 8941142, 989734551, 'rafael.carreño@drinkup.com.pe', '1980-12-19', '2019-10-16', '2019-10-16', NULL, 14, 14),
(16, 'Katherine Claudia', 'Morales Ramirez', 'Femenimo', 25, 6943142, 986537851, 'katherine.morales@drinkup.com.pe', '1906-12-23', '2020-01-19', '2020-01-19', NULL, 15, 15),
(17, 'Fernando Jose', 'Polo Huaman', 'Masculino', 22, 76931443, 986537322, 'fernando.polo@drinkup.com.pe', '1998-09-16', '2020-03-15', '2020-03-15', NULL, 16, 16),
(18, 'Kyara Fabiola', 'Jimenez Reyes', 'Femenino', 40, 8051142, 989334234, 'kyara.jimenez@drinkup.com.pe', '1980-11-01', '2018-09-11', '2018-09-11', NULL, 18, 14),
(19, 'Edgar Jose', 'Anton Flores', 'Masculino', 40, 7021142, 987834534, 'edgar.anton@drinkup.com.pe', '1980-11-01', '2019-01-28', '2019-01-28', NULL, 19, 14),
(20, 'Elida Jimena', 'Atauchi Rodriguez', 'Femenino', 30, 76523481, 977866543, 'elida.atauchi@drinkup.com.pe', '1990-02-01', '2019-07-07', '2019-07-07', NULL, 20, 14),
(21, 'Piero Fabio', 'Solari Gandarillas', 'Masculino', 30, 54623481, 989022143, 'piero.solari@drinkup.com.pe', '1990-02-01', '2019-10-24', '2019-10-24', NULL, 21, 14),
(22, 'Ximena Sofia', 'Mazuelos Rodriguez', 'Femenino', 30, 56786423, 96057812, 'ximena.mazuelos@drinkup.com.pe', '1990-05-02', '2020-02-24', '2020-02-24', NULL, 22, 14),
(23, 'Ramiro Jesus', 'Sanchez Patiño', 'Masculino', 40, 23567421, 976237698, 'ramiro.sanchez@drinkup.com.pe', '1980-03-22', '2017-07-13', '2017-07-13', NULL, 23, 14),
(24, 'Raul Rodrigo', 'Perez Sanchez', 'Masculino', 35, 45672368, 967800654, 'raul.perez@drinkup.com.pe', '1985-11-24', '2017-12-15', '2017-12-15', NULL, 24, 21),
(25, 'Monica Patricia', 'Alejos Pelaez', 'Femenino', 30, 67345623, 934280621, 'monica.alejos@drinkup.com.pe', '1981-12-04', '2020-05-12', '2020-05-12', NULL, 25, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhhposicion`
--

CREATE TABLE `rrhhposicion` (
  `idPosicion` int(11) NOT NULL,
  `idGerencia` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idSubcategoria` int(11) NOT NULL,
  `cantPosCargo` int(11) NOT NULL,
  `fechaCreacPerfil` date NOT NULL,
  `fechaActPerfil` date NOT NULL,
  `nomPosicion` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rrhhposicion`
--

INSERT INTO `rrhhposicion` (`idPosicion`, `idGerencia`, `idCategoria`, `idSubcategoria`, `cantPosCargo`, `fechaCreacPerfil`, `fechaActPerfil`, `nomPosicion`, `descripcion`) VALUES
(1, 1, 1, 2, 1, '2020-10-30', '2020-10-30', 'Analista de Producción - Línea Licores', 'Generación y análisis'),
(2, 1, 1, 2, 1, '2020-10-30', '2020-10-30', 'Analista de Producción - Línea Cerveza', 'Generación y análisis'),
(3, 1, 1, 1, 0, '2020-10-30', '2020-10-30', 'Practicante de Producción - Línea Licores ', 'Digitazar data de producción'),
(4, 1, 1, 1, 0, '2020-10-30', '2020-10-30', 'Practicante de Producción - Línea Cervezas', 'Digitazar data de producción'),
(5, 1, 1, 3, 2, '2020-10-30', '2020-10-30', 'Jefe de Línea Licores', 'Liderar la línea de licores'),
(6, 1, 1, 3, 2, '2020-10-30', '2020-10-30', 'Jefe de Línea Cervezas', 'Liderar la línea de licores'),
(7, 1, 1, 4, 4, '2020-10-30', '2020-10-30', 'Gerente de Producción', 'Establecer metas y objetivos de producción'),
(8, 4, 1, 1, 0, '2020-10-30', '2020-10-30', 'Practicante de Ventas', 'Gestionar la base de datos de los clientes'),
(9, 4, 1, 1, 0, '2020-10-30', '2020-10-30', 'Practicante de Planeamiento', 'Elaborar reportes de stock de seguridad'),
(10, 4, 1, 2, 1, '2020-10-30', '2020-10-30', 'Analista de Planeamiento', 'Validar los reportes de stock de seguridad'),
(11, 4, 1, 2, 1, '2020-10-30', '2020-10-30', 'Analista de Ventas', 'Coordinar con los clientes'),
(12, 4, 1, 3, 4, '2020-10-30', '2020-10-30', 'Jefe de Planeamiento Comercial', 'Liderar el equipo de Ventas y Planeamiento'),
(13, 4, 1, 4, 5, '2020-10-30', '2020-10-30', 'Gerente Comercial', 'Liderar al equipo comercial'),
(14, 8, 1, 4, 4, '2010-04-06', '2019-02-05', 'Gerente de Logística ', 'Planificar la estrategia para las actividades'),
(15, 8, 1, 2, 1, '2015-07-11', '2018-10-24', 'Analista de Compras', 'Creación&n de órdenes de compra'),
(16, 8, 1, 1, 0, '2018-12-12', '2020-04-12', 'Practicante de Compras', 'Planificación y ejecución'),
(17, 3, 1, 5, 9, '2015-03-02', '2017-10-18', 'Gerente General ', ''),
(18, 6, 1, 4, 5, '2016-11-26', '2019-10-23', 'Gerente de Marketing ', ''),
(19, 7, 1, 4, 3, '2015-04-10', '2020-08-13', 'Gerencia de Finanzas', ''),
(20, 10, 1, 4, 3, '2014-06-10', '2019-10-17', 'Gerente de Recursos Humanos', ''),
(21, 14, 1, 4, 6, '2019-10-30', '2019-10-30', 'Gerencia de Inteligencia Comercial', ''),
(22, 13, 1, 4, 2, '2018-10-07', '2018-10-07', 'Gerente de Investigación y Desarrollo', ''),
(23, 15, 1, 4, 0, '2014-03-05', '2014-03-05', 'Gerente Legal ', ''),
(24, 14, 1, 3, 2, '2018-06-18', '2018-06-18', 'Jefe de Inteligencia Comercial', ''),
(25, 14, 1, 3, 2, '2018-06-18', '2018-06-18', 'Desarrollador Senior', ''),
(26, 6, 1, 2, 1, '2017-05-09', '2019-05-09', 'Analista de Marketing', ''),
(27, 6, 1, 1, 0, '2018-08-09', '2018-08-09', 'Practicante de Marketing', ''),
(28, 7, 1, 2, 1, '2015-07-20', '2019-08-10', 'Analista de Finanzas', ''),
(29, 7, 1, 1, 0, '2018-07-20', '2020-07-20', 'Practicante de Finanzas', ''),
(30, 8, 1, 2, 1, '2016-01-06', '2026-06-06', 'Analista de Logística ', ''),
(31, 8, 1, 1, 0, '2018-01-06', '2020-04-15', 'Practicante de Logística', ''),
(32, 10, 1, 2, 1, '2015-03-05', '2019-09-06', 'Analista de Selección, Nómina y  Desempeño', ''),
(33, 11, 1, 2, 0, '2017-01-06', '2019-12-18', 'Analista de Clima y Cultura', ''),
(34, 10, 1, 1, 0, '2017-10-15', '2020-05-12', 'Practicante de Selección', ''),
(35, 14, 1, 2, 1, '2018-01-06', '2018-01-06', 'Analista de Inteligencia Comercial', ''),
(36, 14, 1, 2, 1, '2018-03-07', '2018-03-07', 'Desarrollador Junior', ''),
(37, 14, 1, 1, 0, '2018-12-07', '2020-05-07', 'Practicante de Programación', ''),
(38, 13, 1, 2, 1, '2018-07-06', '2018-07-06', 'Analista de Investigación y Desarrollo', ''),
(39, 13, 1, 1, 0, '2019-10-30', '2020-04-08', 'Practicante de Investigación y Desarrollo ', ''),
(40, 14, 1, 1, 0, '2020-10-03', '2020-10-03', 'Practicante de Inteligencia Comercial', ''),
(41, 1, 2, 6, 0, '2016-04-10', '2016-04-10', 'Operario', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhhsolnp`
--

CREATE TABLE `rrhhsolnp` (
  `idsolinp` int(11) NOT NULL,
  `nomGerencia` varchar(50) NOT NULL,
  `nomArea` varchar(50) NOT NULL,
  `cantVacantes` int(11) NOT NULL,
  `nomPuesto` varchar(50) NOT NULL,
  `idPersonal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rrhhsolnp`
--

INSERT INTO `rrhhsolnp` (`idsolinp`, `nomGerencia`, `nomArea`, `cantVacantes`, `nomPuesto`, `idPersonal`) VALUES
(1, 'ProducciÃ³n', 'Licores', 1, 'Practicante de Producción', 72970608),
(2, 'Comercial', 'Planeamiento', 1, 'Practicante de Producción', 72970610),
(3, 'Finanzas', 'Finanzas', 1, 'Analista de Finanzas', 72970612),
(4, 'Produccion', 'Cerveza', 1, 'Jefe de Linea', 72970612),
(5, 'Producción', 'Licores', 1, 'Practicante de Producción', 72970608),
(6, 'Logistica', 'Compras', 1, 'Analista de Compras', 72970608);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhhsolvacas`
--

CREATE TABLE `rrhhsolvacas` (
  `Solicitud` int(11) NOT NULL,
  `Solicitante` int(8) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Posición` varchar(60) NOT NULL,
  `Fecha de Inicio` varchar(10) NOT NULL,
  `Fecha de Fin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rrhhsolvacas`
--

INSERT INTO `rrhhsolvacas` (`Solicitud`, `Solicitante`, `Nombre`, `Apellido`, `Posición`, `Fecha de Inicio`, `Fecha de Fin`) VALUES
(1, 73026015, 'Alison', 'Garay', 'Analista de Producción', '30/11/2020', '4/12/2020'),
(2, 72061598, 'Alejandro', 'Latorre', 'CEO', '1/12/2020', '30/12/2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rrhhsubcategoria`
--

CREATE TABLE `rrhhsubcategoria` (
  `idSubcategoria` int(11) NOT NULL,
  `nomSubcategoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rrhhsubcategoria`
--

INSERT INTO `rrhhsubcategoria` (`idSubcategoria`, `nomSubcategoria`) VALUES
(1, 'Practicante'),
(2, 'Analista'),
(3, 'Jefe'),
(4, 'Gerente'),
(5, 'CEO'),
(6, 'Operario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biconcetl`
--
ALTER TABLE `biconcetl`
  ADD PRIMARY KEY (`idProcesoETL`);

--
-- Indices de la tabla `biprocetl`
--
ALTER TABLE `biprocetl`
  ADD PRIMARY KEY (`idFPA`);

--
-- Indices de la tabla `dimusuarios`
--
ALTER TABLE `dimusuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `grpnuevasoc`
--
ALTER TABLE `grpnuevasoc`
  ADD PRIMARY KEY (`OC`);

--
-- Indices de la tabla `grpocs`
--
ALTER TABLE `grpocs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grpremesas`
--
ALTER TABLE `grpremesas`
  ADD PRIMARY KEY (`idFactura`);

--
-- Indices de la tabla `logentrada_mp`
--
ALTER TABLE `logentrada_mp`
  ADD PRIMARY KEY (`codEntradaMP`);

--
-- Indices de la tabla `logentrada_pt`
--
ALTER TABLE `logentrada_pt`
  ADD PRIMARY KEY (`codEntradaProducto`);

--
-- Indices de la tabla `loginput`
--
ALTER TABLE `loginput`
  ADD PRIMARY KEY (`codMP`);

--
-- Indices de la tabla `logsolcompra`
--
ALTER TABLE `logsolcompra`
  ADD PRIMARY KEY (`codSolC`);

--
-- Indices de la tabla `logsolprod`
--
ALTER TABLE `logsolprod`
  ADD PRIMARY KEY (`codSolP`);

--
-- Indices de la tabla `prodlinea`
--
ALTER TABLE `prodlinea`
  ADD PRIMARY KEY (`codLinea`);

--
-- Indices de la tabla `prodmaquina`
--
ALTER TABLE `prodmaquina`
  ADD PRIMARY KEY (`codMáquina`);

--
-- Indices de la tabla `prodmarca`
--
ALTER TABLE `prodmarca`
  ADD PRIMARY KEY (`codMarca`);

--
-- Indices de la tabla `prodmodelo`
--
ALTER TABLE `prodmodelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Indices de la tabla `prodoperaciones`
--
ALTER TABLE `prodoperaciones`
  ADD PRIMARY KEY (`codOperacion`);

--
-- Indices de la tabla `prodoutput`
--
ALTER TABLE `prodoutput`
  ADD PRIMARY KEY (`idLote`);

--
-- Indices de la tabla `prodtipoprod`
--
ALTER TABLE `prodtipoprod`
  ADD PRIMARY KEY (`codTipoProducto`);

--
-- Indices de la tabla `prodturno`
--
ALTER TABLE `prodturno`
  ADD PRIMARY KEY (`codTurno`);

--
-- Indices de la tabla `rrhhcategoria`
--
ALTER TABLE `rrhhcategoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `rrhhgerencia`
--
ALTER TABLE `rrhhgerencia`
  ADD PRIMARY KEY (`idGerencia`);

--
-- Indices de la tabla `rrhhpersonal`
--
ALTER TABLE `rrhhpersonal`
  ADD PRIMARY KEY (`idPersonal`);

--
-- Indices de la tabla `rrhhposicion`
--
ALTER TABLE `rrhhposicion`
  ADD PRIMARY KEY (`idPosicion`);

--
-- Indices de la tabla `rrhhsolnp`
--
ALTER TABLE `rrhhsolnp`
  ADD PRIMARY KEY (`idsolinp`);

--
-- Indices de la tabla `rrhhsolvacas`
--
ALTER TABLE `rrhhsolvacas`
  ADD PRIMARY KEY (`Solicitud`);

--
-- Indices de la tabla `rrhhsubcategoria`
--
ALTER TABLE `rrhhsubcategoria`
  ADD PRIMARY KEY (`idSubcategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `biconcetl`
--
ALTER TABLE `biconcetl`
  MODIFY `idProcesoETL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `biprocetl`
--
ALTER TABLE `biprocetl`
  MODIFY `idFPA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `grpnuevasoc`
--
ALTER TABLE `grpnuevasoc`
  MODIFY `OC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `grpocs`
--
ALTER TABLE `grpocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `grpremesas`
--
ALTER TABLE `grpremesas`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `logentrada_mp`
--
ALTER TABLE `logentrada_mp`
  MODIFY `codEntradaMP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `logentrada_pt`
--
ALTER TABLE `logentrada_pt`
  MODIFY `codEntradaProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `loginput`
--
ALTER TABLE `loginput`
  MODIFY `codMP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `logsolcompra`
--
ALTER TABLE `logsolcompra`
  MODIFY `codSolC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `logsolprod`
--
ALTER TABLE `logsolprod`
  MODIFY `codSolP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prodlinea`
--
ALTER TABLE `prodlinea`
  MODIFY `codLinea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `prodmaquina`
--
ALTER TABLE `prodmaquina`
  MODIFY `codMáquina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `prodmarca`
--
ALTER TABLE `prodmarca`
  MODIFY `codMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `prodmodelo`
--
ALTER TABLE `prodmodelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `prodoperaciones`
--
ALTER TABLE `prodoperaciones`
  MODIFY `codOperacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `prodoutput`
--
ALTER TABLE `prodoutput`
  MODIFY `idLote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT de la tabla `prodtipoprod`
--
ALTER TABLE `prodtipoprod`
  MODIFY `codTipoProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT de la tabla `prodturno`
--
ALTER TABLE `prodturno`
  MODIFY `codTurno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rrhhcategoria`
--
ALTER TABLE `rrhhcategoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rrhhgerencia`
--
ALTER TABLE `rrhhgerencia`
  MODIFY `idGerencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `rrhhposicion`
--
ALTER TABLE `rrhhposicion`
  MODIFY `idPosicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `rrhhsolnp`
--
ALTER TABLE `rrhhsolnp`
  MODIFY `idsolinp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rrhhsolvacas`
--
ALTER TABLE `rrhhsolvacas`
  MODIFY `Solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rrhhsubcategoria`
--
ALTER TABLE `rrhhsubcategoria`
  MODIFY `idSubcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
