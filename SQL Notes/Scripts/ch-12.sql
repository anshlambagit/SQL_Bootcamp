-- VIEWS
CREATE VIEW dedup_view AS
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
    
    
    
    
    
    
    
    
    
    
    
    