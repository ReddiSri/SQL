-- Create the Members table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY IDENTITY(1,1), -- Primary Key
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);

-- Create the BorrowedBooks table
CREATE TABLE BorrowedBooks (
    BorrowID INT PRIMARY KEY IDENTITY(1,1), -- Primary Key
    MemberID INT NOT NULL,                  -- Foreign Key
    BookTitle VARCHAR(200) NOT NULL,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
