-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-07-2019 a las 18:14:55
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pharmacy1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `IdEstado` char(2) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`IdEstado`, `Descripcion`) VALUES
('00', 'ACTIVO'),
('99', 'DESACTIVADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_status` tinyint(4) DEFAULT '0',
  `delete_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `delete_status`, `delete_date`) VALUES
(1, 'admin', 'admin', '2017-06-06 11:23:04', 0, NULL),
(2, 'role 1', 'role 1', '2019-04-08 10:51:05', 0, NULL),
(3, 'role2', 'role2', '2019-04-08 10:52:00', 0, NULL),
(4, 'role 3', 'role 3', '2019-04-08 10:54:18', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `short_name` varchar(15) NOT NULL,
  `added_date` date NOT NULL,
  `delete_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `name`, `short_name`, `added_date`, `delete_status`) VALUES
(1, 'Phytopathology', 'Phyto', '0000-00-00', 0),
(2, 'Injuries', 'Injuries', '0000-00-00', 0),
(3, 'Cancer', 'Cancer', '0000-00-00', 0),
(4, 'Animal diseases', 'AD', '0000-00-00', 0),
(5, 'Growth disorders', 'GD', '0000-00-00', 0),
(6, 'Rare diseases', 'RD', '0000-00-00', 0),
(7, 'Neoplasms', 'Neo', '0000-00-00', 0),
(8, 'Inflammations', 'Inflam', '0000-00-00', 0),
(9, 'Sleep disorders', 'SD', '0000-00-00', 0),
(11, 'Infectious diseases', 'ID', '2019-04-02', 0),
(12, 'sdfsdfsdf', 'sdf', '2019-04-02', 0),
(13, 'cvnvcnvncvncvn', 'cnv', '2019-04-02', 0),
(14, 'fghjgjhfgjh', 'fgh', '2019-04-02', 0),
(15, 'Category 14', 'Cat 14', '2019-04-05', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modal`
--

CREATE TABLE `modal` (
  `id` int(5) NOT NULL,
  `header` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modal`
--

INSERT INTO `modal` (`id`, `header`, `title`, `description`) VALUES
(1, 'Modal Header Title', 'Hello, this is version 2.0 and I am still working on this.\r\n', 'Please don\'t forget to give credit to original developer because I really worked hard to develop this project and please don\'t forget to like and share it if you found it useful :) For students or anyone else who needs program or source code for thesis writing or any Professional Software Development,Website Development,Mobile Apps Development at affordable cost contact me at Email : mayuri.infospace@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `role_name`) VALUES
(1, 'manage_medicinals', 'Manage Medicinals', 'Manage Medicinals', NULL),
(2, 'manage_pos', 'Manage POS', 'Manage POS', NULL),
(3, 'manage_roles', 'Manage User Roles', 'Manage User Roles', NULL),
(4, 'manage_users', 'Manage Users', 'Manage Users', NULL),
(5, 'manage_sales', 'Manage Sales', 'Manage Sales', NULL),
(6, 'manage_categories', 'Manage Categories', 'Manage Categories', NULL),
(7, 'manage_suppliers', 'Manage Suppliers', 'Manage Suppliers', NULL),
(8, 'manage_customers', 'Manage Customers', 'Manage Customers', NULL),
(9, 'manage_reports', 'Manage Reports', 'Manage Reports', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(7, 5, 1),
(8, 6, 1),
(9, 7, 1),
(10, 8, 1),
(11, 9, 1),
(16, 6, 3),
(17, 7, 3),
(18, 3, 4),
(19, 4, 4),
(20, 8, 4),
(21, 9, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `IdPersonal` int(11) NOT NULL,
  `DNI` varchar(8) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `FecNaci` date DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `Celular` varchar(9) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `IdTipo` int(11) NOT NULL,
  `IdEstado` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`IdPersonal`, `DNI`, `Apellidos`, `Nombres`, `FecNaci`, `Direccion`, `Telefono`, `Celular`, `Email`, `IdTipo`, `IdEstado`) VALUES
(1, '12345567', 'vasquez roggero', 'marco antonio', '1997-10-04', 'una calle', '948545555', '545454545', 'sdfsdf@gmail.com', 2, '00'),
(2, '18143942', 'asdasdasd', 'asdasdasd', '1985-07-17', 'hhjghjghjghj', '453456456', '456456456', 'sdfsdfsdf@gmail.com', 2, '99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(2) NOT NULL,
  `fevicon` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `title` varchar(300) NOT NULL,
  `login_image` varchar(100) NOT NULL,
  `footer` varchar(300) NOT NULL,
  `currency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `fevicon`, `logo`, `title`, `login_image`, `footer`, `currency`) VALUES
(1, 'fevicon-179.png', 'logo-597.png', 'Pharmacy', 'login_image-324.png', 'Footer', 'Rs.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `fax` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `added_date` date NOT NULL,
  `delete_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `telephone`, `fax`, `info`, `added_date`, `delete_status`) VALUES
(1, 'gfdfg 11', 'dfgdf111', '+919767424611', '422208111', 'dfgdfgdfg11111', '2019-04-02', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `avator` varchar(255) DEFAULT NULL,
  `group_id` int(50) NOT NULL,
  `delete_status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `login`, `role`, `avator`, `group_id`, `delete_status`) VALUES
(1, 'admin@admin.com', '$2y$10$1Fw7l55APPq6hmLCOYL3cOzO8ZMznDpd0CuWYdjkYqonBSPs3nLYG', 'admin', '70520.png', 1, 0),
(3, 'user@gmail.com', '$2y$10$7XeEViIuymfneVxO1U.sZeIv1eW.OJvFGvdmWoTjbigk6NeaQaZa6', 'users', NULL, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '001', 'Invalid email or password', 'warning'),
(2, '002', 'Settings are updated', 'success'),
(3, '003', 'Record Added Successfully', 'success'),
(4, '004', 'Record Successfully Updated', 'success'),
(5, '005', 'Record Sudccessfully Deleted', 'success');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_personal`
--

CREATE TABLE `tipo_personal` (
  `IdTipo` int(11) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_personal`
--

INSERT INTO `tipo_personal` (`IdTipo`, `Descripcion`) VALUES
(1, 'Nombrado'),
(2, 'Contratado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`IdEstado`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`IdPersonal`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD KEY `IdTipo` (`IdTipo`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_personal`
--
ALTER TABLE `tipo_personal`
  ADD PRIMARY KEY (`IdTipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `modal`
--
ALTER TABLE `modal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `IdPersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `tipo_personal`
--
ALTER TABLE `tipo_personal`
  MODIFY `IdTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`IdTipo`) REFERENCES `tipo_personal` (`IdTipo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
