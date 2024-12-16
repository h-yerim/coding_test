# SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, GENDER, COUNT(*) AS USERS
# FROM USER_INFO AS UI, ONLINE_SALE AS OS
# WHERE 1=1
#      AND UI.USER_ID = OS.USER_ID
#      AND GENDER IS NOT NULL
# GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER
# ORDER BY YEAR, MONTH, GENDER;

SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, GENDER, COUNT(DISTINCT(OS.USER_ID)) AS USERS # 중복제거 해야함을 잊지말자
FROM USER_INFO AS UI, ONLINE_SALE AS OS
WHERE 1=1
     AND UI.USER_ID = OS.USER_ID
     AND GENDER IS NOT NULL
GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER
ORDER BY YEAR, MONTH, GENDER;
