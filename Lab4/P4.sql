-- EJ 1
-- Listar los datos de los clientes suscritos al plan
-- PREMIUM con una determinada fecha de suscripción
SELECT * FROM Cliente
WHERE fecha_de_suscripcion = '15/02/2015' AND
      suscripcion = 'Premium';

-- EJ 2
-- Listar los datos de las películas donde el actor ‘X’ fue protagonista.
SELECT * FROM Peliculas
JOIN Actua_pelicula ON Peliculas.id = Actua_pelicula.id_pelicula
JOIN Personas ON Actua_pelicula.id_actor = Personas.id
WHERE Actua_pelicula.rol = 'Protagonista' AND
      Persona.nombre = 'X';

-- EJ 3
-- Listar los episodios correspondientes a un programa de televisión X
-- y un número de temporada N. Listar ordenados por fecha de lanzamiento.
SELECT * FROM Capitulos JOIN Series
ON Capitulos.serie_id = Series.id
WHERE Series.titulo = 'X' AND
      Capitulos.temporada = 5;

-- EJ 4
-- Listar los reviews hechos por un cliente X dentro de un rango de fechas.
SELECT * FROM Clientes
JOIN Reviews_capitulos ON Clientes.id = Reviews_capitulos.id_cliente
JOIN Reviews_peliculas ON Clientes.id = Reviews_peliculas.id_cliente
WHERE Clientes.nombre = 'X' AND
      Reviews_capitulos.fecha BETWEEN '07-02-2015' AND '15-02-2015' AND
      Reviews_peliculas.fecha BETWEEN '07-02-2015' AND '15-02-2015';

-- EJ 5
-- Listar los actores que hayan actuado en películas que pertenecen
-- a géneros de drama o comedia, ordenados por orden alfabético.
SELECT * FROM Actores
JOIN Actua_pelicula ON Actores.id = Actua_pelicula.id_actor
JOIN Peliculas ON Peliculas.id = Actua_pelicula.id_pelicula
WHERE Peliculas.genero = 'Drama' OR
      Peliculas.genero = 'Comedia'
ORDER BY Peliculas.nombre;

-- EJ 6
-- Dada una película X, calcular para cada estrella el
-- porcentaje de calificaciones recibidas en sus reviews.
WITH Aux AS (
    SELECT * FROM Peliculas
    JOIN Reviews_peliculas ON Peliculas.id = Reviews_peliculas.id_pelicula
    WHERE Pelicula.name = 'X'
)
SELECT Aux.calificacion, COUNT(Aux.calificacion) from Aux
GROUP BY Aux.calificacion;

-- EJ 7
-- Dada una película X, calcular su “calificación promedio”. Para calcular la
-- calificación promedio en términos de 5 estrellas usar la media ponderada.
SELECT AVG(Reviews_peliculas.calificacion)
FROM Peliculas
JOIN Reviews_peliculas ON Peliculas.id = Reviews_peliculas.id_pelicula
WHERE Pelicula.nombre = 'X';

-- EJ 8
-- Listar las películas mejor calificadas en los
-- últimos 6 meses. Usar la “calificación promedio”.
WITH Averages AS (
    SELECT Pelicula.nombre, AVG(Reviews_peliculas.calificacion) as Calificacion
    FROM Peliculas
    JOIN Reviews_peliculas ON Peliculas.id = Reviews_peliculas.id_pelicula
    GROUP BY Peliculas.nombre
    ORDER BY Calificacion
)
SELECT * from Averages LIMIT 10;

-- EJ 9
-- Listar las películas dirigidas por dos o más directores femeninos.


-- EJ 10
-- Listar los actores que hayan actuado en todos los
-- programas de televisión en donde actuó un actor X.
SELECT * FROM Persona
JOIN 