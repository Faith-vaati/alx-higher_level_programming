 -- create database
DELIMITER //

CREATE PROCEDURE create_database_if_not_exists()
BEGIN
	DECLARE db_count INT;
	
	-- Check if the database exists
    	SET db_count = (SELECT COUNT(*) FROM information_schema.schemata WHERE schema_name = 'hbtn_0c_0');

    	-- If the database doesn't exist, create it
    	IF db_count = 0 THEN
		CREATE DATABASE hbtn_0c_0;
		SELECT 'Database hbtn_0c_0 created successfully.' AS Message;
	ELSE
		SELECT 'Database hbtn_0c_0 already exists.' AS Message;
END IF;
	END//
	DELIMITER ;

	-- Call the stored procedure
	CALL create_database_if_not_exists();
