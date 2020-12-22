USE rwu252assign2db;

-- -------------
-- Query 1
SELECT coursename FROM westerncourse;

-- -------------
-- Query 2
SELECT DISTINCT code FROM outsidecourse;

-- -------------
-- Query 3
SELECT * FROM westerncourse ORDER BY coursename;

-- -------------
-- Query 4
SELECT coursenumber, coursename FROM westerncourse WHERE weight = 0.5;

-- -------------
-- Query 5
SELECT code, name FROM university u, outsidecourse o WHERE u.id = o.id AND officialname = "University Of Toronto";

-- -------------
-- Query 6
SELECT name, nickname FROM university u, outsidecourse o WHERE u.id = o.id AND name LIKE "%Introduction%";

-- -------------
-- Query 7
SELECT name, officialname, coursename, decidedate FROM westerncourse w, equivalentto e, university u, outsidecourse o WHERE e.id = o.id AND e.code = o.code AND e.id = u.id AND w.coursenumber = e.westerncode AND decidedate < DATE_SUB(CURDATE(), INTERVAL 5 YEAR);

-- -------------
-- Query 8
SELECT name, nickname FROM equivalentto e, outsidecourse o, university u WHERE westerncode = "cs1026" AND e.id = o.id AND e.code = o.code AND o.id = u.id;

-- -------------
-- Query 9
SELECT COUNT(*) FROM equivalentto WHERE westerncode = "cs1026";

-- -------------
-- Query 10
SELECT coursename, name, nickname FROM equivalentto e, university u, outsidecourse o, westerncourse w WHERE e.id = o.id AND e.code = o.code AND e.id = u.id AND westerncode = coursenumber AND city = "Waterloo" AND provincecode = "ON";

-- -------------
-- Query 11
SELECT officialname FROM university WHERE id NOT IN (SELECT DISTINCT id FROM equivalentto);

-- -------------
-- Query 12
SELECT coursename, coursenumber FROM westerncourse w, equivalentto e, outsidecourse o WHERE w.coursenumber = e.westerncode AND e.id = o.id AND e.code = o.code AND year IN (3, 4);

-- -------------
-- Query 13
SELECT coursename FROM westerncourse w, equivalentto e, outsidecourse o WHERE w.coursenumber = e.westerncode AND e.id = o.id AND e.code = o.code GROUP BY westerncode HAVING COUNT(*) > 1;

-- -------------
-- Query 14
SELECT westerncode AS "Western Course Number", coursename AS "Western Course Name", w.weight AS "Course Weight", name AS "Other University Course Name", officialname AS "University Name", o.weight AS "Other Course Weight" FROM westerncourse w, equivalentto e, university u, outsidecourse o WHERE e.id = o.id AND e.code = o.code AND e.id = u.id AND w.coursenumber = e.westerncode AND w.weight != o.weight;