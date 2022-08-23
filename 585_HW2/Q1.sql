USE Q1DB
DROP TABLE ProjectRoomBookings;

/*
Without considering efficiency, I try to split one schedule into many hour slots.
Instead of having only start_time and end_time, the new table will record the whole time period
occupied by the group.
(e.g. if 'GroupA' uses room 100 a at 9, the table INSERT VALUES(100,9,'GroupA') ) 

Here are the three design points:
1. There's no end_time in the new design table, so this issue will be fixed 
2. Use (ROOM_ID, OCCUPIED_TIME) as the primary keys, duplicate key is not allowed 
thus overlapping is prevented
3. Assume all room is opening from 9 to 17 everyday, students are not allowed to stay after closed.
*/

CREATE TABLE ProjectRoomBookings(
  ROOM_ID INTEGER,
  OCCUPIED_TIME INTEGER,
  GROUP_NAME CHAR(30),
  CONSTRAINT CHECK_OPENING_HOURS CHECK (OCCUPIED_TIME >= 9 AND OCCUPIED_TIME < 17),
  CONSTRAINT CHECK_OCCUPIED_TIME PRIMARY KEY(ROOM_ID, OCCUPIED_TIME)
);
    

INSERT INTO ProjectRoomBookings VALUES (100, 9, 'GroupA');
INSERT INTO ProjectRoomBookings VALUES (100, 10, 'GroupA');
INSERT INTO ProjectRoomBookings VALUES (100, 11, 'GroupA');
INSERT INTO ProjectRoomBookings VALUES (100, 10, 'GroupB');
INSERT INTO ProjectRoomBookings VALUES (100, 11, 'GroupB');
INSERT INTO ProjectRoomBookings VALUES (100, 12, 'GroupC');
INSERT INTO ProjectRoomBookings VALUES (100, 13, 'GroupC');
INSERT INTO ProjectRoomBookings VALUES (100, 8, 'GroupD');
INSERT INTO ProjectRoomBookings VALUES (100, 20, 'GroupD');

SELECT * 
FROM ProjectRoomBookings;

-- +---------+---------------+------------+
-- | ROOM_ID | OCCUPIED_TIME | GROUP_NAME |
-- +---------+---------------+------------+
-- |     100 |             9 | GroupA     |
-- |     100 |            10 | GroupA     |
-- |     100 |            11 | GroupA     |
-- |     100 |            12 | GroupC     |
-- |     100 |            13 | GroupC     |
-- +---------+---------------+------------+