-- Insert books
INSERT INTO Books (Title, Author, ISBN, Genre, CopiesAvailable) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Fiction', 3),
('To Kill a Mockingbird', 'Harper Lee', '9780446310789', 'Fiction', 2),
('1984', 'George Orwell', '9780451524935', 'Dystopian', 1);

-- Insert members
INSERT INTO Members (Name, Contact, MembershipType) VALUES
('Alice Smith', 'alice@email.com', 'Student'),
('Bob Johnson', 'bob@email.com', 'Regular'),
('Carol White', 'carol@email.com', 'Student');

-- Insert loans
INSERT INTO Loans (BookID, MemberID, LoanDate, DueDate, ReturnDate) VALUES
(1, 1, '2025-09-01', '2025-09-15', NULL),  -- Alice borrowed Gatsby, overdue
(2, 2, '2025-09-10', '2025-09-24', '2025-09-20'),  -- Bob returned Mockingbird
(3, 3, '2025-09-15', '2025-09-29', NULL);  -- Carol borrowed 1984, not due yet
