-- REAL TIME SCENARIOS

-- SCENARIO 1 [Finding the nth value]
SELECT 
	subquery.* 
FROM 
(
SELECT 
	*,
    DENSE_RANK() OVER(PARTITION BY category ORDER BY unit_price DESC) AS ranking
FROM 
	dim_product
) subquery
WHERE 
	ranking = 5;
    
    
-- SCENARIO 2 [Removing Duplicates]
SELECT 
	subquery.*
FROM 
(
SELECT 
	*,
    ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS dedup
FROM 
	customers
) subquery
WHERE 
	dedup = 1;


-- SCENARIO 3 [Lag & Lead]
SELECT 
	*,
    LAG(temp,1,0) OVER(ORDER BY id ASC) AS prev_day_temp,
    LAG(temp,2,0) OVER(ORDER BY id ASC) AS prev_2days_temp,
    LEAD(temp,1,0) OVER(ORDER BY id ASC) AS next_day_temp
FROM 
	weather;



