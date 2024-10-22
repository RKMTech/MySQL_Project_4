//*

4. Null values or blank values

*//

--  Fill in the blank values in industry were applicable

SELECT * FROM w_layoffs_reprint1
WHERE industry = '';


----------------------------------------------------------

SELECT * FROM w_layoffs_reprint1 w1
JOIN w_layoffs_reprint1 w2
USING ( company, location )
WHERE w1.industry =''
AND w2.industry IS NOT NULL;

----------------------------------------------------------

UPDATE w_layoffs_reprint1 w1
JOIN w_layoffs_reprint1 w2
USING ( company, location )
SET w1.industry = w2.industry
WHERE w1.industry =''
AND w2.industry !='';

--------------------------------------------------------------------------------------------------------------------

--  Delete rows without percentage_laid_off and total_laid_off values because they'll be irrelavant to our anlysis

SELECT * FROM w_layoffs_reprint1
WHERE percentage_laid_off IS NULL 
AND total_laid_off IS NULL;

----------------------------------------------------------

DELETE FROM w_layoffs_reprint1
WHERE percentage_laid_off IS NULL 
AND total_laid_off IS NULL;
