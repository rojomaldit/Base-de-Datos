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


SELECT count(takes.ID) AS ins FROM takes
GROUP BY course_id, semester, sec_id, year;

-- EJ 3 part 2
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
SELECT * FROM course
where title like "Comp%";

-- EJ 5
WITH R AS (
	SELECT ID from course JOIN teaches
	ON course.course_id = teaches.course_id
	WHERE course.title LIKE "Comp%"
)
SELECT * FROM instructor as i JOIN R
ON i.ID = R.ID;


  
-- EJ 9
WITH R AS (
	SELECT i.ID, count(sec_id) as count FROM instructor as i JOIN teaches as t
	ON i.ID = t.ID
	GROUP BY i.ID
)
UPDATE instructor as ins
SET salary = 1000 * (SELECT count FROM R WHERE R.ID = ins.ID);
    
    
    
    