DROP PROCEDURE IF EXISTS TOMA_LUCAS;
CREATE PROCEDURE TOMA_LUCAS(IN innn VARCHAR(10))
  SELECT semester
  FROM takes
  WHERE ID = innn;

CALL TOMA_LUCAS(3335);

CREATE TRIGGER triggah
AFTER INSERT ON takes
FOR EACH ROW
  UPDATE student s, course c
  SET s.tot_cred = s.tot_cred + c.credits 
  WHERE s.ID = NEW.ID AND
        c.course_id = NEW.course_id;

/*

-- EJ 1
DROP VIEW IF EXISTS view_name;
CREATE VIEW view_name AS
SELECT ID, course_id, sec_id, semester, year, grade
FROM takes;
SELECT * FROM view_name;

-- EJ 3
DROP TABLE IF EXISTS ejercicio3;
CREATE TABLE ejercicio3 AS
SELECT case
  WHEN grade = 'F' THEN '0'
  WHEN grade = 'D' THEN '4'
  WHEN grade = 'C' THEN '6'
  WHEN grade = 'B' THEN'8'
  WHEN grade = 'A' THEN '10'
  ELSE '0'
end AS grade
FROM takes;
SELECT * FROM ejercicio3;
SELECT * FROM takes;
SELECT AVG(Grade)
FROM ejercicio3
GROUP BY ejercicio3.ID;

SELECT * FROM instructor;

DROP VIEW IF EXISTS goteo;
CREATE VIEW goteo AS
SELECT ID, name, dept_name
FROM instructor;
SELECT * FROM goteo;

DROP VIEW IF EXISTS gotero;
CREATE VIEW gotero AS
SELECT ID, name, dept_name
FROM instructor
WHERE dept_name LIKE 'Comp. Sci.';
SELECT * FROM gotero;

*/