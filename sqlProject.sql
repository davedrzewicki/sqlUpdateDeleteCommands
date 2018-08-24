/* CREATE DATABASE dave; */
USE dave;
CREATE TABLE test(
	id INTEGER PRIMARY KEY auto_increment,
    geom TEXT,
    result ENUM('Pass', 'Fail')
);
DESCRIBE test;
INSERT INTO test (geom, result) VALUES ("disk", "Pass");
INSERT INTO test (geom, result) VALUES ("head", "Pass");
INSERT INTO test (geom, result) VALUES ("flange", "Fail");
INSERT INTO test (geom, result) VALUES ("shell", "Fail");

UPDATE test
	SET result = "Pass"
	WHERE geom="flange" AND result="Fail" LIMIT 1;

DELETE FROM test WHERE geom="disk" LIMIT 1;

SELECT * FROM test;

