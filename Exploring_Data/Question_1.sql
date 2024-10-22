//*

1. Find the Top 10 countries with the highest funds ?

*//


SELECT country, SUM(funds_raised_millions) AS funds_rm
FROM w_layoffs_reprint1
GROUP BY country
ORDER BY funds_rm DESC
LIMIT 10;


//*

~ RESULTS ~

[
  {
    "country": "United States",
    "funds_rm": "1139900"
  },
  {
    "country": "India",
    "funds_rm": "150865"
  },
  {
    "country": "China",
    "funds_rm": "49997"
  },
  {
    "country": "Germany",
    "funds_rm": "46151"
  },
  {
    "country": "United Kingdom",
    "funds_rm": "45131"
  },
  {
    "country": "Netherlands",
    "funds_rm": "28642"
  },
  {
    "country": "Lithuania",
    "funds_rm": "24700"
  },
  {
    "country": "Brazil",
    "funds_rm": "18812"
  },
  {
    "country": "Singapore",
    "funds_rm": "15156"
  },
  {
    "country": "Sweden",
    "funds_rm": "14200"
  }
]

*//