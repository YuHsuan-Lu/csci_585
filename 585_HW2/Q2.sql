CREATE DATABASE Q2DB;
USE Q2DB;
DROP TABLE enrollment;
CREATE TABLE enrollment(
  SID INTEGER,
  ClassName CHAR(30),
  Grade CHAR(1),
  CONSTRAINT PRIMARY KEY(SID, ClassName)
);
INSERT INTO enrollment VALUES (123, 'Processing', 'A');
INSERT INTO enrollment VALUES (123, 'Python'    , 'B');
INSERT INTO enrollment VALUES (123, 'Scratch'   , 'B');
INSERT INTO enrollment VALUES (662, 'Java'      , 'B');
INSERT INTO enrollment VALUES (662, 'Python'    , 'A');
INSERT INTO enrollment VALUES (662, 'JavaScript', 'A');
INSERT INTO enrollment VALUES (662, 'Scratch'   , 'B');
INSERT INTO enrollment VALUES (345, 'Scratch'   , 'A');
INSERT INTO enrollment VALUES (345, 'JavaScript', 'B');
INSERT INTO enrollment VALUES (345, 'Python'    , 'A');
INSERT INTO enrollment VALUES (555, 'Python'    , 'B');
INSERT INTO enrollment VALUES (555, 'JavaScript', 'B');
INSERT INTO enrollment VALUES (213, 'JavaScript', 'A');

/*
1. Use COUNT to compute the total number of each class
2. Use ORDER BY DESC to sort the result in decreasing order
*/

SELECT ClassName,COUNT(*)AS Total
FROM enrollment
GROUP BY ClassName
ORDER BY Total DESC;

-- +------------+-------+
-- | ClassName  | Total |
-- +------------+-------+
-- | Python     |     4 |
-- | JavaScript |     4 |
-- | Scratch    |     3 |
-- | Processing |     1 |
-- | Java       |     1 |
-- +------------+-------+