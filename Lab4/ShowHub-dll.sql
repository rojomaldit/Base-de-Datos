drop table if exists `Clientes`;

CREATE TABLE `Clientes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `usuario` varchar(255) UNIQUE NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contra` varchar(255) NOT NULL,
  `telefono` varchar(255),
  `sexo` varchar(255),
  `suscripcion` ENUM ('basico', 'estandar', 'premium'),
  `fecha_de_suscripcion` date
);

drop table if exists `Telefonos`;

CREATE TABLE `Telefonos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `empleado_id` int,
  `telefono` varchar(255)
);

drop table if exists `Empleados`;

CREATE TABLE `Empleados` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `usuario` varchar(255) UNIQUE NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contra` varchar(255) NOT NULL,
  `telefono` varchar(255),
  `sexo` varchar(255),
  `rol_admin` varchar(255) NOT NULL
);

drop table if exists `Roles`;

CREATE TABLE `Roles` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_empleado` int,
  `rol` ENUM ('admin_usuarios_clientes', 'admin_usuarios_empleados', 'admin_carga_productos')
);

drop table if exists `Reviews_peliculas`;

CREATE TABLE `Reviews_peliculas` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_pelicula` int,
  `titulo` varchar(255),
  `descripcion` varchar(255),
  `fecha` date,
  `calificacion` int
);

drop table if exists `Reviews_capitulos`;

CREATE TABLE `Reviews_capitulos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_capitulo` int,
  `titulo` varchar(255),
  `descripcion` varchar(255),
  `fecha` date,
  `calificacion` int
);

drop table if exists `Capitulos`;

CREATE TABLE `Capitulos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255),
  `numero` int,
  `temporada` int,
  `serie_id` int,
  `duracion` int,
  `fecha_lanzamiento` date,
  `productora` varchar(255)
);

drop table if exists `Peliculas`;

CREATE TABLE `Peliculas` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255),
  `duracion` int,
  `fecha_lanzamiento` date,
  `productora` varchar(255)
);

drop table if exists `Generos`;

CREATE TABLE `Generos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_pelicula` int,
  `genero` varchar(255)
);

drop table if exists `Actua_capitulo`;

CREATE TABLE `Actua_capitulo` (
  `id_capitulo` int,
  `id_actor` int,
  `rol` varchar(255)
);

drop table if exists `Dirige_pelicula`;

CREATE TABLE `Dirige_pelicula` (
  `id_pelicula` int,
  `id_director` int
);

drop table if exists `Dirige_capitulo`;

CREATE TABLE `Dirige_capitulo` (
  `id_capitulo` int,
  `id_director` int,
  `rol` varchar(255)
);

drop table if exists `Actua_pelicula`;

CREATE TABLE `Actua_pelicula` (
  `id_pelicula` int,
  `id_actor` int,
  `rol` ENUM ('protagonista', 'secundario')
);

drop table if exists `Personas`;

CREATE TABLE `Personas` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sitio_web` varchar(255),
  `trabajo` ENUM ('director', 'actor') NOT NULL
);

drop table if exists `Series`;

CREATE TABLE `Series` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255),
  `temporadas` int,
  `fecha_lanzamiento` date,
  `genero` varchar(255),
  `productora` varchar(255)
);

ALTER TABLE `Telefonos` ADD FOREIGN KEY (`empleado_id`) REFERENCES `Empleados` (`id`);

ALTER TABLE `Roles` ADD FOREIGN KEY (`id_empleado`) REFERENCES `Empleados` (`id`);

ALTER TABLE `Reviews_peliculas` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id`);

ALTER TABLE `Reviews_peliculas` ADD FOREIGN KEY (`id_pelicula`) REFERENCES `Peliculas` (`id`);

ALTER TABLE `Reviews_capitulos` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id`);

ALTER TABLE `Reviews_capitulos` ADD FOREIGN KEY (`id_capitulo`) REFERENCES `Capitulos` (`id`);

ALTER TABLE `Capitulos` ADD FOREIGN KEY (`serie_id`) REFERENCES `Series` (`id`);

ALTER TABLE `Generos` ADD FOREIGN KEY (`id_pelicula`) REFERENCES `Peliculas` (`id`);

ALTER TABLE `Actua_capitulo` ADD FOREIGN KEY (`id_capitulo`) REFERENCES `Capitulos` (`id`);

ALTER TABLE `Actua_capitulo` ADD FOREIGN KEY (`id_actor`) REFERENCES `Personas` (`id`);

ALTER TABLE `Dirige_pelicula` ADD FOREIGN KEY (`id_pelicula`) REFERENCES `Peliculas` (`id`);

ALTER TABLE `Dirige_pelicula` ADD FOREIGN KEY (`id_director`) REFERENCES `Personas` (`id`);

ALTER TABLE `Dirige_capitulo` ADD FOREIGN KEY (`id_capitulo`) REFERENCES `Capitulos` (`id`);

ALTER TABLE `Dirige_capitulo` ADD FOREIGN KEY (`id_director`) REFERENCES `Personas` (`id`);

ALTER TABLE `Actua_pelicula` ADD FOREIGN KEY (`id_pelicula`) REFERENCES `Peliculas` (`id`);

ALTER TABLE `Actua_pelicula` ADD FOREIGN KEY (`id_actor`) REFERENCES `Personas` (`id`);
