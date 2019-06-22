SELECT
	name n,
	sum(bikes_available) bikes,
	COUNT(timestamp)calendar
FROM
	stations s
JOIN
	status
ON
	s.station_id = status.station_id
WHERE
	'n' IS NOT null
GROUP BY ROLLUP(n)
ORDER BY bikes ASC;