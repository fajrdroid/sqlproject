create database library;
-- DATABASE CREATED
-- CREATION OF TABLE BRANCH
create table branch( Branch_no int PRIMARY KEY , 
 Manager_Id  varchar(100),  
 Branch_address varchar(100), 
 Contact_no varchar(20));
 -- CREATION OF TABLE EMPLOYEES
  create table Employees(  Emp_Id int  PRIMARY KEY,  
 Emp_name  varchar(100),   
 Position  varchar(100),  
 Salary	   varchar(50),  
 Branch_no varchar(20));
 
 -- CREATION OF TABLE BOOKS
  CREATE TABLE Books(  
ISBN VARCHAR(100) PRIMARY KEY,  
 Book_title varchar(100),    
 Category  varchar(100),   
 Rental_Price  varchar(100),   
 Status varchar(20),     
 Author varchar(100),    
 Publisher varchar(100));   

 -- CREATION OF TABLE CUSTOMER
  CREATE TABLE CUSTOMER( Customer_Id INT  PRIMARY KEY,  
 Customer_name  varchar(100),
 Customer_address  varchar(100),
REG_DATE DATE);

  -- CREATION OF TABLE IssueStatus  
CREATE TABLE ISSUESTATUS (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issue_date VARCHAR(100),
    Isbn_book VARCHAR(100), -- Adjusting to VARCHAR if ISBN is VARCHAR in Books table
    FOREIGN KEY (Issued_cust) REFERENCES CUSTOMER (CUSTOMER_ID),
    FOREIGN KEY (Isbn_book) REFERENCES Books (ISBN)
);
 USE LIBRARY;
 -- CREATION OF TABLE ReturnStatus
create table  ReturnStatus(   
Return_Id int PRIMARY KEY,  
 Return_cust int,
 Return_book_name varchaR(100),  
 Return_date  DATE,
 Isbn_book2 VARCHAR(100),
 FOREIGN KEY (ISBN_BOOK2) REFERENCES BOOKS(ISBN)  
 );-- Set as FOREIGN KEY and it should refer isbn in BOOKS table 
SELECT * FROM issueSTATUS;

alter table issuestatus add column issued_book_name varchar(100);
-- insertion of branch values 
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(3, 103, '789 Oak St', '321-654-9870'),
(4, 104, '101 Pine St', '456-789-1234'),
(5, 105, '202 Cedar St', '789-123-4567'),
(6, 106, '303 Birch St', '234-567-8901'),
(7, 107, '404 Maple St', '567-890-1234'),
(8, 108, '505 Ash St', '890-123-4567'),
(9, 109, '606 Willow St', '345-678-9012'),
(10, 110, '707 Redwood St', '678-901-2345');
 
