SELECT
	extract (month from calender_date) as mon, 
	SUM(price)
	
FROM
	status_abbreviated stat
GROUP BY 1
ORDER BY 2 ASC
