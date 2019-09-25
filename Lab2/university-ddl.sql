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
where title like "Di%";

-- EJ 5
WITH E_CT AS(
	SELECT DISTINCT student.ID 
    FROM student LEFT JOIN (
		SELECT DISTINCT takes.course_id, ID FROM takes LEFT JOIN course
		ON takes.course_id = course.course_id
    ) as CT
	ON student.ID = CT.ID
)
SELECT instructor.ID, name, dept_name, salary FROM E_CT 
JOIN instructor ON E_CT.ID = instructor.ID;

-- EJ 8
WITH cal AS(
	SELECT sum(credits) AS sum, ID
	FROM (
			SELECT tot_cred, course_id, student.ID FROM takes, student
			where takes.ID = student.ID
		 ) AS ST JOIN course ON ST.course_id = course.course_ID
	GROUP BY ID
)
UPDATE student AS s
SET ID = s.ID,
	name = s.name,
    dept_name = s.dept_name,
    tot_cred = (SELECT sum FROM cal WHERE cal.ID = s.ID);

/* PRINT PARA VER QUE EL EJERCICIO ANTERIOR ANDA
WITH cal AS (
	SELECT sum(credits) AS sum, ID
	FROM (
			SELECT tot_cred, course_id, student.ID FROM takes JOIN student
			ON takes.ID = student.ID
		 ) AS ST JOIN course ON ST.course_id = course.course_ID
	GROUP BY ID
)
SELECT tot_cred, sum, student.ID AS sid FROM student, cal 
WHERE cal.ID = student.ID
*/
