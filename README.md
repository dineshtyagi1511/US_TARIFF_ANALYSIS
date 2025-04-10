# US_TARIFF_ANALYSIS

![](https://github.com/dineshtyagi1511/US_TARIFF_ANALYSIS/blob/main/logo.png)
## Overview
This project involves a comprehensive analysis of US reciprocal tariff imposed by TRUMP using SQL. The goal is to extract valuable insights and answer various business questions based on the dataset.

## Objectives
This analysis aims to:
-- Measure each country’s contribution to total U.S. imports.
-- Classify countries by import share (High/Medium/Low).
-- Identify the key countries contributing to 80% of imports.
-- Detect tariff anomalies (where a country’s tariff is higher than its alphabetical predecessor).
-- Assess tariff distribution by finding countries within 10% of the average tariff.

## Dataset

## Schema

- **Database Creation**: Created a database named `tariffs_d`.

```sql
CREATE DATABASE IF NOT EXISTS tariffs_db;
USE tariffs_db;
```

- **Table Creation**: Created tables for id , country ,import_share, tariff

```sql
CREATE TABLE country_imports (
    id SERIAL PRIMARY KEY,
    country VARCHAR(255),
    import_share DECIMAL(5,2),
    tariff DECIMAL(5,2)
);
```

**TASK-1 -- FIND THE PERCENTAGE OF TOTAL IMPORTS EACH COUNTRY CONTRIBUTES?**
```sql
SELECT 
    country,
    import_share,
    (import_share / (SELECT SUM(import_share) FROM country_imports)) * 100 AS percentage_of_total_imports
FROM country_imports
ORDER BY percentage_of_total_imports DESC;
```
**Objective** : Determine each country’s share of U.S. imports


**TASK-2 - Categorize countries based on their import shareClassify countries into three categories: High (import share > 5) ,Medium (import share between 2 and 5) ,Low (import share < 2)**

```sql
SELECT 
    country, import_share,
    CASE 
        WHEN import_share > 5 THEN 'high'
        WHEN import_share BETWEEN 2 AND 5 THEN 'medium'
        ELSE 'low'
	END AS import_share
FROM country_imports;
```

**Objective**: Categorize trade partners by import volume.


**TASK-3 --FIND THE CUMULATIVE SHARE OF IMPORTS BY COUNTRY, STOPPING WHEN 80% OF TOTAL IMPORTS IS REACHED ?**

```sql
WITH running_total AS (
      SELECT  country ,import_share,
              SUM(import_share) OVER (ORDER BY IMPORT_SHARE DESC) AS cumulative_share ,
              (SELECT SUM(import_share) FROM country_imports ) AS total_imports 
      FROM country_imports 
)
SELECT country ,import_share,cumulative_share ,total_imports 
FROM running_total
WHERE cumulative_share < total_imports * 0.8 ;
```
**Objective**: Identify the minimal set of countries contributing to 80% of imports.


**TASK-4 -- FIND THE COUNTRIES WHERE THE TARIFF IS GREATER THAN THE TARIFF OF THE PREVIOUS COUNTRY IN ALPHABETICAL ORDER ?**

```sql
SELECT country , tariff 
FROM (
     SELECT country , tariff ,
     LAG(tariff) OVER (ORDER BY country ) AS previous_tariff
     FROM country_imports) AS tariff_comparison
WHERE tariff > previous_tariff ;
```
**Objective**: Find countries where tariffs defy alphabetical trends.

**TASK-5 -- FIND HOW MANY COUNTRIES HAVE A TARIFF WITHIN 10% OF THE AVERAGE TARIFF ?**

```sql
WITH avg_tariff AS (
      SELECT AVG(tariff) AS avg_tariff
      FROM country_imports 
      )
SELECT COUNT(*) AS count_of_countries 
FROM country_imports 
WHERE tariff BETWEEN (SELECT avg_tariff  * 0.9 FROM avg_tariff )
             AND (SELECT avg_tariff  * 1.1  FROM avg_tariff );
```

**Objective**: Measure tariff uniformity across partners.


## REPORTS 
This SQL-driven analysis reveals trade dependencies, tariff inconsistencies, and opportunities for diversification. Policymakers and businesses can use these insights to optimize supply chains and negotiate better trade terms.
