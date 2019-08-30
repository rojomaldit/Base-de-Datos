-- EJ 11 
SELECT title
  FROM movies
    JOIN actor_rol ON movies.MID = actor_rol.MID
    JOIN actors ON actors.AID = actor_rol.AID
  WHERE actor_name = "Charlie Chaplin";

-- EJ 12
SELECT actor_name FROM actor_rol JOIN actors
    WHERE actor_rol.rol_name = '' 
    AND actors.AID = actor_rol.AID;

-- EJ 13

SELECT actor_name, title
  FROM movies
    JOIN actor_rol ON movies.MID = actor_rol.MID
    JOIN actors ON actors.AID = actor_rol.AID;