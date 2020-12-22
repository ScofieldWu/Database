USE rwu252assign2db;

CREATE VIEW yearonecourse AS SELECT name, officialname, nickname, city, coursename FROM westerncourse w, equivalentto e, university u, outsidecourse o WHERE e.id = o.id AND e.code = o.code AND e.id = u.id AND w.coursenumber = e.westerncode AND year = 1;

SELECT * FROM yearonecourse;

SELECT * FROM yearonecourse WHERE nickname = "UofT" ORDER BY coursename;

SELECT * FROM university;

DELETE FROM university WHERE nickname LIKE "%cord%";

SELECT * FROM university;

-- Cause error because univeristy in Ontario still has courses offered in outside course table.
DELETE FROM university WHERE provincecode = "ON";

SELECT * FROM university;

SELECT * FROM outsidecourse o, university u WHERE o.id = u.id;

DELETE FROM outsidecourse WHERE id IN (SELECT id FROM university WHERE city = "Waterloo");

SELECT * FROM outsidecourse o, university u WHERE o.id = u.id;

-- Run the view again
SELECT * FROM yearonecourse;