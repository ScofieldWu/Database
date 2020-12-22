USE rwu252assign2db;

SELECT * FROM westerncourse;
SELECT * FROM university;
SELECT * FROM outsidecourse;
SELECT * FROM equivalentto;

LOAD DATA LOCAL INFILE 'loaddatafall2020.sql' INTO TABLE university FIELDS TERMINATED BY ',';

INSERT INTO westerncourse VALUES ("cs1026", "Computer Science Fundamentals I", 0.5, '"A/B"');
INSERT INTO westerncourse VALUES ("cs1027", "Computer Science Fundamentals II", 0.5, '"A/B"');
INSERT INTO westerncourse VALUES ("cs2210", "Algorithms and Data Structures", 1.0, '"A/B"');
INSERT INTO westerncourse VALUES ("cs3319", "Databases I", 0.5, '"A/B"');
INSERT INTO westerncourse VALUES ("cs2120", "Modern Survival Skills I: Coding Essentials", 0.5, '"A/B"');
INSERT INTO westerncourse VALUES ("cs4490", "Thesis", 0.5, '"Z"');
INSERT INTO westerncourse VALUES ("cs0020", "Intro to Coding using Pascal and Fortran", 1.0, '""');
INSERT INTO westerncourse VALUES ("cs4321", "Databases III", 0.5, '"A/B"');

INSERT INTO university VALUES (44, "Ross University", "Guelph", "ON", "Ross");

INSERT INTO outsidecourse VALUES (2, "CompSci022", "Introduction to Programming", 1, 0.5);
INSERT INTO outsidecourse VALUES (2, "CompSci033", "Intro to Programming for Med students", 3, 0.5);
INSERT INTO outsidecourse VALUES (2, "CompSci021", "Packages", 1, 0.5);
INSERT INTO outsidecourse VALUES (2, "CompSci222", "Introduction to Databases", 2, 1.0);
INSERT INTO outsidecourse VALUES (2, "CompSci023", "Advanced Programming", 1, 0.5);

INSERT INTO outsidecourse VALUES (4, "CompSci011", "Intro to Computer Science", 2, 0.5);
INSERT INTO outsidecourse VALUES (4, "CompSci123", "Using UNIX", 2, 0.5);

INSERT INTO outsidecourse VALUES (66, "CompSci021", "Intro Programming", 1, 1.0);
INSERT INTO outsidecourse VALUES (66, "CompSci022", "Advanced Programming", 1, 0.5);
INSERT INTO outsidecourse VALUES (66, "CompSci319", "Using Databases", 3, 0.5);

INSERT INTO outsidecourse VALUES (55, "CompSci333", "Graphics", 3, 0.5);
INSERT INTO outsidecourse VALUES (55, "CompSci444", "Networks", 4, 0.5);

INSERT INTO outsidecourse VALUES (77, "CompSci022", "Using Packages", 1, 0.5);
INSERT INTO outsidecourse VALUES (77, "CompSci101", "Introduction to Using Data Structures", 2, 0.5);

INSERT INTO outsidecourse VALUES (44, "CompSci108", "Python Programming", 1, 0.5);
INSERT INTO outsidecourse VALUES (44, "CompSci444", "Advanced Data Analysis", 4, 0.5);


INSERT INTO equivalentto VALUES ("cs1026", "CompSci022", 2, "2015-05-12");
INSERT INTO equivalentto VALUES ("cs1026", "CompSci033", 2, "2013-01-02");
INSERT INTO equivalentto VALUES ("cs1026", "CompSci011", 4, "1997-02-09");
INSERT INTO equivalentto VALUES ("cs1026", "CompSci021", 66, "2010-01-12");
INSERT INTO equivalentto VALUES ("cs1027", "CompSci023", 2, "2017-06-22");
INSERT INTO equivalentto VALUES ("cs1027", "CompSci022", 66, "2019-09-01");
INSERT INTO equivalentto VALUES ("cs2210", "CompSci101", 77, "1998-07-12");
INSERT INTO equivalentto VALUES ("cs3319", "CompSci222", 2, "1990-09-13");
INSERT INTO equivalentto VALUES ("cs3319", "CompSci319", 66, "1987-09-21");
INSERT INTO equivalentto VALUES ("cs2120", "CompSci022", 2, "2018-12-10");
INSERT INTO equivalentto VALUES ("cs0020", "CompSci022", 2, "1999-09-17");



SELECT * FROM westerncourse;
SELECT * FROM university;
SELECT * FROM outsidecourse;
SELECT * FROM equivalentto;


SELECT * FROM equivalentto;
UPDATE equivalentto SET decidedate = "2018-09-19" WHERE westerncode = "cs0020" AND code = "CompSci022" AND id = 2;
SELECT * FROM equivalentto;

SELECT * FROM outsidecourse;
UPDATE outsidecourse SET year = 1 WHERE name LIKE "Intro%";
SELECT * FROM outsidecourse;