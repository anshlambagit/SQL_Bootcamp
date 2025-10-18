-- STORED PROCEDURE

DELIMITER //
CREATE PROCEDURE first_procedure(IN p_id INT, IN p_name CHAR(100), IN p_email CHAR(100))
BEGIN
	INSERT INTO customers
    VALUES
    (p_id, p_name, p_email);
END //

DELIMITER ;

call ecom.first_procedure(10, 'blabla', 'ejccagcjg');