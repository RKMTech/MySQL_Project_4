# Introduction
**SQL** (Structured Query Language) is a fundamental tool for accessing, managing, and analyzing data stored in relational databases. **SQL** provides a structured approach to querying and manipulating data, which is crucial for drawing meaningful insights from complex datasets.
 
SQL queries ? [Exploring_Data folder](/Exploring_Data/)
# Background
This is one of my projects to showcase my progress in **SQL** and my improvement to solve complex queries and now cleaning data

### The questions I wanted to answer through my SQL queries were:

1. Find the Top 10 countries with the highest funds ?
2. Find the Top 10 locations with the most industries
3. Find the minimun and maximum layoffs in the data industry for company's which raised over 100 million in funds per country ?
4. Rolling total of lay offs per month ?
5. Top 5 companies per year with the highest lay offs ?

# Tools I Used
- SQL

- MySQL

- Visual Studio Code

- Git & Github
# The Analysis
These queries collectively aim to help me enhance my SQL skills as they include a whole lot of complex CRUD, functions, logical operators and many more queries.

Here's how I approached one of the question:
### 5. Top 5 companies per year with the highest lay offs ?
```sql
WITH Company_layoffs (company, years, total_lo) AS (
    SELECT company, YEAR( date ), SUM( total_laid_off )
    FROM w_layoffs_reprint1
    GROUP BY company, YEAR( date ) ), 
Company_rankings AS (
    SELECT *,
    DENSE_RANK() OVER( PARTITION BY years ORDER BY total_lo DESC) AS Ranking
    FROM Company_layoffs
    WHERE years IS NOT NULL )
SELECT * 
FROM Company_rankings
WHERE Ranking <= 5;
````
The Top 5 companies per year with the highest lay offs insight:
- **Frequent Companies:** Amazon is the only company that appeared more than once on the list of the highest layoffs while the rest only appear once.
- **Highest Companies:** Uber was number 1 in 2020, Bytedance was number 1 in 2021, Meta was number 1 in 2022 and Google was number 1 in 2023.
- **Patterns:** Instacart has the least layoffs on the list and Google has the most layoffs on the list. There are a lot of tech companies with high layoffs between 2020 and 2023.

# Conclusion

Overall, this project underscores the importance of SQL in the data analytics field and provides valuable insights for navigating career development and opportunities within this dynamic industry. Not only did I enchance my SQL skills but I learned new skills along the way which will be detrimental for the career I am trying to pursuit .