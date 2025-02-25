SELECT USERNEV,
       NEV,
       UPPER(LEFT(NEV,1)+RIGHT(NEV,1)) AS 'Monogram'
FROM Vendeg
WHERE RIGHT(EMAIL,3)='.hu'



SELECT SZALLAS_ID,
       SZALLAS_NEV,
       HELY,
       TIPUS,
       DATEDIFF(DAY, ROGZ_IDO, GETDATE()) AS "Működési napok száma"
FROM Szallashely
WHERE TIPUS NOT LIKE 'panzió' 
      AND TIPUS NOT LIKE 'vendégház' -- TIPUS NOT IN('panzió','vendégház')

