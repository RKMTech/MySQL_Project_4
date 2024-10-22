//*

3. Find the minimun and maximum layoffs in the data industry for company's which raised over 100 million in funds per country

*//


SELECT country, MAX(total_laid_off) AS max_value, MIN(total_laid_off) AS min_value
FROM w_layoffs_reprint1
WHERE industry = 'Data'
AND funds_raised_millions >= 100 
GROUP BY country;


//*

~ RESULTS ~

[
  {
    "country": "United States",
    "max_value": 325,
    "min_value": 15
  },
  {
    "country": "Israel",
    "max_value": 30,
    "min_value": 12
  },
  {
    "country": "Finland",
    "max_value": null,
    "min_value": null
  },
  {
    "country": "Canada",
    "max_value": null,
    "min_value": null
  },
  {
    "country": "United Kingdom",
    "max_value": 20,
    "min_value": 20
  },
  {
    "country": "Germany",
    "max_value": 200,
    "min_value": 200
  }
]

*//