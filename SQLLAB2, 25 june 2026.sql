create database BankingDB;
use BankingDB;
create TABLE Customers (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50),
lastname varchar(50),
email varchar(100),
phone varchar(15),
AcoountCreation date
);
Create table Accounts(
AccountID int Primary Key,
CustomerID int,
AccountType varchar(20),
Balance decimal(10,2),
foreign key(CustomerID) references Customers(CustomerID));
create table Transactions (
TransactionID int Primary key,
AccountID int,
TrasactionDate Date,
Amount decimal(10,2),
TransactionType varchar(20),
foreign key (AccountID) references Accounts(AccountID) );
Create Table Branches (
BranchID int primary key,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15) );
Create Table AccountBranches (
AccountID int,
BranchID int,
AssignmentDate DATE,
foreign key (AccountID) references Accounts(AccountID),
foreign key (BranchID) references Branches(BranchID) );
Create Table Loans (
LoanID int primary key,
CustomerID int,
LoanAmount decimal(10,2),
InterestRate decimal(5,2),
StartDate date,
EndDate date,
foreign key (CustomerID) references Customers(CustomerID) );
Describe Customers;
Describe Accounts;
Describe Transactions;
Describe Branches;
Describe AccountBranches;
Describe Loans;

show databases;
# TO VIEW THE LIST OF DATABAESE

use BankingDB;
alter table Customers add DOB Date;
desc customers;

alter table customers modify phone int;
alter table customers modify phone varchar(15);

#Replace 
alter table Customers change column FirstName FName varchar(20);
alter table Customers change column FName FirstName varchar(20);

#Drop
alter table Customers drop DOB;

#Rename table name
alter table Customers rename to CustInfo;
alter table CustInfo rename to Customers;

#Add column in middle or as we like
Alter table Customers add Address2 varchar(50) after phone;

#Remove table
#drop table Customers;

#Remove database
#drop databse BankingBD;

#truncate table Customers;
#delete from Customers;

use BankingDB;
desc Customers;

INSERT INTO Customers
(CustomerID, FirstName, lastname, email, Address2, AcoountCreation, phone, Address)
VALUES
(1,'Rahul','Sharma','rahul@gmail.com','Mumbai','2025-01-10','9876543210','Andheri'),
(2,'Priya','Patel','priya@gmail.com','Pune','2025-01-11','9876543211','Kothrud'),
(3,'Amit','Verma','amit@gmail.com','Nashik','2025-01-12','9876543212','College Road'),
(4,'Sneha','Joshi','sneha@gmail.com','Thane','2025-01-13','9876543213','Ghodbunder'),
(5,'Rohan','Gupta','rohan@gmail.com','Nagpur','2025-01-14','9876543214','Civil Lines'),
(6,'Neha','Singh','neha@gmail.com','Kolhapur','2025-01-15','9876543215','Shivaji Nagar'),
(7,'Karan','Yadav','karan@gmail.com','Satara','2025-01-16','9876543216','Market Road'),
(8,'Pooja','Mehta','pooja@gmail.com','Ratnagiri','2025-01-17','9876543217','Main Road'),
(9,'Arjun','Kumar','arjun@gmail.com','Aurangabad','2025-01-18','9876543218','CIDCO'),
(10,'Anjali','Desai','anjali@gmail.com','Solapur','2025-01-19','9876543219','Railway Colony');


select * from Customers;
set sql_safe_updates = 0;
delete from Customers;

UPDATE Customers SET Address2='Mumbai', Address='Andheri' WHERE CustomerID=1;
UPDATE Customers SET Address2='Pune', Address='Kothrud' WHERE CustomerID=2;
UPDATE Customers SET Address2='Nashik', Address='College Road' WHERE CustomerID=3;
UPDATE Customers SET Address2='Thane', Address='Ghodbunder' WHERE CustomerID=4;
UPDATE Customers SET Address2='Nagpur', Address='Civil Lines' WHERE CustomerID=5;
UPDATE Customers SET Address2='Kolhapur', Address='Shivaji Nagar' WHERE CustomerID=6;
UPDATE Customers SET Address2='Satara', Address='Market Road' WHERE CustomerID=7;
UPDATE Customers SET Address2='Ratnagiri', Address='Main Road' WHERE CustomerID=8;
UPDATE Customers SET Address2='Aurangabad', Address='CIDCO' WHERE CustomerID=9;
select * from Customers;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(101,'Mumbai Branch','Mumbai','9000000001'),
(102,'Pune Branch','Pune','9000000002'),
(103,'Nashik Branch','Nashik','9000000003'),
(104,'Thane Branch','Thane','9000000004'),
(105,'Nagpur Branch','Nagpur','9000000005'),
(106,'Aurangabad Branch','Aurangabad','9000000006'),
(107,'Kolhapur Branch','Kolhapur','9000000007'),
(108,'Solapur Branch','Solapur','9000000008'),
(109,'Satara Branch','Satara','9000000009'),
(110,'Ratnagiri Branch','Ratnagiri','9000000010');
select * from Branches;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(101,1,'Savings',25000.00),
(102,2,'Current',45000.00),
(103,3,'Savings',18000.00),
(104,4,'Current',60000.00),
(105,5,'Savings',32000.00),
(106,6,'Savings',28000.00),
(107,7,'Current',70000.00),
(108,8,'Savings',15000.00),
(109,9,'Current',52000.00),
(110,10,'Savings',41000.00);
select * from Accounts;

