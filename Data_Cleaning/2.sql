//*

2. Remove duplicates

*//

--  Table doesn't have an unique identifier to make removing duplicates easier
--  We'll have to use all the columns to find duplicates

SELECT 
    *,
    ROW_NUMBER() OVER( PARTITION BY company,location,industry,total_laid_off,percentage_laid_off,'date',stage,country,funds_raised_millions ) AS row_no
FROM w_layoffs_reprint;

----------------------------------------------------------------------------------------------------------------------------------------------------------------

--  Use a CTE to be able to use the WHERE clause because of 'unkown cloumn error'

WITH print_cte AS (
SELECT 
    *,
    ROW_NUMBER() OVER( PARTITION BY company,location,industry,total_laid_off,percentage_laid_off,'date',stage,country,funds_raised_millions ) AS row_no
FROM w_layoffs_reprint )
SELECT * FROM print_cte
WHERE row_no > 1;

----------------------------------------------------------------------------------------------------------------------------------------------------------------

--  You cannot delete data from a CTE, Create another table with the results

CREATE TABLE w_layoffs_reprint1
SELECT 
    *,
    ROW_NUMBER() OVER( PARTITION BY company,location,industry,total_laid_off,percentage_laid_off,'date',stage,country,funds_raised_millions ) AS row_no
FROM w_layoffs_reprint;

----------------------------------------------------------------------------------------------------------------------------------------------------------------

--  You can now delete the data

DELETE FROM w_layoffs_reprint1
WHERE row_no > 1;
