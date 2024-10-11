SELECT ROUTE, 
       CONCAT(ROUND(SUM(D_BETWEEN_DIST),1),'km') AS TOTAL_DISTANCE, 
       CONCAT(ROUND(AVG(D_BETWEEN_DIST),2),'km') AS AVERAGE_DISTANCE
FROM SUBWAY_DISTANCE
GROUP BY ROUTE
ORDER BY SUM(D_BETWEEN_DIST) DESC;





-- 이 경우 정렬의 기준이 숫자가 아닌 문자열로 들어가게 됨, 즉 사전식 정렬, ASCII값 순서로 정렬이 됨.
-- 예로써, 10.0km, 9.0km를 정렬할 때, 실제로는 '1'과 '9'를 비교하는 대참사가 발생. 그렇기에 숫자로써 정렬기준을 삼아줘야함