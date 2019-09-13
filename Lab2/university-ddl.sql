WITH aux AS (
  SELECT count(takes.ID) AS ins
    from takes
  GROUP BY course_id, semester, sec_id, year
)
SELECT MAX(ins), MIN(ins) from aux;


