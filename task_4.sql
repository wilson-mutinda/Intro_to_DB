-- Get the database name as an argument
SET @database_name = 'alx_book_store'; 

-- Construct the dynamic SQL query
SET @sql = CONCAT('SHOW FULL COLUMNS FROM ', @database_name, '.Books');

-- Prepare and execute the dynamic query
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
