Create database StoreManagement;
Use StoreManagement;
Create Table Customer (
CustomerID int primary key,
CustomerName varchar(50),
ContactNo varchar(15),
Email varchar(50),
Address varchar(100) );
Create Table Employee (
EmployeeID int primary key,
EmployeeName varchar(50),
Salary decimal(10,2),
ContactNo varchar(15) );
Create Table Orders (
OrderID int primary key,
CustomerID int,
EmployeeID int,
OrderDate DAte,
TotalAmount decimal(10,2),
foreign key (CustomerID) references Customer(CustomerID),
foreign key (EmployeeID) references Employee(EmployeeID) );
create table Product (
ProductID int primary key,
ProductName varchar(50),
Category varchar(30),
Brand varchar(30),
Price decimal(10,2),
StockQuantity int,
SupplierID int,
foreign key (SupplierID) references Supplier(SupplierID) );
Create Table OrderDetails (
OrderDetailID int primary key,
OrderID int,
ProductID int,
Quantity int,
UnitPrice decimal(10,2),
TotalPrice decimal(10,2),
foreign key (OrderID) references Orders(OrderID),
foreign key (ProductID) references Product(ProductID) );
Create Table Supplier (
SupplierID int primary key,
SupplierName varchar(50),
ContactNo varchar(15),
Email varchar(50),
Address varchar(100) );
Describe Customer;
describe Employee;
describe Product;
describe Orders;
describe OrderDetails;
describe Supplier;
Alter table Product 
Add SupplierID int,
add constraint fksupplier
foreign key (SupplierID) references Supplier(SupplierID);


