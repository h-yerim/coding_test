SELECT ID, FISH_NAME, LENGTH
FROM FISH_INFO FI, FISH_NAME_INFO FN
WHERE 1=1
      AND FI.FISH_TYPE = FN.FISH_TYPE
      AND (FI.FISH_TYPE,FI.LENGTH) IN (SELECT FISH_TYPE, MAX(LENGTH)
                                       FROM FISH_INFO
                                       GROUP BY FISH_TYPE)