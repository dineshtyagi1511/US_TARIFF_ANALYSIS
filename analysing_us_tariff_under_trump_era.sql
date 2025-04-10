CREATE DATABASE IF NOT EXISTS tariffs_db;
USE tariffs_db;

CREATE TABLE country_imports (
    id SERIAL PRIMARY KEY,
    country VARCHAR(255),
    import_share DECIMAL(5,2),
    tariff DECIMAL(5,2)
);

INSERT INTO country_imports (country, import_share, tariff) VALUES
('European Union', 18.5, 20),
('China', 13.4, 34),
('Japan', 4.5, 24),
('Vietnam', 4.2, 46),
('South Korea', 4.0, 26),
('Taiwan', 3.6, 32),
('India', 2.7, 27),
('United Kingdom', 2.1, 10),
('Switzerland', 1.9, 32),
('Thailand', 1.9, 37),
('Malaysia', 1.6, 24),
('Brazil', 1.3, 10),
('Singapore', 1.3, 10),
('Indonesia', 0.9, 32),
('Israel', 0.7, 17),
('Australia', 0.5, 10),
('Chile', 0.5, 10),
('Colombia', 0.5, 10),
('Turkey', 0.5, 10),
('Cambodia', 0.4, 49),
('Costa Rica', 0.4, 10),
('Philippines', 0.4, 18),
('Saudi Arabia', 0.4, 10),
('South Africa', 0.4, 31),
('Bangladesh', 0.3, 37),
('Ecuador', 0.3, 10),
('Peru', 0.3, 10),
('Argentina', 0.2, 10),
('Dominican Republic', 0.2, 10),
('Guatemala', 0.2, 10),
('Guyana', 0.2, 38),
('Honduras', 0.2, 10),
('Iraq', 0.2, 39),
('New Zealand', 0.2, 10),
('Nigeria', 0.2, 14),
('Norway', 0.2, 16),
('Pakistan', 0.2, 30),
('Algeria', 0.1, 30),
('Angola', 0.1, 32),
('Bahamas', 0.1, 10),
('Egypt', 0.1, 10),
('El Salvador', 0.1, 10),
('Jordan', 0.1, 20),
('Kazakhstan', 0.1, 27),
('Kuwait', 0.1, 10),
('Morocco', 0.1, 10),
('Nicaragua', 0.1, 19),
('Qatar', 0.1, 10),
('Sri Lanka', 0.1, 44),
('Trinidad and Tobago', 0.1, 10),
('Afghanistan', 0.05, 10),
('Albania', 0.05, 10),
('Andorra', 0.05, 10),
('Anguilla', 0.05, 10),
('Antigua and Barbuda', 0.05, 10),
('Armenia', 0.05, 10),
('Aruba', 0.05, 10),
('Azerbaijan', 0.05, 10),
('Bahrain', 0.05, 10),
('Barbados', 0.05, 10),
('Belize', 0.05, 10),
('Benin', 0.05, 10),
('Bermuda', 0.05, 10),
('Bhutan', 0.05, 10),
('Bolivia', 0.05, 10),
('Bosnia & Herzegovina', 0.05, 36),
('Botswana', 0.05, 38),
('British Indian Ocean Territory', 0.05, 10),
('British Virgin Islands', 0.05, 10),
('Brunei', 0.05, 24),
('Burundi', 0.05, 10),
('Cameroon', 0.05, 12),
('Cape Verde', 0.05, 10),
('Cayman Islands', 0.05, 10),
('Central African Republic', 0.05, 10),
('Chad', 0.05, 13),
('Christmas Island', 0.05, 10),
('Cocos (Keeling) Islands', 0.05, 10),
('Comoros', 0.05, 10),
('Cook Islands', 0.05, 10),
('Côte d''Ivoire', 0.05, 21),
('Curaçao', 0.05, 10),
('Democratic Republic of the Congo', 0.05, 11),
('Djibouti', 0.05, 10),
('Dominica', 0.05, 10),
('Equatorial Guinea', 0.05, 13),
('Eritrea', 0.05, 10),
('Eswatini', 0.05, 10),
('Fiji', 0.05, 32),
('French Guiana', 0.05, 10),
('French Polynesia', 0.05, 10),
('Gabon', 0.05, 10),
('Gambia', 0.05, 10),
('Georgia', 0.05, 10),
('Ghana', 0.05, 10),
('Gibraltar', 0.05, 10),
('Grenada', 0.05, 10),
('Guadeloupe', 0.05, 10),
('Guinea', 0.05, 10),
('Guinea-Bissau', 0.05, 10),
('Haiti', 0.05, 10),
('Iceland', 0.05, 10),
('Iran', 0.05, 10),
('Jamaica', 0.05, 10),
('Kenya', 0.05, 10),
('Kiribati', 0.05, 10),
('Kosovo', 0.05, 10),
('Kyrgyzstan', 0.05, 10),
('Laos', 0.05, 48),
('Lebanon', 0.05, 10),
('Lesotho', 0.05, 50),
('Liberia', 0.05, 10),
('Libya', 0.05, 31),
('Liechtenstein', 0.05, 37),
('Madagascar', 0.05, 47),
('Malawi', 0.05, 18),
('Maldives', 0.05, 10),
('Mali', 0.05, 10),
('Marshall Islands', 0.05, 10),
('Martinique', 0.05, 10),
('Mauritania', 0.05, 10),
('Mauritius', 0.05, 40),
('Mayotte', 0.05, 10),
('Micronesia', 0.05, 10),
('Moldova', 0.05, 31),
('Monaco', 0.05, 10),
('Mongolia', 0.05, 10),
('Montenegro', 0.05, 10),
('Montserrat', 0.05, 10),
('Mozambique', 0.05, 16),
('Myanmar', 0.05, 45),
('Namibia', 0.05, 21),
('Nauru', 0.05, 30),
('Nepal', 0.05, 10),
('Niger', 0.05, 10),
('Norfolk Island', 0.05, 29),
('North Macedonia', 0.05, 33),
('Oman', 0.05, 10),
('Panama', 0.05, 10),
('Papua New Guinea', 0.05, 10),
('Republic of the Congo', 0.05, 10),
('Reunion', 0.05, 37),
('Rwanda', 0.05, 10),
('Saint Helena', 0.05, 10),
('Saint Kitts and Nevis', 0.05, 10),
('Saint Lucia', 0.05, 10),
('Saint Pierre & Miquelon', 0.05, 50),
('Saint Vincent and the Grenadines', 0.05, 10),
('Samoa', 0.05, 10),
('San Marino', 0.05, 10),
('São Tomé and Príncipe', 0.05, 10),
('Senegal', 0.05, 10),
('Serbia', 0.05, 38),
('Sierra Leone', 0.05, 10),
('Sint Maarten', 0.05, 10),
('Solomon Islands', 0.05, 10),
('South Sudan', 0.05, 10),
('Sudan', 0.05, 10),
('Suriname', 0.05, 10),
('Syria', 0.05, 41),
('Tajikistan', 0.05, 10),
('Tanzania', 0.05, 10),
('Timor-Leste', 0.05, 10),
('Togo', 0.05, 10),
('Tokelau', 0.05, 10),
('Tonga', 0.05, 10),
('Tunisia', 0.05, 28),
('Turkmenistan', 0.05, 10),
('Turks and Caicos Islands', 0.05, 10),
('Tuvalu', 0.05, 10),
('Uruguay', 0.05, 10),
('Uzbekistan', 0.05, 10),
('Vanuatu', 0.05, 23),
('Yemen', 0.05, 10),
('Zambia', 0.05, 17),
('Zimbabwe', 0.05, 18),
('Heard and McDonald Islands', NULL, 10),
('Svalbard and Jan Mayen', NULL, 10);

