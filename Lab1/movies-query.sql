-- EJ 11 
SELECT title
  FROM movies
    JOIN actor_rol ON movies.MID = actor_rol.MID
    JOIN actors ON actors.AID = actor_rol.AID
  WHERE actor_name = "Charlie Chaplin";

-- EJ 12
SELECT actor_name
  FROM actors LEFT JOIN actor_rol
    ON actors.AID = actor_rol.AID
  WHERE actor_rol.AID IS NULL;

-- EJ 13
SELECT actor_name, title
  FROM actors
    LEFT JOIN actor_rol ON actors.AID = actor_rol.AID
    LEFT JOIN movies ON movies.MID = actor_rol.MID 