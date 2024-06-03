/*Create a function that returns the total revenue 
generated by a product by taking the product ID as input
and multiplying the price with the total quantity sold.*/
CREATE FUNCTION UDF_TOTAL_REVENUE(@PRODUCT_ID INT)
RETURNS  INT
AS
BEGIN
DECLARE @TOTAL_REVENUE INT,
@PRICE INT;
SET @PRICE=(SELECT PRICE FROM Products WHERE ProductID=@PRODUCT_ID GROUP BY PRICE);
SET @TOTAL_REVENUE=(SELECT SUM(QuantitySold)  FROM Products P 
JOIN Order_sales O ON O.ProductID=@PRODUCT_ID)*@PRICE;
RETURN @TOTAL_REVENUE;
END

SELECT DBO.UDF_TOTAL_REVENUE(1);

SELECT * FROM Order_sales;
SELECT * FROM Products;