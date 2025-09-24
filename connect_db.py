import sqlite3

# Connect to database
conn = sqlite3.connect('library.db')
cursor = conn.cursor()

# Execute the overdue books query
cursor.execute('''
    SELECT b.Title, m.Name, l.DueDate
    FROM Books b
    JOIN Loans l ON b.BookID = l.BookID
    JOIN Members m ON l.MemberID = m.MemberID
    WHERE l.ReturnDate IS NULL AND l.DueDate < date('now')
''')

# Print results
print("Overdue Books:")
for row in cursor.fetchall():
    print(f"Book: {row[0]}, Borrower: {row[1]}, Due: {row[2]}")

# Close connection
conn.close()
