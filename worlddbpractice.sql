use world;

 --- EXERCISES DAY 4 TASK 1 ---
 
 
 -- 1.Count Cities in USA: Scenario: You've been tasked with conducting a demographic analysis of cities in the United States. Your first step is to determine the total number of cities within the country to provide a baseline for further analysis. 
 
SELECT COUNT(*) AS Cities_in_USA
FROM city
JOIN country
ON city.CountryCode = country.Code
WHERE country.Name = "United States";

SELECT COUNT(*) AS Cities_in_USA
FROM city
WHERE CountryCode="USA";


-- 2. Country with Highest Life Expectancy:

SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;


-- 3. New Year Promotion: Featuring Cities with 'New : 

SELECT Name
FROM city
WHERE Name LIKE "%New%";

-- 4. Display Columns with Limit (First 10 Rows)

SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;

-- 5. Cities with Population Larger than 2,000,000


SELECT Name, Population
FROM city
WHERE Population > "2000000";

-- 6. Cities Beginning with 'Be' Prefix

SELECT Name
FROM city
WHERE Name LIKE "Be%";


-- 7. Cities with Population Between 500,000-1,000,000

SELECT Name, Population
FROM city
WHERE Population BETWEEN "500000" AND "1000000";


-- 8. Display Cities Sorted by Name in Ascending Order

SELECT Name 
FROM city
ORDER BY Name;


-- 9. Most Populated City

SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 1;


-- 10. City Name Frequency Analysis: Supporting Geography Education

SELECT distinct Name, COUNT(Name)
FROM city
GROUP BY Name;

-- 11. City with the Lowest Population

SELECT Name, Population
FROM city
ORDER BY Population ASC
LIMIT 1;


-- 12. Country with Largest Population

SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 1;


-- 13. Capital of Spain

SELECT country.Name, city.Name
FROM country
JOIN city
ON country.Capital = city.ID
WHERE country.Name = "Spain";


-- 14. Cities in Europe:

SELECT country.Name, city.Name
FROM country
JOIN city
ON country.Capital = city.ID
WHERE country.Continent = "Europe";


-- 15. Average population by country

Select Name, ROUND(avg(population)) as avg_population
from country
group by Name
ORDER BY avg_population DESC;

-- 16. Capital Cities Population Comparison

select country.Name, City.Name, city.population
from country 
join City
on country.capital = city.ID
order by Population DESC;
 
-- population capital cities

select city.name, country.Capital, city.Population from city
join country 
on city.CountryCode = country.Code
where Capital in (select distinct capital country)
order by Capital;
 
 -- 17. Countries with Low Population Density:


select country.Name, (country.Population/country.SurfaceArea) as Population_density
FROM country 
WHERE (Population / SurfaceArea) < "10"
order by  Population_density DESC;

-- 18. Cities with High GDP per Capita --

SELECT co.Name, ci.Name, co.Population, co.GNP, (co.GNP/co.Population) as GDP_per_capita
FROM city AS ci
JOIN country AS co
ON co.code = ci.CountryCode
ORDER BY GDP_per_capita DESC;


-- 19. Display Columns with Limit (Rows 31-40) --

SELECT * 
FROM city  
ORDER BY Population DESC 
LIMIT 10 
OFFSET 30;

