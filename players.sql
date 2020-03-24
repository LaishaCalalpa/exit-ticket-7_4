CREATE TABLE players(
    id INTEGER UNIQUE NOT NULL,
    last_name TEXT NOT NULL,
    first_name TEXT NOT NULL,
    position varchar(3),
    jersey INTEGER,
    weight INTEGER NOT NULL,
    height INTEGER NOT NULL,
    dob date NOT NULL
);

INSERT INTO players VALUES(1, 'Fisher', 'Derek', 'QB', 2, 210, 74, 'January 2, 1999');
INSERT INTO players VALUES(2, 'Cunningham', 'Reginald', 'DE', 55, 240, 75, 'April 3, 1998');
INSERT INTO players VALUES(3, 'Jackson', 'Stephen', 'WR', 13, 184, 76, 'October 13, 1998');
INSERT INTO players VALUES(4, 'Colton', 'Ryan', 'K', 81, 238, 76, 'December 12, 1998');
INSERT INTO players VALUES(5, 'Wright', 'Alexander', 'RB', 23, 190, 70, 'March 13, 1999');
INSERT INTO players VALUES(6, 'Smalls', 'Elliot', 'OLB', 33, 215, 69, 'February 23, 1999');

ALTER TABLE players ALTER COLUMN position SET NOT NULL;
ALTER TABLE players ALTER COLUMN jersey SET NOT NULL;
ALTER TABLE players ADD CONSTRAINT jersey_num UNIQUE (jersey);
ALTER TABLE players ADD CONSTRAINT jersey_num_check CHECK ( 0 < jersey AND jersey < 100);
ALTER TABLE players ALTER COLUMN position SET DEFAULT 'ATH';

INSERT INTO players VALUES (7, 'Jamison', 'Zion', default, 12, 285, 80, 'October 25, 2000');
INSERT INTO players VALUES (8, 'Johnson', 'Craig', 'P', 17, 173, 72, 'November 25, 1999');
