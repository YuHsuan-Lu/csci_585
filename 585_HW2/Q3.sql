CREATE DATABASE Q3DB;
USE Q3DB;
DROP TABLE project;
/*
Since we want the project with the completed status of step 0 and other status to be waited.
In addition, the specification tells that the situation like 'CWCW' won't happen.

Therefore, We can simplify the question by SELECT the project which has status'C'on its step 0
and status'W'on its step 1.
*/


CREATE TABLE project(
  PID CHAR(4),
  Step Integer,
  Project_Status CHAR(1),
  CONSTRAINT PRIMARY KEY(PID, Step)
);


INSERT INTO project VALUES ('P100', 0, 'C');
INSERT INTO project VALUES ('P100', 1, 'W');
INSERT INTO project VALUES ('P100', 2, 'W');
INSERT INTO project VALUES ('P201', 0, 'C');
INSERT INTO project VALUES ('P201', 1, 'C');
INSERT INTO project VALUES ('P333', 0, 'W');
INSERT INTO project VALUES ('P333', 1, 'W');
INSERT INTO project VALUES ('P333', 2, 'W');
INSERT INTO project VALUES ('P333', 3, 'W');

SELECT b.PID
FROM project a , project b
WHERE b.Step=1 AND b.Project_Status='W'
AND a.PID=b.PID AND a.Step = 0 AND a.Project_Status = 'C' ; 

-- result of the testcase
-- +------+
-- | PID  |
-- +------+
-- | P100 |
-- +------+