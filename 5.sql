//*

5. Remove unwanted columns

*//

--  Delete the row_no cloumns which helped identify the duplicates

ALTER TABLE w_layoffs_reprint1
DROP COLUMN row_no;