-- insertion of employees
INSERT INTO Employees (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(3, 'Robert Johnson', 'Clerk', 30000.00, 3),
(4, 'Emily Davis', 'Clerk', 30000.00, 4),
(5, 'Michael Brown', 'Assistant Manager', 42000.00, 5),
(6, 'Sarah Miller', 'Clerk', 31000.00, 6),
(7, 'William Wilson', 'Clerk', 30500.00, 7),
(8, 'Jessica Taylor', 'Manager', 51000.00, 8),
(9, 'David Anderson', 'Clerk', 32000.00, 9),
(10, 'Laura Moore', 'Assistant Manager', 40500.00, 10);

-- insertion of books
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('978-0-12-345678-9', 'The Science World', 'Science', 12.99, 'Yes', 'Author C', 'Publisher C'),
('978-4-56-789123-0', 'The Art of War', 'History', 8.99, 'Yes', 'Author D', 'Publisher D'),
('978-7-89-012345-6', 'Mastering Coding', 'Technology', 19.99, 'No', 'Author E', 'Publisher E'),
('978-2-34-567890-1', 'Cooking 101', 'Cookbook', 7.99, 'Yes', 'Author F', 'Publisher F'),
('978-5-67-890123-4', 'Gardening for Beginners', 'Lifestyle', 10.99, 'No', 'Author G', 'Publisher G'),
('978-8-90-123456-7', 'Business Strategy', 'Business', 15.99, 'Yes', 'Author H', 'Publisher H'),
('978-3-45-678901-2', 'Mystery of the Mind', 'Fiction', 11.99, 'Yes', 'Author I', 'Publisher I'),
('978-6-78-901234-5', 'Exploring Space', 'Science', 13.99, 'No', 'Author J', 'Publisher J');

-- insertion of  Customer
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(3, 'Charlie Black', '202 Oak St', '2024-03-01'),
(4, 'Diana Green', '303 Cedar St', '2024-04-01'),
(5, 'Eve Blue', '404 Birch St', '2024-05-01'),
(6, 'Frank Red', '505 Willow St', '2024-06-01'),
(7, 'Grace Yellow', '606 Ash St', '2024-07-01'),
(8, 'Henry Purple', '707 Redwood St', '2024-08-01'),
(9, 'Ivy Orange', '808 Maple St', '2024-09-01'),
(10, 'Jack Gray', '909 Elm St', '2024-10-01');
-- insertion of IssueStatus
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(3, 3, 'The Science World', '2024-08-07', '978-0-12-345678-9'),
(4, 4, 'The Art of War', '2024-08-10', '978-4-56-789123-0'),
(5, 5, 'Mastering Coding', '2024-08-12', '978-7-89-012345-6'),
(6, 6, 'Cooking 101', '2024-08-15', '978-2-34-567890-1'),
(7, 7, 'Gardening for Beginners', '2024-08-18', '978-5-67-890123-4'),
(8, 8, 'Business Strategy', '2024-08-20', '978-8-90-123456-7'),
(9, 9, 'Mystery of the Mind', '2024-08-22', '978-3-45-678901-2'),
(10, 10, 'Exploring Space', '2024-08-25', '978-6-78-901234-5');
-- insertion of ReturnStatus
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(3, 3, 'The Science World', '2024-08-17', '978-0-12-345678-9'),
(4, 4, 'The Art of War', '2024-08-20', '978-4-56-789123-0'),
(5, 5, 'Mastering Coding', '2024-08-22', '978-7-89-012345-6'),
(6, 6, 'Cooking 101', '2024-08-25', '978-2-34-567890-1'),
(7, 7, 'Gardening for Beginners', '2024-08-28', '978-5-67-890123-4'),
(8, 8, 'Business Strategy', '2024-08-30', '978-8-90-123456-7'),
(9, 9, 'Mystery of the Mind', '2024-09-02', '978-3-45-678901-2'),
(10, 10, 'Exploring Space', '2024-09-05', '978-6-78-901234-5');
select* from ISSUESTATUS;
select* from BOOKS;
select* from CUSTOMER;
select* from employees;
select book_title,category,rental_price from books where status='yes';
SELECT  EMP_NAME,EMP_ID,SALARY FROM EMPLOYEES
ORDER BY SALARY DESC;
 SELECT Books.Book_title, Customer.Customer_name FROM  IssueStatus
 JOIN BOOKS ON  ISSUESTATUS.ISBN_BOOK= BOOKS.ISBN
 join customer on issuestatus.issued_cust=customer.customer_id ;
 select category, count(*) from books group by category;
 select emp_name,position from employees where salary>40000;
 SELECT C.CUSTOMER_NAME FROM CUSTOMER C
 LEFT JOIN ISSUESTATUS i ON C.CUSTOMER_ID = I.ISSUED_CUST
 WHERE C.REG_DATE<'2024-01-01'
 AND I.iSSUE_id IS NULL;
 SELECT c.Customer_name
FROM Customer c
LEFT JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
WHERE c.Reg_date < '2024-02-01'
AND i.Issue_Id IS NULL;
select e.branch_no, count(e.emp_id) as employees_count from employees e 
group by e.branch_no;
SELECT c.Customer_name
FROM Customer c
JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
WHERE i.Issue_date >= '2024-06-01' 
AND i.Issue_date <= '2024-06-06';
SELECT Book_title 
FROM Books
WHERE Book_title LIKE 'The science world''THe art of world';
SELECT e.Branch_no, COUNT(e.Emp_Id) AS Employee_Count
FROM Employees e
GROUP BY e.Branch_no
HAVING COUNT(e.Emp_Id) >5;
SELECT e.Emp_name, b.Branch_address
FROM Employees e
JOIN Branch b ON e.Emp_Id = b.Manager_Id;
SELECT c.Customer_name
FROM Customer c
JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
JOIN Books b ON i.Isbn_book = b.ISBN
WHERE b.Rental_Price > 10;


 
  
 
 

