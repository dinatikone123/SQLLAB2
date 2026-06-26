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

