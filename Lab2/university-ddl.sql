WITH aux AS (
  SELECT count(takes.ID) AS ins
    from takes
  GROUP BY course_id, semester, sec_id, year
)
SELECT MAX(ins), MIN(ins) from aux;

-- *********************** CARDELINO ***********************

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

-- ************************** OCTA **************************

-- WITH
--   aux AS (
--     SELECT sec_id, course_id, semester, year, count(takes.ID) AS inscriptions
--       from takes, section
--     GROUP BY
--       section.course_id,
--       section.semester,
--       section.sec_id,
--       section.year
--   )
-- SELECT MAX(inscriptions), MIN(inscriptions) from aux;
