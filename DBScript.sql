Create Database CustomerBillingDatabase
Go

Use CustomerBillingDatabase
Go
-- Create Customer Table
Create table Customers
(
     ID int primary key identity,
     FirstName nvarchar(50),
     LastName nvarchar(50),
     HomeAddress nvarchar(1000),
	 ContactNumber nvarchar(50),
)
Go

Insert into Customers values ('FirstName1', 'LastName1', 'HomeAddress1', '0411111111')
Insert into Customers values ('FirstName2', 'LastName2', 'HomeAddress2', '0422222222')
Insert into Customers values ('FirstName3', 'LastName3', 'HomeAddress3', '0433333333')
Insert into Customers values ('FirstName4', 'LastName4', 'HomeAddress4', '0444444444')
Insert into Customers values ('FirstName5', 'LastName5', 'HomeAddress5', '0455555555')
Insert into Customers values ('FirstName6', 'LastName6', 'HomeAddress6', '0466666666')
Insert into Customers values ('FirstName7', 'LastName7', 'HomeAddress7', '0477777777')
Insert into Customers values ('FirstName8', 'LastName8', 'HomeAddress8', '0488888888')
Insert into Customers values ('FirstName9', 'LastName9', 'HomeAddress9', '0499999999')
Insert into Customers values ('FirstName10', 'LastName10', 'HomeAddress10', '04121221333')
Go

Create Table ServiceType 
(
	ID int primary key identity,
    ServiceName nvarchar(50)
)
GO
Insert into ServiceType values ('Service1')
Insert into ServiceType values ('Service2')
GO


Create Table Product
(
	 ID int primary key identity,
     ProductName nvarchar(50),
	 Price Decimal (10,2),
	 ServiceType int ,FOREIGN KEY(ServiceType) REFERENCES ServiceType(id)
)
GO

Insert into Product values ('Product1',1.5,1)
Insert into Product values ('Product2',1.5,1)
Insert into Product values ('Product3',1.5,1)
Insert into Product values ('Product4',1.5,2)
Insert into Product values ('Product5',1.5,2)
Insert into Product values ('Product6',1.5,2)

GO

Create Table CutomerPayment
(
	ID int primary key identity,
	CustomerId int ,FOREIGN KEY(CustomerId) REFERENCES Customers(id),
	ProductId int ,FOREIGN KEY(ProductId) REFERENCES Product(id),
	Totalbill Decimal (10,2),
	Totalpaid Decimal (10,2)
)
GO
Insert into CutomerPayment values (1,1,100.00,20.00)
Insert into CutomerPayment values (1,2,200.00,20.00)
Insert into CutomerPayment values (1,3,300.00,20.00)

Insert into CutomerPayment values (2,4,200.00,40.00)
Insert into CutomerPayment values (2,5,200.00,40.00)
Insert into CutomerPayment values (2,6,200.00,40.00)

Insert into CutomerPayment values (3,1,300.00,60.00)
Insert into CutomerPayment values (3,5,300.00,60.00)
Insert into CutomerPayment values (3,6,300.00,60.00)

Insert into CutomerPayment values (4,2,400.00,80.00)
Insert into CutomerPayment values (4,4,400.00,80.00)
Insert into CutomerPayment values (4,3,400.00,80.00)

Insert into CutomerPayment values (5,6,500.00,100.00)
Insert into CutomerPayment values (5,3,500.00,100.00)
Insert into CutomerPayment values (5,1,500.00,100.00)

Insert into CutomerPayment values (6,3,600.00,120.00)
Insert into CutomerPayment values (6,4,600.00,120.00)
Insert into CutomerPayment values (6,5,600.00,120.00)

Insert into CutomerPayment values (7,5,700.00,140.00)
Insert into CutomerPayment values (7,1,700.00,140.00)
Insert into CutomerPayment values (7,4,700.00,140.00)

Insert into CutomerPayment values (8,6,800.00,160.00)
Insert into CutomerPayment values (8,2,800.00,160.00)
Insert into CutomerPayment values (8,1,800.00,160.00)

Insert into CutomerPayment values (9,6,900.00,190.00)
Insert into CutomerPayment values (9,3,900.00,190.00)
Insert into CutomerPayment values (9,2,900.00,190.00)

Insert into CutomerPayment values (10,1,1000.00,00.00)
Insert into CutomerPayment values (10,2,1000.00,00.00)
Insert into CutomerPayment values (10,3,1000.00,00.00)
Go
