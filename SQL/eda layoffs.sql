-- Data Exploratory Analysis

USE world_layoffs;

SELECT * FROM layoffs_staging2 LIMIT 0, 1000; 

-- by company
SELECT company, sum(total_laid_off)
from layoffs_staging2
group by company
order by 2 desc;

Select max(`date`), min(`date`)
from layoffs_staging2;

-- by industry
SELECT industry, sum(total_laid_off)
from layoffs_staging2
group by industry
order by 2 desc;

-- by location
SELECT location, sum(total_laid_off)
from layoffs_staging2
group by location
order by 2 desc;

-- now for layoffs by company in one single day
SELECT company, total_laid_off
from layoffs_staging2
order by 2 desc;

-- now by stage
SELECT stage, sum(total_laid_off)
from layoffs_staging2
group by stage
order by 2 desc;

Select substring(`date`, 1, 7) as `MONTH`, sum(total_laid_off)
from layoffs_staging2
where substring(`date`, 1, 7) is not null
group by `MONTH`
order by 1 asc;

-- now to find the rolling total using CTE
with Rolling_total as
(
Select substring(`date`, 1, 7) as `MONTH`, sum(total_laid_off) as total_off
from layoffs_staging2
where substring(`date`, 1, 7) is not null
group by `MONTH`
order by 1 asc
)
select `MONTH`, total_off, sum(total_off) over(order by `MONTH`) as rolling_total 
from Rolling_total;

-- for company year
WITH Company_Year AS 
(
  SELECT company, YEAR(date) AS years, SUM(total_laid_off) AS total_laid_off
  FROM layoffs_staging2
  GROUP BY company, YEAR(date)
)
, Company_Year_Rank AS (
  SELECT company, years, total_laid_off, DENSE_RANK() OVER (PARTITION BY years ORDER BY total_laid_off DESC) AS ranking
  FROM Company_Year
)
SELECT company, years, total_laid_off, ranking
FROM Company_Year_Rank
WHERE ranking <= 3
AND years IS NOT NULL
ORDER BY years ASC, total_laid_off DESC;

