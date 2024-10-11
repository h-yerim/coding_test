SELECT COUNT(*) AS FISH_COUNT, MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH(TIME)
HAVING FISH_COUNT IS NOT NULL
ORDER BY MONTH;
