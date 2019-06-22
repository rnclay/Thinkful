SELECT
	duration, 
	COUNT(events)
	FROM
trips
FULL OUTER JOIN 
	weather
ON
trips.zip_code = weather.zip
WHERE
	weather IS NOT NULL AND events = 'Rain'
GROUP BY ROLLUP
	(duration)

ORDER BY duration DESC
LIMIT 4;