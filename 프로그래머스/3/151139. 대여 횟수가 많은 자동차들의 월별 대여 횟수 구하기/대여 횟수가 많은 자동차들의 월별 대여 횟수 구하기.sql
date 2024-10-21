# SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID) AS RECORDS
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# WHERE START_DATE BETWEEN '20220801' AND '20221031'
# GROUP BY MONTH(START_DATE), CAR_ID
# HAVING COUNT(CAR_ID) IS NOT NULL
#        AND COUNT(CAR_ID) >= 5
# ORDER BY MONTH, CAR_ID DESC;

SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE 1=1
      AND CAR_ID IN 
                (
                    SELECT CAR_ID
                    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                    WHERE START_DATE BETWEEN '20220801' AND '20221031'
                    GROUP BY CAR_ID
                    HAVING COUNT(CAR_ID) >= 5
                ) 
      AND START_DATE BETWEEN '20220801' AND '20221031'
GROUP BY MONTH, CAR_ID
ORDER BY MONTH, CAR_ID DESC;