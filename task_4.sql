-- Get the database name as an argument
SET @database_name = 'alx_book_store'; 

-- Construct the dynamic SQL query
SET @sql = CONCAT('SELECT COLUMN_NAME, COLUMN_TYPE 
                    FROM INFORMATION_SCHEMA.COLUMNS 
                    WHERE TABLE_SCHEMA = ''', @database_name, ''' 
                    AND TABLE_NAME = ''Books'';');

-- Prepare and execute the dynamic query
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
