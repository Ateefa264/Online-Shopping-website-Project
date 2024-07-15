CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE NOT NULL,
    MyAddress VARCHAR(255) NOT NULL,
Phonenumber CHAR(11) NOT NULL
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY NOT NULL,
    PName VARCHAR(50) NOT NULL,
    Description varchar(100),
);
CREATE TABLE Categories (
    ProductID INT,
    CategoryID INT NOT NULL,
    CName VARCHAR(255),
Price int check(Price>0),
Stock varchar(50),
    PRIMARY KEY (ProductID, CategoryID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) on delete cascade on update cascade
);
CREATE TABLE Orders (
    OrderID INT  NOT NULL,
CustomerID INT,
ProductID INT,
    CategoryID INT NOT NULL ,
    OrderDate date, --DEFAULT CURRENT_TIMESTAMP,
	OrderTime time,
    TotalAmount int,
PRIMARY KEY (ProductID, CategoryID,OrderID,CustomerID),
);


Alter Table Orders add constraint FK_STUDENT foreign key (CustomerID) references Customers(CustomerID);
Alter Table Orders add constraint FK_STUDENT1 foreign key (ProductID) references  Products(ProductID);
Alter Table Orders add constraint FK_STUDENT2 foreign key (ProductID,CategoryID) references  Categories(ProductID,CategoryID);

--Create table Ratings(
--OrderID INT  NOT NULL,
--FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
--rating int check(rating>=0 and rating<=5),
--Description varchar(100),
--);

-- Insert sample data into Products table
INSERT INTO Products (ProductID, PName, Description)
VALUES
    (1, 'Bags', 'Various types of bags for all occasions'),
    (2, 'Clothes', 'Trendy and fashionable clothing items'),
    (3, 'Shoes', 'Stylish shoes for men and women'),
    (4, 'Accessories', 'Fashion accessories to complement your outfit');

-- Insert sample data into Categories table
INSERT INTO Categories (ProductID, CategoryID, CName, Price, Stock)
VALUES
    (1, 1, 'Handbags', 5000, '4'),
    (1, 2, 'Backpacks', 4000, '11'),
    (2, 1, 'Tops', 3000, '77'),
    (2, 2, 'Bottoms', 3500, '22'),
    (3, 1, 'Sneakers', 6000, '12'),
    (3, 2, 'Sandals', 4500, '5'),
    (4, 1, 'Jewelry', 2500, '15'),
    (4, 2, 'Scarves', 2000, '21');
	delete from Categories
	delete from Orders
-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, MyAddress, PhoneNumber)
VALUES
    (1, 'Alice', 'Smith', 'alice@example.com', '123 Main St', '12345678901'),
    (2, 'Bob', 'Johnson', 'bob@example.com', '456 Elm St', '23456789012'),
    (3, 'Charlie', 'Brown', 'charlie@example.com', '789 Oak St', '34567890123'),
    (4, 'Diana', 'Miller', 'diana@example.com', '101 Pine St', '45678901234'),
    (5, 'Eva', 'Wilson', 'eva@example.com', '246 Maple St', '56789012345');

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, CustomerID, ProductID, CategoryID, OrderDate,OrderTime, TotalAmount)
VALUES
    (1, 1, 1, 1,'2024-04-10',' 09:30:00', 50),
    (2, 1, 2, 1, '2024-04-12', '14:15:00', 65),
    (3, 2, 4, 2,'2024-04-14' ,'11:45:00', 60),
    (4, 2, 3, 2, '2024-04-16 ','16:00:00', 45);


	select*from Customers
	
	select*from Products
	
	select*from Categories

	select*from Orders


-- Create trigger on Orders table
create trigger CheckStock1
ON Orders
after insert
as
begin
    if exists (
        select *
        from inserted as i
        join Categories as c on i.ProductID = c.ProductID AND i.CategoryID = c.CategoryID
        where c.Stock < 50
    )
    begin
        print 'Out of stock';
    end
end;

create trigger PreventInsertIfStockLessThanOne
on Categories
after insert
as
begin
    if exists (
        select 1
        from inserted
        where Stock < 1
    )
    begin
        raiserror('can not insert. stock level must be 1 or greater.', 16, 1);
        rollback transaction;
    end
end;


create trigger CustomerAdded
on Customers
after insert
as
    print ('information added successfully');

create trigger OrderPlaced
on Orders
after insert
as
    print ('order placed successfully');
--//////////////////////////////////////////////////////////////////


CREATE PROCEDURE hello1 
@CustomerID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(100),
    @MyAddress VARCHAR(255),
    @PhoneNumber CHAR(11)
AS
BEGIN
    INSERT INTO Customers (CustomerID,FirstName, LastName, Email, MyAddress, PhoneNumber)
    VALUES (@CustomerID,@FirstName, @LastName, @Email, @MyAddress, @PhoneNumber)
END
EXEC hello1 
@CustomerID =6,
@FirstName = 'John', 
           @LastName = 'Doe', 
           @Email = 'john@example.com', 
           @MyAddress = '123 Oak St', 
           @PhoneNumber = '12345678900';

SELECT * FROM Customers


CREATE PROCEDURE hello2
 @OrderID INT  ,
@CustomerID INT,
@ProductID INT,
    @CategoryID INT,
    @OrderDate date, 
	@OrderTime time,
    @TotalAmount int
AS
BEGIN
  INSERT INTO Orders (OrderID, CustomerID, ProductID, CategoryID, OrderDate,OrderTime, TotalAmount)
    VALUES (@OrderID, @CustomerID, @ProductID, @CategoryID, @OrderDate,@OrderTime, @TotalAmount)
END

exec hello2 
 @OrderID=10  ,
@CustomerID=5,
@ProductID=2,
    @CategoryID=1,
    @OrderDate= '2022-02-1', 
	@OrderTime='2:20:11',
    @TotalAmount =3000;

	select*from Orders