-- create the database
DROP DATABASE IF EXISTS HIKE;
CREATE DATABASE HIKE;

-- select the database
USE HIKE;

CREATE TABLE trails (
	trailID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	trailName varchar(96) NOT NULL,
    trailState varchar(24) NOT NULL,
	trailRegion varchar(64) NOT NULL
);
CREATE TABLE trailDetails (
	trailID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    trailDurationMin int NOT NULL,
    trailElevationFt int NOT NULL,
    trailLengthMi float NOT NULL,
    FOREIGN KEY (trailID) REFERENCES trails(trailID)
);
CREATE TABLE trailInfo (
	trailID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	trailDifficulty varchar(20) NOT NULL,
	trailType varchar(20) NOT NULL,
    trailRating float NOT NULL,
    FOREIGN KEY (trailID) REFERENCES trails(trailID)
);

CREATE TABLE changes_for_rating (
	id INT AUTO_INCREMENT PRIMARY KEY,
    trailID INT,
    beforeRating FLOAT,
    afterRating FLOAT,
    changedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE inserts_for_state (
	id INT AUTO_INCREMENT PRIMARY KEY,
    trailID INT,
    insertedTrailState VARCHAR(24),
    changedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE inserts_for_difficulty (
	id INT AUTO_INCREMENT PRIMARY KEY,
    trailID INT,
    insertedTrailDifficulty VARCHAR(24),
    changedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE inserts_for_type (
	id INT AUTO_INCREMENT PRIMARY KEY,
    trailID INT,
    insertedTrailType VARCHAR(20),
    changedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
#---------------------------------------------------------
# Alabama Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sougahoagdee Falls", "Alabama", "William B Bankhead National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 436, 4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Alabama Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Alum Hollow Trail", "Alabama", "Green Mountain Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (62, 213, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Alabama Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Little River Canyon", "Alabama", "Little River Canyon National Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (33, 190, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Alabama Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Overlook Trail via Quarry Trail", "Alabama", "Ruffner Mountain Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (113, 383, 2.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Alabama Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pulpit Rock Trail", "Alabama", "Cheaha State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (15, 118, 0.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Alabama Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cave Creek Trail from Cheaha Trailhead", "Alabama", "Cheaha State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (207, 1105, 6.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Alabama Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cane Creek Canyon Nature Preserve", "Alabama", "Cane Creek Canyon Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (238, 974, 8.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.9);

# Alabama Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Chinnabee Silent Trail", "Alabama", "Cheaha Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (212, 892, 7.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Alabama Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Borden Creek Hiking Trail", "Alabama", "Sipsey Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (126, 196, 4.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Alabama Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Kings Chair Loop", "Alabama", "Oak Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (131, 734, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Alabama Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Walls of Jericho Trail", "Alabama", "Scottsboro, Alabama");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (337, 1699, 9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.5);

# Alabama Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Skyway Loop Trail", "Alabama", "Talladega National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (467, 2949, 17.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.1);

# Alabama Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Big Tree Short Cut Loop and Needles Eye", "Alabama", "Sipsey Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (227, 823, 8.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Alabama Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("James M. Scott Deadening Alpine Trail", "Alabama", "Dadeville, Alabama");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (110, 580, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Alabama Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Monte Sano State Park", "Alabama", "Monte Sano State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (280, 1312, 10);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.3);

#---------------------------------------------------------
# Alaska Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Winner Creek Trail", "Alaska", "Chugach National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (203, 1204, 6.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Alaska Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Thunderbird Falls Trail", "Alaska", "Chugach National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (56, 301, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Alaska Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bryson Glacier Trail", "Alaska", "Chugach State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (109, 777, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Alaska Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Exit Glacier Trail", "Alaska", "Kenai Fjords National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (56, 429, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.9);

# Alaska Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Horseshoe Lake Trail", "Alaska", "Denali National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (67, 393, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.9);

# Alaska Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Flattop Mountain Trail", "Alaska", "Chugach State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (138, 1430, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Alaska Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Baldy via Blacktail Rocks Trail", "Alaska", "Chugach State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (190, 1522, 5.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Alaska Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rabbit Lake Trail", "Alaska", "Chugach State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (269, 1440, 8.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Alaska Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("South Fork Eagle River Trail", "Alaska", "Chugach National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (322, 1558, 10.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Alaska Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Portage Pass Trail", "Alaska", "Chugach National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 1433, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# Alaska Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Harding Ice Field Trail", "Alaska", "Kenai Fjords National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (389, 3812, 8.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

# Alaska Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Reed Lakes Trail", "Alaska", "Sutton, Alaska");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (301, 2247, 8.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Alaska Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Healy Overlook Trail", "Alaska", "Denali National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (206, 2417, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# Alaska Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wolverine Peak Trail", "Alaska", "Chugach State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (352, 3622, 8.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Alaska Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bird Ridge Trail", "Alaska", "Chugach State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (242, 3218, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

#---------------------------------------------------------
# Arizona Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("West Fork Trail Oak Creek", "Arizona", "Red Rock Secret Mountain Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (207, 820, 7.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);
  
# Arizona Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Horseshoe Bend Trail", "Arizona", "Glen Canyon National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (335, 380, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);
  
# Arizona Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grand Canyon Rim: Mules to Mather Point", "Arizona", "Grand Canyon National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (127, 367, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);
 
# Arizona Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Seven Sacred Pools via Soldier Pass Trail", "Arizona", "Sedona");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (31, 108, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);
  
# Arizona Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Teacup Trail to Coffeepot Rock", "Arizona", "Coconino National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (56, 275, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);
  
# Arizona Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Devil's Bridge Trail", "Arizona", "Coconino National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (124, 564, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);
  
# Arizona Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cathedral Rock Trail", "Arizona", "Coconino National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (59, 744, 1.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);
  
# Arizona Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hieroglyphic Trail", "Arizona", "Superstition Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (91, 567, 2.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);
  
# Arizona Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Peralta Trail to Fremont Saddle", "Arizona", "Supersition Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (204, 1568, 5.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);
 
# Arizona Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pinnacle Peak Trail", "Arizona", "Pinnacle Peak Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (132, 1003, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);
  
# Arizona Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Piestewa Peak Summit Trail", "Arizona", "Phoenix Mountain Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (100, 1151, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);
  
# Arizona Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Camelback Mountain via Echo Canyon Trail", "Arizona", "Echo Canyon Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (60, 1414, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);
  
# Arizona Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tom's Thumb Trail", "Arizona", "McDowell Sonoran Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (147, 1236, 4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Arizona Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Humphrey's Peak", "Arizona", "Kachina Peaks Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (390, 3353, 10.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);
  
# Arizona Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bear Mountain Trail", "Arizona", "Coconino National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (199, 1975, 4.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

#---------------------------------------------------------
# Arkansas Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tanyard Loop", "Arkansas", "Tanyard Creek Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (59, 150, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Arkansas Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Kings River Falls Trail", "Arkansas", "Ozark National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (46, 72, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Arkansas Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Triple Falls Trail", "Arkansas", "Buffalo National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (7, 13, 0.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.0);

# Arkansas Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mirror Lake Trail", "Arkansas", "Blanchard Springs Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (30, 78, 1.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Arkansas Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("White Rock Rim Trail", "Arkansas", "Ozark National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (55, 164, 2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Arkansas Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Whitaker Point Trail (Hawksbill Crag)", "Arkansas", "Ozark National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (87, 413, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# Arkansas Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lost Valley Trail", "Arkansas", "Buffalo National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (61, 242, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Arkansas Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Glory Hole Waterfall Trail", "Arkansas", "Ozark National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (59, 387, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Arkansas Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Devil's Den Trail", "Arkansas", "Devil's Den State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (38, 157, 1.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Arkansas Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Yellow Rock Trail", "Arkansas", "Devil's Den State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (86, 511, 2.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Arkansas Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Centerpoint to Goat Trail", "Arkansas", "Buffalo National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (186, 1076, 5.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Arkansas Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Eagle Rock Loop", "Arkansas", "Ouachita National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (2880, 4005, 28.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Arkansas Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hemmed in Hollow Trail", "Arkansas", "Buffalo National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (190, 1404, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Arkansas Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pinnacle Mountain West Summit Trail", "Arkansas", "Pinnacle Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (30, 725, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Arkansas Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Indian Creek Trail", "Arkansas", "Buffalo National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (129, 751, 5.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.2);

#---------------------------------------------------------
# California Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Eaton Canyon Trail", "California", "Eaton Canyon Natural Area Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 436, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.2);

# California Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lower Yosemite Falls Trail", "California", "Yosemite National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (28, 59, 1.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.2);

# California Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hidden Falls Trail", "California", "Hidden Falls Regional Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (97, 475, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# California Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Escondido Falls Trail", "California", "Escondido Canyon Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (115, 626, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 3.8);

# California Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Torry Pines Beach Trail Loop", "California", "Torry Pines State Natural Reserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (70, 364, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# California Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bridge to Nowhere via East Fork Trail", "California", "Angeles National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (233, 1391, 9.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# California Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Alamere Falls via Coast Trail from Palomarin Trailhead", "California", "Point Reyes National Seashore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (413, 1955, 13.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.1);

# California Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Iron Mountain Trail", "California", "Poway, California");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (170, 1102, 5.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# California Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Vernal Falls", "California", "Y?osemite National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (136, 1279, 4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# California Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Solstice Canyon Loop", "California", "Santa Monica Mountains National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (110, 797, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# California Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Vernal and Nevada Falls via the Mist Trail", "California", "Yosemite National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (301, 2191, 8.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# California Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Potato Chip Rock via Mt. Woodson Trail", "California", "Lake Poway Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (242, 2112, 7.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# California Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mission Peak Loop from Stanford Avenue", "California", "Mission Peak Regional Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (227, 2135, 5.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

# California Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Tallac Trail", "California", "Desolation Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (383, 3330, 10.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# California Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Upper Yosemite Falls Trail", "California", "Yosemite National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (303, 3175, 7.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

#---------------------------------------------------------
# Colorado Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Red Rocks Trading Post Trail", "Colorado", "Red Rocks Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (51, 357, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Colorado Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Forsynthe Canyon to Waterfall and Gross Reservoir", "Colorado", "Roosevelt National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (69, 387, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.5);

# Colorado Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Palmer, Buckskin-Charlie, Niobrara and Bretag Trail Loop", "Colorado", "Garden of the Gods");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (97, 449, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Colorado Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lily Pad Lake Trail", "Colorado", "Eagles Nest Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (96, 396, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Colorado Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Cutler Trail", "Colorado", "North Cheyenne Cañon Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (60, 472, 1.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.9);

# Colorado Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Chavez and Beaver Brook Trail Loop", "Colorado", "Genesee Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (168, 1105, 5.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.1);

# Colorado Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lost Lake via Hessie Trail", "Colorado", "Roosevelt National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (97, 807, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.4);

# Colorado Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Herman Gulch Trail", "Colorado", "Arapaho National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (229, 1781, 7.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Colorado Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maxwell Falls Lower Trail", "Colorado", "Arapaho National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (137, 875, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Colorado Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Isabell via Pawnee Pass Trail", "Colorado", "Brainard Lake Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (176, 734, 7.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# Colorado Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Bierstadt Trail", "Colorado", "Mount Evans Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (242, 2782, 7.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Colorado Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Royal Arch Trail", "Colorado", "Boulder Open Space");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (157, 1492, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Colorado Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Quandary Peak Trail", "Colorado", "White River National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (297, 3339, 7.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

# Colorado Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grays and Torrey's Peak", "Colorado", "Arapaho National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (355, 3684, 9.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Colorado Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Spruce Creek Trail to Mohawk Lake Trail", "Colorado", "Arapaho National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (257, 2080, 8.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

#---------------------------------------------------------
# Connecticut Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wadsworth Falls", "Connecticut", "Wadsworth Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (89, 387, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.2);

# Connecticut Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bluff Point State Park and Coastal Reserve Trail", "Connecticut", "Bluff Point State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (94, 170, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Connecticut Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sleep Giant Tower Trail", "Connecticut", "Sleeping Giant State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 616, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Connecticut Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bee Brook Loop", "Connecticut", "Hidden Valley Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (62, 288, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Connecticut Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Buckingham Reservoir Trail", "Connecticut", "Case Mountain Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (75, 190, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Connecticut Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bear Mountain Trail", "Connecticut", "Mount Riga State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (217, 1702, 6.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Connecticut Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ragged Mountain Blue and Red Blazed Loop", "Connecticut", "Ragged Mountain Memorial Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (166, 816, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Connecticut Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mirror Lake, Castle Craig, Merimere Reservoir Loop", "Connecticut", "Hubbard Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (139, 797, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Connecticut Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Chauncey Peak Trail", "Connecticut", "Giuffrida Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (67, 351, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Connecticut Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Talcott Mountain Trail", "Connecticut", "Talcott Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (60, 0, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Connecticut Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sleeping Giant Head Blue and Violet Loop Trail", "Connecticut", "Sleeping Giant State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (254, 1692, 8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.2);

# Connecticut Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Macedonia Brook Loop", "Connecticut", "Macedonia Brook State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (235, 1735, 6.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.3);

# Connecticut Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Breakneck Pond Loop Trail", "Connecticut", "Bigelow Hollow State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (145, 216, 6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# Connecticut Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hemlock Hills & Pine Mountain Trail", "Connecticut", "Ridgefield, Connecticut");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (229, 1174, 7.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.3);

# Connecticut Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sleep Giant Blue, White and Yellow Trail", "Connecticut", "Sleeping Giant State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (150, 1190, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

#---------------------------------------------------------
# Delaware Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gordons Pond Trail", "Delaware", "Cape Henlopen State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (127, 42, 5.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Delaware Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Swamp Forest Trail", "Delaware", "Lums Pond State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (171, 157, 6.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Delaware Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Killens Pond Loop Trail", "Delaware", "Killens Pond State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (66, 82, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Delaware Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Prickly Pear Trail Loop", "Delaware", "Delaware Seashore State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (85, 22, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Delaware Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("New Castle Industrial Track Greenway", "Delaware", "Wilmington, Delaware");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (348, 183, 14.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.1);

# Delaware Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Alapocas Woods Trail", "Delaware", "Alapocas Woods Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (53, 229, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.1);

# Delaware Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Beaver Valley Loop", "Delaware", "First State National Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (127, 698, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Delaware Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lenape Loop South, Middle Run Natural Area", "Delaware", "Middle Run Valley Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (111, 374, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.0);

# Delaware Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rocky Run Loop", "Delaware", "Brandywine Creek State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (88, 272, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Delaware Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Chestnut Hill Trail", "Delaware", "White Clay Creek State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (91, 272, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Delaware Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Naylor Mill Forest MTB Trail", "Delaware", "Delmar, Delaware");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (125, 118, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.2);

#---------------------------------------------------------
# Florida Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wekiwa Springs Orange Trail", "Florida", "Wekiwa Springs State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (161, 216, 6.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Florida Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Econ River Wilderness Area Loop", "Florida", "Econ River Wilderness Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (64, 39, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Florida Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Robinson's Presserve Trail", "Florida", "Cortez, Florida");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (183, 49, 7.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Florida Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Shark Valley Trail", "Florida", "Everglades National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (382, 22, 15.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Florida Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Banyard Trail and Seminole Trail", "Florida", "Hillsborough River State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (136, 82, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Florida Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pine Island East Loop Trail", "Florida", "Shingle Creek");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (83, 13, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 3.3);

# Florida Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Santos and Vortex Area Bike Trails Loop", "Florida", "Marjorie Harris Carr Cross Florida Greenway");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (115, 98, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Florida Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Split Oak Forest Green Trail", "Florida", "Split Oak Forest Wildlift And Environmental Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (83, 13, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Florida Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Little Talbot Island Hiking Trail", "Florida", "Little Talbot Island State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 72, 4.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Florida Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("St. Francis Trail", "Florida", "Ocala National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (191, 72, 7.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 3.2);

# Florida Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Little Big River, Digbat, Ditch of Doom and Flagler Trail", "Florida", "Little Big Econ State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (233, 194, 9.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Florida Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Florida Trail: Ocala National Forest", "Florida", "Ocala National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (4320, 1807, 67.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.2);

# Florida Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Florida Trail - Eglin East", "Florida", "Eglin Air Force Base");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (4320, 2093, 41.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.6);

# Florida Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pott's Preserve: Florida Trail", "Florida", "Inverness, Florida");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (302, 85, 9.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.0);

# Florida Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Louisa Park Loop", "Florida", "Clermont, Florida");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (352, 295, 14.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 3.7);

#---------------------------------------------------------
# Georgia Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dukes Creek Trail", "Georgia", "Chattahoochee-Oconee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (69, 337, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# Georgia Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Anna Ruby Falls Trail", "Georgia", "Tray Mountain Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (27, 187, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Georgia Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Iron Hill Trail", "Georgia", "Red Top Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (88, 141, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Georgia Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Providence Canyon Perimeter Loop Trail", "Georgia", "Providence Canyon State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (61, 252, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Georgia Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Indian Seats Trail", "Georgia", "Sawnee Mountain Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (48, 278, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.2);

# Georgia Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Raven Cliff Falls Trail", "Georgia", "Raven Cliffs Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (139, 564, 5.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Georgia Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("West Rim Loop Trail", "Georgia", "Cloudland Canyon State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (146, 731, 4.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Georgia Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Amicalola Falls via East Ridge Loop Trail", "Georgia", "Amicalola Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (80, 784, 2.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Georgia Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Vickery Creek Trail", "Georgia", "Chattahoochee River National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (96, 337, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Georgia Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("East Palisades Trail and Bamboo Forest", "Georgia", "");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (80, 452, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.2);

# Georgia Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Yonah Trail", "Georgia", "Chattahoochee-Oconee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (98, 1443, 4.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Georgia Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blood Mountain and Freeman Loop Trail", "Georgia", "Vogel State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (210, 1545, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Georgia Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Neels Gap to Blood Mountain", "Georgia", "Cohutta Wildlife Management Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (163, 1463, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Georgia Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gahuti Blackcountry Trail", "Georgia", "Fort Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (256, 1551, 8.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Georgia Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Appalachian Approach Trail", "Georgia", "Amicalola Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (551, 4160, 17.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

#---------------------------------------------------------
# Hawaii Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Makapu'u Point Lighthouse Trail", "Hawaii", "Waimanalo, Oahu, Hawaii");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (81, 505, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Hawaii Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ka'ena Point via Farrington Highway", "Hawaii", "Ka'ena Point State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (130, 226, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Hawaii Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Likeke Falls Trail", "Hawaii", "Nu'eanu Pali State Wayside");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (28, 206, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Hawaii Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maha'ulepu Heritage Trail: Shipwreck Beach to Punahoa Point", "Hawaii", "Koloa, Kauai, Hawaii");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 318, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Hawaii Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Judd Trail", "Hawaii", "Round Top Forest Reserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (31, 157, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Hawaii Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Kuliouou Ridge Trail", "Hawaii", "Kuliouou forest Reserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (163, 1624, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Hawaii Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Aiea Loop Trail", "Hawaii", "Keaiwa Heiau State Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 1230, 4.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Hawaii Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Kaiwa Ridge (Lanikai Pillbox) Trail", "Hawaii", "Kailua Beach Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (70, 649, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Hawaii Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Waihe'e Ridge Trail", "Hawaii", "West Maui forest Reserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (158, 1574, 3.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# Hawaii Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maunawili Falls Trail", "Hawaii", "Waimanalo Forest Reserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (99, 1007, 2.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Hawaii Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Koko Crater Trail", "Hawaii", "Koko Crater Regional Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (84, 990, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# Hawaii Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Olomana Trail", "Hawaii", "Mount Olomana State Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (177, 1738, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Hawaii Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ka'au Crater", "Hawaii", "Round Top Forest Reserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (266, 2211, 7.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Hawaii Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hanakapi'ai Falls Trail", "Hawaii", "Na Pali Coast State Wilderness Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (286, 2293, 8.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Hawaii Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Na Pali coast (Kalalau) Trail", "Hawaii", "Na Pali Coast State Wilderness Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (660, 6177, 22.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

#---------------------------------------------------------
# Idaho Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tubbs Hill", "Idaho", "Tubbs Hill Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (48, 288, 2.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Idaho Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Revett Lake", "Idaho", "Idaho Panhandle National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (109, 718, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.9);

# Idaho Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Fishhook Creek Trail", "Idaho", "Sawtooth National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (117, 275, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Idaho Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cress Creek Trail", "Idaho", "Ririe, Idaho");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (37, 252, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.2);

# Idaho Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Jump Creek Falls Trail", "Idaho", "Jump Creek Recreation Site");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (19, 98, 0.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 3.9);

# Idaho Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sawtooth Lake", "Idaho", "Sawtooth National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (318, 1873, 10);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Idaho Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mineral Ridge National Recreation Trail", "Idaho", "Idaho Panhandle National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (87, 649, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Idaho Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stack Rock Trail", "Idaho", "Boise National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (262, 1227, 10.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Idaho Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Table Rock Trail", "Idaho", "Quarry View Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (126, 895, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Idaho Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Goldbug (Elk Bend) Hot Springs", "Idaho", "Salmon National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (123, 958, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Idaho Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Scotchman Peak Trail", "Idaho", "Kaniksu National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (332, 3664, 7.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Idaho Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tin Cup Hiker", "Idaho", "Sawtooth National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (556, 3169, 17.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

# Idaho Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Goat Lake and Goat Falls via Iron Creek Trail, Alpine Way Trail", "Idaho", "Sawtooth Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (268, 1788, 8.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Idaho Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stevens Lakes Trail", "Idaho", "Idaho Panhandle National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (195, 1824, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Idaho Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Borah Trail", "Idaho", "Salmon National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (378, 5301, 8.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

#---------------------------------------------------------
# Illinois Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Waterfall Glen Trail", "Illinois", "Waterfall Glen Forest Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (241, 396, 9.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Illinois Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Garden of the Gods Observation Trail", "Illinois", "Garden of the Gods Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (14, 39, 0.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Illinois Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Busse Woods Loop Trail", "Illinois", "Ned Brown Forest Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (185, 101, 7.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Illinois Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Indian Point Trail", "Illinois", "Garden of the Gods Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (60, 291, 2.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Illinois Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Giant City Nature Trail", "Illinois", "Giant City State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (31, 160, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Illinois Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Little Grand Canyon Trail", "Illinois", "Shawnee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (72, 459, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Illinois Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Salt Lick and Johnson Trail Loop", "Illinois", "Salt Lick Trails Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (98, 452, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Illinois Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dells Canyon and Bluff Trail", "Illinois", "Matthiessen State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (57, 206, 2.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Illinois Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Starved Rock and Sandstone Point Overlook Trail", "Illinois", "Starved Rock State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (117, 337, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.2);

# Illinois Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sag Valley Yellow Trail Loop", "Illinois", "Swallow Cliff Woods");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (200, 410, 7.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Illinois Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sentinel, Sunset, and Pine Trail", "Illinois", "Mississippi Palisades State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (156, 1095, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.4);

# Illinois Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Whiskey Cave Loop Trail", "Illinois", "Garden of the Gods Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (197, 990, 6.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.0);

# Illinois Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("High Knob To Twin Towers Loop Trail", "Illinois", "Shawnee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (190, 1040, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.2);

# Illinois Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Owl Bluff Loop Trail", "Illinois", "Lusk Creek Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (220, 820, 9.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 3.5);

#---------------------------------------------------------
# Indiana Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Camp Creek and Fall Creek Trails Loop", "Indiana", "Fort Harrison State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (64, 124, 2.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Indiana Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("West Beach - Dune Succession Trail", "Indiana", "Indiana Dunes National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (30, 95, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.1);

# Indiana Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Yellowwood Lake Trail", "Indiana", "Yellowwood State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (121, 364, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Indiana Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("South Overlook Waterfowl Sanctuary Trail", "Indiana", "Eagle Creek Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (63, 134, 2.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Indiana Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ogle Lake Trail 7", "Indiana", "Brown County State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (30, 36, 1.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Indiana Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Clifty Falls, Hoffman Falls, Tunnel Falls", "Indiana", "Clifty Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (216, 1164, 7.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Indiana Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cowles Bog Trail", "Indiana", "Indiana Dunes National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (112, 213, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Indiana Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hemlock Cliffs National Scenic Trail", "Indiana", "Hoosier National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (35, 147, 1.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Indiana Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Turkey Run Trail 5, 9, 3, 10, 4, 8, and 1", "Indiana", "Turkey Run State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (174, 721, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Indiana Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Low Gap Trail", "Indiana", "Morgan Monroe State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (297, 1190, 10.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Indiana Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Three Lakes Trail", "Indiana", "Morgan Monroe State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (226, 1105, 9.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Indiana Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Adventure Hiking Trail", "Indiana", "O'Bannon Woods State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (680, 3845, 21.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.3);

# Indiana Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Falls Canyon Trail", "Indiana", "McCormicks Creek State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (140, 534, 4.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# Indiana Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Knobstone Trail: Dream Lake to Bartle Knob Road", "Indiana", "Dream Lake State Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (376, 2007, 12.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.4);

# Indiana Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Knobstone Trail", "Indiana", "Jackson Washington State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (4320, 7352, 41.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.3);

#---------------------------------------------------------
# Iowa Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maquoketa Caves Loop", "Iowa", "Maquoketa Caves State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (53, 288, 1.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Iowa Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cedar Cliff Trail", "Iowa", "Palisades-Kepler State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (59, 216, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Iowa Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blue Heron Lake Loop Trail", "Iowa", "Raccoon River Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (81, 26, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Iowa Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Chute and Heritage Trail Loop", "Iowa", "Hitchcock Nature Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (77, 521, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Iowa Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("High Trestle Trail", "Iowa", "Big Creek State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (621, 426, 25.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Point to point", 4.8);

# Iowa Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wildcat Den Trail", "Iowa", "Wildcat Den State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (117, 495, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Iowa Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Squire Shore, Weasel Run, Mushroom Forest Trail", "Iowa", "coralville Dam Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (135, 364, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Iowa Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Brown's Woods Trail", "Iowa", "West Des Moines, Iowa");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (86, 213, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Iowa Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Horseshoe Bluff Nature Trail", "Iowa", "Mines Of Spain Easement");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (27, 118, 0.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Iowa Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("West Lake and East Lake Trail Loop", "Iowa", "Backbone State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (178, 626, 6.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Iowa Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hitchcock Nature Center Loop Trail", "Iowa", "Hitchcock Nature Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (204, 1269, 6.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Iowa Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Brent's Trail", "Iowa", "Loess Hills State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (262, 1646, 8.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.5);

#---------------------------------------------------------
# Kansas Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Turkey Creek Streamway Trail", "Kansas", "Antioch Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (181, 187, 7.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 3.9);

# Kansas Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Indian Creek Bike and Hike Trail", "Kansas", "Olathe, Kansas");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (556, 311, 22.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Point to point", 4.4);

# Kansas Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tomahawk Creek Trail", "Kansas", "Leawood, Kansas");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (461, 524, 18.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Kansas Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Horse Thief Trail", "Kansas", "Kanopolis Lake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (52, 141, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.1);

# Kansas Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Konza Godwin Hill Loop Trail", "Kansas", "Konza Prairie Natural Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (166, 459, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Kansas Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Elk River Hiking Trail", "Kansas", "Elk City State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (376, 866, 14.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Point to point", 4.4);

# Kansas Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Konza Prairie Kings Creek Loop Trail", "Kansas", "Konza Prairie Natural Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (127, 396, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Kansas Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Shawnee Mission Park Orange, Violet, and Red Trail", "Kansas", "Shawnee Mission Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (177, 498, 6.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.1);

# Kansas Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gary L. Haller National Recreation Trail", "Kansas", "Mill Creek Streamway Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (335, 406, 13.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Point to point", 4.9);

# Kansas Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wyandotte County Lake Loop Trail", "Kansas", "Wyandotte County Lake Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (287, 1289, 9.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.0);

#---------------------------------------------------------
# Kentucky Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sky Bridge Red River Gorge", "Kentucky", "Daniel Boone National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (28, 216, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Kentucky Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Original Natural Bridge Trail", "Kentucky", "Natural Bridge State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (45, 406, 1.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Kentucky Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Chimney Top Trail", "Kentucky", "Daniel Boone National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (16, 88, 0.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.5);

# Kentucky Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Princess Falls via Sheltowee Trace Trail", "Kentucky", "Daniel Boone National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (62, 95, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# Kentucky Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Princess Arch Trail", "Kentucky", "Pine Ridge, Kentucky");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (19, 104, 0.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Kentucky Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dog Slaughter Falls Trail", "Kentucky", "Cumberland Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (72, 223, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# Kentucky Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Van Hook Falls Cane Creek Valley", "Kentucky", "Daniel Boone National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (163, 626, 5.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Kentucky Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gray's Arch Trail Loop", "Kentucky", "Daniel Boone National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (69, 580, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Kentucky Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cumberland Falls via Eagle Falls Trail", "Kentucky", "Cumberland Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (46, 633, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Kentucky Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Red River Gorge: Rock Bridge Trail", "Kentucky", "Clifty Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (143, 311, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Kentucky Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cloud Splitter Short Cut Trail", "Kentucky", "Daniel Boon National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (43, 416, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Kentucky Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Eagle's Nest Trail", "Kentucky", "Clifty Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (112, 547, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Kentucky Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Indian Staircase and Adena Arch Loop", "Kentucky", "Daniel Boone National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (81, 626, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Kentucky Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Siltstone Trail", "Kentucky", "Tom Wallace Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (382, 2211, 12.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Kentucky Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pilot Knob and Sage Point Loop", "Kentucky", "Pilot Knob State Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (97, 1131, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.3);

#---------------------------------------------------------
# Louisiana Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Palmetto, Bayou Coquille and March Overlook", "Louisiana", "Jean Lafitte National Historical Park and Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 19, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Louisiana Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cane Bayou", "Louisiana", "Fontainebleau State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (91, 42, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.2);

# Louisiana Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Boy Scout Road", "Louisiana", "Big Branch Marsh National Wildlift Refuge");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (119, 19, 4.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 3.8);

# Louisiana Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tammany Trace Trail", "Louisiana", "Covington, Louisiana");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (660, 95, 27.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Piont to point", 4.5);

# Louisiana Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Moonseed Loop", "Louisiana", "Acadiana Park Nature Station");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (106, 62, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 3.8);

# Louisiana Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bogue Chitto State Park Gorge Run Trail", "Louisiana", "Bogue Chitto State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (138, 239, 5.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Louisiana Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Comite Park Trail", "Louisiana", "Comite River Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (122, 85, 4.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.0);

# Louisiana Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Chicot Loop Trail", "Louisiana", "Chicot State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (448, 744, 17.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Louisiana Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lakeshore Mountain Bike Trail", "Louisiana", "Shreveport, Louisiana");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (127, 285, 4.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 5.0);

# Louisiana Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tunica Hills C Trail", "Louisiana", "Tunica Hills State Wildlift Management Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (100, 311, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 3.7);

#---------------------------------------------------------
# Maine Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ocean Path Trail: Thunder Hole and Monument Cove", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (124, 374, 4.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Maine Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Thunder Hole to Sand Beach", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (42, 180, 1.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Maine Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cadillac Summit Loop Trail", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (9, 52, 0.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Maine Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ship Harbor Trail", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (34, 65, 1.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Maine Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cliff Trail", "Maine", "Town of Harpswell");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (61, 262, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Maine Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cadillac North Ridge Trail", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (142, 1118, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Maine Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Jordan Pond Full Loop Trail", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (86, 95, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Maine Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ocean Path and Gorham Mountain Loop Trail", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (99, 597, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Maine Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cadillac Mountain South Ridge Trail Loop", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (256, 2283, 8.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Maine Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gorham Mountain", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (56, 429, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Maine Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Beehive Loop Trail", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (54, 488, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Maine Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Precipice, Orange and Black and Champlain North Ridge Trail Loop", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (51, 1053, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Maine Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tumbledown Mountain Trail", "Maine", "Four Ponds Public Reserved Land");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (207, 1952, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Maine Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Acadia Mountain and St. Sauveur Mountain Trail Loop", "Maine", "Acadia National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (132, 1167, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

# Maine Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Old Speck Mountain Trail", "Maine", "Grafton Notch State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (240, 2870, 7.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);
#---------------------------------------------------------
# Maryland Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Swallow Falls Canyon Trail", "Maryland", "Swallow Falls StatePark");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (27, 137, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Maryland Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cascade Falls Trail", "Maryland", "Patapsco Valley State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (62, 272, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.2);

# Maryland Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wincopin Gree, Red, and Yellow", "Maryland", "Savage Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (98, 334, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Maryland Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Falling Branch Trail to Kilgore Falls", "Maryland", "Rocks State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (40, 213, 1.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Maryland Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bacon Ridge Trail", "Maryland", "Bacon Ridge Natural Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (152, 479, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Maryland Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Annapolis Rock via Appalachian Trail", "Maryland", "South Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (156, 816, 5.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# Maryland Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cascade Falls Loop Trail", "Maryland", "Patapsco Valley State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (55, 318, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Maryland Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Billy Goat Trail and Chesapeake and Ohio Canal Trail Loop", "Maryland", "Chesapeake and Ohio Canal National Historical Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (174, 249, 7.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Maryland Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sugarload Mountain and Northeat", "Maryland", "Sugarloaf Mountain Natural Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (204, 1512, 5.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.0);

# Maryland Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Great Falls Overlook Loop", "Maryland", "Chesapeake and Ohio Canal National Historical Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (121, 193, 4.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Maryland Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Appalachian Trail: Wolfsville Road to Raven Rock 10H", "Maryland", "South Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (325, 2293, 9.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.5);

# Maryland Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Appalachian Trail: Dahlgren Camp to Bea", "Maryland", "South Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (55, 2076, 9.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.2);

# Maryland Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Catoctin Trail", "Maryland", "Cunningham Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (361, 2516, 10.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.2);

# Maryland Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Long Pond Trail", "Maryland", "Green Ridge State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (274, 1394, 9.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.4);

# Maryland Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Catoctin National Recreation Trail", "Maryland", "Gambrill State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (600, 4671, 26);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.3);

#---------------------------------------------------------
# Massachusetts Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bash Bish Falls Trail", "Massachusetts", "Bash Bish Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (72, 521, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 3.8);

# Massachusetts Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("World's End Trail", "Massachusetts", "Boston Harbor Islands National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (103, 282, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Massachusetts Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ponkapoag Pond", "Massachusetts", "Blue Hills Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (173, 288, 6.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Massachusetts Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ashley Reservoir Trail", "Massachusetts", "Holyoke, Massachusetts");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (84, 65, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Massachusetts Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Boston's Freedom Trail", "Massachusetts", "Boston Common");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (61, 131, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Point to point", 4.4);

# Massachusetts Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Great Blue Hill via Skyline Trail", "Massachusetts", "Blue Hills Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (72, 820, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Massachusetts Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Watatic and Nutting Hill via Wapack Trail", "Massachusetts", "Watatic Mountain State Wildlife Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (96, 711, 2.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Massachusetts Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Skyline Trail Loop", "Massachusetts", "Middlesex Fells Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (202, 967, 8.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Massachusetts Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Frissell and Brace Mountain Loop Trail", "Massachusetts", "Mount Washington State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (202, 1059, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Massachusetts Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Norwottuck", "Massachusetts", "Mount Holyoke Range State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (108, 626, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "626", 4.6);

# Massachusetts Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Greylock via Bellows Pipe and Thunderbolt Trail", "Massachusetts", "Mount Greylock State Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (214, 2244, 5.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.4);

# Massachusetts Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blue Hills Skyline Trail", "Massachusetts", "Blue Hills Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (484, 3438, 15.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.5);

# Massachusetts Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Race Brook Falls and Mount Everett", "Massachusetts", "Mount Everett State Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (238, 2227, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# Massachusetts Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Metacomet-Monadnock Trail--Section 7", "Massachusetts", "Mount Holyoke Range State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (358, 2864, 10.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Massachusetts Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Williams, Mount Fitch, Mount Greylock, and Stony Ledge", "Massachusetts", "Mount Greylock State Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (422, 3015, 12.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

#---------------------------------------------------------
# Michigan Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Miners Falls Trail", "Michigan", "Pictured Rocks National Lakeshore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (35, 141, 1.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Michigan Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maybury Hiking Trail Loop", "Michigan", "Maybury State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (78, 131, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Michigan Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Seidman Park Blue and Red Loop Trail", "Michigan", "Seidman Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (103, 328, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Michigan Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lakeshore Park (Novi Tree Farm) Trail", "Michigan", "Lakeshore Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (174, 187, 9.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Michigan Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Miners Castle Trail", "Michigan", "Pictured Rocks National Lakeshore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (16, 85, 0.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Michigan Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mosquito Falls and Chapel Falls via Chapel Loop", "Michigan", "Pictured Rocks National Lakeshore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (275, 770, 10.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Michigan Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Manistee River Loop Trail", "Michigan", "Manistee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (544, 1912, 19.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Michigan Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Empire Bluff Trail", "Michigan", "Sleeping Bear Dunes National Lakeshore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (43, 170, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Michigan Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Crooked Lake Trail", "Michigan", "Pinckney Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (121, 305, 4.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Michigan Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Potawatomi Trail", "Michigan", "Pinckney Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (469, 1207, 17.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Michigan Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Escarpment Trail", "Michigan", "Porcupine Mountains Wilderness State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (267, 1689, 8.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# Michigan Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dune Climb Trail", "Michigan", "Sleeping Bear Dune National Lakeshore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (113, 636, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# Michigan Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("North Country Trail", "Michigan", "Manistee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (570, 2253, 19.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Michigan Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Highland A-B-C-D MTB Loop", "Michigan", "Highland State Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (222, 774, 7.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Michigan Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grand Island Loop", "Michigan", "Hiawatha National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (553, 1026, 21.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

#---------------------------------------------------------
# Minnesota Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Fifth Falls and Superior Hiking Trail Loop", "Minnesota", "Gooseberry Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (87, 298, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Minnesota Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Jensen Lake Trail", "Minnesota", "Lebanon Hills Regional Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (57, 121, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Minnesota Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Silver Creek Trail", "Minnesota", "Jay Cooke State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (94, 291, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Minnesota Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pike Island Loop", "Minnesota", "Fort Snelling State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (93, 85, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Minnesota Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Saint Croix River Trail and Railroad Loop", "Minnesota", "Interstate State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (89, 406, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Minnesota Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Superior Hiking Trail: Bean and Bear Lakes", "Minnesota", "Silver Bay, Minnesota");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (193, 997, 6.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Minnesota Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Superior Hiking Trail: Split Rock Ridge", "Minnesota", "Split Rock Lighthouse State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (147, 646, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Minnesota Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lebanon Hills Loop", "Minnesota", "Lebanon Hills Regional Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (128, 252, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Minnesota Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Oberg Mountain Loop via Superior Trail", "Minnesota", "Superior National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (84, 521, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.9);

# Minnesota Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tettegouche State Park", "Minnesota", "Tettegouche State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (53, 364, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Minnesota Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Superior Hiking Trail: Oberg Mountain, Moose Mountain, and Lutsen", "Minnesota", "Superior National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (534, 3221, 16.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.5);

# Minnesota Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Greenstone Ridge Trail: Windigo to Harbor", "Minnesota", "Isle Royale National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (4320, 3992, 39.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.4);

# Minnesota Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Caribou Rock Trail", "Minnesota", "Superior National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (202, 1473, 8.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.5);

# Minnesota Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Angleworm Lake Trail", "Minnesota", "Superior National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (374, 1545, 12.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.4);

# Minnesota Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sioux Hustler Trail", "Minnesota", "Superior National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (5760, 2814, 30.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.4);

#---------------------------------------------------------
# Mississippi Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tuxachanie Trail", "Mississippi", "De Soto National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (180, 259, 7.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Point to point", 4.2);

# Mississippi Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Fontainebleau Nature Trail", "Mississippi", "Mississippi Sandhill Crane National Wildlife Refuge");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (39, 45, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Mississippi Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gulf Islands National Seashore Trail", "Mississippi", "Gulf Islands National Seashore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (63, 68, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 3.6);

# Mississippi Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dunns Falls Trail", "Mississippi", "Enterprise, Mississippi");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (11, 36, 0.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.1);

# Mississippi Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bethel Mountain Bike Trail", "Mississippi", "De Soto National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (232, 255, 9.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Mississippi Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bear Creek Outcropping Trail", "Mississippi", "Tishomingo State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (43, 121, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Mississippi Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Richardson Creek Trail", "Mississippi", "Homochitto National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (226, 800, 8.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.2);

# Mississippi Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("CCC Camp Trail Loop", "Mississippi", "Tishomingo State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (97, 255, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Mississippi Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Red Bluff", "Mississippi", "Foxworth, Mississippi");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (23, 180, 0.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.0);

# Mississippi Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bonita Lakes Trail", "Mississippi", "Meridian, Mississippi");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (183, 839, 7.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

#---------------------------------------------------------
# Missouri Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("White Tail Trail", "Missouri", "Parkville Nature Sanctuary");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (83, 249, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Missouri Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sandstone Canyon Western Loop", "Missouri", "Don Robinson State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (66, 265, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Missouri Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Elephant Rocks State Park", "Missouri", "Elephant Rocks State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (28, 91, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.9);

# Missouri Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blue River Parkway and Minor Park Trail", "Missouri", "Minor Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (141, 272, 5.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Missouri Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bootlegger's Run", "Missouri", "Creve Coeur County Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (108, 272, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ( "Easy", "Loop", 4.6);

# Missouri Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("River Scene Trail Loop", "Missouri", "Castlewood State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (85, 249, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Missouri Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lewis and Clark Trail and Lewis Trail Loop", "Missouri", "Weldon Spring Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (235, 849, 8.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Missouri Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Picle Springs Natural Area", "Missouri", "Pickle Springs Natural Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (59, 311, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "311", 4.8);

# Missouri Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mina Sauk Falls Trail", "Missouri", "Taum Sauk Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (88, 433, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Missouri Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lewis and Clark Trail and Clark Trail Loop", "Missouri", "Weldon Spring Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (148, 564, 5.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Missouri Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Whispering Pines Trail", "Missouri", "Hawn State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (353, 1322, 12.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Missouri Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ozark Trail: Taum Sauk Section", "Missouri", "Mark Twain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (350, 1299, 12.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.3);

# Missouri Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bufard Mountain State Forest Trail", "Missouri", "Bufard Mountain Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (295, 1860, 9.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.3);

# Missouri Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Fox Run Trail to Round House Loop Trail", "Missouri", "Rockwoods Range Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (313, 1653, 10.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.0);

# Missouri Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mudlick Trail", "Missouri", "Sam A. Baker State park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (373, 2165, 11.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 3.8);

#---------------------------------------------------------
# Montana Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("St. Mary and Virginia Falls Trail", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (89, 452, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# Montana Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Trail of the Cedars", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (21, 49, 0.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Montana Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mammoth Hot Springs Area Trail", "Montana", "Yellowstone National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (107, 561, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Montana Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ousel Falls Park", "Montana", "Custer Gallatin National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (49, 252, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Montana Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("McDonald Creek Trail", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (135, 278, 5.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# Montana Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Avalanche Lake via the Trail of the Cedars", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (141, 757, 6.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Montana Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hidden Lake Trail", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (184, 1374, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.4);

# Montana Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hidden Lake Overlook", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (69, 567, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Montana Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lava Lake (Cascade Creek) Trail", "Montana", "Custer Gallatin National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (199, 1620, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Montana Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Beehive Basin Trail No. 40", "Montana", "Big Sky, Montana");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (238, 1650, 7.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# Montana Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Highline Trail: Logan Pass to Granite Chalet", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (464, 2578, 14.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Montana Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Garden Wall", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (497, 3507, 14.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

# Montana Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grinnel Overlook via Granite Park Trail", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (426, 3710, 11.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Montana Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Granite Park via Highline Trail", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (330, 1466, 11.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.9);

# Montana Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Siyeh Pass Trail", "Montana", "Glacier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (294, 2234, 9.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.8);

#---------------------------------------------------------
# Nebraska Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wehrspann Lake Full Loop", "Nebraska", "Chalco Hills Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (178, 282, 6.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 5.0);

# Nebraska Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Flanagan Lake Trail", "Nebraska", "Flanagan Lake Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (126, 213, 5.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Nebraska Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Standing Bear Lake Loop", "Nebraska", "Standing Bear Lake Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (101, 216, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 3.6);

# Nebraska Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Zorinsky Lake Trail Full Loop", "Nebraska", "Ed Zorinsky Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (201, 305, 7.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Nebraska Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Toadstool Trail", "Nebraska", "Oglala National Grassland");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (21, 42, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Nebraska Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Platte River State Park Trail Loop", "Nebraska", "Platte River State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (194, 797, 6.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.2);

# Nebraska Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hackberry, Hawthron, Chickadee, Hickory and Ridge Trail Loop", "Nebraska", "Fontenelle Forest Nature Center");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (68, 374, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Nebraska Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Saddle Rock Trail", "Nebraska", "Scotts Bluff National Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (95, 564, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Nebraska Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Indian Cave Trail", "Nebraska", "Indian Cave Trail");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (91, 393, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.1);

# Nebraska Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Schramm Park Nature Loop", "Nebraska", "Schramm Park State Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (59, 252, 2.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Nebraska Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rock Bluff Run Trail", "Nebraska", "Indian Cave State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (193, 1125, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

#---------------------------------------------------------
# Nevada Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Monkey Rock", "Nevada", "Toiyabe National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (83, 498, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Nevada Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Railroad Tunnel Trail", "Nevada", "Lake Mead National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (197, 931, 8.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Nevada Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Fire Wave Trail", "Nevada", "Valley of Fire State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (46, 236, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Nevada Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pine Creek Canyon Trail", "Nevada", "Red Rock Canyon National Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (203, 515, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Nevada Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("White Domes Trail", "Nevada", "Valley of Fire State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (34, 173, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Nevada Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Calico Tanks Trail", "Nevada", "Red Rock Canyon National Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (70, 406, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Nevada Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hunter Creek Trail", "Nevada", "Toiyabe National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (155, 1240, 6.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Nevada Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mary Jane Falls Trail", "Nevada", "Mount Charleston Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (70, 980, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Nevada Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cathedral Rock Trail", "Nevada", "Spring Mountains National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (104, 954, 2.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Nevada Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ice Box Canyon Trail", "Nevada", "Red Rock Canyon National Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (99, 577, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Nevada Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Rose Trail", "Nevada", "Mount Rose Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (295, 2388, 11.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Nevada Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Turlehead Peak Trail", "Nevada", "Red Rock Canyon National Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (192, 1988, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Nevada Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gold Strike", "Nevada", "Lake Mead National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (204, 1466, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Nevada Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Griffith Peak via South Loop Trail", "Nevada", "Spring Mountains National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (305, 3533, 10.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Nevada Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Raintree Trail", "Nevada", "Toiyabe National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (202, 1833, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

#---------------------------------------------------------
# New Hampshire Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Flume Gorge Trail", "New Hampshire", "Franconia Notch State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (65, 469, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# New Hampshire Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Diana's Baths", "New Hampshire", "North Conway");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (36, 114, 1.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# New Hampshire Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sabbaday Falls", "New Hampshire", "White Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (21, 98, 0.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# New Hampshire Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Franconia Falls Trail", "New Hampshire", "Pemigewasset Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (181, 423, 6.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# New Hampshire Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Crystal Cascades", "New Hampshire", "White Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (26, 160, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# New Hampshire Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Willard Trail", "New Hampshire", "Crawford Notch State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (114, 905, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# New Hampshire Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Manadnock via White Dot and White Cross Trails", "New Hampshire", "Monadnock State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (161, 1768, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# New Hampshire Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Major and Brook Trail Loop", "New Hampshire", "Major Mountain State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (136, 1148, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# New Hampshire Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Tecumseh Trail", "New Hampshire", "White Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (2283, 2385, 5.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and Back", 4.4);

# New Hampshire Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lonesome Lake Trail", "New Hampshire", "Franconia Notchia State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (211, 1026, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# New Hampshire Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Lafayette and Franconia Ridge Trail Loop", "New Hampshire", "White Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (363, 3822, 8.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 5.0);

# New Hampshire Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Welch and Dickey Loop Trail", "New Hampshire", "White Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (164, 1774, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# New Hampshire Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Washington via Tuckerman Ravine and Lion Head Trail", "New Hampshire", "White Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (360, 905, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

# New Hampshire Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Moosilauke and South Peak Loop", "New Hampshire", "White Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (276, 2506, 8.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 5.0);

# New Hampshire Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Arethusa Falls and Frankenstein Cliff Trail", "New Hampshire", "Crawford Notch State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (183, 1627, 5.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

#---------------------------------------------------------
# New Jersey Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hemlock Falls Trail via Lenape (Yellow) Trail, Rahway Trail (White) and River Trail", "New Jersey", "South Mountain Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (140, 784, 5.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.1);

# New Jersey Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cheesequake Green Trail", "New Jersey", "Cheesequake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (75, 229, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# New Jersey Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Openwood, River, Lenape, and Overlook Trails Loop", "New Jersey", "South Mountain Reservation");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (125, 511, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# New Jersey Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Manasquan Reservoir Loop", "New Jersey", "Manasquan Reservoir County Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (126, 127, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# New Jersey Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maurice River Bluffs Trail", "New Jersey", "Maurice River Bluffs Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (107, 216, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# New Jersey Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Tammany: Red Dot and Blue Dot Loop Trail", "New Jersey", "Worthington State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (131, 1236, 5.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# New Jersey Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stairway to Heaven Trail", "New Jersey", "Wawayanda State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (106, 892, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# New Jersey Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stairway to Heaven and Pochuck Valley via Appalachian Trail", "New Jersey", "Maple Grange Community Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (86, 1122, 7.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# New Jersey Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Long Path and Shore Loop", "New Jersey", "Palisades Interstate Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (207, 770, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# New Jersey Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ramapo Mountain Yellow and Cannonball Trail", "New Jersey", "Ramapo Mountain State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (164, 741, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# New Jersey Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("White Shore and Long Path Loop Trail", "New Jersey", "Palisades Interstate Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (135, 774, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# New Jersey Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Buttermilk Falls and Crater Lake Loop Trail", "New Jersey", "Delaware Water Gap National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (221, 1453, 6.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# New Jersey Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Tammany via Blue Dot Trail", "New Jersey", "Worthington State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (150, 1250, 4.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# New Jersey Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Tammany via Red Dot Trail", "New Jersey", "Worthington State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (101, 1115, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# New Jersey Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sunfish Pond via Appalachian and Dunnfield Creek Trail Loop", "New Jersey", "Worthington State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (305, 1374, 10.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

#---------------------------------------------------------
# New Mexico Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Volcanoes Trail", "New Mexico", "Petroglyph National Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (92, 374, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# New Mexico Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Travertine Falls", "New Mexico", "Sandia Mountain Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (37, 249, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# New Mexico Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Alcove House Trail", "New Mexico", "Bandelier National Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (73, 252, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# New Mexico Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Soledad Canyon Loop", "New Mexico", "Organ Mountain - Desert Peaks National Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (109, 659, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# New Mexico Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bisti Badlands Trail", "New Mexico", "Bisti/De-Na-Zin Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (141, 213, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# New Mexico Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Nambe Lake Trail", "New Mexico", "Santa Fe National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (216, 2089, 6.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# New Mexico Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Williams Lake Trail", "New Mexico", "Carson National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (96, 1043, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# New Mexico Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pine Tree Trail", "New Mexico", "Organ Mountain - Desert Peaks National Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (139, 1053, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.9);

# New Mexico Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dripping Springs Trail", "New Mexico", "Organ Mountain - Desert Peaks National Monument");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (72, 456, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# New Mexico Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Osha Trail", "New Mexico", "Lincoln National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (76, 396, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# New Mexico Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wheeler Peak via Williams Lake Trail", "New Mexico", "Carson National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (350, 3005, 9.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# New Mexico Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("La Luz Trail #137", "New Mexico", "Sandia Mountain Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (466, 3572, 13.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

# New Mexico Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pino Trail", "New Mexico", "Elena Gallegos Picnic Area/Albert G. Simms Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (328, 2736, 9.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.5);

# New Mexico Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Domingo Baca Trail #230", "New Mexico", "Elena Gallegos Picnic Area/Albert G. Simms Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (337, 3545, 8.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.5);

# New Mexico Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Deception Peak and Lake Peak", "New Mexico", "Santa Fe National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (220, 2601, 6.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

#---------------------------------------------------------
# New York Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blydenburgh County Park Stump Pond Loop", "New York", "Blydenburgh Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (155, 187, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# New York Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Taughannock Falls via Gorge Trail", "New York", "Taughannock Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (47, 249, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.5);

# New York Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Minnewaska Loop Trail", "New York", "Minnewaska State Park Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (56, 259, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# New York Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Green Lake to Round Lake Trail", "New York", "Green Lake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (77, 164, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# New York Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Shelving Rock Mountain Trail", "New York", "Lake George Wild Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 718, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.5);

# New York Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cascade Mountain and Porter Mountain via Cascade Mountain Trail", "New York", "High Peaks Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (218, 2293, 6.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# New York Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bear Mountain", "New York", "Bear Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (139, 1154, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# New York Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gertrude's Nose Trail", "New York", "Minnewaska State Park Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (189, 1187, 7.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# New York Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gorge Trail and Indian Trail Loop", "New York", "Watkins Glen State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (81, 574, 2.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# New York Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Overlook Mountain Trail", "New York", "Overlook Mountain Wild Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (168, 1397, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# New York Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Breakneck Ridge, Breakneck Bypass, Wilkinson Trail Loop", "New York", "Hudson Highlands State Park Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (128, 1250, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# New York Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Marcy via Van Hoevenberge Trail", "New York", "High Peaks Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (491, 3562, 15.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.3);

# New York Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("South Beacon Mountain via Breakneck Ridge and Wilkinson Memorial Trail", "New York", "Hudson Highlands State Park Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (277, 2808, 9.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

# New York Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Giant Mountain Peak via Ridge Trail", "New York", "Giant Mountain Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (266, 2992, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# New York Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Popolopen Torne Loop", "New York", "Bear Mountain State park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (103, 1145, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

#---------------------------------------------------------
# North Carolina Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Catawba Falls Trail", "North Carolina", "Pisgah National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (63, 305, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# North Carolina Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Triple Falls Trail", "North Carolina", "Dupont State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (71, 383, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# North Carolina Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Max Patch Loop", "North Carolina", "Pisgah National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (48, 288, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# North Carolina Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Black Balsam Knob via Art Loeb Trail", "North Carolina", "Shining Rock Wilderness Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (50, 347, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# North Carolina Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Craggy Pinnacle Trail", "North Carolina", "Blue Ridge Parkway");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (24, 272, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.1);

# North Carolina Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Clingmans Dome Observation Tower Trail", "North Carolina", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (42, 331, 1.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# North Carolina Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Looking Glass Rock Trail", "North Carolina", "Pisgah National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (208, 1729, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# North Carolina Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grassy Ridge Bald via Appalachian Trail", "North Carolina", "Pisgah National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (215, 1033, 4.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# North Carolina Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rainbow Falls and Turtleback Falls Trail", "North Carolina", "Gorges State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (125, 770, 3.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# North Carolina Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Crabtree Falls Trail Loop", "North Carolina", "Blue Ridge Parkway");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (86, 577, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# North Carolina Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Calloway Peak via Profile Trail", "North Carolina", "Grandfather Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (280, 2385, 7.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# North Carolina Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grandfather Mountain Trail", "North Carolina", "Grandfather Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (201, 1689, 5.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# North Carolina Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Mitchell Trail", "North Carolina", "Pisgah National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (387, 3710, 11.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.1);

# North Carolina Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Pinnacle Trail", "North Carolina", "Pinnacle Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (279, 2477, 7.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

# North Carolina Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Daniel Boone Scout Trail to Calloway Peak", "North Carolina", "Pisgah National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (251, 2007, 7.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

#---------------------------------------------------------
# North Dakota Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wind Canyon Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (14, 55, 0.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# North Dakota Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Painted Canyon Nature Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (24, 262, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# North Dakota Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("White Butte North Dakota's Highpoint Trail", "North Dakota", "Bowman, North Dakota");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (81, 426, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# North Dakota Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Boicourt Overlook Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (22, 62, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# North Dakota Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Coal Vein Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (15, 16, 0.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 3.9);

# North Dakota Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Caprock Coulee Loop", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (107, 583, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# North Dakota Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Petrified Forest Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (280, 833, 10.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# North Dakota Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lower Paddock Creek Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (191, 419, 7.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# North Dakota Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Buck Hill Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (12, 55, 0.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# North Dakota Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Harmon Lake Trail", "North Dakota", "Mandan, North Dakota");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (217, 416, 8.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# North Dakota Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maah Daah Hey Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (5760, 15141, 142.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.6);

# North Dakota Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Achenbach and North Achenbach Trail Loop", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (525, 2358, 18.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# North Dakota Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Buckhorn Trail", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (338, 1066, 12.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.0);

# North Dakota Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maah Daah Hey II Trail", "North Dakota", "Amidon, North Dakota");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (2070, 4872, 41.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.7);

# North Dakota Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Achenbach/Bison Trail Loop", "North Dakota", "Theodore Roosevelt National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (393, 1587, 13.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.0);

#---------------------------------------------------------
# Ohio Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Plateau Trail", "Ohio", "Cuyahoga Valley National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (119, 318, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.9);

# Ohio Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cedar Falls Trail", "Ohio", "Hocking Hills State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (28, 157, 0.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.1);

# Ohio Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Old Man Cave", "Ohio", "Hocking Hills State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (16, 42, 0.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.0);

# Ohio Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Buckeye Trail", "Ohio", "Hocking Hills State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (140, 305, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.5);

# Ohio Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Queer Creek via Buckeye Trail", "Ohio", "Hocking Hills State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (71, 147, 2.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.2);

# Ohio Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ledges Trail", "Ohio", "Cuyahoga Valley National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (63, 229, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Ohio Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Brandywine Gorge Trail", "Ohio", "Cuyahoga Valley National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (33, 164, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Ohio Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Standford House to Brandywine Falls Trail", "Ohio", "Cuyahoga Valley National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (113, 534, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Ohio Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blue Hen Falls Trail", "Ohio", "Cuyahoga Valley National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (64, 531, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Ohio Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Old Man's Cave and Ash cave via Buckeye Trail", "Ohio", "Hocking Hills State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (259, 843, 9.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# Ohio Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Archers Fork Trail", "Ohio", "Wayne National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (390, 1935, 12.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# Ohio Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Glen Helen, Little Miami & Clifton Gorge", "Ohio", "Glen Helen Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (367, 1190, 13.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# Ohio Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hemlock Gorge Loop", "Ohio", "Perrysville, Ohio");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (288, 1246, 11.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Ohio Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Twin Valley Trail", "Ohio", "Germantown Metropark");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (660, 2148, 26.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.4);

# Ohio Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Shawnee Backpackers Trail: Backpack Trailhead to Camp 7", "Ohio", "Shawnee State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (249, 1466, 10.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.1);

#---------------------------------------------------------
# Oklahoma Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wichita Mountains Forty-Foot Hole", "Oklahoma", "Wichita Moutnains National Wildlife Refuge");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (40, 154, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.2);

# Oklahoma Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Crab Eyes", "Oklahoma", "Charons Garden Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (105, 449, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Oklahoma Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Hefner Trail", "Oklahoma", "Lake Hefner Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (231, 108, 9.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.5);

# Oklahoma Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Buffalo and Antelope Springs Trail", "Oklahoma", "Chickasaw National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (80, 183, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Oklahoma Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Martin Nature Park", "Oklahoma", "Martin Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (67, 98, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Oklahoma Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Elk Mountain Trail", "Oklahoma", "Charons Garden Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (79, 577, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Oklahoma Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bison Trail", "Oklahoma", "Wichita Mountains National Wildlife Refuge");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (204, 416, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Oklahoma Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Friends Trail Loop", "Oklahoma", "Beavers Bend State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (48, 282, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Oklahoma Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Turkey Mountain via Yellow Trail", "Oklahoma", "Turkey Mountain Urban Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (105, 377, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Oklahoma Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Inspiration Point Loop", "Oklahoma", "Roman Nose State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (140, 518, 5.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Oklahoma Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Charons Garden Mountains", "Oklahoma", "Charons Garden Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (165, 613, 5.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.1);

# Oklahoma Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mountain Trail to Lake Carlton and Lake Wayne Wallace", "Oklahoma", "Robbers Cave State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (219, 1230, 7.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Oklahoma Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Boulder Mountain (Eagle Mountain) via Narrows Trail", "Oklahoma", "Wichita Mountains National Wildlife Refuge");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (41, 360, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 3.6);

# Oklahoma Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Horse Thief Spring Trail", "Oklahoma", "Ouachita National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (416, 1984, 13.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 3.9);

# Oklahoma Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ouachita National Recreation Trail", "Oklahoma", "Ouachita National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (4320, 30941, 210.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.5);

#---------------------------------------------------------
# Oregon Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Drift Creek Falls Trail", "Oregon", "Siuslaw National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (72, 485, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Oregon Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Toketee Falls", "Oregon", "Umpqua National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (21, 167, 0.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Oregon Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dry Creek Falls via PCT", "Oregon", "Columbia River Gorge National Scenic Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (95, 823, 3.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Oregon Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Proxy Falls Loop Trail", "Oregon", "Willamette National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (45, 147, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.9);

# Oregon Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sweet Creek Trail", "Oregon", "Siuslaw National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (43, 291, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.5);

# Oregon Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Trail of Ten Falls", "Oregon", "Silver Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (232, 1194, 8.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.9);

# Oregon Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ramona Falls Trail", "Oregon", "Mount Hood Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (172, 1046, 7.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 3.6);

# Oregon Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tamolitch Blue Pool via McKenzie River Trail", "Oregon", "Willamette National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (102, 305, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Oregon Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tamanawas Falls Trail", "Oregon", "Mount Hood National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (92, 570, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# Oregon Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mirror Lake Loop Trail", "Oregon", "Mount Hood National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (116, 646, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Oregon Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("South Sister Trail", "Oregon", "Three Sisters Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (494, 4898, 12.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Oregon Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Misery Ridge and River Trail", "Oregon", "Smith Rock State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (89, 915, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# Oregon Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("McNeil Point Trail", "Oregon", "Mount Hood National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (342, 2660, 9.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Oregon Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Timberline Trail Around Mount Hood", "Oregon", "Mount Hood National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (7200, 10341, 41.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.4);

# Oregon Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bend Glacier and No Name Lake", "Oregon", "Deschutes National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (484, 2880, 15.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

#---------------------------------------------------------
# Pennsylvania Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wissahickon Creek Gorge Loop Trail", "Pennsylvania", "Fairmount");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (248, 643, 9.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Pennsylvania Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tank Hollow Trail", "Pennsylvania", "State Game Lands Number 141");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (91, 223, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Pennsylvania Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Galena Hike and Bike Trail", "Pennsylvania", "Peace Valley Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (153, 209, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Pennsylvania Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dingmans Falls via Dingmans Creek Trail", "Pennsylvania", "Childs State Forest Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (43, 216, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.5);

# Pennsylvania Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tucquan Glen Loop Trail", "Pennsylvania", "Tucquan Glen Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (72, 223, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 3.9);

# Pennsylvania Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Minsi via Appalachian Trail", "Pennsylvania", "Delaware Water Gap National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (121, 1049, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.4);

# Pennsylvania Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ricketts Glen Falls Loop", "Pennsylvania", "Ticketts Glen State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (200, 1010, 6.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 5.0);

# Pennsylvania Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Appalachian Trail, Pinnacle Trail, Valley Rim and Pulpit Rock", "Pennsylvania", "Hamburg, Pennsylvania");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (280, 1236, 9.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Pennsylvania Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rocketts Glen Falls", "Pennsylvania", "Ricketts Glen State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (109, 715, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Pennsylvania Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Shades of Death Trail", "Pennsylvania", "Hickory Run State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (65, 282, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.4);

# Pennsylvania Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hawk Mountain Loop", "Pennsylvania", "Hawk Mountain Sanctuary");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (129, 1056, 5.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.4);

# Pennsylvania Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mason-Dixon Trail: Lock 12 to E Posey Rd", "Pennsylvania", "Airville, Pennsylvania");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (355, 1673, 9.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.3);

# Pennsylvania Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Slippery Rock Gorge Trail", "Pennsylvania", "McConnells Mill State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (703, 1535, 15.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Pennsylvania Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Tioga West Rim Trail", "Pennsylvania", "Tioga State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (4320, 4356, 27.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.6);

# Pennsylvania Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lehigh Furnace Gap via Appalachian Trail", "Pennsylvania", "South Mountain Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (365, 1745, 9.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.4);

#---------------------------------------------------------
# Rhode Island Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Carr's Pond and Tarbox Pond", "Rhode Island", "Big River State Management Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (107, 269, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.1);

# Rhode Island Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rome Point Trail", "Rhode Island", "John H. Chafee Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (61, 68, 2.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Rhode Island Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stepstone Falls via Ben Utter Trail", "Rhode Island", "Arcadia Management Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (71, 131, 2.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Rhode Island Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Fisherville Brook Wildlife Refuge Trail", "Rhode Island", "Exeter, Rhode Island");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (88, 200, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Rhode Island Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lincoln Wood Trail", "Rhode Island", "Lincoln Woods State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (76, 298, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.0);

# Rhode Island Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cliff Walk", "Rhode Island", "Newport, Rhode Island");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (172, 324, 6.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Rhode Island Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Long Pond Woods Trail", "Rhode Island", "Rockville Management and Public Fishing Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (109, 469, 4.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.4);

# Rhode Island Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("World War II Memorial Loop", "Rhode Island", "Wolf Hill Forest Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (123, 410, 4.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

# Rhode Island Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("George B. Parker Woodland Trail", "Rhode Island", "Audubon Society George B Parker Woodland");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (176, 715, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.5);

# Rhode Island Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cumberland Monastery Trail", "Rhode Island", "Cumberland Monastery");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (87, 229, 3.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.3);

#---------------------------------------------------------
# South Carolina Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Oconee Station & Station Cove Falls Trail", "South Carolina", "Oconee State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (43, 98, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# South Carolina Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Riley Moore Falls", "South Carolina", "Sumter National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (60, 357, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# South Carolina Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Boardwalk Loop Trail", "South Carolina", "Congaree National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (58, 13, 2.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# South Carolina Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wildcat Wayside Nature Trail", "South Carolina", "Cleveland, South Carolina");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (30, 154, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# South Carolina Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Peachtree Rock", "South Carolina", "Lexington, South Carolina");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (63, 219, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.2);

# South Carolina Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rainbow Falls Trail", "South Carolina", "Jones Gap State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (153, 1207, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# South Carolina Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Yellow Branch Falls Trail", "South Carolina", "Stumphouse Mountain Bike Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (91, 465, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# South Carolina Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Raven Cliff Falls Trail", "South Carolina", "Caesars Head State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (125, 695, 4.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# South Carolina Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sulphur Springs Trail", "South Carolina", "Paris Mountain State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (109, 695, 4.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# South Carolina Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Raven Rock Loop Trail", "South Carolina", "Keowee-Toxaway State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (135, 836, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# South Carolina Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Table Rock Trail", "South Carolina", "Table Rock State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (246, 2240, 6.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# South Carolina Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Raven Cliff Falls and Dismal Trail Loop", "South Carolina", "Caesars Head State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (303, 2240, 8.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# South Carolina Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Falls Creek Waterfall Trail", "South Carolina", "Cleveland, South Carolina");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (79, 826, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# South Carolina Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Pinnacle Mountain Trail", "South Carolina", "Table Rock State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (249, 2335, 7.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.2);

# South Carolina Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Table Rock Ridge Trail via Pinnacle Mountain Trail", "South Carolina", "Table Rock State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (392, 3293, 10.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

#---------------------------------------------------------
# South Dakota Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Door Trail", "South Dakota", "Badlands National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (21, 36, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# South Dakota Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sylvan Lake Shore Trail", "South Dakota", "Custer State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (29, 59, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# South Dakota Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Rushmore and Presidential Trail Loop", "South Dakota", "Mount Rushmore National Memorial");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (22, 137, 0.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# South Dakota Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Roughlock Falls Trail", "South Dakota", "Black Hills National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (61, 242, 2.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# South Dakota Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Medicine Root Loop Trail", "South Dakota", "Badlands National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (122, 337, 4.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.2);

# South Dakota Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Black Elk Peak South Dakota Highpoint Trail", "South Dakota", "Black Elk Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (238, 1515, 7.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# South Dakota Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Notch Trail", "South Dakota", "Badlands National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (37, 131, 1.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# South Dakota Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cathedral Spires Trail", "South Dakota", "Custer State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (58, 488, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# South Dakota Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Little Devils Tower Spur Trail", "South Dakota", "Custer State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (117, 751, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# South Dakota Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lovers' Leap Trail", "South Dakota", "Custer State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (127, 626, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# South Dakota Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sunday Gulch Trail", "South Dakota", "Custer State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (127, 797, 3.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# South Dakota Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Black Elk Peak and Little Devil's Tower Loop", "South Dakota", "Black Hills National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (255, 1699, 7.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# South Dakota Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lost Cabin Trail", "South Dakota", "Black Hills National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (477, 3011, 14.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# South Dakota Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Saint Elmo Peak Trail", "South Dakota", "Black Hills National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (44, 1190, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# South Dakota Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hippie Hole: South", "South Dakota", "Black Hills National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (38, 465, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

#---------------------------------------------------------
# Tennessee Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Laurel Falls Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (74, 396, 2.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Tennessee Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Burgess Falls Trail", "Tennessee", "Burgess Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (32, 134, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.9);

# Tennessee Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stone Door Trail", "Tennessee", "South Cumberland State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (50, 170, 1.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# Tennessee Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gatlinburg Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (98, 164, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 3.9);

# Tennessee Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Twin Falls and Down River Trail", "Tennessee", "Rock Island State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (48, 223, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Tennessee Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grotto Falls Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (84, 534, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Tennessee Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Peregrine Peak via Alum Cave Bluffs Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (144, 1059, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Tennessee Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Charlies Bunion via Appalachian Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (288, 1981, 8.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Tennessee Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Abrams Falls Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (144, 629, 4.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Tennessee Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Appalachian Trail to Icewater Spring Shelter", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (145, 1407, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Tennessee Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Alum Cave Trail to Mount LeConte", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (317, 2919, 10.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Tennessee Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Chimney Tops Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (97, 1358, 4.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Tennessee Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rainbow Falls Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (192, 1640, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Tennessee Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Virgin Falls Trail", "Tennessee", "Virgin Falls State Natural Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (211, 1381, 8.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Tennessee Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Myrtle Point and Mount LeConte via Alum Cave Trail", "Tennessee", "Great Smoky Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (703, 3097, 13.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

#---------------------------------------------------------
# Texas Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Twin Falls and Sculpture Falls via Barton Creek Greenbelt Trail", "Texas", "Barton Creek Greenbelt");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (79, 127, 3.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Texas Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lady Bird Lake Trail", "Texas", "Butler Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (250, 216, 10.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Texas Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cedar Brake Trail via Cattail Pond Trail", "Texas", "Cedar Ridge Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (54, 246, 2.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Texas Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Arbor Hills Nature Preserve Trail", "Texas", "Arbor Hills Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (66, 127, 2.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Texas Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Santa Elena Canyon Trail", "Texas", "Big Bend National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (61, 610, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Texas Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Riverplace Nature Trail", "Texas", "Nature Preserve at River Place");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (166, 823, 5.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# Texas Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lost Mine Trail", "Texas", "Big Bend National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (146, 1099, 4.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 5.0);

# Texas Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Lighthouse Trail", "Texas", "Palo Duro Canyon State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (158, 492, 5.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Texas Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Window Trail", "Texas", "Big Bend National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (164, 948, 5.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# Texas Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Barton Creek Greenbelt Trail", "Texas", "Barton Creek Greenbelt");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (358, 606, 13.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Texas Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Guadalupe Peak Texas Highpoint Trail", "Texas", "Guadalupe Mountains National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (326, 2962, 8.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Texas Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Emory Peak via South Rim Trail and Boot Springs Trail", "Texas", "Big Bend National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (488, 3166, 14.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Texas Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Emory Peak Trail", "Texas", "Big Bend National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (300, 2513, 10.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

# Texas Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("North Mountain Franklin Trail", "Texas", "Franklin Mountains State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (272, 2408, 7.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Texas Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lone Star Hiking Trail and Little Lake Creek Trail", "Texas", "Sam Houston National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (354, 580, 13.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.2);

#---------------------------------------------------------
# Utah Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Zion Narrows Riverside Walk", "Utah", "Zion National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (45, 193, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Utah Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Donut Falls Trail", "Utah", "Uinta-Wasatch-Cache National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (76, 521, 3.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Utah Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Corona and Bowtie Arch Trail", "Utah", "Moab, Utah");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (75, 469, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.9);

# Utah Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Gloria Falls", "Utah", "Twin Peaks Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (67, 574, 2.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Utah Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cecret Lake Trail", "Utah", "Uinta-Wasatch-Cache National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (60, 459, 1.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Utah Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Blanche Trail", "Utah", "Twin Peaks Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (277, 2706, 6.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Utah Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Navajo Loop and Queen's Garden Trail", "Utah", "Bryce Canyon National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (70, 629, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Utah Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Delicate Arch Trail", "Utah", "Arches National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (73, 610, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Utah Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stewart Falls Trail", "Utah", "Mount Timpanogos Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (108, 646, 3.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# Utah Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Fairyland Loop Trail", "Utah", "Bryce Canyon National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (249, 1545, 7.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.9);

# Utah Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Angels Landing Trail", "Utah", "Zion National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (187, 1630, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

# Utah Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Devils Garden Loop Trail with 7 Arches", "Utah", "Arches National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (187, 1131, 7.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Utah Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bells Canyon Trail to Lower Falls", "Utah", "Uinta-Wasatch-Cache National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (170, 1453, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Utah Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Olympus Trail", "Utah", "Mount Olympus Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (335, 4192, 8.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Utah Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Zion Narrows Trail to Imlay Temple and Big Spring", "Utah", "Zion National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (387, 4553, 8.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

#---------------------------------------------------------
# Vermont Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Moss Glen Falls Trail", "Vermont", "CC Putnam State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (70, 337, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.3);

# Vermont Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bingham Falls Trail", "Vermont", "Smugglers' Notch State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (18, 144, 0.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Vermont Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Thundering Brook Falls", "Vermont", "Killington, Vermont");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (11, 29, 0.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Vermont Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Red Rocks Park Loop Trail", "Vermont", "Red Rocks Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (74, 226, 2.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Vermont Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Colchester Pond", "Vermont", "Colchester, Vermont");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (85, 308, 3.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Vermont Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lye Brook Falls Trail", "Vermont", "Green Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (152, 938, 4.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Vermont Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sterling Pong Trail", "Vermont", "Smugglers' Notch State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (92, 908, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.4);

# Vermont Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("The Nose to The Chin via Long Trail", "Vermont", "Mount Mansfield State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (110, 1053, 2.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Vermont Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Haystack Mountain Trail", "Vermont", "Green Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (98, 1010, 5.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Vermont Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Pisgah Trail", "Vermont", "Willoughby State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (166, 1653, 4.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# Vermont Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Camel's Hump Trail", "Vermont", "Camel's Hump State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (250, 2578, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# Vermont Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Mansfield Loop Trail", "Vermont", "Underhill State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (293, 2880, 7.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Vermont Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sunset Ridge and Long Trail Loop", "Vermont", "Underhill State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (257, 2690, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.8);

# Vermont Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Killington Peak via Bucklin Trail", "Vermont", "Green Mountain National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (274, 2470, 7.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# Vermont Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stowe Pinnacle Trail", "Vermont", "CC Putnam State Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (155, 1604, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

#---------------------------------------------------------
# Virginia Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Stony Man via Appalachian Trail", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (49, 321, 1.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Virginia Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blackrock Summit via Trayfoot Mountain and Appalachian Trail", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (34, 180, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Virginia Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Burke Lake Trail", "Virginia", "Burke Lake Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (121, 114, 4.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Virginia Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("First Battle of Manassas Trail Loop", "Virginia", "Manassas National Battlefield Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (140, 367, 5.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Virginia Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Accotink Trail", "Virginia", "Lake Accotink Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (92, 180, 3.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Virginia Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dark Hollow Falls Trail", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (57, 564, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Virginia Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hawksbill Gap Loop via Appalachian Trail", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (93, 751, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Virginia Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Rose River Trail", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (119, 843, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Virginia Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Crabtree Falls Trail", "Virginia", "George Washington and Jefferson National Forests");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (111, 1072, 2.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Virginia Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bearfence Mountain Trail", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (34, 242, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.9);

# Virginia Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Old Rag Mountain Loop", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (305, 2650, 10.2);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.7);

# Virginia Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("McAfee Knob via Appalachian Trail", "Virginia", "Catawba, Virginia");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (256, 1843, 8.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Virginia Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("White Oak Vanyon and Cedar Run Trails Loop", "Virginia", "Shenandoah National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (314, 2372, 9.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Virginia Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Raven Rocks via Appalachian Trail", "Virginia", "Bluemont, Virginia");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (194, 1617, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Virginia Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Dragon's Tooth Trail", "Virginia", "Jefferson National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (149, 1227, 4.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

#---------------------------------------------------------
# Washington Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Franklin Falls Trail 1036", "Washington", "Mount Baker Snoqualmie National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (63, 367, 2.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# Washington Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Marymere Falls Trail", "Washington", "Olympic National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (53, 298, 1.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.9);

# Washington Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Sol Duc Falls Nature Trail", "Washington", "Olympic National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (49, 255, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.9);

# Washington Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Myrtle Falls Viewpoint via Skyline Trail", "Washington", "Mount Rainier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (20, 160, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.4);

# Washington Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hoh Rain Forest Hall of Moss", "Washington", "Olympic National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (30, 82, 1.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Washington Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake 22 Trail", "Washington", "Mount Baker Snoqualmie National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (229, 1502, 7.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Washington Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Snow Lake Trail", "Washington", "Mount Baker Snoqualmie National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (222, 1669, 6.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.5);

# Washington Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Skyline Trail", "Washington", "Mount Rainier National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (204, 1794, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Washington Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Wallace Falls Trail", "Washington", "Wallace Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (116, 1459, 4.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# Washington Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Twin Falls Trail", "Washington", "Olallie State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (126, 967, 3.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.3);

# Washington Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Colchuck Lake via Stuart Lake Trail", "Washington", "Alpine Lake Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (279, 2283, 9.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Washington Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Si Trail", "Washington", "Mount si Natural Resources Conservation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (312, 3389, 7.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Washington Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Serene Trail and Bridal Veil Falls", "Washington", "Mount Baker Snoqualmie National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (242, 2716, 7.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

# Washington Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maple Pass Trail", "Washington", "Okanogan-Wenatchee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (232, 2188, 7.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# Washington Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mount Pilchuck Trail", "Washington", "Mount Pilchuck State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (231, 2125, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.4);

#---------------------------------------------------------
# West Virginia Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Endless Wall Trail", "West Virginia", "New River Gorge National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (67, 288, 2.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Point to point", 4.9);

# West Virginia Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Blackwater Falls", "West Virginia", "Blackwater Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (15, 131, 0.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# West Virginia Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lindy Point Overlook", "West Virginia", "Blackwater Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (21, 49, 0.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.6);

# West Virginia Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Long Point Trail", "West Virginia", "Summersville Lake State Wildlife Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (112, 442, 3.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.8);

# West Virginia Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Whispering Spruce Trail and Spruce Knob", "West Virginia", "Spruce Knob-Seneca Rocks National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (15, 29, 0.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# West Virginia Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Loudoun Heights Trail to Split Rock", "West Virginia", "Harpers Ferry National Historical Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (205, 1482, 6.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# West Virginia Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Seneca Rocks Trail", "West Virginia", "Spruce Knob-Seneca Rocks National Recreation Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (65, 836, 2.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# West Virginia Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Big Schloss via Wolf Gap Trail", "West Virginia", "W");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (146, 1046, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.8);

# West Virginia Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Long Point Trail", "West Virginia", "New River Gorge National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (84, 344, 2.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.7);

# West Virginia Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bear Rocks/Lions HEad Loop", "West Virginia", "Dolly Sods Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (558, 2083, 19.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# West Virginia Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maryland Heights Loop", "West Virginia", "Harpers Ferry National Historical Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (221, 1541, 6.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.6);

# West Virginia Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Maryland Heights via Harper's Ferry", "West Virginia", "Harpers Ferry National Historical Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (104, 1036, 4.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.7);

# West Virginia Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("North Fork Mountain Trail to Chimney Top", "West Virginia", "Potomac Wildlife Management Area");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (188, 1971, 5.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# West Virginia Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Kaymoor Miner's Trail", "West Virginia", "New River Gorge National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (74, 869, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 3.7);

# West Virginia Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Glade Creek: New River to Pinch Creek", "West Virginia", "New River Gorge National River");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (346, 1394, 12.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.6);

#---------------------------------------------------------
# Wisconsin Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lion's Den Trail", "Wisconsin", "Lion's Den Gorge Nature Preserve");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (52, 141, 1.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.6);

# Wisconsin Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mallard Lake Trail", "Wisconsin", "Whitnall Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (35, 36, 1.4);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Wisconsin Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("North Country Scenic and Doughboy's Loop", "Wisconsin", "Copper Falls State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (49, 193, 1.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Wisconsin Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ice Age Trail: Holy Hill Segment", "Wisconsin", "Hartford, Wisconsin");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (189, 603, 6.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Point to point", 4.5);

# Wisconsin Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ice Age Trail: Monches", "Wisconsin", "Harland, Wisconsin");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (98, 213, 3.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Point to point", 4.7);

# Wisconsin Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Devil's Lake via West Bluff Trail", "Wisconsin", "Devil's Lake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (154, 997, 4.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Wisconsin Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("East Bluff and East Bluff Woods Trail Loop", "Wisconsin", "Devil's Lake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (84, 518, 2.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.6);

# Wisconsin Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Meyers Beach Sea Cave Trail", "Wisconsin", "Apostle Islands National Lakeshore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (122, 269, 4.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 5.0);

# Wisconsin Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Willow Falls and Nelson Farm Trail Loop", "Wisconsin", "Willow River State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (161, 347, 6.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.7);

# Wisconsin Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Balanced Rock Trail", "Wisconsin", "Devil's Lake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (34, 419, 0.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.6);

# Wisconsin Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ice Age National Scenic Trail - Devil's Lake Segment", "Wisconsin", "Devil's Lake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (415, 1922, 14.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.5);

# Wisconsin Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ice Age Trail: Devil's Lake to Parfrey's Glen", "Wisconsin", "Devil's Lake State Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (265, 1581, 8.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.4);

# Wisconsin Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hidden Lakes", "Wisconsin", "Nicolet National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (419, 931, 15.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.3);

# Wisconsin Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Ice Age Trail: St. Croix Falls to Trade River", "Wisconsin", "Dresser, Wisconsin");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (1029, 1597, 27.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Point to point", 4.5);

# Wisconsin Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lakeshore Trail Campsite via Meyers Beach", "Wisconsin", "Apostle Islands National Lakeshore");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (263, 728, 10.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

#---------------------------------------------------------
# Wyoming Easy 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Taggart Lake Loop", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (116, 429, 4.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.8);

# Wyoming Easy 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Grand Prismatic Hot Spring", "Wyoming", "Yellowstone National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (47, 200, 1.6);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Out and back", 4.7);

# Wyoming Easy 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Upper Geyser Basin and Old Faithful Observation Point Loop", "Wyoming", "Yellowstone National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (118, 242, 4.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.4);

# Wyoming Easy 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Hidden Falls Trail", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (142, 590, 4.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.7);

# Wyoming Easy 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("West Thumb Geyser Basin Trail", "Wyoming", "Yellowstone National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (27, 59, 1.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Easy", "Loop", 4.3);

# Wyoming Intermediate 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Cascade Canyon Trail", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (280, 1128, 9.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Out and back", 4.9);

# Wyoming Intermediate 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Jenny Lake Trail", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (191, 623, 7.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Wyoming Intermediate 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Mystic Falls, Fairy Creek and Little Firehole Loop", "Wyoming", "Yellowstone National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (109, 606, 3.5);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Wyoming Intermediate 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Phelps Lake Trail", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (198, 725, 7.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Wyoming Intermediate 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Bradley Lake Trail", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (149, 646, 5.1);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Intermediate", "Loop", 4.8);

# Wyoming Advanced 1
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Delta Lake via Lupine Meadows Access", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (312, 2329, 8.8);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.9);

# Wyoming Advanced 2
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Surprise and Amphitheater Lakes Trail", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (334, 2942, 8.9);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

# Wyoming Advanced 3
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Table Mountain Trail", "Wyoming", "Jedediah Smith Wilderness");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (427, 4146, 10.7);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Loop", 4.9);

# Wyoming Advanced 4
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Lake Solitude Trail", "Wyoming", "Grand Teton National Park");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (493, 2637, 16.0);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 5.0);

# Wyoming Advanced 5
INSERT INTO trails (trailName, trailState, trailRegion) VALUES ("Darby Canyon Wind Cave Trail", "Wyoming", "Caribou-Targhee National Forest");
INSERT INTO trailDetails (trailDurationMin, trailElevationFt, trailLengthMi) VALUES (212, 1811, 6.3);
INSERT INTO trailInfo (trailDifficulty, trailType, trailRating) VALUES ("Advanced", "Out and back", 4.8);

