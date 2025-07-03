USE databaseportfolio ;
 SELECT CD.location, 
	    CD.date, 
        CD.total_cases, 
        CD.new_cases, 
        CD.total_deaths,  
        Cv.date AS 'vaccination date'
 FROM coviddeaths CD
JOIN covidvaccinations CV 
     ON CV.iso_code = CD.iso_code;