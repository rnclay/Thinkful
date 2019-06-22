SELECT
	extract(month from busy_date) as mon, 
	COUNT(available)ava
FROM
	calendar cal
JOIN
	busiest
ON
	busiest.busy_date = cal.calender_date
WHERE 
	available = 'f'
GROUP BY 1
ORDER BY ava DESC;