SELECT * 
FROM country_imports;

-- **TASK-1** 
-- FIND THE PERCENTAGE OF TOTAL IMPORTS EACH COUNTRY CONTRIBUTES?

SELECT 
    country,
    import_share,
    (import_share / (SELECT SUM(import_share) FROM country_imports)) * 100 AS percentage_of_total_imports
FROM country_imports
ORDER BY percentage_of_total_imports DESC;

-- **TASK-2** 
-- Categorize countries based on their import shareClassify countries into three categories:
-- High (import share > 5)
--  Medium (import share between 2 and 5)
-- Low (import share < 2)

SELECT 
    country, import_share,
    CASE 
        WHEN import_share > 5 THEN 'high'
        WHEN import_share BETWEEN 2 AND 5 THEN 'medium'
        ELSE 'low'
	END AS import_share
FROM country_imports;

-- **TASK-3** 
-- FIND THE CUMULATIVE SHARE OF IMPORTS BY COUNTRY, STOPPING WHEN 80% OF TOTAL IMPORTS IS REACHED ?

WITH running_total AS (
      SELECT  country ,import_share,
              SUM(import_share) OVER (ORDER BY IMPORT_SHARE DESC) AS cumulative_share ,
              (SELECT SUM(import_share) FROM country_imports ) AS total_imports 
      FROM country_imports 
)
SELECT country ,import_share,cumulative_share ,total_imports 
FROM running_total
WHERE cumulative_share < total_imports * 0.8 ;

-- **TASK-4 ** 
-- FIND THE COUNTRIES WHERE THE TARIFF IS GREATER THAN THE TARIFF OF THE PREVIOUS COUNTRY IN ALPHABETICAL ORDER ?

SELECT country , tariff 
FROM (
     SELECT country , tariff ,
     LAG(tariff) OVER (ORDER BY country ) AS previous_tariff
     FROM country_imports) AS tariff_comparison
WHERE tariff > previous_tariff ;

-- ** TASK-5 ** 
-- FIND HOW MANY COUNTRIES HAVE A TARIFF WITHIN 10% OF THE AVERAGE TARIFF ?     

WITH avg_tariff AS (
      SELECT AVG(tariff) AS avg_tariff
      FROM country_imports 
      )
SELECT COUNT(*) AS count_of_countries 
FROM country_imports 
WHERE tariff BETWEEN (SELECT avg_tariff  * 0.9 FROM avg_tariff )
             AND (SELECT avg_tariff  * 1.1  FROM avg_tariff );
             
             