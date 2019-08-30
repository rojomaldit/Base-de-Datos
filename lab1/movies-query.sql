-- Muestra los datos de cada tabla
-- SELECT * FROM actors
-- SELECT * FROM movies
-- SELECT * FROM actor_rol 

-- EJ 11 
SELECT movies.title FROM movies JOIN actors JOIN actor_rol
WHERE actors.actor_name = 'Charlie Chaplin';

-- EJ 12
SELECT actor_name FROM actor_rol JOIN actors
WHERE actor_rol.rol_name = ''