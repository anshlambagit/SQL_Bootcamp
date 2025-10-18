-- FUNCTIONS

DELIMITER //
CREATE FUNCTION square_it(x INT)
RETURNS INT
DETERMINISTIC
BEGIN 
	return x*x ;
END //

DELIMITER ;



SELECT 
	unit_price,
    square_it(unit_price)
FROM 
	dim_product;
    
	
    
    
    
