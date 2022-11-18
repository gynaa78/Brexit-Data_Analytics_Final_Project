# Data-Analytics_Project



ABOUT ME : I have worked in varied job roles such as a research assistant, a media and digital contents manager that involved the management and/or analysis of data. 

I have found the collection of data, and analysing them to draw meaningful and informative conclusions fulfilling. I wish to now work in a data analyst or data engineer role to enable me make informed data analysis, predictions and presentations to assist organisations to embark on successful ventures and solve rising issues.



ABOUT THIS PROJECT:


A referendum was held on the 23 June 2016 to decide whether the United Kingdom should remain a member of the European Union or leave. This project looks into Brexit to analyse findings  using EXCEL, Tableau, PowerBI, MySQL, & Python (Pandas & Seaborn) to draw meaningful conclusions from related databases as appended.

Take a look at my presentation that summarises my time at the NIYO Bootcamp and what my final project entails. Click on link below to see the presentation:

https://www.canva.com/design/DAE_yFNKXjA/2YlDRYgs2-BzM9bEEQlNWA/view?utm_content=DAE_yFNKXjA&utm_campaign=share_your_design&utm_medium=link&utm_source=shareyourdesignpanel




The Story told:
Being given the dataset, I used Excel formulas and statistical functions to firstly analyse the data, then used SQL for further analysis via queries and sub queries. I then used Power BI and Tableau to create the visualisations based on the results from the Excel and SQL analysis. I also used python (Pandas and Seaborn) to create visualisations.

The Brexit story goes like this:

The outcome of the referendum shows percent leave taking the lead with approximately 52% , with percent remain having approximately 47%.  17 million voted leave with 16m voting remain.

Regionwise, SOUTH EAST had the highest percent turnout at 18.32% with NORTHERN IRELAND having the lowest percent turnout with 0.22%.

The area with the maximum percent turnout was Gibraltar, while the area with the minimum percent turnout was Glasgow City.

The tableau map I created shows the UK depicted mostly in hues of blue at the south with a few exceptions and mostly in hues of red at the north. This goes to show that the southern part of the UK mostly voted blue which represented LEAVE. While the South mostly voted red which represented REMAIN

There were a few exceptions as shown on the bar chart for the remain and leave by region. For example LONDON based in the South was a hotspot for REMAIN.
In LONDON,  2.26M voted remain while 1.51 M voted Leave. So REMAINERS WON!

For percent grandtotal of percent remain and leave by region, the far ends stayed the same for both percent remain and percent leave, but some of the regions within changed positions. SOUTH EAST had the highest percent leave and percent remain, while Northern Ireland had the lowest percent leave and percent remain.

Finally using python (pandas and Seaborn) helped to visualise percent turnout by region as against rejected ballots per region. The surprising finding was that although Northern Ireland had the lowest percent turnout , they had the most rejected ballots. The question remains, what caused this? Was it lack of interest or lack of education? However the given dataset did not allow me to find out the cause of this.



BELOW ARE EXCERPTS FROM THE CONTENTS OF THIS REPOSITORY (For a better read and view of the tables attached, click on Raw).




EXCEL :  The uploaded EXCEL file is named as referendum analysis for Final Data Project.xls

The dataset constituted two tables  - Referendum and Census.

The analysis shown below can be found at the end of the file as attached in this repository. 

To analyse the excel data, aside using the Sum, AVG, MIN and MAX formulas, I used statistical functions like INDEX MATCH, IF and COUNTIF.

 I used INDEX MATCH to look for the area with maximum percent turnout which happened to be Gibraltar, and to look for the area with minimum percent turnout which was Glasgow City.

I also used the IF formula below to create a new column - COLUMN V, to show whether an area voted REMAIN or LEAVE.

To count the number of areas that voted leave, I used the COUNTIF formula which gave the answer 263

And to count the number of areas that voted remain, COUNTIF gave the answer 119





STRUCTURED QUERY LANGUAGE (SQL)

I used MYSQL in Workbench as attached in this repository to issue queries and sub queries on the given data and arrive at meaningful conclusions to analyse the data.

First of all I used 'table data import wizard' under 'Schemas' to create a new_schema with the needed data under the table names referendum and census, before exploring the data using SQL queries.
           
-- I identified 'area' as what connects both tables and therefore joined the two tables by AREA.

SOME OF THE RETRIEVED SOLUTIONS TO THE QUERIES ARE AS BELOW:

-- Top five areas that supported Remain with their Percent_Leave

Gibraltar	: 95.91, Lambeth : 78.62, Hackney : 78.48, Haringey : 75.57, City of London	: 75.29


-- Top five areas that supported leave with their Percent_Leave

Boston: 75.56, South Holland: 73.59, Castle Point:	72.7, Thurrock:	 72.28, Great Yarmouth:	 71.5





DATA VISUALISATIONS

I used mostly POWERBI for the data visualisation and made use of its Q & A function as well as its Smart Narrative to analyse the data.
However, I also used Pandas, Seaborn and tableau to create additional visualisations such as using tableau to create an area map of UK to show the average percent LEAVE and the average percent REMAIN for BREXIT.

The visualisations I created using Python (Pandas and Seaborn) can be accessed using the following link:

https://colab.research.google.com/drive/1j_DTk1izgJTEAskfrdgq1wWVwJ0aq8V5?usp=sharing


A different dataset was used for the Tableau map. 





All the datasets used are attached in this repository.




Some of the findings using Power BI's smart narrative to analyse the data are as follows:


At 2391718, South East had the highest Remain and was 442.70% higher than Northern Ireland, which had the lowest Remain at 440707.


Remain and total Leave are positively correlated with each other.


South East accounted for 14.82% of Remain.


Remain and Leave diverged the most when the Region was London, when Remain were 750287 higher than Leave.


At 3,495.39, South East had the highest Percent_Leave and was 7,804.55% higher than Northern Ireland, which had the lowest Percent_Leave at 44.22.



Percent_Leave and total Percent_Remain are positively correlated with each other.



Percent_Leave and Percent_Remain diverged the most when the Region was East Midlands, when Percent_Leave were 765.96 higher than Percent_Remain.



South East accounted for 17.27% of Percent_Leave.



Across all 12 Region, Percent_Leave ranged from 44.22 to 3,495.39.
 
 



