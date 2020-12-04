USE hike;
#DROP TABLE changes_for_rating;

DROP TRIGGER IF EXISTS updateTrailRating;
DELIMITER $$ 
	CREATE TRIGGER updateTrailRating BEFORE UPDATE ON trailInfo FOR EACH ROW BEGIN 
    DECLARE errorRating VARCHAR(255); 
    SET errorRating = CONCAT('The new trail rating ', NEW.trailRating, ' needs to have a value between 0.0 and 5.0.');
    IF NEW.trailRating NOT BETWEEN 0.0 AND 5.0 
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorRating; 
    END IF; 
    END$$ 
DELIMITER ;

DROP TRIGGER IF EXISTS updateTrailRatingLog;
DELIMITER $$ 
	CREATE TRIGGER updateTrailRatingLog BEFORE UPDATE ON trailInfo FOR EACH ROW BEGIN 
    IF NEW.trailRating BETWEEN 0.0 AND 5.0 THEN INSERT INTO changes_for_rating (trailID, beforeRating, afterRating, changedAt) VALUES (OLD.trailID, OLD.trailRating, NEW.trailRating, NOW());
    END IF; 
    END$$ 
DELIMITER ;

# INSERTS
DROP TRIGGER IF EXISTS insertTrailState;
DELIMITER $$ 
	CREATE TRIGGER insertTrailState AFTER INSERT ON trails FOR EACH ROW BEGIN 
    DECLARE errorInsertTrailState VARCHAR(255); 
    SET errorInsertTrailState = CONCAT('The inserted U.S. state ', NEW.trailState, ' needs to be a valid U.S. state.');
    IF NEW.trailState NOT IN('Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming')
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorInsertTrailState; 
    END IF; 
    END$$ 
DELIMITER ;

DROP TRIGGER IF EXISTS insertTrailStateLog;
DELIMITER $$ 
	CREATE TRIGGER insertTrailStateLog AFTER INSERT ON trails FOR EACH ROW BEGIN 
    IF NEW.trailState IN('Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming')
		THEN INSERT INTO inserts_for_state (trailID, insertedTrailState, changedAt) VALUES (NEW.trailID, NEW.trailState, NOW());
    END IF; 
    END$$ 
DELIMITER ;

DROP TRIGGER IF EXISTS insertTrailDifficulty;
DELIMITER $$ 
	CREATE TRIGGER insertTrailDifficulty AFTER INSERT ON trailInfo FOR EACH ROW BEGIN 
    DECLARE errorInsertTrailDifficulty VARCHAR(255); 
    SET errorInsertTrailDifficulty = CONCAT('The inserted trail difficulty ', NEW.trailDifficulty, ' needs to be either Easy, Intermediate, or Advanced.');
    IF NEW.trailDifficulty NOT IN('Easy', 'Intermediate', 'Advanced')
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorInsertTrailDifficulty; 
    END IF; 
    END$$ 
DELIMITER ;

DROP TRIGGER IF EXISTS insertTrailDifficultyLog;
DELIMITER $$ 
	CREATE TRIGGER insertTrailDifficultyLog AFTER INSERT ON trailInfo FOR EACH ROW BEGIN 
    IF NEW.trailDifficulty IN('Easy', 'Intermediate', 'Advanced')
		THEN INSERT INTO inserts_for_difficulty (trailID, insertedTrailDifficulty, changedAt) VALUES (NEW.trailID, NEW.trailDifficulty, NOW());
    END IF; 
    END$$ 
DELIMITER ;

DROP TRIGGER IF EXISTS insertTrailType;
DELIMITER $$ 
	CREATE TRIGGER insertTrailType AFTER INSERT ON trailInfo FOR EACH ROW BEGIN 
    DECLARE errorInsertTrailType VARCHAR(255); 
    SET errorInsertTrailType = CONCAT('The inserted trail type ', NEW.trailType, ' needs to be either Loop, Out and back, or Point to point.');
    IF NEW.trailType NOT IN('Loop','Out and back','Point to point')
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorInsertTrailType; 
    END IF; 
    END$$ 
DELIMITER ;

DROP TRIGGER IF EXISTS insertTrailTypeLog;
DELIMITER $$ 
	CREATE TRIGGER insertTrailTypeLog AFTER INSERT ON trailInfo FOR EACH ROW BEGIN 
    IF NEW.trailType IN('Loop','Out and back','Point to point') THEN INSERT INTO inserts_for_type (trailID, insertedTrailType, changedAt) VALUES (NEW.trailID, NEW.trailType, NOW());
    END IF; 
    END$$ 
DELIMITER ;