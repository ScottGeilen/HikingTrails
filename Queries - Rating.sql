USE hike;

# What are the top 10 lowest rated easy trails?
DROP PROCEDURE IF EXISTS getRatedTrails_LowE; 
DELIMITER $$ 
CREATE PROCEDURE getRatedTrails_LowE() BEGIN SELECT ti.trailRating AS Top10LowestRatedEasyTrails, t.trailName, t.trailState, t.trailRegion, ti.trailDifficulty FROM trails t, trailDetails td, trailInfo ti WHERE t.trailID = td.trailID AND t.trailID = ti.trailID AND ti.trailDifficulty = 'Easy' ORDER BY Top10LowestRatedEasyTrails ASC LIMIT 10; 
END$$ 
DELIMITER ;
CALL getRatedTrails_LowE();

# What are the top 10 highest rated easy trails?
DROP PROCEDURE IF EXISTS getRatedTrails_HighE; 
DELIMITER $$ 
CREATE PROCEDURE getRatedTrails_HighE() BEGIN SELECT ti.trailRating AS Top10HighestRatedEasyTrails, t.trailName, t.trailState, t.trailRegion, ti.trailDifficulty FROM trails t, trailDetails td, trailInfo ti WHERE t.trailID = td.trailID AND t.trailID = ti.trailID AND ti.trailDifficulty = 'Easy' ORDER BY Top10HighestRatedEasyTrails DESC LIMIT 10; 
END$$ 
DELIMITER ;
CALL getRatedTrails_HighE();

# What are the top 10 lowest rated intermediate trails?
DROP PROCEDURE IF EXISTS getRatedTrails_LowI; 
DELIMITER $$ 
CREATE PROCEDURE getRatedTrails_LowI() BEGIN SELECT ti.trailRating AS Top10LowestRatedIntermediateTrails, t.trailName, t.trailState, t.trailRegion, ti.trailDifficulty FROM trails t, trailDetails td, trailInfo ti WHERE t.trailID = td.trailID AND t.trailID = ti.trailID AND ti.trailDifficulty = 'Intermediate' ORDER BY Top10LowestRatedIntermediateTrails ASC LIMIT 10; 
END$$ 
DELIMITER ;
CALL getRatedTrails_LowI();

# What are the top 10 lowest rated intermediate trails?
DROP PROCEDURE IF EXISTS getRatedTrails_HighI; 
DELIMITER $$ 
CREATE PROCEDURE getRatedTrails_HighI() BEGIN SELECT ti.trailRating AS Top10HighestRatedIntermediateTrails, t.trailName, t.trailState, t.trailRegion FROM trails t, trailDetails td, trailInfo ti WHERE t.trailID = td.trailID AND t.trailID = ti.trailID AND ti.trailDifficulty = 'Intermediate' ORDER BY Top10HighestRatedIntermediateTrails DESC LIMIT 10; 
END$$ 
DELIMITER ;
CALL getRatedTrails_HighI();

# What are the top 10 lowest rated advanced trails?
DROP PROCEDURE IF EXISTS getRatedTrails_LowA; 
DELIMITER $$ 
CREATE PROCEDURE getRatedTrails_LowA() BEGIN SELECT ti.trailRating AS Top10LowestRatedAdvancedTrails, t.trailName, t.trailState, t.trailRegion FROM trails t, trailDetails td, trailInfo ti WHERE t.trailID = td.trailID AND t.trailID = ti.trailID AND ti.trailDifficulty = 'Advanced' ORDER BY Top10LowestRatedAdvancedTrails ASC LIMIT 10; 
END$$ 
DELIMITER ;
CALL getRatedTrails_LowA();

# What are the top 10 highest rated advanced trails?
DROP PROCEDURE IF EXISTS getRatedTrails_HighA; 
DELIMITER $$ 
CREATE PROCEDURE getRatedTrails_HighA() BEGIN SELECT ti.trailRating AS Top10HighestRatedAdvancedTrails, t.trailName, t.trailState, t.trailRegion FROM trails t, trailDetails td, trailInfo ti WHERE t.trailID = td.trailID AND t.trailID = ti.trailID AND ti.trailDifficulty = 'Advanced' ORDER BY Top10HighestRatedAdvancedTrails DESC LIMIT 10; 
END$$ 
DELIMITER ;
CALL getRatedTrails_HighA();

# What is the average rating of easy, intermediate, and advanced trails?
SELECT AVG(ti.trailRating) AS AverageRatingOutOf5, ti.trailDifficulty FROM trailDetails td, trailInfo ti WHERE td.trailID = ti.trailID AND ti.trailDifficulty = 'Easy' UNION ALL
SELECT AVG(ti.trailRating) AS AverageRatingOutOf5, ti.trailDifficulty FROM trailDetails td, trailInfo ti WHERE td.trailID = ti.trailID AND ti.trailDifficulty = 'Intermediate' UNION ALL
SELECT AVG(ti.trailRating) AS AverageRatingOutOf5, ti.trailDifficulty FROM trailDetails td, trailInfo ti WHERE td.trailID = ti.trailID AND ti.trailDifficulty = 'Advanced';

