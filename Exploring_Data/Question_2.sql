//*

2. Find the Top 10 locations with the most industries

*//


SELECT location, COUNT(DISTINCT industry) AS industry_no
FROM w_layoffs_reprint1
GROUP BY location
ORDER BY industry_no DESC
LIMIT 10;


//* 

~ RESULTS ~

[
  {
    "location": "SF Bay Area",
    "industry_no": "28"
  },
  {
    "location": "New York City",
    "industry_no": "26"
  },
  {
    "location": "Boston",
    "industry_no": "21"
  },
  {
    "location": "Seattle",
    "industry_no": "21"
  },
  {
    "location": "Los Angeles",
    "industry_no": "21"
  },
  {
    "location": "Austin",
    "industry_no": "19"
  },
  {
    "location": "Berlin",
    "industry_no": "19"
  },
  {
    "location": "Toronto",
    "industry_no": "18"
  },
  {
    "location": "Tel Aviv",
    "industry_no": "17"
  },
  {
    "location": "London",
    "industry_no": "17"
  }
]

*//