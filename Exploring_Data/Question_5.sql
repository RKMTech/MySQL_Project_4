//* 

5. Top 5 companies per year with the highest lay offs ?

*//


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


//*

~ RESULTS ~

[
  {
    "company": "Uber",
    "years": 2020,
    "total_lo": "7525",
    "Ranking": "1"
  },
  {
    "company": "Booking.com",
    "years": 2020,
    "total_lo": "4375",
    "Ranking": "2"
  },
  {
    "company": "Groupon",
    "years": 2020,
    "total_lo": "2800",
    "Ranking": "3"
  },
  {
    "company": "Swiggy",
    "years": 2020,
    "total_lo": "2250",
    "Ranking": "4"
  },
  {
    "company": "Airbnb",
    "years": 2020,
    "total_lo": "1900",
    "Ranking": "5"
  },
  {
    "company": "Bytedance",
    "years": 2021,
    "total_lo": "3600",
    "Ranking": "1"
  },
  {
    "company": "Katerra",
    "years": 2021,
    "total_lo": "2434",
    "Ranking": "2"
  },
  {
    "company": "Zillow",
    "years": 2021,
    "total_lo": "2000",
    "Ranking": "3"
  },
  {
    "company": "Instacart",
    "years": 2021,
    "total_lo": "1877",
    "Ranking": "4"
  },
  {
    "company": "WhiteHat Jr",
    "years": 2021,
    "total_lo": "1800",
    "Ranking": "5"
  },
  {
    "company": "Meta",
    "years": 2022,
    "total_lo": "11000",
    "Ranking": "1"
  },
  {
    "company": "Amazon",
    "years": 2022,
    "total_lo": "10150",
    "Ranking": "2"
  },
  {
    "company": "Cisco",
    "years": 2022,
    "total_lo": "4100",
    "Ranking": "3"
  },
  {
    "company": "Peloton",
    "years": 2022,
    "total_lo": "4084",
    "Ranking": "4"
  },
  {
    "company": "Carvana",
    "years": 2022,
    "total_lo": "4000",
    "Ranking": "5"
  },
  {
    "company": "Philips",
    "years": 2022,
    "total_lo": "4000",
    "Ranking": "5"
  },
  {
    "company": "Google",
    "years": 2023,
    "total_lo": "12000",
    "Ranking": "1"
  },
  {
    "company": "Microsoft",
    "years": 2023,
    "total_lo": "10000",
    "Ranking": "2"
  },
  {
    "company": "Ericsson",
    "years": 2023,
    "total_lo": "8500",
    "Ranking": "3"
  },
  {
    "company": "Amazon",
    "years": 2023,
    "total_lo": "8000",
    "Ranking": "4"
  },
  {
    "company": "Salesforce",
    "years": 2023,
    "total_lo": "8000",
    "Ranking": "4"
  },
  {
    "company": "Dell",
    "years": 2023,
    "total_lo": "6650",
    "Ranking": "5"
  }
]

*//