# What is the average rating of trails in every state?
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Alabama' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Alaska' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Arizona' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Arkansas' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'California' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Colorado' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Connecticut' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Delaware' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Florida' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Georgia' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Hawaii' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Idaho' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Illinois' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Indiana' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Iowa' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Kansas' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Kentucky' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Louisiana' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Maine' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Maryland' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Massachusetts' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Michigan' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Minnesota' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Mississippi' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Missouri' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Montana' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Nebraska' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Nevada' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'New Hampshire' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'New Jersey' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'New Mexico' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'New York' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'North Carolina' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'North Dakota' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Ohio' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Oklahoma' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Oregon' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Pennsylvania' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Rhode Island' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'South Carolina' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'South Dakota' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Tennessee' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Texas' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Utah' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Vermont' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Virginia' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Washington' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'West Virginia' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Wisconsin' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageRatingOutOf5, t.trailState FROM trails t, trailInfo ti WHERE t.trailID = ti.trailID AND t.trailState = 'Wyoming'
ORDER BY AverageRatingOutOf5 DESC;

# What is the average rating of easy trails in every state?
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Alabama' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Alaska' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Arizona' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Arkansas' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'California' AND ti.trailDifficulty = 'Easy' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Colorado' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Connecticut' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Delaware' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Florida' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Georgia' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Hawaii' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Idaho' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Illinois' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Indiana' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Iowa' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Kansas' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Kentucky' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Louisiana' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Maine' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Maryland' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Massachusetts' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Michigan' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Minnesota' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Mississippi' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Missouri' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Montana' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Nebraska' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Nevada' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Hampshire' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Jersey' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Mexico' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New York' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'North Carolina' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'North Dakota' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Ohio' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Oklahoma' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Oregon' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Pennsylvania' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Rhode Island' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'South Carolina' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'South Dakota' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Tennessee' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Texas' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Utah' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Vermont' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Virginia' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Washington' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'West Virginia' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Wisconsin' AND ti.trailDifficulty = 'Easy' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingEasy, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Wyoming' AND ti.trailDifficulty = 'Easy'
ORDER BY AverageTrailRatingEasy DESC;

# What is the average rating of intermediate trails in every state?
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Alabama' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Alaska' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Arizona' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Arkansas' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'California' AND ti.trailDifficulty = 'Intermediate' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Colorado' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Connecticut' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Delaware' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Florida' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Georgia' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Hawaii' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Idaho' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Illinois' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Indiana' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Iowa' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Kansas' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Kentucky' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Louisiana' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Maine' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Maryland' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Massachusetts' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Michigan' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Minnesota' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Mississippi' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Missouri' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Montana' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Nebraska' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Nevada' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Hampshire' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Jersey' AND ti.trailDifficulty = 'Intermediate'  UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Mexico' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New York' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'North Carolina' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'North Dakota' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Ohio' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Oklahoma' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Oregon' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Pennsylvania' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Rhode Island' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'South Carolina' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'South Dakota' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Tennessee' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Texas' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Utah' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Vermont' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Virginia' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Washington' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'West Virginia' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Wisconsin' AND ti.trailDifficulty = 'Intermediate' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingIntermediate, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Wyoming' AND ti.trailDifficulty = 'Intermediate'
ORDER BY AverageTrailRatingIntermediate DESC;

# What is the average rating of advanced trails in every state?
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Alabama' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Alaska' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Arizona' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Arkansas' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'California' AND ti.trailDifficulty = 'Advanced' UNION ALL
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Colorado' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Connecticut' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Delaware' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Florida' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Georgia' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Hawaii' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Idaho' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Illinois' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Indiana' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Iowa' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Kansas' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Kentucky' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Louisiana' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Maine' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Maryland' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Massachusetts' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Michigan' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Minnesota' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Mississippi' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Missouri' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Montana' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Nebraska' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Nevada' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Hampshire' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Jersey' AND ti.trailDifficulty = 'Advanced'  UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New Mexico' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'New York' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'North Carolina' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'North Dakota' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Ohio' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Oklahoma' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Oregon' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Pennsylvania' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Rhode Island' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'South Carolina' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'South Dakota' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Tennessee' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Texas' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Utah' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Vermont' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Virginia' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Washington' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'West Virginia' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Wisconsin' AND ti.trailDifficulty = 'Advanced' UNION ALL 
SELECT ROUND(AVG(ti.trailRating), 2) AS AverageTrailRatingAdvanced, t.trailState FROM trails t, trailInfo ti, trailDetails td WHERE t.trailID = ti.trailID AND td.trailID = t.trailID AND t.trailState = 'Wyoming' AND ti.trailDifficulty = 'Advanced'
ORDER BY AverageTrailRatingAdvanced DESC;
