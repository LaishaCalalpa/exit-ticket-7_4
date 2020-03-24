CREATE TABLE players(
    ID INTEGER UNIQUE NOT NULL,
    Last_Name TEXT NOT NULL,
    First_Name TEXT NOT NULL,
    Position varchar(3) NOT NULL DEFAULT 'ATH',
    Jersey_Number INTEGER NOT NULL UNIQUE CHECK (0 < Jersey_Number AND Jersey_Number < 100),
    Weight_lb INTEGER NOT NULL,
    Height_inches INTEGER NOT NULL,
    DOB date NOT NULL
);

INSERT INTO players VALUES(1, 'Fisher', 'Derek', 'QB', 2, 210, 74, 'January 2, 1999');
INSERT INTO players VALUES(2, 'Cunningham', 'Reginald', 'DE', 55, 240, 75, 'April 3, 1998');
INSERT INTO players VALUES(3, 'Jackson', 'Stephen', 'WR', 13, 184, 76, 'October 13, 1998');
INSERT INTO players VALUES(4, 'Colton', 'Ryan', 'K', 81, 238, 76, 'December 12, 1998');
INSERT INTO players VALUES(5, 'Wright', 'Alexander', 'RB', 23, 190, 70, 'March 13, 1999');
INSERT INTO players VALUES(6, 'Smalls', 'Elliot', 'OLB', 33, 215, 69, 'February 23, 1999');
INSERT INTO players VALUES (7, 'Jamison', 'Zion', default, 12, 285, 80, 'October 25, 2000');
INSERT INTO players VALUES (8, 'Johnson', 'Craig', 'P', 17, 173, 72, 'November 25, 1999');
