-- Get the database name as an argument
SET @database_name = 'alx_book_store';

-- Construct the dynamic SQL query
SET @sql = CONCAT('INSERT INTO ', @database_name, '.Customers (customer_id, customer_name, email, address) VALUES (1, ''Cole Baidoo'', ''cbaidoo@sandtech.com'', ''123 Happiness Ave.'');');

-- Prepare and execute the dynamic query
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Print success message
SELECT 'Customer data inserted successfully!';
