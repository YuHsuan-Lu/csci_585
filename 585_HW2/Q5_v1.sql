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
2. Use Count to extract the instructor in the table instruction who teaches all the subjects contained in the table Subjects 
3. Implemented division
*/

CREATE TABLE Subjects(
    SubjectName Char(30),
    PRIMARY KEY(SubjectName));

INSERT INTO Subjects VALUES ('Javascript'); 
INSERT INTO Subjects VALUES ('Scratch'); 
INSERT INTO Subjects VALUES ('Python'); 

SELECT Instructor_Name
FROM Instructors a
WHERE a.ClassName in (SELECT SubjectName FROM Subjects)
GROUP BY Instructor_Name
HAVING COUNT(a.ClassName) >= (SELECT COUNT(*)FROM Subjects);

-- output of the testcase
-- +-----------------+
-- | Instructor_Name |
-- +-----------------+
-- | Dat             |
-- | Emscr           |
-- +-----------------+