# covid-sql-analysis
SQL join analysis combining COVID-19 death and vaccination data
# COVID SQL Analysis

This SQL project analyzes COVID-19 deaths and vaccinations using a JOIN operation.

## 🛠 Query Overview

```sql
USE databaseportfolio;

SELECT CD.location, 
       CD.date, 
       CD.total_cases, 
       CD.new_cases, 
       CD.total_deaths,  
       Cv.date AS 'vaccination date'
FROM coviddeaths CD
JOIN covidvaccinations CV 
  ON CV.iso_code = CD.iso_code;
