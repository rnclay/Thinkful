SELECT
	neighbourhood,COUNT(number_of_reviews)total_reviews, availability_365
FROM
	sfo_listings_abbreviated
	
WHERE 
	availability_365 =  '0'

GROUP BY
	1,3