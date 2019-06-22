SELECT
	name,
	dockcount docks,
	COUNT(start_station) ss
FROM
	stations s
JOIN
	trips t
ON 
	s.name = t.start_station
WHERE
	dockcount IS NOT null
GROUP BY 1,2
ORDER BY docks DESC