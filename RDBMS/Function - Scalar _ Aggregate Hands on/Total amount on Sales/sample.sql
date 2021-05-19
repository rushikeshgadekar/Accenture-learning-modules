SELECT to_char(SALES_DATE,'MON') AS MONTH,SUM(NET_AMOUNT) AS TURN_OVER
FROM SALES_INFO
WHERE (SALES_DATE>add_months(trunc(sysdate),-12*1))
GROUP BY to_char(SALES_DATE,'MON')
ORDER BY TURN_OVER DESC;