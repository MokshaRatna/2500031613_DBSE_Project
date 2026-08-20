#2500031613_U.Moksha
CREATE DATABASE joins;
USE joins;

CREATE TABLE class (
    id INT,
    name VARCHAR(30)
);

CREATE TABLE class_info (
    id INT,
    address VARCHAR(30)
);

INSERT INTO class VALUES
(1,'Laxman1'),
(2,'Laxman2'),
(3,'Laxman3'),
(4,'Laxman4');

INSERT INTO class_info VALUES
(1,'DELHI'),
(2,'MUMBAI'),
(3,'CHENNAI');


-- CROSS JOIN
SELECT *
FROM class
CROSS JOIN class_info;


-- INNER JOIN
SELECT *
FROM class
INNER JOIN class_info
ON class.id = class_info.id;


-- NATURAL JOIN
SELECT *
FROM class
NATURAL JOIN class_info;


-- LEFT OUTER JOIN

INSERT INTO class VALUES
(5,'Laxman5');

INSERT INTO class_info VALUES
(7,'NOIDA'),
(8,'PANIPAT');

SELECT *
FROM class
LEFT OUTER JOIN class_info
ON class.id = class_info.id;


-- RIGHT OUTER JOIN
SELECT *
FROM class
RIGHT OUTER JOIN class_info
ON class.id = class_info.id;


-- FULL OUTER JOIN
SELECT *
FROM class
FULL OUTER JOIN class_info
ON class.id = class_info.id;
