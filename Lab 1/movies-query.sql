-- Muestra los datos de cada tabla
-- SELECT * FROM actors
-- SELECT * FROM movies
-- SELECT * FROM actor_rol 

-- EJ 11 
SELECT movies.title FROM movies JOIN actors JOIN actor_rol
WHERE actors.actor_name = 'Charlie Chaplin';

