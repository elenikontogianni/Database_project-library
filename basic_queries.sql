SELECT b.Title, m.Name, l.DueDate
FROM Books b
JOIN Loans l ON b.BookID = l.BookID
JOIN Members m ON l.MemberID = m.MemberID
WHERE l.ReturnDate IS NULL AND l.DueDate < CURDATE();
//find all the books 
SELECT Title, Author, CopiesAvailable
FROM Books
WHERE CopiesAvailable > 0;
//: List All Loans for a Member
SELECT m.Name, b.Title, l.LoanDate, l.DueDate, l.ReturnDate
FROM Members m
JOIN Loans l ON m.MemberID = l.MemberID
JOIN Books b ON l.BookID = b.BookID
WHERE m.Name = 'Alice Smith';
