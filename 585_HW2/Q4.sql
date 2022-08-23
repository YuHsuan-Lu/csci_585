CREATE DATABASE Q4DB;
USE Q4DB;
DROP TABLE Class_Session;
CREATE TABLE Class_Session(
  IID INTEGER,
  ClassName CHAR(30),
  Student_Num INTEGER,
  CONSTRAINT PRIMARY KEY(IID, ClassName)
);

INSERT INTO Class_Session VALUES (123, 'Processing', 20);
INSERT INTO Class_Session VALUES (123, 'Python'    , 10);
INSERT INTO Class_Session VALUES (123, 'Scratch'   , 25);
INSERT INTO Class_Session VALUES (144, 'Processing', 20);
INSERT INTO Class_Session VALUES (144, 'Python'    , 10);
INSERT INTO Class_Session VALUES (144, 'Java'      , 30);
INSERT INTO Class_Session VALUES (144, 'JavaScript', 30);
INSERT INTO Class_Session VALUES (202, 'Scratch'   , 40);
INSERT INTO Class_Session VALUES (202, 'Java'      , 40);
INSERT INTO Class_Session VALUES (207, 'Processing', 10);
INSERT INTO Class_Session VALUES (207, 'Python'    , 10);
INSERT INTO Class_Session VALUES (207, 'JavaScript', 27);
INSERT INTO Class_Session VALUES (207, 'Database'  , 17);
INSERT INTO Class_Session VALUES (311, 'Processing', 11);
INSERT INTO Class_Session VALUES (311, 'Python'    , 31);
INSERT INTO Class_Session VALUES (311, 'Java'      , 15);

/*
Use GROUP BY and SUM to get the sum_of_class_counts 
Assume hour_rate is the same for every instructor and is 20 in this case
Use ORDER BY bonus DESC we sort the table, which will put the highest_bonus on the top of the table
Use LIMIT 1 to make SELECT only fetch the top row, which is the highest_bonus
*/

SELECT (20 * SUM(Student_Num) * 0.1) AS highest_bonus
FROM Class_Session
Group BY IID
ORDER BY bonus DESC
LIMIT 1;

-- output of the testcase
-- +-------+
-- | bonus |
-- +-------+
-- | 180.0 |
-- +-------+
