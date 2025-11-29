-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 27, 2025 at 05:19 PM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp_cemex_`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Hector', 'Lopez', '4721024487', 'hector.loga@gmail.com', 'Lopez Mateos 1224, Leon, Gto'),
(2, 'María', 'González', '555-1234', 'maria.gonzalez@gmail.com', 'Av. Juárez 120, Ciudad de México'),
(3, 'Carlos', 'Ramírez', '555-5678', 'carlos.ramirez@hotmail.com', 'Calle Reforma 45, Puebla'),
(4, 'Laura', 'Martínez', '555-9012', 'laura.mtz@yahoo.com', 'Av. Hidalgo 230, Guadalajara'),
(5, 'Jorge', 'Saucedo', '555-8765', 'jorge.saucedo@outlook.com', 'Calle Morelos 17, Monterrey'),
(6, 'Fernanda', 'López', '555-2345', 'fernanda.lopez@gmail.com', 'Blvd. Colosio 350, León'),
(7, 'Luis', 'Torres', '555-6789', 'luis.torres@gmail.com', 'Av. Universidad 980, Querétaro'),
(8, 'Ana', 'Hernández', '555-3456', 'ana.hernandez@hotmail.com', 'Calle 5 de Mayo 67, Toluca'),
(9, 'Ricardo', 'Vargas', '555-7890', 'ricardo.vargas@gmail.com', 'Av. Independencia 89, Cancún'),
(10, 'Claudia', 'Rojas', '555-8901', 'claudia.rojas@gmail.com', 'Calle Constitución 102, Mérida'),
(11, 'Sofía', 'Moreno', '555-4321', 'sofia.moreno@hotmail.com', 'Av. Central 405, Tijuana'),
(12, 'Javier', 'Martinez', '4721125678', 'javi.mtz@outlook.com', 'Juarez 1126, Leon'),
(13, 'Ana', 'Dechamps', '67397812234', 'ferremax@gmail.com', 'Zaragoza 112, Puebla');

-- --------------------------------------------------------

--
-- Table structure for table `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compras`
--

INSERT INTO `compras` (`id_compra`, `id_proveedor`, `id_empleado`, `fecha`, `total`) VALUES
(2, 1, 9, '2025-11-06 11:57:35', '300.00'),
(3, 2, 2, '2025-11-06 11:57:36', '700.00'),
(4, 3, 3, '2025-11-06 11:57:36', '1800.00'),
(5, 4, 4, '2025-11-06 11:57:36', '1260.00'),
(6, 5, 5, '2025-11-06 11:57:36', '480.00'),
(7, 5, 12, '2025-11-11 10:30:33', '720.00'),
(8, 6, 22, '2025-11-11 10:39:59', '800.00');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id_detalle` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detalle_compras`
--

INSERT INTO `detalle_compras` (`id_detalle`, `id_compra`, `id_producto`, `cantidad`, `subtotal`) VALUES
(1, 2, 1, 100, '50.00'),
(2, 2, 2, 100, '30.00'),
(3, 2, 3, 200, '20.00'),
(4, 3, 4, 5, '600.00'),
(5, 3, 5, 1, '100.00'),
(6, 4, 6, 100, '1500.00'),
(7, 4, 7, 3, '300.00'),
(8, 5, 8, 2, '900.00'),
(9, 5, 9, 3, '360.00'),
(10, 6, 10, 6, '480.00'),
(11, 7, 9, 6, '720.00'),
(12, 8, 7, 8, '800.00');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `subtotal`) VALUES
(1, 1, 4, 7, '840.00'),
(2, 2, 3, 3, '0.30'),
(3, 2, 5, 7, '2450.00'),
(4, 2, 9, 4, '480.00'),
(5, 2, 10, 3, '240.00'),
(6, 3, 6, 13, '195.00'),
(7, 3, 3, 10, '1.00'),
(8, 3, 4, 16, '1920.00'),
(9, 4, 5, 10, '3500.00');

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `fecha_contratacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellido`, `puesto`, `departamento`, `salario`, `fecha_contratacion`) VALUES
(2, 'Ana', 'Juarez', 'Directora', 'Compras', '30000.00', '2023-02-10'),
(3, 'Antonio', 'Galllardo', 'Director', 'Logística', '25000.00', '2020-08-22'),
(4, 'Carlos', 'Ramírez', 'Vendedor', 'Ventas', '15000.00', '2023-01-12'),
(5, 'María', 'González', 'Asistente de Compras', 'Compras', '13500.00', '2023-03-05'),
(6, 'Luis', 'Martínez', 'Jefe de Producción', 'Producción', '22000.00', '2022-11-18'),
(7, 'Ana', 'Torres', 'Contadora', 'Finanzas', '18500.00', '2024-02-10'),
(8, 'José', 'Hernández', 'Almacenero', 'Inventario', '12500.00', '2023-09-25'),
(9, 'Elena', 'López', 'Coordinadora de RRHH', 'Recursos Humanos', '20000.00', '2022-06-14'),
(10, 'Ricardo', 'Díaz', 'Chofer de reparto', 'Logística', '12000.00', '2023-07-09'),
(11, 'Patricia', 'Morales', 'Ejecutiva de Ventas', 'Ventas', '15500.00', '2024-01-20'),
(12, 'Fernando', 'Castro', 'Comprador Senior', 'Compras', '18000.00', '2022-12-01'),
(13, 'Lucía', 'Mendoza', 'Analista Financiera', 'Finanzas', '19000.00', '2023-04-15'),
(14, 'Gabriel', 'Pérez', 'Supervisor de Producción', 'Producción', '21000.00', '2023-10-02'),
(15, 'Mónica', 'Suárez', 'Encargada de Inventario', 'Inventario', '14500.00', '2023-08-11'),
(16, 'Javier', 'Ortiz', 'Analista de RRHH', 'Recursos Humanos', '17500.00', '2023-05-19'),
(17, 'Silvia', 'Navarro', 'Auxiliar Logístico', 'Logística', '13000.00', '2023-11-01'),
(18, 'Andrés', 'Cruz', 'Representante de Ventas', 'Ventas', '16000.00', '2024-03-28'),
(19, 'Cristina', 'Suarez', 'Supervisora', 'Producción', '18000.00', '2017-02-12'),
(20, 'Juan', 'Pérez', 'Compras', 'Administración', '15000.00', '2022-01-10'),
(21, 'María', 'López', 'Analista', 'Administración', '14000.00', '2022-03-05'),
(22, 'Carlos', 'Gómez', 'Gerente', 'Compras', '20000.00', '2021-11-15'),
(23, 'Ana', 'Martínez', 'Auxiliar', 'Logística', '12000.00', '2023-02-20'),
(24, 'Luis', 'Ramírez', 'Coordinador', 'Logística', '16000.00', '2022-08-18'),
(25, 'Carlos', 'Ramírez', 'Operador de Máquina', 'Produccion', '12000.00', '2024-01-15'),
(26, 'María', 'López', 'Supervisor de Producción', 'Produccion', '18000.00', '2023-11-20'),
(27, 'José', 'Martínez', 'Técnico de Línea', 'Produccion', '13500.00', '2024-02-05'),
(28, 'Ana', 'González', 'Operador de Ensamble', 'Produccion', '11500.00', '2024-03-10'),
(29, 'Axel', 'Lerma Aguilar', 'Jefe', 'Logística', '50000.00', '2025-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `finanzas`
--

CREATE TABLE `finanzas` (
  `id_movimiento` int(11) NOT NULL,
  `tipo` enum('Ingreso','Egreso') NOT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_venta` int(11) DEFAULT NULL,
  `id_compra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT '0',
  `precio_unitario` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_producto`, `categoria`, `cantidad`, `precio_unitario`) VALUES
