import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish a connection to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',        # Change this if your MySQL server is hosted elsewhere
            user='root',             # Replace with your MySQL username
            password='user1234' # Replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()

            # Create the database if it doesn't already exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

            # Print success message
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error: {e}")
    finally:
        # Close the cursor and connection
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
