SHOW databases;
CREATE DATABASE dave;
USE dave;
CREATE TABLE users(
	id INTEGER PRIMARY KEY auto_increment,
    name TEXT);
CREATE TABLE diary_logs(
	id INTEGER PRIMARY KEY auto_increment,
    user_id INTEGER,
    date TEXT,
    content TEXT);
DESCRIBE users;
DESCRIBE diary_logs;
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-01", "I had a horrible
	fight with OhNoesGuy and I buried my woes in 3 pounds 
    of dark chocolate.");
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-02", "We made up and 
	we're best friends forever and we celebrated with a tub of ice cream.");
UPDATE diary_logs
	SET content = "I had a horrible fight with ohNoesGuy."
	WHERE id=1;
DELETE FROM diary_logs WHERE id=1;
ALTER TABLE diary_logs ADD emotion VARCHAR(255) DEFAULT "unknown";
INSERT INTO diary_logs (user_id, date, content, emotion) VALUES (1, "2015-04-03", "We went
	to Disneyland.", "happy");
SELECT * FROM diary_logs;

