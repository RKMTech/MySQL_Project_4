//*

4. Rolling total of lay offs per month ?

*//


WITH Rolling_Total AS ( 
    SELECT SUBSTRING( date ,1,7) AS Month, SUM(total_laid_off) AS total_lo
    FROM w_layoffs_reprint1
    WHERE SUBSTRING( date ,1,7) IS NOT NULL
    GROUP BY Month
    ORDER BY 1 
    )
SELECT Month, total_lo ,
SUM(total_lo) OVER( ORDER BY Month ) AS rolling_total
FROM Rolling_Total;


//* 

~ RESULTS ~

[
  {
    "Month": "2020-03",
    "total_lo": "9628",
    "rolling_total": "9628"
  },
  {
    "Month": "2020-04",
    "total_lo": "26710",
    "rolling_total": "36338"
  },
  {
    "Month": "2020-05",
    "total_lo": "25804",
    "rolling_total": "62142"
  },
  {
    "Month": "2020-06",
    "total_lo": "7627",
    "rolling_total": "69769"
  },
  {
    "Month": "2020-07",
    "total_lo": "7112",
    "rolling_total": "76881"
  },
  {
    "Month": "2020-08",
    "total_lo": "1969",
    "rolling_total": "78850"
  },
  {
    "Month": "2020-09",
    "total_lo": "609",
    "rolling_total": "79459"
  },
  {
    "Month": "2020-10",
    "total_lo": "450",
    "rolling_total": "79909"
  },
  {
    "Month": "2020-11",
    "total_lo": "237",
    "rolling_total": "80146"
  },
  {
    "Month": "2020-12",
    "total_lo": "852",
    "rolling_total": "80998"
  },
  {
    "Month": "2021-01",
    "total_lo": "6813",
    "rolling_total": "87811"
  },
  {
    "Month": "2021-02",
    "total_lo": "868",
    "rolling_total": "88679"
  },
  {
    "Month": "2021-03",
    "total_lo": "47",
    "rolling_total": "88726"
  },
  {
    "Month": "2021-04",
    "total_lo": "261",
    "rolling_total": "88987"
  },
  {
    "Month": "2021-06",
    "total_lo": "2434",
    "rolling_total": "91421"
  },
  {
    "Month": "2021-07",
    "total_lo": "80",
    "rolling_total": "91501"
  },
  {
    "Month": "2021-08",
    "total_lo": "1867",
    "rolling_total": "93368"
  },
  {
    "Month": "2021-09",
    "total_lo": "161",
    "rolling_total": "93529"
  },
  {
    "Month": "2021-10",
    "total_lo": "22",
    "rolling_total": "93551"
  },
  {
    "Month": "2021-11",
    "total_lo": "2070",
    "rolling_total": "95621"
  },
  {
    "Month": "2021-12",
    "total_lo": "1200",
    "rolling_total": "96821"
  },
  {
    "Month": "2022-01",
    "total_lo": "510",
    "rolling_total": "97331"
  },
  {
    "Month": "2022-02",
    "total_lo": "3685",
    "rolling_total": "101016"
  },
  {
    "Month": "2022-03",
    "total_lo": "5714",
    "rolling_total": "106730"
  },
  {
    "Month": "2022-04",
    "total_lo": "4128",
    "rolling_total": "110858"
  },
  {
    "Month": "2022-05",
    "total_lo": "12885",
    "rolling_total": "123743"
  },
  {
    "Month": "2022-06",
    "total_lo": "17394",
    "rolling_total": "141137"
  },
  {
    "Month": "2022-07",
    "total_lo": "16223",
    "rolling_total": "157360"
  },
  {
    "Month": "2022-08",
    "total_lo": "12975",
    "rolling_total": "170335"
  },
  {
    "Month": "2022-09",
    "total_lo": "5681",
    "rolling_total": "176016"
  },
  {
    "Month": "2022-10",
    "total_lo": "17406",
    "rolling_total": "193422"
  },
  {
    "Month": "2022-11",
    "total_lo": "53392",
    "rolling_total": "246814"
  },
  {
    "Month": "2022-12",
    "total_lo": "10329",
    "rolling_total": "257143"
  },
  {
    "Month": "2023-01",
    "total_lo": "84714",
    "rolling_total": "341857"
  },
  {
    "Month": "2023-02",
    "total_lo": "36493",
    "rolling_total": "378350"
  },
  {
    "Month": "2023-03",
    "total_lo": "4470",
    "rolling_total": "382820"
  }
]

*//