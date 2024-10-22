//*

3. Standardize the data

*//

--  Scan through the data & check for mistakes to correct

SELECT * FROM w_layoffs_reprint1;

----------------------------------------------------------------------------------------------

--  Remove the spaces before and after the company names

UPDATE w_layoffs_reprint1
SET company = TRIM(company);

----------------------------------------------------------------------------------------------

--  Crypto and crypto currency is one thing, fix in the industry column

UPDATE w_layoffs_reprint1
SET industry = 'Crypto'
WHERE industry regexp '^Crypto';

----------------------------------------------------------------------------------------------

--  United states and United  states. is one thing, remove the fullstop at the end

UPDATE w_layoffs_reprint1
SET country = TRIM( TRAILING '.' FROM country)
WHERE country regexp '^United States';
 
----------------------------------------------------------------------------------------------

--  When importing data, the date column was a TEXT data type now change it to DATE data type

UPDATE w_layoffs_reprint1
SET date = STR_TO_DATE (date, '%m/%d/%Y');

-----------------------------------------------


ALTER TABLE w_layoffs_reprint1
MODIFY COLUMN date DATE;
