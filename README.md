# Data-Analytics_Project

ABOUT ME : I have worked in varied job roles such as a research assistant, a media and digital contents manager that involved the management and/or analysis of data. 
I have found the collection of data, and analysing them to draw meaningful and informative conclusions fulfilling. I wish to now work in a data analyst or data engineer role to enable me make informed data analysis, predictions and presentations to assist organisations to embark on successful ventures and solve rising issues.

ABOUT THIS PROJECT:

A referendum was held on the 23 June 2016 to decide whether the United Kingdom should remain a member of the European Union or leave. This project looks into Brexit to analyse findings  using EXCEL, Tableau, PowerBI, & MySQL to draw meaningful conclusions from related databases as appended.

BELOW ARE EXCERPTS FROM THE CONTENTS OF THIS REPOSITORY (For a better read and view of the tables attached, click on Raw).


EXCEL :  The uploaded EXCEL file is named as referendum analysis for Final Data Project.xls

The dataset constituted two tables  - Referendum and Census.

The analysis shown below can be found at the end of the file as attached in this repository. 

To analyse the excel data, aside using the Sum, AVG, MIN and MAX formulas, I used statistical formulas like INDEX MATCH, IF and COUNTIF as shown below:


 =INDEX(E2:E383, MATCH(MAX(I2:I383),I2:I383,0)) to look for the area with maximum percent turnout which happened to be Gibraltar

Using =INDEX(E2:E383, MATCH(MIN(I2:I383),I2:I383,0)) to look for the area with minimum percent turnout revealed it was  Glasgow City.


I also used the IF formula below to create a new column - COLUMN V, to show whether an area voted REMAIN or LEAVE :

=IF(T2 >S2, "Leave", "Remain")


To count the number of areas that voted leave, I used the COUNTIF formula: =COUNTIF(V2:V383,"Leave"), which gave the answer 263

And to count the number of areas that voted remain, I used =COUNTIF(V2:V383,"<>Leave") which gave the answer 119




Structured Query Language (SQL)

I used MYSQL in Workbench as attached in this repository to issue queries on the given data and arrive at meaningful conclusions to analyse the data.

Some of the SQL Queries I used are as follows:

First of all I used 'table data import wizard' under 'Schemas' to create a new_schema with the needed data under the table names referendum and census, before exploring the data using SQL queries.

-- Finding out how each area voted REMAIN and LEAVE percentage wise, and whether REMAIN or LEAVE won the day

SELECT area, Percent_remain,Percent_leave,
CASE
WHEN Percent_remain > Percent_leave THEN 'Remain Won'
WHEN Percent_leave > Percent_remain THEN 'Leave Won'
ELSE 'OTHER'
END AS "WHO WON?"
FROM referendum;

           
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


SOME OF THE RETRIEVED SOLUTIONS TO THE QUERIES ARE AS BELOW:


-- Finding the average leave percentage and average remain percentage

SELECT 
ROUND(AVG(percent_leave),2) AS 'Percentage of Leavers',
  ROUND(AVG(Percent_Remain),2) AS 'Percentage of Remainers'
FROM referendum;

Percentage of Leavers.           Percentage of Remainers
      52.99                                 47.01



-- Top five areas that supported Remain

SELECT Area, Percent_Remain
FROM referendum
WHERE  Percent_remain > Percent_Leave
ORDER BY percent_remain DESC
LIMIT 5;
 Area	Percent_Remain

Gibraltar	        95.91
Lambeth	          78.62
Hackney	          78.48
Haringey	        75.57
City of London	  75.29



-- Top five areas that supported leave
 
SELECT Area, Percent_Leave
FROM referendum
WHERE Percent_Leave > Percent_remain
ORDER BY percent_leave DESC
LIMIT 5;


Area	           Percent_Leave

Boston	         75.56
South Holland	   73.59
Castle Point	   72.7
Thurrock	       72.28
Great Yarmouth	  71.5


-- Finding out the various regions and their average, maximum and minimum percentage TURNOUT 

SELECT region, ROUND(AVG(percent_turnout)) AS 'Average % turnout', MAX(percent_turnout), MIN(percent_turnout)
FROM referendum
GROUP BY region
ORDER BY region; 



# region	       Average % turnout	MAX(percent_turnout)	MIN(percent_turnout)
Northern Ireland	          63	              62.69	               62.69
North East	                69	              74.35	               64.86
Scotland	                  69	              76.13	               56.25
Wales	                      72	              77.74	               67.39
North West	                71	              79.78	               59.77
West Midlands	              75	              80.88	               63.81
Yorkshire and The Humber	  72	              81.02	               62.94
East Midlands	              75	              81.92	               61.82
London	                    70	              82.09	               59.25
East	                      76	              82.51	               66.31
South East	                77	              83.57	               62.13
South West	                78	              83.64	               69.3


DATA VISUALISATIONS


I used mostly POWERBI for the data visualisation and made use of its Q & A function as well as its Smart Narrative to analyse the data.
However, I used tableau to create an area map of UK to show the average percent LEAVE and the average percent REMAIN for BREXIT. 
Also a different dataset was used for the Tableau map. 

All the datasets are attached in this repository.

Some of the findings using PowerBI to analyse the data are as follows:


At 2391718, South East had the highest Remain and was 442.70% higher than Northern Ireland, which had the lowest Remain at 440707.


Remain and total Leave are positively correlated with each other.


South East accounted for 14.82% of Remain.


Remain and Leave diverged the most when the Region was London, when Remain were 750287 higher than Leave.


At 3,495.39, South East had the highest Percent_Leave and was 7,804.55% higher than Northern Ireland, which had the lowest Percent_Leave at 44.22.



Percent_Leave and total Percent_Remain are positively correlated with each other.



Percent_Leave and Percent_Remain diverged the most when the Region was East Midlands, when Percent_Leave were 765.96 higher than Percent_Remain.



South East accounted for 17.27% of Percent_Leave.



Across all 12 Region, Percent_Leave ranged from 44.22 to 3,495.39.
 
 



