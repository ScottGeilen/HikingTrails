USE hike;

DROP PROCEDURE IF EXISTS testingBatch; 
DELIMITER $$ 
CREATE PROCEDURE testingBatch() 
BEGIN 
	DECLARE Counter INT;
    SET Counter=1;
    WHILE (Counter < 99) DO
		INSERT INTO trails (trailName, trailState, trailRegion) VALUES (
			CONCAT(
				ELT(0.5 + RAND() * 11, 'Mountain ','Rock ','Iron ','Lake ','Ultimate ','Amazing ','Sunny ','Mosquito ','Caribou ','Marnie ','Heisenberg '),
				ELT(0.5 + RAND() * 8, 'via ','Scott ','Hike ','Software ','Skyline ','Green ','Saul ',''),
				ELT(0.5 + RAND() * 7, 'Ridge ','Hill ', 'Heisenberg ','Crater ','Moonseed ','Goodman ',''),
				ELT(0.5 + RAND() * 6, 'Trail','Loop','Path','Creek', 'Falls','Peak')
			), 
            ELT(0.5 + RAND() * 50, 'Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming'), 
            CONCAT(
				ELT(0.5 + RAND() * 5, 'National ','Salmon ','Bear ','Garden ','Cumberland '),
				ELT(0.5 + RAND() * 5, 'Historical ','Nature ','Technology ','Historic ',''),
				ELT(0.5 + RAND() * 7, 'Foothills','Reserve','Park','Forest','Woodlands','Wilderness','Recreation Area')
			)
		);
		INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (
			(RAND() * (500-20+1)+20), 
            (RAND() * (9000-150+1)+150), 
            ROUND(RAND() * (50.0-1.50+1)+1.5)
		);
		INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES (
			ELT(0.5 + RAND() * 3, 'Easy','Intermediate','Advanced'), 
			ELT(0.5 + RAND() * 3, 'Loop','Out and back','Point to point'), 
            ROUND(RAND() * (5.0 - 1.5) + 1.5, 1)
		);
		UPDATE trailInfo SET trailRating = ROUND(RAND() * (5-0+1)+0) WHERE trailID = (RAND() * (600-1+1)+1);
		UPDATE trailInfo SET trailRating = ROUND(RAND() * (5-0+1)+0) WHERE trailID = (RAND() * (600-1+1)+1);
		UPDATE trailInfo SET trailRating = ROUND(RAND() * (5-0+1)+0) WHERE trailID = (RAND() * (600-1+1)+1);
        DELETE FROM trailDetails WHERE trailID = (RAND() * (600-1+1)+1);
        DELETE FROM trailInfo WHERE trailID = (RAND() * (600-1+1)+1);
        DELETE FROM trails WHERE trailID = (RAND() * (600-1+1)+1);
        
        SET Counter = Counter+1;
    END WHILE;
END$$ 
DELIMITER ;
CALL testingBatch();

DROP PROCEDURE IF EXISTS updateRatingsBatch; 
DELIMITER $$ 
CREATE PROCEDURE updateRatingsBatch() 
BEGIN 
	DECLARE Counter INT;
    SET Counter=1;
    WHILE (Counter < 99) DO
		UPDATE trailInfo SET trailRating = ROUND(RAND() * (5.0 - 1.5 + 1) + 1.5, 1) WHERE trailID = (RAND() * (1000-1+1)+1);
		UPDATE trailInfo SET trailRating = ROUND(RAND() * (5.0 - 1.5 + 1) + 1.5, 1) WHERE trailID = (RAND() * (1000-1+1)+1);
		UPDATE trailInfo SET trailRating = ROUND(RAND() * (5.0 - 1.5 + 1) + 1.5, 1) WHERE trailID = (RAND() * (1000-1+1)+1);        
        SET Counter = Counter+1;
    END WHILE;
END$$ 
DELIMITER ;
CALL updateRatingsBatch();

#Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails 
#(`hike`.`trailinfo`, CONSTRAINT `trailinfo_ibfk_1` FOREIGN KEY (`trailID`) REFERENCES `trails` (`trailID`))

