-- EJ 1
WITH aux AS (
  SELECT count(ID) AS ins FROM takes
  GROUP BY course_id, semester, sec_id, year
)
SELECT MAX(ins), MIN(ins) FROM aux;

-- EJ 2
SELECT count(takes.ID) AS cnt, course_id, semester, sec_id, year FROM takes
GROUP BY course_id, semester, sec_id, year
HAVING cnt = (
	SELECT MAX(ins) FROM (
		SELECT count(takes.ID) AS ins FROM takes
		GROUP BY course_id, semester, sec_id, year
	) AS aux
);

-- EJ 3
SELECT MAX(ins), MIN(ins) FROM (
  SELECT count(ID) AS ins
  FROM takes as T RIGHT JOIN section as S
  ON T.course_id = S.course_id
  AND T.sec_id = S.sec_id
  AND T.semester = S.semester
  AND T.year = S.year
  GROUP BY S.course_id, S.semester, S.sec_id, S.year
) AS foo;

-- EJ 4
