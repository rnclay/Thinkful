SELECT
	duration,
	start_date begun,
	end_date ended,
	events rain,
	zip
FROM
	trips
JOIN
	weather
ON 
	weather.zip = trips.zip_code
WHERE
	events != '' AND events != 'Fog' AND events !='Fog-Rain' AND events !='Rain-Thunderstorm'
	
GROUP BY 1,2,3,4,5

ORDER BY duration DESC
LIMIT 1000;
