WITH aux AS (
  SELECT count(takes.ID) AS ins FROM takes
  GROUP BY course_id, semester, sec_id, year
)
SELECT MAX(ins), MIN(ins) FROM aux;


SELECT count(takes.ID) AS cnt, course_id, semester, sec_id, year FROM takes
GROUP BY course_id, semester, sec_id, year
HAVING cnt = (
	SELECT MAX(ins) FROM (
		SELECT count(takes.ID) AS ins FROM takes
		GROUP BY course_id, semester, sec_id, year
	) AS aux
);



