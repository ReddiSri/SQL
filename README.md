## 📚 Library Management System (Simple Schema)

This project represents a basic **Library Management DB Schema** using SQL Server, with two essential entities: **Members** and **BorrowedBooks**. It demonstrates the use of **Primary and Foreign Keys**, and models a one-to-many relationship in a real-world library scenario.
---
## 📌 Project Overview

- **Domain:** Library
- **Entities:** Members, BorrowedBooks
- **Relationship:** One Member → Many Borrowed Books
- **Database Used:** SQL Server
---
## 🧱 Database Tables

### 🔹 1. Members Table

| Column Name | Data Type     | Description                  |
|-------------|---------------|------------------------------|
| MemberID    | INT (PK)      | Unique ID for each member    |
| Name        | VARCHAR(100)  | Member's full name           |
| Email       | VARCHAR(100)  | Member's unique email address|

### 🔹 2. BorrowedBooks Table

| Column Name | Data Type     | Description                     |
|-------------|---------------|---------------------------------|
| BorrowID    | INT (PK)      | Unique borrow record ID         |
| MemberID    | INT (FK)      | References `Members(MemberID)` |
| BookTitle   | VARCHAR(200)  | Title of the borrowed book      |
| BorrowDate  | DATE          | When the book was borrowed      |
| ReturnDate  | DATE          | When the book was returned      |

---

## 🔗 Relationships

- One **Member** can borrow many books → implemented using **foreign key**.
- `BorrowedBooks.MemberID` → references `Members.MemberID`

---