INSERT INTO Transactions
(TransactionID, AccountID, TrasactionDate, Amount, TransactionType)
VALUES
(1001,101,'2025-02-01',5000.00,'Deposit'),
(1002,102,'2025-02-02',2000.00,'Withdraw'),
(1003,103,'2025-02-03',7000.00,'Deposit'),
(1004,104,'2025-02-04',3000.00,'Withdraw'),
(1005,105,'2025-02-05',8000.00,'Deposit'),
(1006,106,'2025-02-06',1500.00,'Withdraw'),
(1007,107,'2025-02-07',9000.00,'Deposit'),
(1008,108,'2025-02-08',2500.00,'Withdraw'),
(1009,109,'2025-02-09',4000.00,'Deposit'),
(1010,110,'2025-02-10',1000.00,'Withdraw');
select * from Transactions;

INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(101,101,'2025-01-10'),
(102,102,'2025-01-11'),
(103,103,'2025-01-12'),
(104,104,'2025-01-13'),
(105,105,'2025-01-14'),
(106,106,'2025-01-15'),
(107,107,'2025-01-16'),
(108,108,'2025-01-17'),
(109,109,'2025-01-18'),
(110,110,'2025-01-19');
select * from AccountBranches;

INSERT INTO Loans
(LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES
(201,1,100000.00,8.50,'2025-03-01','2030-03-01'),
(202,2,150000.00,9.00,'2025-03-02','2030-03-02'),
(203,3,200000.00,8.75,'2025-03-03','2030-03-03'),
(204,4,120000.00,9.20,'2025-03-04','2030-03-04'),
(205,5,180000.00,8.80,'2025-03-05','2030-03-05'),
(206,6,220000.00,9.10,'2025-03-06','2030-03-06'),
(207,7,250000.00,8.95,'2025-03-07','2030-03-07'),
(208,8,130000.00,8.60,'2025-03-08','2030-03-08'),
(209,9,170000.00,9.15,'2025-03-09','2030-03-09'),
(210,10,140000.00,8.70,'2025-03-10','2030-03-10');
select * from Loans;

INSERT INTO Customers
(CustomerID, FirstName, lastname, email, Address2, AcoountCreation, phone, Address)
VALUES
(11,'Rahul','Sharma','rahul2@gmail.com','Mumbai','2025-01-10','9876543220','Andheri'),
(12,'Priya','Patel','priya2@gmail.com','Pune','2025-01-11','9876543221','Kothrud');
select * from Customers;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(111,11,'Savings',25000.00),
(112,12,'Savings',25000.00);
select * from Accounts;

INSERT INTO Transactions
(TransactionID, AccountID, TrasactionDate, Amount, TransactionType)
VALUES
(1011,111,'2025-02-01',5000.00,'Deposit'),
(1012,112,'2025-02-01',5000.00,'Deposit');
select * from Transactions;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(111,'Mumbai Branch','Mumbai','9000000011'),
(112,'Pune Branch','Pune','9000000012');
select * from Branches;

INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(111,111,'2025-01-10'),
(112,112,'2025-01-11');
select * from AccountBranches;

INSERT INTO Loans
(LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES
(211,11,100000.00,8.50,'2025-03-01','2030-03-01'),
(212,12,150000.00,9.00,'2025-03-02','2030-03-02');
select * from Loans;

use BankingDB;
select * from Loans;

create table Loan_backup
(
LoanID int,
CustomerID int,
LoanAmount decimal(10,2),
InterestRate decimal(10,2),
Startdate date,
EndDate date
);

insert into Loan_backup(LoanID,CustomerID,LoanAmount,InterestRate,Startdate,EndDate)
select * from Loans;
select * from Loan_backup;

# write a query to display specific columnname from Customers
select CustomerID,FirstName,LastName,email from Customers;

#Order by Clause(default order is ascending order)

select * from Customers
order by FirstName;

#for descending
select * from Customers
order by FirstName desc;

#Group by Clause
#/Column Alias/#
select * from Accounts;
select AccountType, sum(Balance) as Total from Accounts
group by AccountType;

# Limit and Offset
select * from Customers limit 5;
select * from Customers limit 5 offset 1;

#Having Clause
select AccountType, sum(Balance) as Total from Accounts
group by AccountType 
having sum(Balance) > 222000;

#wildcards in SQL
select * from Customers
where FirstName like 'A%';

select * from Customers
where FirstName like '%T';

select * from Customers
where FirstName like '%n%';
#(here letter can be anywhere in the name)

select * from Customers
where FirstName like '_m%';
#(start with any single character and 2nd place must be 'a' and end with any letter)

#here we created Null column
desc Customers;
insert into Customers(CustomerID, FirstName, lastname, email, Address2, AcoountCreation)
values (13,'Anjali','Desai','anjali@gmail.com','Solapur','2025-01-19');
select * from Customers;

select * from Customers where phone is null;
select * from Customers where phone is not null;

#Find Customers without email address
select * from Customers where email is null;

#Display all accounts where balance information is available
select * from accounts where Balance is not null;

#display customers sorted by lastname
select * from Customers order by LastName;

#reteive top 5 transactions with highest amount
select * from Transactions order by Balance desc limit 5;

#display unique transaction types
select distinct colname from tablename
select distinct 
select * from Transactions;


#skip the first 3 transaction records and display the next 4 records
select * from Customers limit 4 offset 3;
select * from Customers;
















