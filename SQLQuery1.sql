CREATE TABLE Books
(
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100),
    Category VARCHAR(50),
    PublishedYear INT,
    AvailableCopies INT DEFAULT 1
);


-- Create Members Table
CREATE TABLE Members
(
    MemberID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    JoinDate DATE DEFAULT GETDATE()
);


-- Create Borrowings Table
CREATE TABLE Borrowings
(
    BorrowingID INT PRIMARY KEY IDENTITY(1,1),
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    BorrowDate DATE DEFAULT GETDATE(),
    ReturnDate DATE,

    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);


-- Insert Sample Books
INSERT INTO Books (Title, Author, Category, PublishedYear, AvailableCopies)
VALUES
('Database ', 'ahmed', 'Technology', 2015, 5),
(' Code', 'Robert ', 'Programming', 2008, 8),
(' Algorithms', 'ali', 'Computer Science', 2009, 9);
--select *from Books

-- Insert Sample Members
INSERT INTO Members (Name, Email, Phone)
VALUES
('Ahmed Ali', 'ahmed@email.com', '0100000001'),
('Sara Mohamed', 'sara@email.com', '0100000002'),
('Omar Hassan', 'omar@email.com', '0100000003');

--select *from Members
-- Insert Sample Borrowings
INSERT INTO Borrowings (MemberID, BookID, BorrowDate, ReturnDate)
VALUES
(1, 1, '2026-03-01', '2026-03-10'),
(2, 2, '2026-03-05', NULL),
(3, 3, '2026-03-07', NULL);
--select *from Borrowings
