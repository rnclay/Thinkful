SELECT
	name, neighbourhood,price,minimum_nights
FROM
	sfo_listings_abbreviated

GROUP BY
	1,2,3,4

ORDER BY price DESC;