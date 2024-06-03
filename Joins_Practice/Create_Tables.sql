USE SQLSERVERPRACTICE

CREATE TABLE SALESMAN
(Salesman_ID INT PRIMARY KEY,
name varchar(25),
city varchar(20),
commission float CHECK (commission < 1.00)
);

INSERT INTO SALESMAN (salesman_id, name, city, commission) VALUES
(5001, 'Amit Sharma', 'Mumbai', 0.15),
(5002, 'Ravi Kumar', 'Delhi', 0.13),
(5003, 'Priya Singh', 'Bangalore', 0.12),
(5004, 'Suresh Patel', 'Ahmedabad', 0.14),
(5005, 'Anita Desai', 'Chennai', 0.11),
(5006, 'Rajesh Gupta', 'Kolkata', 0.13),
(5007, 'Vikas Malhotra', 'Pune', 0.14),
(5008, 'Neha Verma', 'Hyderabad', 0.12),
(5009, 'Arjun Reddy', 'Vishakhapatnam', 0.13),
(5010, 'Sunita Rao', 'Jaipur', 0.11),
(5011, 'Kiran Joshi', 'Surat', 0.15),
(5012, 'Manoj Thakur', 'Lucknow', 0.13);

SELECT * FROM SALESMAN;

CREATE TABLE CUSTOMERS
(Cust_ID INT PRIMARY KEY,
Cust_Name VARCHAR(25),
City VARCHAR(20),
GRADE INT ,
Salesman_ID int ,
FOREIGN KEY (salesman_id) REFERENCES SALESMAN(salesman_id));

INSERT INTO CUSTOMERS(Cust_ID, cust_name, city, grade, salesman_id) VALUES
(3002, 'Aarav Sharma', 'Mumbai', 100, 5001),
(3007, 'Vihaan Patel', 'Mumbai', 200, 5001),
(3005, 'Ananya Verma', 'Delhi', 200, 5002),
(3008, 'Ishaan Kapoor', 'Chennai', 300, 5002),
(3004, 'Diya Joshi', 'Ahmedabad', 300, 5006),
(3009, 'Kabir Rao', 'Kolkata', 100, 5003),
(3003, 'Aditi Singh', 'Bangalore', 200, 5007),
(3001, 'Rohan Gupta', 'Hyderabad', NULL, 5005),
(3010, 'Sahil Mehta', 'Pune', 150, 5001),
(3011, 'Riya Nair', 'Mumbai', 250, 5002),
(3012, 'Aakash Sharma', 'Delhi', 200, 5003),
(3013, 'Priyanka Reddy', 'Hyderabad', 300, 5004),
(3014, 'Rohan Desai', 'Ahmedabad', 350, 5005),
(3015, 'Sneha Kapoor', 'Chennai', 100, 5006),
(3016, 'Vikram Singh', 'Kolkata', 200, 5007),
(3017, 'Tara Bhatt', 'Bangalore', 150, 5001);

INSERT INTO CUSTOMERS(cust_id, cust_name, city, grade, salesman_id) VALUES
(3018, 'Karan Mehra', 'Surat', 180, 5008),
(3019, 'Pooja Agarwal', 'Jaipur', 220, 5008),
(3020, 'Aditya Jain', 'Nagpur', 160, 5009),
(3021, 'Meera Iyer', 'Bhopal', 300, 5009),
(3022, 'Amit Kulkarni', 'Indore', 140, 5010),
(3023, 'Suman Das', 'Ranchi', 200, 5010),
(3024, 'Ritika Singh', 'Vadodara', 120, 5011),
(3025, 'Ayesha Khan', 'Coimbatore', 180, 5011),
(3026, 'Nikhil Bansal', 'Trivandrum', 150, 5012),
(3027, 'Shreya Sinha', 'Guwahati', 210, 5012);

select * from CUSTOMERS;

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT
);

-- Insert updated data into the orders table
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id) VALUES
(70001, 150.5, '2024-04-05', 3005),
(70009, 270.65, '2024-03-10', 3001),
(70002, 65.26, '2024-04-05', 3002),
(70004, 110.5, '2024-02-17', 3009),
(70007, 948.5, '2024-03-10', 3005),
(70005, 2400.6, '2024-01-27', 3007),
(70008, 5760, '2024-03-10', 3002),
(70010, 1983.43, '2024-04-10', 3004),
(70003, 2480.4, '2024-04-10', 3009),
(70012, 250.45, '2023-12-27', 3008),
(70011, 75.29, '2024-02-17', 3003),
(70013, 3045.6, '2023-10-25', 3002);

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id) VALUES
(70014, 520.0, '2024-04-12', 3006),
(70015, 1230.75, '2024-03-15', 3004),
(70016, 345.5, '2024-02-20', 3001),
(70017, 789.6, '2024-01-29', 3007),
(70018, 156.45, '2024-04-15', 3003),
(70019, 2140.1, '2024-03-18', 3008),
(70020, 845.9, '2024-04-18', 3005),
(70021, 634.75, '2024-04-20', 3006),
(70022, 1789.3, '2024-01-30', 3002),
(70023, 210.8, '2024-03-22', 3009),
(70024, 940.5, '2024-04-22', 3004),
(70025, 1675.4, '2024-02-25', 3002);

select * from orders;