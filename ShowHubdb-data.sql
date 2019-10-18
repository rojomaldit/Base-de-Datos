delete from `Telefonos`;
delete from `Reviews_peliculas`;
delete from `Reviews_capitulos`;
delete from `Clientes`;
delete from `Roles`;
delete from `Empleados`;
delete from `Actua_capitulo`;
delete from `Dirige_capitulo`;
delete from `Capitulos`;
delete from `Actua_pelicula`;
delete from `Generos`;
delete from `Dirige_pelicula`;
delete from `Peliculas`;
delete from `Personas`;
delete from `Series`;

insert into Clientes values (1, 'X', 'Y', 'PEPE', 'correo@hotmail.com', '1234', '3517040420', 'M', 'premium', '2008-7-04');
insert into Clientes values (2, 'X1', 'Y1', 'PEPE1', 'correo1@hotmail.com', '1234', '3517040421', 'M', 'premium', '10-11-17');
insert into Clientes values (3, 'X2', 'Y2', 'PEPE2', 'correo2@hotmail.com', '1234', '3517040430', 'F', 'premium', '15-11-17');
insert into Clientes values (4, 'X3', 'Y3', 'PEPE3', 'correo3@hotmail.com', '1234', '3517040520', 'F', 'basico', '18-11-17');
insert into Clientes values (5, 'X4', 'Y4', 'PEPE4', 'correo4@hotmail.com', '1234', '3517046420', 'M', 'estandar', '13-11-17');
insert into Clientes values (6, 'X5', 'Y5', 'PEPE5', 'correo5@hotmail.com', '1234', '3517070420', 'O', 'premium', '24-11-17');
insert into Clientes values (7, 'X34', 'Y33', 'PEPE35', 'correo6@hotmail.com', '1234', '3514040520', 'O', 'basico', '11-11-17');
insert into Clientes values (8, 'X423', 'Y4123', 'PEPE12314', 'correo4123@hotmail.com', '1234', '3517046420', 'M', 'estandar', '28-02-19');

insert into Empleados values (1, 'pepon', 'peponaso1', 'pep', 'aasdads1@hotmail.com', '1234', '3518061980', 'M', 'xD');
insert into Empleados values (2, 'pepon1', 'peponaso2', 'pep1', 'aasdad2s@hotmail.com', '1234', '3518369980', 'F', 'xD1');
insert into Empleados values (3, 'pepon2', 'peponaso3', 'pep2', 'aasdads3@hotmail.com', '1234', '3518069980', 'F', 'xD2');
insert into Empleados values (4, 'pepon3', 'peponaso4', 'pep3', 'aasdads@4hotmail.com', '1234', '3518669980', 'M', 'xD3');
insert into Empleados values (5, 'pepon4', 'peponaso6', 'pep4', 'aasdads@h5otmail.com', '1234', '35180869980', 'F', 'x4D');
insert into Empleados values (6, 'pepon5', 'peponaso8', 'pep5', 'aasdads@ho6tmail.com', '1234', '35180779980', 'M', 'xD');
insert into Empleados values (7, 'pepon7', 'peponaso0', 'pep6', 'aasdads@hot7mail.com', '1234', '35180696980', 'M', 'xD');

insert into Telefonos values (1, 1, 3517042321);
insert into Telefonos values (2, 2, 3517042321);
insert into Telefonos values (3, 3, 3517042321);
insert into Telefonos values (4, 4, 3517042321);
insert into Telefonos values (5, 5, 3517042321);
insert into Telefonos values (6, 6, 3517042321);
insert into Telefonos values (7, 7, 3517042321);
insert into Telefonos values (19, 1, 3517042321);
insert into Telefonos values (28, 1, 3517042321);
insert into Telefonos values (73, 3, 3517042321);
insert into Telefonos values (64, 4, 3517042321);
insert into Telefonos values (55, 5, 3517042321);
insert into Telefonos values (624, 5, 3517042321);
insert into Telefonos values (72, 7, 3517042321);

