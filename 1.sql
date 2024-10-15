//*

1. Create copy of raw data

*//

--  We do this because we are about to make a lot of changes.
--  If you make a mistake you'll have the orginal to revert back to.
--  Working on raw data is not best practice

CREATE TABLE w_layoffs_reprint
SELECT * FROM w_layoffs;

------------------------------------------------------------

SELECT * FROM w_layoffs_reprint;