(3, 5, 'Cementos y Agregados', 1000, '0.00'),
(4, 11, 'Cementos y Agregados', 100, '0.00'),
(5, 9, 'Acero y Ferralla', 50, '0.00'),
(6, 15, 'Sin Categoría', 500, '249.00');

-- --------------------------------------------------------

--
-- Table structure for table `modulos`
--

CREATE TABLE `modulos` (
  `id_modulo` int(11) NOT NULL,
  `nombre_modulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modulos`
--

INSERT INTO `modulos` (`id_modulo`, `nombre_modulo`) VALUES
(2, 'Compras'),
(5, 'Finanzas'),
(6, 'Inventario'),
(7, 'Logística'),
(4, 'Producción'),
(3, 'Recursos Humanos'),
(1, 'Ventas');

-- --------------------------------------------------------

--
-- Table structure for table `movimientos`
--

CREATE TABLE `movimientos` (
  `id_movimiento` int(11) NOT NULL,
  `tipo` enum('ingreso','egreso','venta','compra','nomina') NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_compra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movimientos`
--

INSERT INTO `movimientos` (`id_movimiento`, `tipo`, `monto`, `fecha`, `id_venta`, `id_compra`) VALUES
(1, 'ingreso', '150000.00', '2025-11-14', NULL, NULL),
(2, 'ingreso', '1250000.00', '2025-11-14', NULL, NULL),
(3, 'egreso', '25000.00', '2025-11-17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nomina`
--

CREATE TABLE `nomina` (
  `id_nomina` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `total_pagar` decimal(10,2) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permisos_modulos`
--

CREATE TABLE `permisos_modulos` (
  `id_usuario` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `produccion`
--

CREATE TABLE `produccion` (
  `id_produccion` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(50) NOT NULL DEFAULT 'En proceso'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produccion`
--

INSERT INTO `produccion` (`id_produccion`, `id_empleado`, `id_producto`, `cantidad`, `fecha`, `estado`) VALUES
(1, 14, 4, 100, '2025-11-17', 'Completada'),
(2, 6, 2, 200, '2025-11-17', 'Completada'),
(3, 19, 6, 1200, '2025-11-17', 'Completada'),
(16, 26, 12, 150, '2025-02-15', 'Finalizado'),
(17, 27, 13, 80, '2025-02-16', 'En proceso'),
(18, 28, 14, 600, '2025-02-16', 'Finalizado');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `stock`) VALUES
(1, 'Tornillos M6', '0.50', 500),
(2, 'Tuercas M6', '0.30', 800),
(3, 'Arandelas M6', '0.10', 1000),
(4, 'Cemento 50kg', '120.00', 200),
(5, 'Arena 1m3', '350.00', 50),
(6, 'Ladrillo Rojo', '15.00', 1000),
(7, 'Varilla 1/2\"', '100.00', 150),
(8, 'Pintura Blanca 20L', '450.00', 30),
(9, 'Tubería PVC 4\"', '120.00', 100),
(10, 'Pegamento Industrial', '80.00', 60),
(11, 'Cemento Gris 50kg', '180.00', 500),
(12, 'Block Estándar', '12.00', 8000),
(13, 'Mortero Prefabricado', '95.00', 1200),
(14, 'Concreto Premezclado', '920.00', 300),
(15, 'Cemento Blanco 50 kg', '249.00', 500);

-- --------------------------------------------------------

--
-- Table structure for table `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre`, `correo`, `telefono`) VALUES
(1, 'Proveedora Alfa', 'contacto@alfa.com', '5512345678'),
(2, 'Distribuciones Beta', 'ventas@beta.com', '5523456789'),
(3, 'Comercial Gamma', 'info@gamma.com', '5534567890'),
(4, 'Suministros Delta', 'ventas@delta.com', '5545678901'),
(5, 'Insumos Epsilon', 'contacto@epsilon.com', '5556789012'),
(6, 'Varillas El Divisador', 'juanma@gmail.com', '4721124536');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `rol` enum('Administrador','Gerente','Empleado') NOT NULL DEFAULT 'Empleado',
  `id_empleado` int(11) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `contrasena`, `rol`, `id_empleado`, `estado`) VALUES