insert into Roles values (1, 1, 'admin_usuarios_clientes');
insert into Roles values (2, 2, 'admin_usuarios_empleados');
insert into Roles values (3, 3, 'admin_carga_productos');
insert into Roles values (4, 3, 'admin_usuarios_clientes');
insert into Roles values (5, 4, 'admin_usuarios_clientes');
insert into Roles values (6, 5, 'admin_usuarios_clientes');
insert into Roles values (7, 6, 'admin_usuarios_empleados');
insert into Roles values (8, 7, 'admin_usuarios_clientes');

insert into Peliculas values (1, 'X', 'asdasdasdasd', 120, '10-11-17', 'MARVEL');
insert into Peliculas values (2, 'X1', 'asdasr3444r3dasdasd', 123, '16-11-10', 'Xd');
insert into Peliculas values (3, 'X2', 'asdasdasdas34r34rd', 60, '11-11-18', 'MARVasdEL');
insert into Peliculas values (4, 'X3', '34r3r4asdasdasdasd', 200, '11-11-14', 'SONY');
insert into Peliculas values (5, 'X4', 'as34r3rdasdag5g4sdasd', 133, '11-11-15', 'KHALIFA PRODUCTIONS');
insert into Peliculas values (6, 'X5', 'asdasdf45g45gasdasd', 112, '11-11-18', 'PELASO');
insert into Peliculas values (7, 'X6', 'asdasdasdasdfgvdffvd', 100, '11-11-20', 'ROQUI');
insert into Peliculas values (8, 'X7', 'asdasdadsjfnjkdfnsdasd', 50, '11-11-11', 'PRODUCTORA18');
insert into Peliculas values (11, 'X', 'asdasdasdasd', 120, '12-12-17', 'MARVEL');
insert into Peliculas values (22, 'X1', 'asdasr3444r3dasdasd', 123, '12-12-17', 'Xd');
insert into Peliculas values (33, 'X2', 'asdasdasdas34r34rd', 60, '12-12-17', 'MARVasdEL');
insert into Peliculas values (44, 'X3', '34r3r4asdasdasdasd', 200, '12-12-17', 'SONY');
insert into Peliculas values (55, 'X4', 'as34r3rdasdag5g4sdasd', 133, '12-12-17', 'KHALIFA PRODUCTIONS');
insert into Peliculas values (66, 'X5', 'asdasdf45g45gasdasd', 112, '12-12-17', 'PELASO');
insert into Peliculas values (77, 'X6', 'asdasdasdasdfgvdffvd', 100, '12-12-17', 'ROQUI');
insert into Peliculas values (88, 'X7', 'asdasdadsjfnjkdfnsdasd', 50, '12-12-17', 'PRODUCTORA18');

insert into Reviews_peliculas values (1, 1, 1, 'asdasdasdasd', 'puto el que lo lee', '12-12-17', 1);
insert into Reviews_peliculas values (2, 1, 2, 'asdasdasdasd', 'puto el que lo lee', '12-12-17', 2);
insert into Reviews_peliculas values (3, 5, 6, 'as34r3rdasdag5g4sdasd', 'puto el que lo lee', '12-12-17', 3);
insert into Reviews_peliculas values (4, 2, 8, 'asdasr3444r3dasdasd', 'puto el que lo lee', '12-12-17', 4);
insert into Reviews_peliculas values (5, 4, 2, '34r3r4asdasdasdasd', 'puto el que lo lee', '12-12-17', 5);
insert into Reviews_peliculas values (6, 4, 8, '34r3r4asdasdasdasd', 'puto el que lo lee', '12-12-17', 6);
insert into Reviews_peliculas values (7, 8, 1, 'asdasdadsjfnjkdfnsdasd', 'puto el que lo lee', '12-12-17', 7);
insert into Reviews_peliculas values (8, 8, 2, 'asdasdadsjfnjkdfnsdasd', 'puto el que lo lee', '12-12-17', 8);

