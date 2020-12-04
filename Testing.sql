USE hike;

# Testing trail rating triggers
UPDATE trailInfo SET trailRating = 4.8 WHERE trailID = 1; # old is 4.7
UPDATE trailInfo SET trailRating = 4.7 WHERE trailID = 11; # old is 4.6
UPDATE trailInfo SET trailRating = 4.5 WHERE trailID = 101; # old is 4.4
-- UPDATE trailInfo SET trailRating = 5.5 WHERE trailID = 1; # Passed # old is 4.4

# insertTrailState
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Made Up Trail", "Alabama", "Alabama Foothills Reserve");
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Green Mountain Trail", "Arizona", "Coronado National Forest");
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blue Ridge Mountain Trail", "Virginia", "Virginia Forest Reserve");
-- INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Marshall Gulch Trail #3", "Arizonaa", "Coronado National Forest"); # Passed
-- INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Made Up Trail", "Alamvma", "Alabama Foothills Reserve"); # Passed

# insertTrailDifficulty
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);
-- INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Beginner", "Out and back", 4.6); # Passed

# insertTrailType
-- INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Up and down", 4.3); # Passed
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.5);

