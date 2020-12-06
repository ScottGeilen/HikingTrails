USE hike;

# What are the most common regions?
SELECT trailRegion, trailState, COUNT(trailRegion) commonRegionCount FROM trails GROUP BY trailRegion ORDER BY commonRegionCount DESC LIMIT 35;