insert into Series values (1, 'X', 'asdasdasdasd', 120, '12-12-17', 'ACCION', 'MARVEL');
insert into Series values (2, 'X1', 'asdasr3444r3dasdasd', 123, '12-12-17', 'ANIME', 'Xd');
insert into Series values (3, 'X2', 'asdasdasdas34r34rd', 60, '12-12-17', 'HORROR', 'MARVasdEL');
insert into Series values (4, 'X3', '34r3r4asdasdasdasd', 200, '12-12-17', 'HORROR', 'SONY');
insert into Series values (5, 'X4', 'as34r3rdasdag5g4sdasd', 133, '12-12-17', 'PORNO', 'KHALIFA PRODUCTIONS');
insert into Series values (6, 'X5', 'asdasdf45g45gasdasd', 112, '12-12-17', 'COMICA', 'PELASO');
insert into Series values (7, 'X6', 'asdasdasdasdfgvdffvd', 100, '12-12-17', 'ACCION', 'ROQUI');
insert into Series values (8, 'X7', 'asdasdadsjfnjkdfnsdasd', 50, '12-12-17', 'NO QUERRAS SABER', 'PRODUCTORA18');

insert into Capitulos values (1, 'X', 'asdasdasdasd', 120, 2, 1, 120, '12-12-17', 'MARVEL');
insert into Capitulos values (2, 'X1', 'asdasr3444r3dasdasd', 123, 3, 3, 123, '12-12-17', 'Xd');
insert into Capitulos values (3, 'X2', 'asdasdasdas34r34rd', 60, 4, 4, 60, '12-12-17', 'MARVasdEL');
insert into Capitulos values (4, 'X3', '34r3r4asdasdasdasd', 200, 5, 7, 200, '12-12-17', 'SONY');
insert into Capitulos values (5, 'X4', 'as34r3rdasdag5g4sdasd', 133, 2, 8, 69, '12-12-17', 'KHALIFA PRODUCTIONS');
insert into Capitulos values (6, 'X5', 'asdasdf45g45gasdasd', 112, 9, 1, 112, '12-12-17', 'PELASO');
insert into Capitulos values (7, 'X6', 'asdasdasdasdfgvdffvd', 100, 21, 5, 100, '12-12-17', 'ROQUI');
insert into Capitulos values (8, 'X7', 'asdasdadsjfnjkdfnsdasd', 50, 7612, 5, 50, '12-12-17', 'PRODUCTORA18');

insert into Reviews_capitulos values (1, 1, 1, 'X', 'asdasdasdasd', '12-12-17', 1);
insert into Reviews_capitulos values (2, 1, 3, 'X1', 'asdasr3444r3dasdasd', '12-12-17', 2);
insert into Reviews_capitulos values (3, 3, 5, 'X2', 'asdasdasdas34r34rd', '12-12-17', 3);
insert into Reviews_capitulos values (4, 4, 6, 'X3', '34r3r4asdasdasdasd', '12-12-17', 4);
insert into Reviews_capitulos values (5, 4, 7, 'X4', 'as34r3rdasdag5g4sdasd', '12-12-17', 5);
insert into Reviews_capitulos values (6, 8, 8, 'X5', 'asdasdf45g45gasdasd', '12-12-17', 1);
insert into Reviews_capitulos values (7, 7, 1, 'X6', 'asdasdasdasdfgvdffvd', '12-12-17', 2);
insert into Reviews_capitulos values (8, 7, 4, 'X7', 'asdasdadsjfnjkdfnsdasd', '12-12-17', 3);
insert into Reviews_capitulos values (9, 5, 6, 'X8', 'asdasdadsjfnjkdfnsdasd', '12-12-17', 4);
insert into Reviews_capitulos values (10, 2, 8, 'X7', 'asdasdadsjfnjkdfnsdasd', '12-12-17', 5);
insert into Reviews_capitulos values (11, 2, 8, 'X7', 'asdasdadsjfnjkdfnsdasd', '12-12-17', 1);





