WITH
  aux AS (
    SELECT count(takes.ID) AS inscriptions
      from takes, section
    WHERE
      takes.course_id = section.course_id AND
      takes.semester = section.semester AND
      takes.sec_id = section.sec_id AND
      takes.year = section.year
    GROUP BY
      section.course_id,
      section.semester,
      section.sec_id,
      section.year
  )
SELECT MAX(inscriptions), MIN(inscriptions) from aux;

-- DROP VIEW IF EXISTS aux;
-- 
-- CREATE VIEW aux AS
--   SELECT count(takes.ID) AS section_inscriptions from takes, section
--     WHERE
--       takes.course_id = section.course_id AND
--       takes.semester = section.semester AND
--       takes.year = section.year
--     GROUP BY
--       takes.course_id;
-- 
-- SELECT MAX(section_inscriptions), MIN(section_inscriptions) FROM aux;