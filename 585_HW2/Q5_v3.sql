CREATE DATABASE Q5DB;
USE Q5DB;
DROP TABLE Instructors;
CREATE TABLE Instructors(
  Instructor_Name CHAR(15),
  ClassName CHAR(30),
  CONSTRAINT PRIMARY KEY(Instructor_Name, ClassName)
);

INSERT INTO Instructors VALUES ('Aleph', 'Scratch'   );
INSERT INTO Instructors VALUES ('Aleph', 'Java'      );
INSERT INTO Instructors VALUES ('Aleph', 'Processing');
INSERT INTO Instructors VALUES ('Bit'  , 'Python'    );
INSERT INTO Instructors VALUES ('Bit'  , 'JavaScript');
INSERT INTO Instructors VALUES ('Bit'  , 'Java'      );
INSERT INTO Instructors VALUES ('CRC'  , 'Python'    );
INSERT INTO Instructors VALUES ('CRC'  , 'JavaScript');
INSERT INTO Instructors VALUES ('Dat'  , 'Scratch'   );
INSERT INTO Instructors VALUES ('Dat'  , 'Python'    );
INSERT INTO Instructors VALUES ('Dat'  , 'JavaScript');
INSERT INTO Instructors VALUES ('Emscr', 'Scratch'   );
INSERT INTO Instructors VALUES ('Emscr', 'Processing');
INSERT INTO Instructors VALUES ('Emscr', 'JavaScript');
INSERT INTO Instructors VALUES ('Emscr', 'Python'    );

/*
1. Created a new table Subjects which stores all the subjects that need to be satisified
2. Create the each subject requirement of each instructor by CROSS JOIN
3. SELECT the instructors of matched subject requirement by INNER JOIN
*/
CREATE TABLE Subjects(
    SubjectName Char(30),
    PRIMARY KEY(SubjectName));

INSERT INTO Subjects VALUES ('Javascript'); 
INSERT INTO Subjects VALUES ('Scratch'); 
INSERT INTO Subjects VALUES ('Python'); 

SELECT DISTINCT Instructor_Name
FROM Instructors MINUS SELECT DISTINCT Instructor_Name FROM
(SELECT * FROM(SELECT DISTINCT Instructor_Name FROM Instructors)CROSS JOIN Subjects
MINUS SELECT Instructor_Name, a.ClassName FROM Instructors a,Subjects b 
WHERE a.ClassName=b.SubjectName);


-- output of the testcase
-- +-----------------+
-- | Instructor_Name |
-- +-----------------+
-- | Dat             |
-- | Emscr           |
-- +-----------------+