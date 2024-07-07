# Covid 19 Infection Analysis

### Project Overview

This data analysis project was created to showcase how fast Covid 19 spread and its level of contagion. This dataset looks at Covid cases arounds the world, and is used to identify deaths, vaccinations, and amount of cases all over the world and broken down by country. This is one of the first projects I have completed. It was done using a step-by-step video guide created by Alex the Analyst.

Link to walkthrough: https://www.youtube.com/watch?v=qfyynHBFOsM&list=PLUaB-1hjhk8H48Pj32z4GZgGWyylqv85f


### Data Sources

Covid Data: The orginal dataset is too large for upload. The set is titled "owid-covid-data".
- Download Dataset: https://ourworldindata.org/covid-deaths


### Tools
 - Excel - Data Cleaning
 - SQL Server - Data Analysis
 - Tableau - Data Visualization


### Data Cleaning

Upon loading the initial dataset in Excel, I split the table in half and created 2 new tables. One looked at the death rate and the other was the vacinnation rate. This allowed for the tables and queries to be focused on their respective data types. I also made sure that the "population" column was copied and moved over to the "death rate" table, which prevented me from having to make multiple JOIN statements throughout the analysis process.

As this dataset was taken from the Our World in Data website, I trusted the the validity of the data. The dataset is also constantly being updated, so I also trusted the cleanliness of it.


### Data Analysis/Exploration

The data was then uploaded to SQL Server, where I then started to look for various trends and connections between columns. (Queries can be seen in "CovidDeaths.sql") Various queires that were made include:
- Comparing total cases to total deaths (show the likelihood of a person dying based on the country they are located in)
- Showing the percentage of the world population that got covid
- Identifying death rates based on country, continent, and overall population
- Looking at how vaccinations affected the infection and death rate of Covid


### Analysis Finding / Data Visualzations
- Europe had the highest death count, with the Oceania area having the lowest
- The countries with the highest population percentage infected were: UK, USA, China, Mexico, and India
- Total cases peaked around the end of 2021, however the death rate had gone down drasticallty be then
  - The vaccination rates were rather high around this time, and quarantines had mostly been lifted.
 
Link to Tableau Visuals: https://public.tableau.com/app/profile/austin.witkowski/viz/CovidDashboard_17163205320640/Dashboard1?publish=yes


### Limitations

It should be noted that this dataset was created using reported cases. It is possible that not all cases were identified and reported around the world. The infection rate is also higher in more urban setting, meaning more rural countries would have a lower rate. 


