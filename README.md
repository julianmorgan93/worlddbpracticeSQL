🌍 World Database SQL Exercises

This repository contains SQL practice queries using the classic MySQL World Sample Database.

The world.sql script initialises the database with information about countries, cities, and languages.
The worlddbpractice.sql file includes 19 SQL exercises that cover selection, filtering, joins, and aggregations.

📂 Contents

world.sql – script to create and populate the World Database

worlddbpractice.sql – practice queries and solutions (19 exercises)

README.md – description and usage instructions

🗂 Database Overview

The World Database consists of 3 main tables:

Country – general information about countries (population, region, surface area, GNP, etc.)

City – major cities and their populations

CountryLanguage – languages spoken in each country

🚀 Usage

Import the database:

mysql -u root -p < world.sql

Open MySQL and select the database:

USE world;

Run the practice queries from worlddbpractice.sql:

mysql -u root -p world < worlddbpractice.sql

📚 Reference

MySQL Sample Databases

# worlddbpracticeSQL
This repository contains SQL practice queries using the classic MySQL World Sample Database.
