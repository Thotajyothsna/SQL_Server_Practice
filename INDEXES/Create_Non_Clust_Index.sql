--NOn Clustered index creation
CREATE  INDEX IX_sales_pers
ON sales(sales_person);

--drop index IX_sales_pers ON sales; deleting existed index to create another


--NOn Clustered index creation with more than one column
CREATE  INDEX IX_salesman
ON sales(sales_person,Product_name);

