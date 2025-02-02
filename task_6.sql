-- Get the database name as an argument
SET @database_name = 'alx_book_store';

-- Define customer data as a multi-line string
SET @customer_data = CONCAT(
  "('2', 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),",
  "('3', 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),",
  "('4', 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.')"
);

-- Construct the dynamic SQL query
SET @sql = CONCAT('INSERT INTO ', @database_name, '.Customers (customer_id, customer_name, email, address) VALUES ', @customer_data);

-- Execute the dynamic query
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Print success message
SELECT 'Customer data inserted successfully!';
