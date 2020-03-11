CREATE TABLE `usuarios` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255),
  `apellido` varchar(140),
  `usuario` varchar(255),
  `password` varchar(255),
  `pais` int,
  `dni` int,
  `email` varchar(255)
);

CREATE TABLE `cuentas` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `usuario_id` varchar(255),
  `saldo` int,
  `tipo` varchar(255),
  `moneda` varchar(255),
  `fecha_creacion` date
);

CREATE TABLE `transferencias` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cuenta_origen_id` int,
  `cuenta_destino_id` int,
  `monto` int,
  `fecha` date
);

ALTER TABLE `cuentas` ADD FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`);

ALTER TABLE `cuentas` ADD FOREIGN KEY (`id`) REFERENCES `transferencias` (`cuenta_origen_id`);

ALTER TABLE `cuentas` ADD FOREIGN KEY (`id`) REFERENCES `transferencias` (`cuenta_destino_id`);
