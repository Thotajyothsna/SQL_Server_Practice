CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);
CREATE TABLE Order_sales(
    SaleID INT PRIMARY KEY,
    ProductID INT,
    QuantitySold INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Product A', 10.00),
(2, 'Product B', 20.00),
(3, 'Product C', 30.00);

INSERT INTO Order_sales(SaleID, ProductID, QuantitySold) VALUES
(1, 1, 100),
(2, 1, 150),
(3, 2, 200),
(4, 3, 250),
(5, 3, 100);