(5, 'Emilio Gallardo', '12345', 'Administrador', NULL, 'Activo'),
(7, 'Jorge Saucedo', '12345', 'Administrador', NULL, 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `id_empleado`, `fecha`, `total`) VALUES
(1, 5, 11, '2025-11-11 11:23:17', '840.00'),
(2, 9, 4, '2025-11-11 11:29:37', '3170.30'),
(3, 7, 11, '2025-11-13 10:38:40', '2116.00'),
(4, 4, 18, '2025-11-13 10:50:40', '3500.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indexes for table `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indexes for table `finanzas`
--
ALTER TABLE `finanzas`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_compra` (`id_compra`);

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id_modulo`),
  ADD UNIQUE KEY `nombre_modulo` (`nombre_modulo`);

--
-- Indexes for table `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indexes for table `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`id_nomina`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indexes for table `permisos_modulos`
--
ALTER TABLE `permisos_modulos`
  ADD PRIMARY KEY (`id_usuario`,`id_modulo`),
  ADD KEY `id_modulo` (`id_modulo`);

--
-- Indexes for table `produccion`
--
ALTER TABLE `produccion`
  ADD PRIMARY KEY (`id_produccion`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indexes for table `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `finanzas`
--
ALTER TABLE `finanzas`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nomina`
--
ALTER TABLE `nomina`
  MODIFY `id_nomina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produccion`
--
ALTER TABLE `produccion`
  MODIFY `id_produccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Constraints for table `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`),
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Constraints for table `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Constraints for table `finanzas`
--
ALTER TABLE `finanzas`
  ADD CONSTRAINT `finanzas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`) ON DELETE SET NULL,
  ADD CONSTRAINT `finanzas_ibfk_2` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`) ON DELETE SET NULL;

--
-- Constraints for table `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE;

--
-- Constraints for table `nomina`
--
ALTER TABLE `nomina`
  ADD CONSTRAINT `nomina_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Constraints for table `permisos_modulos`
--
ALTER TABLE `permisos_modulos`
  ADD CONSTRAINT `permisos_modulos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `permisos_modulos_ibfk_2` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id_modulo`) ON DELETE CASCADE;

--
-- Constraints for table `produccion`
--
ALTER TABLE `produccion`
  ADD CONSTRAINT `produccion_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  ADD CONSTRAINT `produccion_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE SET NULL;

--
-- Constraints for table `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
