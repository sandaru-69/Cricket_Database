DELIMITER //
CREATE PROCEDURE addStadium(stadium_name varchar(25), country varchar(25), location varchar(25), capacity int(6))
COMMENT 'Adding new Stadium'
BEGIN
	INSERT INTO Stadium(stadium_name, counrty, location, capacity);
END //
DELIMITER ;
CALL addStadium('Asgiriya Stadium', 'Sri Lanka', 'Kandy', 10000);	

DELIMITER //
CREATE TRIGGER updateWteam_runs
AFTER UPDATE ON Matches
FOR EACH ROW
BEGIN
	UPDATE Matches
	SET Matches.wteam_runs = New.Runs WHERE Matches.wteam_runs = NEW.wteam_runs;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER updateLteam_runs
AFTER UPDATE ON Matches
FOR EACH ROW
BEGIN
	UPDATE Matches
	SET Matches.lteam_runs = New.Runs WHERE Matches.lteam_runs = NEW.lteam_runs;
END //
DELIMITER ;
