delete from actors;
delete from movies;
delete from actor_rol;

INSERT INTO actors (AID, actor_name) VALUES (1, 'Uzii');
INSERT INTO actors (AID, actor_name) VALUES (2, 'Octa');
INSERT INTO actors (AID, actor_name) VALUES (3, 'Lucas');
INSERT INTO actors (AID, actor_name) VALUES (40, 'Actor que no actua');
INSERT INTO actors (AID, actor_name) VALUES (4, 'Lucrecia :D');
INSERT INTO actors (AID, actor_name) VALUES (5, 'Charlie Chaplin');

INSERT INTO movies (MID, title) VALUES (1, 'Charlie Chaplin movie');
INSERT INTO movies (MID, title) VALUES (2, 'Pacman the movie');
INSERT INTO movies (MID, title) VALUES (3, 'Pelicula 123');
INSERT INTO movies (MID, title) VALUES (4, 'Project X');
INSERT INTO movies (MID, title) VALUES (5, 'Pelicula123');

INSERT INTO actor_rol (MID, AID, rol_name) VALUES (5, 2, 'Co-protagonist');
INSERT INTO actor_rol (MID, AID, rol_name) VALUES (5, 3, 'Protagonist');
INSERT INTO actor_rol (MID, AID, rol_name) VALUES (5, 1, 'Cameraman');
INSERT INTO actor_rol (MID, AID, rol_name) VALUES (4, 4, 'Secondary character');
INSERT INTO actor_rol (MID, AID, rol_name) VALUES (1, 5, 'Director');
INSERT INTO actor_rol (MID, AID, rol_name) VALUES (0, 40, '');
