SELECT COUNT(*) AS total_listing
FROM clean_listing_data3;

SELECT 
ROUND(AVG(price), 2) as "Average price"
FROM clean_listing_data3;

SELECT 
	neighbourhood_cleansed,
	ROUND(avg(price),2)as "average price"
FROM clean_listing_data3
GROUP by neighbourhood_cleansed
ORDER by "average price" DESC;

SELECT 
	neighbourhood_group_cleansed,
	ROUND(avg(price),2)as "average price"
FROM clean_listing_data3
GROUP by neighbourhood_group_cleansed
ORDER BY "average price" DESC;

SELECT 
	neighbourhood_group_cleansed,
	ROUND(avg(r.review_scores_rating),2) AS avg_rating
FROM clean_listing_data3 c
LEFT JOIN review_dataset r
ON  c.id = r.id
GROUP by neighbourhood_group_cleansed
ORDER by avg_rating DESC;

CREATE TABLE airbnb_data AS
SELECT 
c.id,
host_id,
neighbourhood_group_cleansed,
neighbourhood_cleansed,
price,
review_scores_rating,
r.number_of_reviews
FROM clean_listing_data3 c
LEFT JOIN review_dataset r
ON c.id = r.id ;

SELECT 
id,
neighbourhood_cleansed,
neighbourhood_group_cleansed,
price,
review_scores_rating,
number_of_reviews
FROM airbnb_data 
WHERE review_scores_rating >=4.8
AND number_of_reviews > 50
ORDER by review_scores_rating DESC;

SELECT 
CASE
	WHEN price < 100 THEN 'budget'
    WHEN price BETWEEN 100 and 400 THEN 'standard'
    ELSE 'luxury'
END AS price_category,
ROUND(AVG(review_scores_rating),2) avg_rating,
COUNT(*) AS listings
FROM airbnb_data
GROUP BY price_category


