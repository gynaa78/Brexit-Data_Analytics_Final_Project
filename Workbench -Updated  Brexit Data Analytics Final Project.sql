-- First of all I used 'table data import wizard' under 'Schemas' to create a new_schema with the needed data under the table names referendum and census
-- I proceeded to explore my tables : its columns, indexes, primary and foreign keys, especially the primary connection between both tables.
SELECT * FROM referendum;
SELECT * FROM census;

-- Exploring votes cast from the referendum table - total votes, total valid votes and total rejected ballots
SELECT SUM(votes_cast) AS 'Total Votes Cast',
SUM(valid_votes) AS 'Valid Votes Counted' , 
SUM(rejected_ballots)  AS 'Votes Rejected' FROM referendum;

-- Finding out the regions that voted and then their designated number of areas from the referendum table.
SELECT DISTINCT region FROM referendum;
SELECT DISTINCT region,area FROM referendum;
SELECT DISTINCT region,COUNT(area) FROM referendum GROUP BY region; 

-- Finding out the various regions and their average,maximum and minimum percentage TURNOUT 
SELECT region, ROUND(AVG(percent_turnout)) AS 'Average % turnout', MAX(percent_turnout), MIN(percent_turnout)
FROM referendum
GROUP BY region
ORDER BY region; 


-- I identified 'area' as what connects both tables and can therefore be joined by AREA as shown below
SELECT * FROM referendum ref
INNER JOIN census cen
ON ref.area = cen.area;

-- Exploring Joins: From the joined table, selecting each area and district type from the census table; 
-- Then selecting the region, number of electorates and how many electorates voted remain or leave from the referendum table in each area of the census table.

SELECT cen.area, cen.type, ref.electorate, ref.region, ref.remain, ref.leave
FROM census cen
INNER JOIN referendum ref
ON cen.area = ref.area;


-- Finding the average leave percentage and average remain percentage

SELECT 
ROUND(AVG(percent_leave),2) AS 'Percentage of Leavers',
  ROUND(AVG(Percent_Remain),2) AS 'Percentage of Remainers'
FROM referendum;


-- Top five areas that supported Remain

SELECT Area, Percent_Remain
FROM referendum
WHERE  Percent_remain > Percent_Leave
ORDER BY percent_remain DESC
LIMIT 5;


              
              
-- Top five areas that supported leave
 
SELECT Area, Percent_Leave
FROM referendum
WHERE Percent_Leave > Percent_remain
ORDER BY percent_leave DESC
LIMIT 5;

-- Using CASE WHEN to separate England, Scotland, Wales and Northern Ireland Votes
SELECT DISTINCT region, area, votes_cast,
CASE 
WHEN region IN ('Northern Ireland') THEN 'Northern Ireland votes'
WHEN region IN ('Scotland') THEN 'Scotland votes'
WHEN region IN ('Wales') THEN 'Wales votes'
ELSE 'England Votes'
END AS "Separation of Votes"
FROM referendum;


-- Finding out how each area voted REMAIN and LEAVE percentage wise, and whether REMAIN or LEAVE won the day

SELECT area, Percent_remain,Percent_leave,
CASE
WHEN Percent_remain > Percent_leave THEN 'Remain Won'
WHEN Percent_leave > Percent_remain THEN 'Leave Won'
ELSE 'OTHER'
END AS "WHO WON?"
FROM referendum;


-- Finding the number of residents in each District in the CENSUS data

SELECT Type, sum(All_Residents) as Total_Residents
FROM census
GROUP BY Type;



-- Using subqueries to explore Percent-turnout and Rejected Ballot papers

-- Looking at the area and region with the maximum percent turnout

SELECT Area, Region 
FROM referendum WHERE Percent_Turnout = (SELECT Max(Percent_Turnout) FROM referendum);

-- Looking at the area and region with the minimum percent turnout

SELECT Area, Region 
FROM referendum WHERE Percent_Turnout = (SELECT MIN(Percent_Turnout) FROM referendum);

-- looking at the area and region with the least rejected ballots
SELECT Area, Region, Percent_Turnout, Rejected_Ballots
FROM referendum WHERE Rejected_Ballots = (SELECT MIN(Rejected_Ballots)
FROM referendum);


-- comparing each region's rejected ballots to the average rejected ballots 

SELECT Region, Rejected_Ballots, (SELECT AVG(Rejected_Ballots) FROM referendum) AS 'All Average Rejected Ballots',
Rejected_Ballots - (SELECT AVG(Rejected_Ballots) FROM referendum) AS 'Rejected Ballots difference'
FROM Referendum
ORDER BY Region DESC;


 






