# SELECT EMP_NO, EMP_NAME, GRADE, 
#         CASE WHEN GRADE = 'S' THEN SAL*0.2
#              WHEN GRADE = 'A' THEN SAL*0.15
#              WHEN GRADE = 'B' THEN SAL*0.1
#              ELSE 0
#         END AS BONUS
# FROM
# (
#     SELECT HG.EMP_NO, EMP_NAME, SAL, 
#            CASE WHEN SCORE >= 96 THEN 'S'
#                 WHEN SCORE >= 90 THEN 'A'
#                 WHEN SCORE >= 80 THEN 'B'
#                 ELSE 'C'
#            END AS GRADE
#     FROM (SELECT EMP_NO, EMP_NAME, SAL
#           FROM HR_EMPLOYEES) AS HE, 
#           (SELECT EMP_NO, AVG(SCORE) AS SCORE
#            FROM HR_GRADE
#            GROUP BY EMP_NO) AS HG
#     WHERE HE.EMP_NO = HG.EMP_NO) TOT;
    

SELECT 
        E.EMP_NO,
        E.EMP_NAME,
        G.GRADE,
        CASE 
            WHEN G.GRADE = 'S' THEN E.SAL * 0.2
            WHEN G.GRADE = 'A' THEN E.SAL * 0.15
            WHEN G.GRADE = 'B' THEN E.SAL * 0.1
            ELSE 0
        END AS BONUS
FROM HR_EMPLOYEES AS E
JOIN (
    SELECT 
        EMP_NO,
        CASE 
            WHEN AVG(SCORE) >= 96 THEN 'S'
            WHEN AVG(SCORE) >= 90 THEN 'A'
            WHEN AVG(SCORE) >= 80 THEN 'B'
            ELSE 'C'
        END AS GRADE
    FROM HR_GRADE
    GROUP BY EMP_NO
) AS G
ON E.EMP_NO = G.EMP_NO;