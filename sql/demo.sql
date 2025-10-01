

PS C:\Users\Admin> mysqlsh --sql -u root -p;
Please provide the password for 'root@localhost': ****
Save password for 'root@localhost'? [Y]es/[N]o/Ne[v]er (default No): y
MySQL Shell 8.0.43

Copyright (c) 2016, 2025, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its affiliates.
Other names may be trademarks of their respective owners.

Type '\help' or '\?' for help; '\quit' to exit.
Creating a session to 'root@localhost'
Fetching global names for auto-completion... Press ^C to stop.
Your MySQL connection id is 135 (X protocol)
Server version: 8.0.43 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:33060+ ssl  SQL > create database Demo;
Query OK, 1 row affected (0.0342 sec)
 MySQL  localhost:33060+ ssl  SQL > use Demo;
Default schema set to `Demo`.
Fetching global names, object names from `demo` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  demo  SQL > create table emp(Id int primary key , First_Name varchar(50) , Last_Name char(20) , Email varchar(150) , City varchar(50) , Phone_Number int , Hired_date Date , Hired_time time , Last_login datetime , Bonus float , Salary decimal(10,20) , Active boolean , Department text;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > create table emp(Id int primary key , First_Name varchar(50) , Last_Name char(20) , Email varchar(150) , City varchar(50) , Phone_Number int , Hired_date Date , Hired_time time , Last_login datetime , Bonus float , Salary decimal(10,20) , Active boolean , Department text);
ERROR: 1427: For float(M,D), double(M,D) or decimal(M,D), M must be >= D (column 'Salary').
 MySQL  localhost:33060+ ssl  demo  SQL > create table emp(Id int primary key , First_Name varchar(50) , Last_Name char(20) , Email varchar(150) , City varchar(50) , Phone_Number int , Hired_date Date , Hired_time time , Last_login datetime , Bonus float , Salary decimal(10,2) , Active boolean , Department text);
Query OK, 0 rows affected (0.1609 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > desc emp;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| Id           | int           | NO   | PRI | NULL    |       |
| First_Name   | varchar(50)   | YES  |     | NULL    |       |
| Last_Name    | char(20)      | YES  |     | NULL    |       |
| Email        | varchar(150)  | YES  |     | NULL    |       |
| City         | varchar(50)   | YES  |     | NULL    |       |
| Phone_Number | int           | YES  |     | NULL    |       |
| Hired_date   | date          | YES  |     | NULL    |       |
| Hired_time   | time          | YES  |     | NULL    |       |
| Last_login   | datetime      | YES  |     | NULL    |       |
| Bonus        | float         | YES  |     | NULL    |       |
| Salary       | decimal(10,2) | YES  |     | NULL    |       |
| Active       | tinyint(1)    | YES  |     | NULL    |       |
| Department   | text          | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
13 rows in set (0.0129 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > INSERT INTO emp (Id, First_Name, Last_Name, Email, City, Phone_Number, Hired_date, Hired_time, Last_login, Bonus, Salary, Active, Department)
                                       -> VALUES
                                       -> (1, 'Rahul', 'Sharma', 'rahul.sharma@example.com', 'Mumbai', 9876543210, '2022-01-15', '09:00:00', '2025-09-24 09:15:00', 5000.50, 50000.75, TRUE, 'HR'),
                                       -> (2, 'Priya', 'Kumar', 'priya.kumar@example.com', 'Delhi', 9123456780, '2021-03-10', '10:30:00', '2025-09-23 10:00:00', 4500.00, 60000.00, TRUE, 'IT'),
                                       -> (3, 'Aman', 'Singh', 'aman.singh@example.com', 'Bangalore', 9988776655, '2020-06-05', '11:15:00', '2025-09-22 11:00:00', 4000.25, 45000.00, TRUE, 'Finance'),
                                       -> (4, 'Neha', 'Verma', 'neha.verma@example.com', 'Pune', 9876123450, '2019-11-12', '08:45:00', '2025-09-21 08:50:00', 3500.75, 55000.50, FALSE, 'Marketing'),
                                       -> (5, 'Suresh', 'Patel', 'suresh.patel@example.com', 'Ahmedabad', 9876501234, '2023-02-20', '09:30:00', '2025-09-20 09:25:00', 3000.50, 48000.00, TRUE, 'IT'),
                                       -> (6, 'Anjali', 'Rao', 'anjali.rao@example.com', 'Hyderabad', 9876547890, '2021-08-18', '10:15:00', '2025-09-19 10:05:00', 4200.00, 52000.75, TRUE, 'HR'),
                                       -> (7, 'Vikram', 'Chaudhary', 'vikram.chaudhary@example.com', 'Chennai', 9123450987, '2020-12-01', '11:00:00', '2025-09-18 11:05:00', 3800.25, 47000.50, TRUE, 'Finance'),
                                       -> (8, 'Meera', 'Gupta', 'meera.gupta@example.com', 'Kolkata', 9988771234, '2019-07-22', '08:30:00', '2025-09-17 08:35:00', 4100.50, 53000.00, FALSE, 'Marketing'),
                                       -> (9, 'Rohan', 'Deshmukh', 'rohan.deshmukh@example.com', 'Nagpur', 9876540987, '2022-05-10', '09:45:00', '2025-09-16 09:40:00', 3500.25, 46000.25, TRUE, 'IT'),
                                       -> (10, 'Kavya', 'Iyer', 'kavya.iyer@example.com', 'Coimbatore', 9123454321, '2023-01-15', '10:00:00', '2025-09-15 09:55:00', 3900.75, 49000.50, TRUE, 'HR'),
                                       -> (11, 'Arjun', 'Malhotra', 'arjun.malhotra@example.com', 'Jaipur', 9876509876, '2020-09-05', '11:30:00', '2025-09-14 11:25:00', 4200.50, 52000.75, TRUE, 'Finance'),
                                       -> (12, 'Pooja', 'Saxena', 'pooja.saxena@example.com', 'Lucknow', 9988774321, '2021-04-18', '08:50:00', '2025-09-13 08:45:00', 3700.25, 47000.00, TRUE, 'Marketing'),
                                       -> (13, 'Sanjay', 'Reddy', 'sanjay.reddy@example.com', 'Bangalore', 9123456789, '2019-06-12', '09:15:00', '2025-09-12 09:10:00', 4300.50, 54000.25, FALSE, 'IT'),
                                       -> (14, 'Neetu', 'Shah', 'neetu.shah@example.com', 'Surat', 9876543212, '2023-03-22', '10:45:00', '2025-09-11 10:40:00', 3600.25, 48000.75, TRUE, 'HR'),
                                       -> (15, 'Rahul', 'Jain', 'rahul.jain@example.com', 'Indore', 9988773456, '2022-07-30', '11:15:00', '2025-09-10 11:10:00', 4000.50, 50000.50, TRUE, 'Finance'),
                                       -> (16, 'Simran', 'Kaur', 'simran.kaur@example.com', 'Chandigarh', 9123459876, '2021-11-10', '08:40:00', '2025-09-09 08:35:00', 4200.75, 52000.00, TRUE, 'Marketing'),
                                       -> (17, 'Vikas', 'Mehta', 'vikas.mehta@example.com', 'Delhi', 9876504321, '2020-02-05', '09:55:00', '2025-09-08 09:50:00', 3900.50, 49000.25, FALSE, 'IT'),
                                       -> (18, 'Riya', 'Nair', 'riya.nair@example.com', 'Kochi', 9988775678, '2019-08-18', '10:20:00', '2025-09-07 10:15:00', 3500.75, 46000.75, TRUE, 'HR'),
                                       -> (19, 'Manish', 'Kapoor', 'manish.kapoor@example.com', 'Delhi', 9123456781, '2023-05-10', '11:05:00', '2025-09-06 11:00:00', 4100.25, 50000.25, TRUE, 'Finance'),
                                       -> (20, 'Ananya', 'Tripathi', 'ananya.tripathi@example.com', 'Varanasi', 9876549870, '2022-09-25', '08:35:00', '2025-09-05 08:30:00', 3800.50, 47000.50, TRUE, 'Marketing');
ERROR: 1264: Out of range value for column 'Phone_Number' at row 1
 MySQL  localhost:33060+ ssl  demo  SQL >
 MySQL  localhost:33060+ ssl  demo  SQL > ALTER TABLE emp
                                       -> MODIFY COLUMN Phone_Number BIGINT;
Query OK, 0 rows affected (0.1446 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > INSERT INTO emp (Id, First_Name, Last_Name, Email, City, Phone_Number, Hired_date, Hired_time, Last_login, Bonus, Salary, Active, Department) VALUES (1, 'Rahul', 'Sharma', 'rahul.sharma@example.com', 'Mumbai', 9876543210, '2022-01-15', '09:00:00', '2025-09-24 09:15:00', 5000.50, 50000.75, TRUE, 'HR'), (2, 'Priya', 'Kumar', 'priya.kumar@example.com', 'Delhi', 9123456780, '2021-03-10', '10:30:00', '2025-09-23 10:00:00', 4500.00, 60000.00, TRUE, 'IT'), (3, 'Aman', 'Singh', 'aman.singh@example.com', 'Bangalore', 9988776655, '2020-06-05', '11:15:00', '2025-09-22 11:00:00', 4000.25, 45000.00, TRUE, 'Finance'), (4, 'Neha', 'Verma', 'neha.verma@example.com', 'Pune', 9876123450, '2019-11-12', '08:45:00', '2025-09-21 08:50:00', 3500.75, 55000.50, FALSE, 'Marketing'), (5, 'Suresh', 'Patel', 'suresh.patel@example.com', 'Ahmedabad', 9876501234, '2023-02-20', '09:30:00', '2025-09-20 09:25:00', 3000.50, 48000.00, TRUE, 'IT'), (6, 'Anjali', 'Rao', 'anjali.rao@example.com', 'Hyderabad', 9876547890, '2021-08-18', '10:15:00', '2025-09-19 10:05:00', 4200.00, 52000.75, TRUE, 'HR'), (7, 'Vikram', 'Chaudhary', 'vikram.chaudhary@example.com', 'Chennai', 9123450987, '2020-12-01', '11:00:00', '2025-09-18 11:05:00', 3800.25, 47000.50, TRUE, 'Finance'), (8, 'Meera', 'Gupta', 'meera.gupta@example.com', 'Kolkata', 9988771234, '2019-07-22', '08:30:00', '2025-09-17 08:35:00', 4100.50, 53000.00, FALSE, 'Marketing'), (9, 'Rohan', 'Deshmukh', 'rohan.deshmukh@example.com', 'Nagpur', 9876540987, '2022-05-10', '09:45:00', '2025-09-16 09:40:00', 3500.25, 46000.25, TRUE, 'IT'), (10, 'Kavya', 'Iyer', 'kavya.iyer@example.com', 'Coimbatore', 9123454321, '2023-01-15', '10:00:00', '2025-09-15 09:55:00', 3900.75, 49000.50, TRUE, 'HR'), (11, 'Arjun', 'Malhotra', 'arjun.malhotra@example.com', 'Jaipur', 9876509876, '2020-09-05', '11:30:00', '2025-09-14 11:25:00', 4200.50, 52000.75, TRUE, 'Finance'), (12, 'Pooja', 'Saxena', 'pooja.saxena@example.com', 'Lucknow', 9988774321, '2021-04-18', '08:50:00', '2025-09-13 08:45:00', 3700.25, 47000.00, TRUE, 'Marketing'), (13, 'Sanjay', 'Reddy', 'sanjay.reddy@example.com', 'Bangalore', 9123456789, '2019-06-12', '09:15:00', '2025-09-12 09:10:00', 4300.50, 54000.25, FALSE, 'IT'), (14, 'Neetu', 'Shah', 'neetu.shah@example.com', 'Surat', 9876543212, '2023-03-22', '10:45:00', '2025-09-11 10:40:00', 3600.25, 48000.75, TRUE, 'HR'), (15, 'Rahul', 'Jain', 'rahul.jain@example.com', 'Indore', 9988773456, '2022-07-30', '11:15:00', '2025-09-10 11:10:00', 4000.50, 50000.50, TRUE, 'Finance'), (16, 'Simran', 'Kaur', 'simran.kaur@example.com', 'Chandigarh', 9123459876, '2021-11-10', '08:40:00', '2025-09-09 08:35:00', 4200.75, 52000.00, TRUE, 'Marketing'), (17, 'Vikas', 'Mehta', 'vikas.mehta@example.com', 'Delhi', 9876504321, '2020-02-05', '09:55:00', '2025-09-08 09:50:00', 3900.50, 49000.25, FALSE, 'IT'), (18, 'Riya', 'Nair', 'riya.nair@example.com', 'Kochi', 9988775678, '2019-08-18', '10:20:00', '2025-09-07 10:15:00', 3500.75, 46000.75, TRUE, 'HR'), (19, 'Manish', 'Kapoor', 'manish.kapoor@example.com', 'Delhi', 9123456781, '2023-05-10', '11:05:00', '2025-09-06 11:00:00', 4100.25, 50000.25, TRUE, 'Finance'), (20, 'Ananya', 'Tripathi', 'ananya.tripathi@example.com', 'Varanasi', 9876549870, '2022-09-25', '08:35:00', '2025-09-05 08:30:00', 3800.50, 47000.50, TRUE, 'Marketing');
Query OK, 20 rows affected (0.0133 sec)

Records: 20  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------------------+---------+----------+--------+------------+
| Id | First_Name | Last_Name | Email                        | City       | Phone_Number | Hired_date | Hired_time | Last_login          | Bonus   | Salary   | Active | Department |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------------------+---------+----------+--------+------------+
|  1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 | 09:00:00   | 2025-09-24 09:15:00 |  5000.5 | 50000.75 |      1 | HR         |
|  2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 | 10:30:00   | 2025-09-23 10:00:00 |    4500 | 60000.00 |      1 | IT         |
|  3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 11:15:00   | 2025-09-22 11:00:00 | 4000.25 | 45000.00 |      1 | Finance    |
|  4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 08:45:00   | 2025-09-21 08:50:00 | 3500.75 | 55000.50 |      0 | Marketing  |
|  5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 | 09:30:00   | 2025-09-20 09:25:00 |  3000.5 | 48000.00 |      1 | IT         |
|  6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 | 10:15:00   | 2025-09-19 10:05:00 |    4200 | 52000.75 |      1 | HR         |
|  7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 11:00:00   | 2025-09-18 11:05:00 | 3800.25 | 47000.50 |      1 | Finance    |
|  8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 | 08:30:00   | 2025-09-17 08:35:00 |  4100.5 | 53000.00 |      0 | Marketing  |
|  9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 09:45:00   | 2025-09-16 09:40:00 | 3500.25 | 46000.25 |      1 | IT         |
| 10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 10:00:00   | 2025-09-15 09:55:00 | 3900.75 | 49000.50 |      1 | HR         |
| 11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 | 11:30:00   | 2025-09-14 11:25:00 |  4200.5 | 52000.75 |      1 | Finance    |
| 12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 08:50:00   | 2025-09-13 08:45:00 | 3700.25 | 47000.00 |      1 | Marketing  |
| 13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 | 09:15:00   | 2025-09-12 09:10:00 |  4300.5 | 54000.25 |      0 | IT         |
| 14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 10:45:00   | 2025-09-11 10:40:00 | 3600.25 | 48000.75 |      1 | HR         |
| 15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 | 11:15:00   | 2025-09-10 11:10:00 |  4000.5 | 50000.50 |      1 | Finance    |
| 16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 08:40:00   | 2025-09-09 08:35:00 | 4200.75 | 52000.00 |      1 | Marketing  |
| 17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 | 09:55:00   | 2025-09-08 09:50:00 |  3900.5 | 49000.25 |      0 | IT         |
| 18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 10:20:00   | 2025-09-07 10:15:00 | 3500.75 | 46000.75 |      1 | HR         |
| 19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 11:05:00   | 2025-09-06 11:00:00 | 4100.25 | 50000.25 |      1 | Finance    |
| 20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 | 08:35:00   | 2025-09-05 08:30:00 |  3800.5 | 47000.50 |      1 | Marketing  |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------------------+---------+----------+--------+------------+
20 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > ALTER TABLE emp add Sr_num int;
Query OK, 0 rows affected (0.0472 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------------------+---------+----------+--------+------------+--------+
| Id | First_Name | Last_Name | Email                        | City       | Phone_Number | Hired_date | Hired_time | Last_login          | Bonus   | Salary   | Active | Department | Sr_num |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------------------+---------+----------+--------+------------+--------+
|  1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 | 09:00:00   | 2025-09-24 09:15:00 |  5000.5 | 50000.75 |      1 | HR         |   NULL |
|  2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 | 10:30:00   | 2025-09-23 10:00:00 |    4500 | 60000.00 |      1 | IT         |   NULL |
|  3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 11:15:00   | 2025-09-22 11:00:00 | 4000.25 | 45000.00 |      1 | Finance    |   NULL |
|  4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 08:45:00   | 2025-09-21 08:50:00 | 3500.75 | 55000.50 |      0 | Marketing  |   NULL |
|  5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 | 09:30:00   | 2025-09-20 09:25:00 |  3000.5 | 48000.00 |      1 | IT         |   NULL |
|  6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 | 10:15:00   | 2025-09-19 10:05:00 |    4200 | 52000.75 |      1 | HR         |   NULL |
|  7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 11:00:00   | 2025-09-18 11:05:00 | 3800.25 | 47000.50 |      1 | Finance    |   NULL |
|  8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 | 08:30:00   | 2025-09-17 08:35:00 |  4100.5 | 53000.00 |      0 | Marketing  |   NULL |
|  9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 09:45:00   | 2025-09-16 09:40:00 | 3500.25 | 46000.25 |      1 | IT         |   NULL |
| 10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 10:00:00   | 2025-09-15 09:55:00 | 3900.75 | 49000.50 |      1 | HR         |   NULL |
| 11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 | 11:30:00   | 2025-09-14 11:25:00 |  4200.5 | 52000.75 |      1 | Finance    |   NULL |
| 12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 08:50:00   | 2025-09-13 08:45:00 | 3700.25 | 47000.00 |      1 | Marketing  |   NULL |
| 13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 | 09:15:00   | 2025-09-12 09:10:00 |  4300.5 | 54000.25 |      0 | IT         |   NULL |
| 14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 10:45:00   | 2025-09-11 10:40:00 | 3600.25 | 48000.75 |      1 | HR         |   NULL |
| 15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 | 11:15:00   | 2025-09-10 11:10:00 |  4000.5 | 50000.50 |      1 | Finance    |   NULL |
| 16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 08:40:00   | 2025-09-09 08:35:00 | 4200.75 | 52000.00 |      1 | Marketing  |   NULL |
| 17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 | 09:55:00   | 2025-09-08 09:50:00 |  3900.5 | 49000.25 |      0 | IT         |   NULL |
| 18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 10:20:00   | 2025-09-07 10:15:00 | 3500.75 | 46000.75 |      1 | HR         |   NULL |
| 19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 11:05:00   | 2025-09-06 11:00:00 | 4100.25 | 50000.25 |      1 | Finance    |   NULL |
| 20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 | 08:35:00   | 2025-09-05 08:30:00 |  3800.5 | 47000.50 |      1 | Marketing  |   NULL |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------------------+---------+----------+--------+------------+--------+
20 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > atler table emp drop  Last_login;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'atler table emp drop  Last_login' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > atler table emp drop column Last_login;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'atler table emp drop column Last_login' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > atler table emp drop column Last_login;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'atler table emp drop column Last_login' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > ALTER TABLE emp
                                       -> DROP COLUMN Last_login;
Query OK, 0 rows affected (0.0401 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+--------+
| Id | First_Name | Last_Name | Email                        | City       | Phone_Number | Hired_date | Hired_time | Bonus   | Salary   | Active | Department | Sr_num |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+--------+
|  1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 | 09:00:00   |  5000.5 | 50000.75 |      1 | HR         |   NULL |
|  2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 | 10:30:00   |    4500 | 60000.00 |      1 | IT         |   NULL |
|  3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 11:15:00   | 4000.25 | 45000.00 |      1 | Finance    |   NULL |
|  4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 08:45:00   | 3500.75 | 55000.50 |      0 | Marketing  |   NULL |
|  5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 | 09:30:00   |  3000.5 | 48000.00 |      1 | IT         |   NULL |
|  6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 | 10:15:00   |    4200 | 52000.75 |      1 | HR         |   NULL |
|  7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 11:00:00   | 3800.25 | 47000.50 |      1 | Finance    |   NULL |
|  8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 | 08:30:00   |  4100.5 | 53000.00 |      0 | Marketing  |   NULL |
|  9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 09:45:00   | 3500.25 | 46000.25 |      1 | IT         |   NULL |
| 10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 10:00:00   | 3900.75 | 49000.50 |      1 | HR         |   NULL |
| 11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 | 11:30:00   |  4200.5 | 52000.75 |      1 | Finance    |   NULL |
| 12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 08:50:00   | 3700.25 | 47000.00 |      1 | Marketing  |   NULL |
| 13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 | 09:15:00   |  4300.5 | 54000.25 |      0 | IT         |   NULL |
| 14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 10:45:00   | 3600.25 | 48000.75 |      1 | HR         |   NULL |
| 15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 | 11:15:00   |  4000.5 | 50000.50 |      1 | Finance    |   NULL |
| 16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 08:40:00   | 4200.75 | 52000.00 |      1 | Marketing  |   NULL |
| 17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 | 09:55:00   |  3900.5 | 49000.25 |      0 | IT         |   NULL |
| 18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 10:20:00   | 3500.75 | 46000.75 |      1 | HR         |   NULL |
| 19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 11:05:00   | 4100.25 | 50000.25 |      1 | Finance    |   NULL |
| 20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 | 08:35:00   |  3800.5 | 47000.50 |      1 | Marketing  |   NULL |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+--------+
20 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > alter table emp drop column Sr_num;
Query OK, 0 rows affected (0.0405 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+
| Id | First_Name | Last_Name | Email                        | City       | Phone_Number | Hired_date | Hired_time | Bonus   | Salary   | Active | Department |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+
|  1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 | 09:00:00   |  5000.5 | 50000.75 |      1 | HR         |
|  2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 | 10:30:00   |    4500 | 60000.00 |      1 | IT         |
|  3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 11:15:00   | 4000.25 | 45000.00 |      1 | Finance    |
|  4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 08:45:00   | 3500.75 | 55000.50 |      0 | Marketing  |
|  5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 | 09:30:00   |  3000.5 | 48000.00 |      1 | IT         |
|  6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 | 10:15:00   |    4200 | 52000.75 |      1 | HR         |
|  7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 11:00:00   | 3800.25 | 47000.50 |      1 | Finance    |
|  8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 | 08:30:00   |  4100.5 | 53000.00 |      0 | Marketing  |
|  9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 09:45:00   | 3500.25 | 46000.25 |      1 | IT         |
| 10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 10:00:00   | 3900.75 | 49000.50 |      1 | HR         |
| 11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 | 11:30:00   |  4200.5 | 52000.75 |      1 | Finance    |
| 12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 08:50:00   | 3700.25 | 47000.00 |      1 | Marketing  |
| 13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 | 09:15:00   |  4300.5 | 54000.25 |      0 | IT         |
| 14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 10:45:00   | 3600.25 | 48000.75 |      1 | HR         |
| 15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 | 11:15:00   |  4000.5 | 50000.50 |      1 | Finance    |
| 16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 08:40:00   | 4200.75 | 52000.00 |      1 | Marketing  |
| 17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 | 09:55:00   |  3900.5 | 49000.25 |      0 | IT         |
| 18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 10:20:00   | 3500.75 | 46000.75 |      1 | HR         |
| 19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 11:05:00   | 4100.25 | 50000.25 |      1 | Finance    |
| 20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 | 08:35:00   |  3800.5 | 47000.50 |      1 | Marketing  |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+
20 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > ALTER TABLE emp modify column Last_name varchar(50);
Query OK, 20 rows affected (0.1259 sec)

Records: 20  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+
| Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Hired_time | Bonus   | Salary   | Active | Department |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+
|  1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 | 09:00:00   |  5000.5 | 50000.75 |      1 | HR         |
|  2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 | 10:30:00   |    4500 | 60000.00 |      1 | IT         |
|  3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 11:15:00   | 4000.25 | 45000.00 |      1 | Finance    |
|  4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 08:45:00   | 3500.75 | 55000.50 |      0 | Marketing  |
|  5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 | 09:30:00   |  3000.5 | 48000.00 |      1 | IT         |
|  6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 | 10:15:00   |    4200 | 52000.75 |      1 | HR         |
|  7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 11:00:00   | 3800.25 | 47000.50 |      1 | Finance    |
|  8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 | 08:30:00   |  4100.5 | 53000.00 |      0 | Marketing  |
|  9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 09:45:00   | 3500.25 | 46000.25 |      1 | IT         |
| 10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 10:00:00   | 3900.75 | 49000.50 |      1 | HR         |
| 11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 | 11:30:00   |  4200.5 | 52000.75 |      1 | Finance    |
| 12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 08:50:00   | 3700.25 | 47000.00 |      1 | Marketing  |
| 13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 | 09:15:00   |  4300.5 | 54000.25 |      0 | IT         |
| 14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 10:45:00   | 3600.25 | 48000.75 |      1 | HR         |
| 15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 | 11:15:00   |  4000.5 | 50000.50 |      1 | Finance    |
| 16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 08:40:00   | 4200.75 | 52000.00 |      1 | Marketing  |
| 17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 | 09:55:00   |  3900.5 | 49000.25 |      0 | IT         |
| 18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 10:20:00   | 3500.75 | 46000.75 |      1 | HR         |
| 19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 11:05:00   | 4100.25 | 50000.25 |      1 | Finance    |
| 20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 | 08:35:00   |  3800.5 | 47000.50 |      1 | Marketing  |
+----+------------+-----------+------------------------------+------------+--------------+------------+------------+---------+----------+--------+------------+
20 rows in set (0.0029 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > alter table emp drop column Hired_time;
Query OK, 0 rows affected (0.0466 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+----+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+----+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|  1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 |  5000.5 | 50000.75 |      1 | HR         |
|  2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    4500 | 60000.00 |      1 | IT         |
|  3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 | 45000.00 |      1 | Finance    |
|  4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | Marketing  |
|  5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 | 48000.00 |      1 | IT         |
|  6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |    4200 | 52000.75 |      1 | HR         |
|  7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 | 47000.50 |      1 | Finance    |
|  8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 | 53000.00 |      0 | Marketing  |
|  9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 | 46000.25 |      1 | IT         |
| 10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 3900.75 | 49000.50 |      1 | HR         |
| 11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 | 52000.75 |      1 | Finance    |
| 12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 3700.25 | 47000.00 |      1 | Marketing  |
| 13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
| 14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 3600.25 | 48000.75 |      1 | HR         |
| 15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 | 50000.50 |      1 | Finance    |
| 16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 | 52000.00 |      1 | Marketing  |
| 17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
| 18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 3500.75 | 46000.75 |      1 | HR         |
| 19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 | 50000.25 |      1 | Finance    |
| 20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 | 47000.50 |      1 | Marketing  |
+----+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
20 rows in set (0.0037 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > alter table emp change column id as Emp_Id;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'as Emp_Id' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > alter table emp change column id  Emp_Id;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > alter table emp change column id  Emp_Id int;
Query OK, 0 rows affected (0.0409 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 |  5000.5 | 50000.75 |      1 | HR         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    4500 | 60000.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 | 45000.00 |      1 | Finance    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | Marketing  |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 | 48000.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |    4200 | 52000.75 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 | 47000.50 |      1 | Finance    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 | 46000.25 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 3900.75 | 49000.50 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 | 52000.75 |      1 | Finance    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 3700.25 | 47000.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 3600.25 | 48000.75 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 | 50000.50 |      1 | Finance    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 | 52000.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 3500.75 | 46000.75 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 | 50000.25 |      1 | Finance    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 | 47000.50 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
20 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select max(salary) as Salary where emp;
ERROR: 1054: Unknown column 'salary' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > select max(salary) as Salary from emp;
+----------+
| Salary   |
+----------+
| 60000.00 |
+----------+
1 row in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select max(salary) as Salary from emp where Department= IT;
ERROR: 1054: Unknown column 'IT' in 'where clause'
 MySQL  localhost:33060+ ssl  demo  SQL > select max(salary) as Salary from emp where Department= 'IT';
+----------+
| Salary   |
+----------+
| 60000.00 |
+----------+
1 row in set (0.0034 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select min(salary) as Salary from emp;
+----------+
| Salary   |
+----------+
| 45000.00 |
+----------+
1 row in set (0.0029 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select sum(salary) as Salary from emp;
+------------+
| Salary     |
+------------+
| 1000007.25 |
+------------+
1 row in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp;
+--------+
| Salary |
+--------+
|     20 |
+--------+
1 row in set (0.0161 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select avg(salary) as Salary from emp;
+--------------+
| Salary       |
+--------------+
| 50000.362500 |
+--------------+
1 row in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp where Department='hr';
+--------+
| Salary |
+--------+
|      5 |
+--------+
1 row in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp where Department='hr';                   select count(*) as Salary from emp where Department='hr';                   select count(*) as Salary from emp where Department='hr;                    select count(*) as Salary from emp where Department='h;                     select count(*) as Salary from emp where Department='h;^C
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp where Active=true;
+--------+
| Salary |
+--------+
|     16 |
+--------+
1 row in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp where City='Pune' & Mumbai;
ERROR: 1054: Unknown column 'Mumbai' in 'where clause'
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp where City='Pune' ;
+--------+
| Salary |
+--------+
|      1 |
+--------+
1 row in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp where City='Pune' & 'Mumbai';
+--------+
| Salary |
+--------+
|     20 |
+--------+
1 row in set, 22 warnings (0.0043 sec)
Warning (code 1292): Truncated incorrect DOUBLE value: 'Mumbai'
Warning (code 1292): Truncated incorrect INTEGER value: 'Pune'
Warning (code 1292): Truncated incorrect INTEGER value: 'Mumbai'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Delhi'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Bangalore'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Pune'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Ahmedabad'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Hyderabad'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Chennai'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Kolkata'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Nagpur'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Coimbatore'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Jaipur'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Lucknow'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Bangalore'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Surat'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Indore'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Chandigarh'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Delhi'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Kochi'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Delhi'
Warning (code 1292): Truncated incorrect DOUBLE value: 'Varanasi'
 MySQL  localhost:33060+ ssl  demo  SQL > select count(*) as Salary from emp where City in ('Pune','Mumbai');
+--------+
| Salary |
+--------+
|      2 |
+--------+
1 row in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select sum(bouns) as Salary from emp where Department= 'hr';
ERROR: 1054: Unknown column 'bouns' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > select sum(Bouns) as Salary from emp where Department= 'hr';
ERROR: 1054: Unknown column 'Bouns' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > select sum( Bonus) as Salary from emp where Department= 'hr';
+----------+
| Salary   |
+----------+
| 20202.25 |
+----------+
1 row in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select sum(Salary) as Salary from emp where Active=true;
+-----------+
| Salary    |
+-----------+
| 789006.25 |
+-----------+
1 row in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT AVG(Bonus) FROM emp WHERE Department='Marketing';
+------------+
| AVG(Bonus) |
+------------+
|    3860.55 |
+------------+
1 row in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT AVG(Salary) FROM emp WHERE City='Pune';
+--------------+
| AVG(Salary)  |
+--------------+
| 55000.500000 |
+--------------+
1 row in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT MIN(Hired_date) FROM emp;
+-----------------+
| MIN(Hired_date) |
+-----------------+
| 2019-06-12      |
+-----------------+
1 row in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT MIN(Bonus) FROM emp WHERE Department='IT';
+------------+
| MIN(Bonus) |
+------------+
|     3000.5 |
+------------+
1 row in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT MAX(Last_login) FROM emp;
ERROR: 1054: Unknown column 'Last_login' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT MAX(Bonus) FROM emp WHERE Department='HR';
+------------+
| MAX(Bonus) |
+------------+
|     5000.5 |
+------------+
1 row in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT COUNT(*) AS Total_Emp, SUM(Salary) AS Total_Salary, AVG(Salary) AS Avg_Salary, MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary
                                       -> FROM emp
                                       -> WHERE Department='IT';
+-----------+--------------+--------------+------------+------------+
| Total_Emp | Total_Salary | Avg_Salary   | Min_Salary | Max_Salary |
+-----------+--------------+--------------+------------+------------+
|         5 |    257000.75 | 51400.150000 |   46000.25 |   60000.00 |
+-----------+--------------+--------------+------------+------------+
1 row in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, AVG(Salary) AS Avg_Salary
                                       -> FROM emp
                                       -> GROUP BY Department;
+------------+--------------+
| Department | Avg_Salary   |
+------------+--------------+
| HR         | 49000.700000 |
| IT         | 51400.150000 |
| Finance    | 48800.400000 |
| Marketing  | 50800.200000 |
+------------+--------------+
4 rows in set (0.0029 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, SUM(Salary) AS Total_Salary
                                       -> FROM emp
                                       -> GROUP BY Department
                                       -> HAVING SUM(Salary) > 200000;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| HR         |    245003.50 |
| IT         |    257000.75 |
| Finance    |    244002.00 |
| Marketing  |    254001.00 |
+------------+--------------+
4 rows in set (0.0037 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, MAX(Salary) AS Max_Salary
                                       -> FROM emp
                                       -> GROUP BY Department;
+------------+------------+
| Department | Max_Salary |
+------------+------------+
| HR         |   52000.75 |
| IT         |   60000.00 |
| Finance    |   52000.75 |
| Marketing  |   55000.50 |
+------------+------------+






 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , salary from emp order by Salary ASc;
+------------+----------+
| First_Name | salary   |
+------------+----------+
| Aman       | 45000.00 |
| Rohan      | 46000.25 |
| Riya       | 46000.75 |
| Pooja      | 47000.00 |
| Vikram     | 47000.50 |
| Ananya     | 47000.50 |
| Suresh     | 48000.00 |
| Neetu      | 48000.75 |
| Vikas      | 49000.25 |
| Kavya      | 49000.50 |
| Manish     | 50000.25 |
| Rahul      | 50000.50 |
| Rahul      | 50000.75 |
| Simran     | 52000.00 |
| Anjali     | 52000.75 |
| Arjun      | 52000.75 |
| Meera      | 53000.00 |
| Sanjay     | 54000.25 |
| Neha       | 55000.50 |
| Priya      | 60000.00 |
+------------+----------+
20 rows in set (0.0945 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , salary from emp order by Salary deSc;
+------------+----------+
| First_Name | salary   |
+------------+----------+
| Priya      | 60000.00 |
| Neha       | 55000.50 |
| Sanjay     | 54000.25 |
| Meera      | 53000.00 |
| Anjali     | 52000.75 |
| Arjun      | 52000.75 |
| Simran     | 52000.00 |
| Rahul      | 50000.75 |
| Rahul      | 50000.50 |
| Manish     | 50000.25 |
| Kavya      | 49000.50 |
| Vikas      | 49000.25 |
| Neetu      | 48000.75 |
| Suresh     | 48000.00 |
| Vikram     | 47000.50 |
| Ananya     | 47000.50 |
| Pooja      | 47000.00 |
| Riya       | 46000.75 |
| Rohan      | 46000.25 |
| Aman       | 45000.00 |
+------------+----------+
20 rows in set (0.0041 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name ,Department, salary from emp order by Salary deSc;
+------------+------------+----------+
| First_Name | Department | salary   |
+------------+------------+----------+
| Priya      | IT         | 60000.00 |
| Neha       | Marketing  | 55000.50 |
| Sanjay     | IT         | 54000.25 |
| Meera      | Marketing  | 53000.00 |
| Anjali     | HR         | 52000.75 |
| Arjun      | Finance    | 52000.75 |
| Simran     | Marketing  | 52000.00 |
| Rahul      | HR         | 50000.75 |
| Rahul      | Finance    | 50000.50 |
| Manish     | Finance    | 50000.25 |
| Kavya      | HR         | 49000.50 |
| Vikas      | IT         | 49000.25 |
| Neetu      | HR         | 48000.75 |
| Suresh     | IT         | 48000.00 |
| Vikram     | Finance    | 47000.50 |
| Ananya     | Marketing  | 47000.50 |
| Pooja      | Marketing  | 47000.00 |
| Riya       | HR         | 46000.75 |
| Rohan      | IT         | 46000.25 |
| Aman       | Finance    | 45000.00 |
+------------+------------+----------+
20 rows in set (0.0065 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name ,Department, salary from emp order by Salary deSc limit 5;
+------------+------------+----------+
| First_Name | Department | salary   |
+------------+------------+----------+
| Priya      | IT         | 60000.00 |
| Neha       | Marketing  | 55000.50 |
| Sanjay     | IT         | 54000.25 |
| Meera      | Marketing  | 53000.00 |
| Anjali     | HR         | 52000.75 |
+------------+------------+----------+
5 rows in set (0.0055 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , salary from emp order by 2 deSc;
+------------+----------+
| First_Name | salary   |
+------------+----------+
| Priya      | 60000.00 |
| Neha       | 55000.50 |
| Sanjay     | 54000.25 |
| Meera      | 53000.00 |
| Anjali     | 52000.75 |
| Arjun      | 52000.75 |
| Simran     | 52000.00 |
| Rahul      | 50000.75 |
| Rahul      | 50000.50 |
| Manish     | 50000.25 |
| Kavya      | 49000.50 |
| Vikas      | 49000.25 |
| Neetu      | 48000.75 |
| Suresh     | 48000.00 |
| Vikram     | 47000.50 |
| Ananya     | 47000.50 |
| Pooja      | 47000.00 |
| Riya       | 46000.75 |
| Rohan      | 46000.25 |
| Aman       | 45000.00 |
+------------+----------+
20 rows in set (0.0045 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name  from emp order by Asc;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Asc' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name  from emp order by First_name Asc;
+------------+
| First_Name |
+------------+
| Aman       |
| Ananya     |
| Anjali     |
| Arjun      |
| Kavya      |
| Manish     |
| Meera      |
| Neetu      |
| Neha       |
| Pooja      |
| Priya      |
| Rahul      |
| Rahul      |
| Riya       |
| Rohan      |
| Sanjay     |
| Simran     |
| Suresh     |
| Vikas      |
| Vikram     |
+------------+
20 rows in set (0.0034 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name  from emp order by Hired_date Asc;
+------------+
| First_Name |
+------------+
| Sanjay     |
| Meera      |
| Riya       |
| Neha       |
| Vikas      |
| Aman       |
| Arjun      |
| Vikram     |
| Priya      |
| Pooja      |
| Anjali     |
| Simran     |
| Rahul      |
| Rohan      |
| Rahul      |
| Ananya     |
| Kavya      |
| Suresh     |
| Neetu      |
| Manish     |
+------------+
20 rows in set (0.0043 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select *  from emp order by Hired_date Asc;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 | 53000.00 |      0 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 3500.75 | 46000.75 |      1 | HR         |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 | 45000.00 |      1 | Finance    |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 | 52000.75 |      1 | Finance    |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 | 47000.50 |      1 | Finance    |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    4500 | 60000.00 |      1 | IT         |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 3700.25 | 47000.00 |      1 | Marketing  |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |    4200 | 52000.75 |      1 | HR         |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 | 52000.00 |      1 | Marketing  |
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 |  5000.5 | 50000.75 |      1 | HR         |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 | 46000.25 |      1 | IT         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 | 50000.50 |      1 | Finance    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 | 47000.50 |      1 | Marketing  |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 3900.75 | 49000.50 |      1 | HR         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 | 48000.00 |      1 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 3600.25 | 48000.75 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 | 50000.25 |      1 | Finance    |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
20 rows in set (0.0081 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select *  from emp order by Hired_date desc;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 | 50000.25 |      1 | Finance    |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 3600.25 | 48000.75 |      1 | HR         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 | 48000.00 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 3900.75 | 49000.50 |      1 | HR         |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 | 47000.50 |      1 | Marketing  |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 | 50000.50 |      1 | Finance    |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 | 46000.25 |      1 | IT         |
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 |  5000.5 | 50000.75 |      1 | HR         |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 | 52000.00 |      1 | Marketing  |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |    4200 | 52000.75 |      1 | HR         |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 3700.25 | 47000.00 |      1 | Marketing  |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    4500 | 60000.00 |      1 | IT         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 | 47000.50 |      1 | Finance    |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 | 52000.75 |      1 | Finance    |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 | 45000.00 |      1 | Finance    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 3500.75 | 46000.75 |      1 | HR         |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 | 53000.00 |      0 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
20 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , City   from emp where City='Pune'  order by Salary Asc;
+------------+------+
| First_Name | City |
+------------+------+
| Neha       | Pune |
+------------+------+
1 row in set (0.0099 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , City , Salary   from emp where City='Pune'  order by Salary Asc;
+------------+------+----------+
| First_Name | City | Salary   |
+------------+------+----------+
| Neha       | Pune | 55000.50 |
+------------+------+----------+
1 row in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , City , Salary   from emp where City='Delhi'  order by Salary Asc;
+------------+-------+----------+
| First_Name | City  | Salary   |
+------------+-------+----------+
| Vikas      | Delhi | 49000.25 |
| Manish     | Delhi | 50000.25 |
| Priya      | Delhi | 60000.00 |
+------------+-------+----------+
3 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , City , Salary   from emp where City='Delhi'  order by Salary desc;
+------------+-------+----------+
| First_Name | City  | Salary   |
+------------+-------+----------+
| Priya      | Delhi | 60000.00 |
| Manish     | Delhi | 50000.25 |
| Vikas      | Delhi | 49000.25 |
+------------+-------+----------+
3 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , City , Salary   from emp where Active=true   order by Hired_date  desc;
+------------+------------+----------+
| First_Name | City       | Salary   |
+------------+------------+----------+
| Manish     | Delhi      | 50000.25 |
| Neetu      | Surat      | 48000.75 |
| Suresh     | Ahmedabad  | 48000.00 |
| Kavya      | Coimbatore | 49000.50 |
| Ananya     | Varanasi   | 47000.50 |
| Rahul      | Indore     | 50000.50 |
| Rohan      | Nagpur     | 46000.25 |
| Rahul      | Mumbai     | 50000.75 |
| Simran     | Chandigarh | 52000.00 |
| Anjali     | Hyderabad  | 52000.75 |
| Pooja      | Lucknow    | 47000.00 |
| Priya      | Delhi      | 60000.00 |
| Vikram     | Chennai    | 47000.50 |
| Arjun      | Jaipur     | 52000.75 |
| Aman       | Bangalore  | 45000.00 |
| Riya       | Kochi      | 46000.75 |
+------------+------------+----------+
16 rows in set (0.0046 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , Hired_date , Salary   from emp where Active=true   order by Hired_date  desc;
+------------+------------+----------+
| First_Name | Hired_date | Salary   |
+------------+------------+----------+
| Manish     | 2023-05-10 | 50000.25 |
| Neetu      | 2023-03-22 | 48000.75 |
| Suresh     | 2023-02-20 | 48000.00 |
| Kavya      | 2023-01-15 | 49000.50 |
| Ananya     | 2022-09-25 | 47000.50 |
| Rahul      | 2022-07-30 | 50000.50 |
| Rohan      | 2022-05-10 | 46000.25 |
| Rahul      | 2022-01-15 | 50000.75 |
| Simran     | 2021-11-10 | 52000.00 |
| Anjali     | 2021-08-18 | 52000.75 |
| Pooja      | 2021-04-18 | 47000.00 |
| Priya      | 2021-03-10 | 60000.00 |
| Vikram     | 2020-12-01 | 47000.50 |
| Arjun      | 2020-09-05 | 52000.75 |
| Aman       | 2020-06-05 | 45000.00 |
| Riya       | 2019-08-18 | 46000.75 |
+------------+------------+----------+
16 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , Hired_date , Salary   from emp where Salary >50000   order by Hired_date  desc;
+------------+------------+----------+
| First_Name | Hired_date | Salary   |
+------------+------------+----------+
| Manish     | 2023-05-10 | 50000.25 |
| Rahul      | 2022-07-30 | 50000.50 |
| Rahul      | 2022-01-15 | 50000.75 |
| Simran     | 2021-11-10 | 52000.00 |
| Anjali     | 2021-08-18 | 52000.75 |
| Priya      | 2021-03-10 | 60000.00 |
| Arjun      | 2020-09-05 | 52000.75 |
| Neha       | 2019-11-12 | 55000.50 |
| Meera      | 2019-07-22 | 53000.00 |
| Sanjay     | 2019-06-12 | 54000.25 |
+------------+------------+----------+
10 rows in set (0.0036 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
ERROR: 1146: Table 'demo.employees' doesn't exist
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY salary DESC LIMIT 3;
+--------+------------+-----------+--------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com  | Delhi     |   9123456780 | 2021-03-10 |    4500 | 60000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com   | Pune      |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com | Bangalore |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY bonus ASC LIMIT 5;
+--------+------------+-----------+----------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                      | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+----------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      5 | Suresh     | Patel     | suresh.patel@example.com   | Ahmedabad |   9876501234 | 2023-02-20 |  3000.5 | 48000.00 |      1 | IT         |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com | Nagpur    |   9876540987 | 2022-05-10 | 3500.25 | 46000.25 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com     | Pune      |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com      | Kochi     |   9988775678 | 2019-08-18 | 3500.75 | 46000.75 |      1 | HR         |
|     14 | Neetu      | Shah      | neetu.shah@example.com     | Surat     |   9876543212 | 2023-03-22 | 3600.25 | 48000.75 |      1 | HR         |
+--------+------------+-----------+----------------------------+-----------+--------------+------------+---------+----------+--------+------------+
5 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY hired_date DESC LIMIT 1;
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                     | City  | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+----------+--------+------------+
|     19 | Manish     | Kapoor    | manish.kapoor@example.com | Delhi |   9123456781 | 2023-05-10 | 4100.25 | 50000.25 |      1 | Finance    |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+----------+--------+------------+
1 row in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY hired_date ASC LIMIT 2;
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City      | Phone_Number | Hired_date | Bonus  | Salary   | Active | Department |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com | Bangalore |   9123456789 | 2019-06-12 | 4300.5 | 54000.25 |      0 | IT         |
|      8 | Meera      | Gupta     | meera.gupta@example.com  | Kolkata   |   9988771234 | 2019-07-22 | 4100.5 | 53000.00 |      0 | Marketing  |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
2 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY last_login DESC LIMIT 1;
ERROR: 1054: Unknown column 'last_login' in 'order clause'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY  Bouns DESC LIMIT 1;
ERROR: 1054: Unknown column 'Bouns' in 'order clause'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY  Bonus DESC LIMIT 1;
+--------+------------+-----------+--------------------------+--------+--------------+------------+--------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City   | Phone_Number | Hired_date | Bonus  | Salary   | Active | Department |
+--------+------------+-----------+--------------------------+--------+--------------+------------+--------+----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Mumbai |   9876543210 | 2022-01-15 | 5000.5 | 50000.75 |      1 | HR         |
+--------+------------+-----------+--------------------------+--------+--------------+------------+--------+----------+--------+------------+
1 row in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Top 3 First_name , Salary from emp where Department='IT' And Active=true order by Salary desc;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3 First_name , Salary from emp where Department='IT' And Active=true order by Sa' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select Top 3 First_name , Salary from emp  order by Salary desc;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3 First_name , Salary from emp  order by Salary desc' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select Top 3 First_Name , Salary from emp  order by Salary desc;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3 First_Name , Salary from emp  order by Salary desc' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT TOP 5 First_Name, Salary
                                       -> FROM emp
                                       -> ORDER BY Salary DESC;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '5 First_Name, Salary
FROM emp
ORDER BY Salary DESC' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT First_Name, Department, Salary
                                       -> FROM emp
                                       -> WHERE Department='IT' AND Active=TRUE
                                       -> ORDER BY Salary DESC
                                       -> LIMIT 3;   -- MySQL/PostgreSQL
+------------+------------+----------+
| First_Name | Department | Salary   |
+------------+------------+----------+
| Priya      | IT         | 60000.00 |
| Suresh     | IT         | 48000.00 |
| Rohan      | IT         | 46000.25 |
+------------+------------+----------+
3 rows in set (0.0352 sec)
Query OK, 0 rows affected (0.0004 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT TOP 3 First_Name, Department, Salary
                                       -> FROM emp
                                       -> WHERE Department='IT' AND Active=TRUE
                                       -> ORDER BY Salary DESC;   -- SQL Server
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3 First_Name, Department, Salary
FROM emp
WHERE Department='IT' AND Active=TRUE
' at line 1
Query OK, 0 rows affected (0.0002 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > -- Skip first 3 rows, get next 5
Query OK, 0 rows affected (0.0006 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT *
                                       -> FROM emp
                                       -> ORDER BY Salary DESC
                                       -> LIMIT 5 OFFSET 3;
+--------+------------+-----------+----------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                      | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+----------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      8 | Meera      | Gupta     | meera.gupta@example.com    | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 | 53000.00 |      0 | Marketing  |
|      6 | Anjali     | Rao       | anjali.rao@example.com     | Hyderabad  |   9876547890 | 2021-08-18 |    4200 | 52000.75 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 | 52000.75 |      1 | Finance    |
|     16 | Simran     | Kaur      | simran.kaur@example.com    | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 | 52000.00 |      1 | Marketing  |
|      1 | Rahul      | Sharma    | rahul.sharma@example.com   | Mumbai     |   9876543210 | 2022-01-15 |  5000.5 | 50000.75 |      1 | HR         |
+--------+------------+-----------+----------------------------+------------+--------------+------------+---------+----------+--------+------------+
5 rows in set (0.0039 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ORDER BY  Bonus DESC LIMIT 3;
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City      | Phone_Number | Hired_date | Bonus  | Salary   | Active | Department |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Mumbai    |   9876543210 | 2022-01-15 | 5000.5 | 50000.75 |      1 | HR         |
|      2 | Priya      | Kumar     | priya.kumar@example.com  | Delhi     |   9123456780 | 2021-03-10 |   4500 | 60000.00 |      1 | IT         |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com | Bangalore |   9123456789 | 2019-06-12 | 4300.5 | 54000.25 |      0 | IT         |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
3 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary FROM emp ORDER BY Salary DESC limit 5;
+------------+----------+
| First_Name | Salary   |
+------------+----------+
| Priya      | 60000.00 |
| Neha       | 55000.50 |
| Sanjay     | 54000.25 |
| Meera      | 53000.00 |
| Anjali     | 52000.75 |
+------------+----------+
5 rows in set (0.0030 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary FROM emp ORDER BY Hired_Date  DESC limit 1;
+------------+----------+
| First_Name | Salary   |
+------------+----------+
| Manish     | 50000.25 |
+------------+----------+
1 row in set (0.0028 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary FROM emp ORDER BY Hired_Date  ASC limit 1;
+------------+----------+
| First_Name | Salary   |
+------------+----------+
| Sanjay     | 54000.25 |
+------------+----------+
1 row in set (0.0010 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary FROM emp ORDER BY Hired_Date  ASC limit 2;
+------------+----------+
| First_Name | Salary   |
+------------+----------+
| Sanjay     | 54000.25 |
| Meera      | 53000.00 |
+------------+----------+
2 rows in set (0.0010 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary , Department  FROM emp  where Department ='IT'  ORDER BY Active=true   ASC limit 2;

+------------+----------+------------+
| First_Name | Salary   | Department |
+------------+----------+------------+
| Sanjay     | 54000.25 | IT         |
| Vikas      | 49000.25 | IT         |
+------------+----------+------------+
2 rows in set (0.0030 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary , Department  FROM emp  where Department ='IT'  ORDER BY Active=true   ASC limit 3;

+------------+----------+------------+
| First_Name | Salary   | Department |
+------------+----------+------------+
| Sanjay     | 54000.25 | IT         |
| Vikas      | 49000.25 | IT         |
| Priya      | 60000.00 | IT         |
+------------+----------+------------+
3 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary , Department  FROM emp  where City='Delhi'  ORDER BY Bonus   deSC limit 5;
+------------+----------+------------+
| First_Name | Salary   | Department |
+------------+----------+------------+
| Priya      | 60000.00 | IT         |
| Manish     | 50000.25 | Finance    |
| Vikas      | 49000.25 | IT         |
+------------+----------+------------+
3 rows in set (0.0009 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary , Department  FROM emp    ORDER BY Department='HR'   deSC limit 2;
+------------+----------+------------+
| First_Name | Salary   | Department |
+------------+----------+------------+
| Rahul      | 50000.75 | HR         |
| Anjali     | 52000.75 | HR         |
+------------+----------+------------+
2 rows in set (0.0007 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  First_Name, Salary , Department  FROM emp    ORDER BY Department='HR'   ASC limit 2;
+------------+----------+------------+
| First_Name | Salary   | Department |
+------------+----------+------------+
| Priya      | 60000.00 | IT         |
| Aman       | 45000.00 | Finance    |
+------------+----------+------------+
2 rows in set (0.0008 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp
                                       -> WHERE Department='IT' AND Active=TRUE
                                       -> ORDER BY Salary DESC
                                       -> LIMIT 3;
+--------+------------+-----------+----------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                      | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+----------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com    | Delhi     |   9123456780 | 2021-03-10 |    4500 | 60000.00 |      1 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com   | Ahmedabad |   9876501234 | 2023-02-20 |  3000.5 | 48000.00 |      1 | IT         |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com | Nagpur    |   9876540987 | 2022-05-10 | 3500.25 | 46000.25 |      1 | IT         |
+--------+------------+-----------+----------------------------+-----------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0034 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp
                                       -> WHERE City='Delhi'
                                       -> ORDER BY Bonus DESC
                                       -> LIMIT 5;
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                     | City  | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com   | Delhi |   9123456780 | 2021-03-10 |    4500 | 60000.00 |      1 | IT         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com | Delhi |   9123456781 | 2023-05-10 | 4100.25 | 50000.25 |      1 | Finance    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com   | Delhi |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0035 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp
                                       -> WHERE Department='HR'
                                       -> ORDER BY Salary DESC
                                       -> LIMIT 2;
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City      | Phone_Number | Hired_date | Bonus  | Salary   | Active | Department |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
|      6 | Anjali     | Rao       | anjali.rao@example.com   | Hyderabad |   9876547890 | 2021-08-18 |   4200 | 52000.75 |      1 | HR         |
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Mumbai    |   9876543210 | 2022-01-15 | 5000.5 | 50000.75 |      1 | HR         |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
2 rows in set (0.0008 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp
                                       -> ORDER BY Salary DESC
                                       -> LIMIT 5 OFFSET 3;
+--------+------------+-----------+----------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                      | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+----------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      8 | Meera      | Gupta     | meera.gupta@example.com    | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 | 53000.00 |      0 | Marketing  |
|      6 | Anjali     | Rao       | anjali.rao@example.com     | Hyderabad  |   9876547890 | 2021-08-18 |    4200 | 52000.75 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 | 52000.75 |      1 | Finance    |
|     16 | Simran     | Kaur      | simran.kaur@example.com    | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 | 52000.00 |      1 | Marketing  |
|      1 | Rahul      | Sharma    | rahul.sharma@example.com   | Mumbai     |   9876543210 | 2022-01-15 |  5000.5 | 50000.75 |      1 | HR         |
+--------+------------+-----------+----------------------------+------------+--------------+------------+---------+----------+--------+------------+
5 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp
                                       -> ORDER BY Hired_date DESC
                                       -> LIMIT 3 OFFSET 2;
+--------+------------+-----------+-----------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                       | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+-----------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      5 | Suresh     | Patel     | suresh.patel@example.com    | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 | 48000.00 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com      | Coimbatore |   9123454321 | 2023-01-15 | 3900.75 | 49000.50 |      1 | HR         |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 | 47000.50 |      1 | Marketing  |
+--------+------------+-----------+-----------------------------+------------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  Emi_Id , Salary FROM emp  ORDER BY Hired_date DESC  LIMIT 3 OFFSET 2;
ERROR: 1054: Unknown column 'Emi_Id' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  Emp_Id , Salary FROM emp  ORDER BY Hired_date DESC  LIMIT 3 OFFSET 2;
+--------+----------+
| Emp_Id | Salary   |
+--------+----------+
|      5 | 48000.00 |
|     10 | 49000.50 |
|     20 | 47000.50 |
+--------+----------+
3 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT  Emp_Id , Salary FROM emp  ORDER BY Hired_date Asc  LIMIT 3 OFFSET 2;
+--------+----------+
| Emp_Id | Salary   |
+--------+----------+
|     18 | 46000.75 |
|      4 | 55000.50 |
|     17 | 49000.25 |
+--------+----------+
3 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary= 200000 where Emp_id=1;
Query OK, 1 row affected (0.0264 sec)

Rows matched: 1  Changed: 1  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 |  5000.5 | 200000.00 |      1 | HR         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    4500 |  60000.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 |  45000.00 |      1 | Finance    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | Marketing  |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 |  48000.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |    4200 |  52000.75 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 |  47000.50 |      1 | Finance    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 |  46000.25 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 | 3900.75 |  49000.50 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 |  52000.75 |      1 | Finance    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 3700.25 |  47000.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 | 3600.25 |  48000.75 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 |  50000.50 |      1 | Finance    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 |  52000.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 | 3500.75 |  46000.75 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 |  50000.25 |      1 | Finance    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 |  47000.50 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0028 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set bonus=9000 where Department='HR';
Query OK, 5 rows affected (0.0075 sec)

Rows matched: 5  Changed: 5  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Mumbai     |   9876543210 | 2022-01-15 |    9000 | 200000.00 |      1 | HR         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    4500 |  60000.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 |  45000.00 |      1 | Finance    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | Marketing  |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 |  48000.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |    9000 |  52000.75 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 |  47000.50 |      1 | Finance    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 |  46000.25 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 |    9000 |  49000.50 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 |  52000.75 |      1 | Finance    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 3700.25 |  47000.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 |    9000 |  48000.75 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 |  50000.50 |      1 | Finance    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 |  52000.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 |    9000 |  46000.75 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 |  50000.25 |      1 | Finance    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 |  47000.50 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0028 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set City='Pune' , Department='IT' where Emp_Id=1;
Query OK, 1 row affected (0.0079 sec)

Rows matched: 1  Changed: 1  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set bonus=bonus + 1000 where Department='HR';
Query OK, 4 rows affected (0.0073 sec)

Rows matched: 4  Changed: 4  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2022-01-15 |    9000 | 200000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    4500 |  60000.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 |  45000.00 |      1 | Finance    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | Marketing  |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 |  48000.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |   10000 |  52000.75 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 |  47000.50 |      1 | Finance    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |  4100.5 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 |  46000.25 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 |   10000 |  49000.50 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 |  52000.75 |      1 | Finance    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 | 3700.25 |  47000.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 |   10000 |  48000.75 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 |  50000.50 |      1 | Finance    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 | 4200.75 |  52000.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 |   10000 |  46000.75 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 |  50000.25 |      1 | Finance    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |  3800.5 |  47000.50 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0008 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=70000 , Bonus=5000 where Emp_id=2;
Query OK, 1 row affected (0.1561 sec)

Rows matched: 1  Changed: 1  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Department='IT' where City='Pune';
Query OK, 2 rows affected (0.0189 sec)

Rows matched: 2  Changed: 1  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=Salary+5000 where Department='HR';
Query OK, 4 rows affected (0.0120 sec)

Rows matched: 4  Changed: 4  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Active=flase  where Hired_date='2025-01-01';
ERROR: 1054: Unknown column 'flase' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Active=false  where Hired_date='2025-01-01';
Query OK, 0 rows affected (0.0041 sec)

Rows matched: 0  Changed: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Bonus=3000 where Department="Marketing';
                                       ">
                                       "> ^C
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Bonus=3000 where Department='Marketing';
Query OK, 4 rows affected (0.0149 sec)

Rows matched: 4  Changed: 4  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=Salary*1.10 where Active=true;
Query OK, 16 rows affected, 6 warnings (0.0164 sec)

Rows matched: 16  Changed: 16  Warnings: 6
Note (code 1265): Data truncated for column 'Salary' at row 6
Note (code 1265): Data truncated for column 'Salary' at row 9
Note (code 1265): Data truncated for column 'Salary' at row 11
Note (code 1265): Data truncated for column 'Salary' at row 14
Note (code 1265): Data truncated for column 'Salary' at row 18
Note (code 1265): Data truncated for column 'Salary' at row 19
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2022-01-15 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2021-03-10 |    5000 |  77000.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2020-06-05 | 4000.25 |  49500.00 |      1 | Finance    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2023-02-20 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2021-08-18 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2020-12-01 | 3800.25 |  51700.55 |      1 | Finance    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2022-05-10 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2023-01-15 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2020-09-05 |  4200.5 |  57200.83 |      1 | Finance    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2021-04-18 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2023-03-22 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2022-07-30 |  4000.5 |  55000.55 |      1 | Finance    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2021-11-10 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2019-08-18 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2023-05-10 | 4100.25 |  55000.28 |      1 | Finance    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2022-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0171 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Department='Account' where Department='Finance';
Query OK, 5 rows affected (0.0099 sec)

Rows matched: 5  Changed: 5  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set now() where Active=true;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'now() where Active=true' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Hired_date=now() where Active=true;
Query OK, 16 rows affected, 16 warnings (0.0167 sec)

Rows matched: 16  Changed: 16  Warnings: 16
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 1
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 2
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 3
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 5
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 6
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 7
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 9
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 10
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 11
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 12
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 14
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 15
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 16
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 18
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 19
Note (code 1292): Incorrect date value: '2025-09-25 18:07:35' for column 'Hired_date' at row 20
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |  77000.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=Salary*1 where Active=true;
Query OK, 16 rows affected (0.1453 sec)

Rows matched: 16  Changed: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=Salary+100 where Active=true;
Query OK, 16 rows affected (0.0339 sec)

Rows matched: 16  Changed: 16  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=Salary-100 where Active=true;
Query OK, 16 rows affected (0.0129 sec)

Rows matched: 16  Changed: 16  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=Salary/1 where Bonus=5000;
Query OK, 1 row affected (0.0080 sec)

Rows matched: 1  Changed: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > update emp set Salary=Salary%2 where Bonus=5000;
Query OK, 1 row affected (0.0163 sec)

Rows matched: 1  Changed: 1  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0196 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where City='pune';
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com   | Pune |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
2 rows in set (0.0087 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where City !='pune';
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 | 55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
18 rows in set (0.0040 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where City <>'pune';
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 | 55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
18 rows in set (0.0034 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary >100000;
+--------+------------+-----------+--------------------------+------+--------------+------------+-------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City | Phone_Number | Hired_date | Bonus | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------+--------------+------------+-------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune |   9876543210 | 2025-09-25 |  9000 | 220000.00 |      1 | IT         |
+--------+------------+-----------+--------------------------+------+--------------+------------+-------+-----------+--------+------------+
1 row in set (0.0052 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary <50000;
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                   | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com | Delhi     |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com  | Bangalore |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com | Delhi     |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary <=50000;
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                   | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com | Delhi     |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com  | Bangalore |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com | Delhi     |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary >=50000;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
17 rows in set (0.0112 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary  =40000 between 70000;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary  between 70000   And 100000;
Empty set (0.0037 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary  between 70000   And 300000;
+--------+------------+-----------+--------------------------+------+--------------+------------+-------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City | Phone_Number | Hired_date | Bonus | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------+--------------+------------+-------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune |   9876543210 | 2025-09-25 |  9000 | 220000.00 |      1 | IT         |
+--------+------------+-----------+--------------------------+------+--------------+------------+-------+-----------+--------+------------+
1 row in set (0.0040 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  city='pune' and Department='hr';
Empty set (0.0049 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' and Department='HR';
Empty set (0.0021 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' and Department='IT';
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com   | Pune |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
2 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' or Department='HR';
+--------+------------+-----------+--------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com   | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com   | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com   | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     14 | Neetu      | Shah      | neetu.shah@example.com   | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     18 | Riya       | Nair      | riya.nair@example.com    | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
+--------+------------+-----------+--------------------------+------------+--------------+------------+---------+-----------+--------+------------+
6 rows in set (0.0032 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' not Department='HR';
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Department='HR'' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where not Department='HR';
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | ^Cpta     | meera.SELECT * FROM emp  where  City='Pune' and Department='IT';07-22 |    3000 |  53000.00 |      0 | Marketing  |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' and Department='IT';09-25 | 3500.25 |  50600.28 |      1 | IT         |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' and Department='HR';09-25 |  4200.5 |  57200.83 |      1 | Account    |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  city='pune' and Department='hr';   25 |    3000 |  51700.00 |      1 | Marketing  |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary  between 70000   And 300000;12 |  4300.5 |  54000.25 |      0 | IT         |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary  between 70000   And 100000;25 |  4000.5 |  55000.55 |      1 | Account    |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  Salary  between 70000   And 300000;25 |    3000 |  57200.00 |      1 | Marketing  |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  city='pune' and Department='hr';02-05 |  3900.5 |  49000.25 |      0 | IT         |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' and Department='HR';09-25 | 4100.25 |  55000.28 |      1 | Account    |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' and Department='IT';09-25 |    3000 |  51700.55 |      1 | Marketing  |
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' or Department='HR'; ------+---------+-----------+--------+------------+
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  City='Pune' not Department='HR';
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where not Department='HR';
 MySQL  localhost:33060+ ssl  demo  SQL >
 MySQL  localhost:33060+ ssl  demo  SQL >
 MySQL  localhost:33060+ ssl  demo  SQL > ^C
 MySQL  localhost:33060+ ssl  demo  SQL >
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.1165 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Emp_id , Salary & Bonus from emp;                                    select Emp_id , Salary & Bonus from emp;
+--------+----------------+
| Emp_id | Salary & Bonus |
+--------+----------------+
|      1 |            800 |
|      2 |              0 |
|      3 |            256 |
|      4 |           1161 |
|      5 |           2560 |
|      6 |           9216 |
|      7 |           2256 |
|      8 |           2824 |
|      9 |           1448 |
|     10 |           8192 |
|     11 |           4192 |
|     12 |           2480 |
|     13 |           4288 |
|     14 |           8976 |
|     15 |           1664 |
|     16 |           2864 |
|     17 |           3880 |
|     18 |            768 |
|     19 |           4096 |
|     20 |           2480 |
+--------+----------------+
20 rows in set (0.0193 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Emp_id , Salary  |  Bonus from emp;
+--------+------------------+
| Emp_id | Salary  |  Bonus |
+--------+------------------+
|      1 |           228200 |
|      2 |             5000 |
|      3 |            53244 |
|      4 |            57341 |
|      5 |            53240 |
|      6 |            63485 |
|      7 |            53245 |
|      8 |            53176 |
|      9 |            52652 |
|     10 |            61209 |
|     11 |            57209 |
|     12 |            52220 |
|     13 |            54012 |
|     14 |            59325 |
|     15 |            57337 |
|     16 |            57336 |
|     17 |            49020 |
|     18 |            65333 |
|     19 |            55004 |
|     20 |            52221 |
+--------+------------------+
20 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Id, Salary ^ Bonus AS Bitwise_XOR FROM emp;
ERROR: 1054: Unknown column 'Id' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Emp_Id, Salary ^ Bonus AS Bitwise_XOR FROM emp;
+--------+-------------+
| Emp_Id | Bitwise_XOR |
+--------+-------------+
|      1 |      227400 |
|      2 |        5000 |
|      3 |       52988 |
|      4 |       56180 |
|      5 |       50680 |
|      6 |       54269 |
|      7 |       50989 |
|      8 |       50352 |
|      9 |       51204 |
|     10 |       53017 |
|     11 |       53017 |
|     12 |       49740 |
|     13 |       49724 |
|     14 |       50349 |
|     15 |       55673 |
|     16 |       54472 |
|     17 |       45140 |
|     18 |       64565 |
|     19 |       50908 |
|     20 |       49741 |
+--------+-------------+
20 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City in ('Pune' , 'Delhi' , 'Mumbai');
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                     | City  | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com  | Pune  |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com   | Delhi |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com    | Pune  |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com   | Delhi |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com | Delhi |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+-----------+--------+------------+
5 rows in set (0.0151 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City not in ('Pune' , 'Delhi' , 'Mumbai');
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
15 rows in set (0.0038 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City is null;
Empty set (0.0018 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City is not null;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City like %H;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%H' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City like '%H';
+--------+------------+-----------+-------------------------+------------+--------------+------------+-------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                   | City       | Phone_Number | Hired_date | Bonus | Salary   | Active | Department |
+--------+------------+-----------+-------------------------+------------+--------------+------------+-------+----------+--------+------------+
|     16 | Simran     | Kaur      | simran.kaur@example.com | Chandigarh |   9123459876 | 2025-09-25 |  3000 | 57200.00 |      1 | Marketing  |
+--------+------------+-----------+-------------------------+------------+--------------+------------+-------+----------+--------+------------+
1 row in set (0.0072 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City like 'a%';
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City      | Phone_Number | Hired_date | Bonus  | Salary   | Active | Department |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
|      5 | Suresh     | Patel     | suresh.patel@example.com | Ahmedabad |   9876501234 | 2025-09-25 | 3000.5 | 52800.00 |      1 | IT         |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
1 row in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City like '%a%';
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
12 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where Fiert_Name like 'A___';
ERROR: 1054: Unknown column 'Fiert_Name' in 'where clause'
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where First_Name like 'A___';
+--------+------------+-----------+------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                  | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      3 | Aman       | Singh     | aman.singh@example.com | Bangalore |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
+--------+------------+-----------+------------------------+-----------+--------------+------------+---------+----------+--------+------------+
1 row in set (0.0034 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where City='pune';
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com   | Pune |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
2 rows in set (0.0076 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where City!='pune';
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 | 55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
18 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Salary >50000;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
17 rows in set (0.0068 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Salary >=50000;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
17 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Salary =50000;
Empty set (0.0011 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Salary <=50000;
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                   | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com | Delhi     |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com  | Bangalore |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com | Delhi     |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Salary <50000;
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                   | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com | Delhi     |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com  | Bangalore |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com | Delhi     |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
3 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Salary betweent 40000 and 50000
                                       -> ;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'betweent 40000 and 50000' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Salary between 40000 and 50000 ;
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                   | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      3 | Aman       | Singh     | aman.singh@example.com  | Bangalore |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com | Delhi     |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
+--------+------------+-----------+-------------------------+-----------+--------------+------------+---------+----------+--------+------------+
2 rows in set (0.0041 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Department='IT' and City='Pune' ;
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com   | Pune |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
+--------+------------+-----------+--------------------------+------+--------------+------------+---------+-----------+--------+------------+
2 rows in set (0.0027 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Department='HR' or City='Pune' ;
+--------+------------+-----------+--------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+--------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com   | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com   | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com   | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     14 | Neetu      | Shah      | neetu.shah@example.com   | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     18 | Riya       | Nair      | riya.nair@example.com    | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
+--------+------------+-----------+--------------------------+------------+--------------+------------+---------+-----------+--------+------------+
6 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where Department='HR' not City='Pune' ;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'City='Pune'' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp  where  not City='Pune' ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 | 55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
18 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City in ('Pune' , 'Delhi' , 'Mumbai');
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                     | City  | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com  | Pune  |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com   | Delhi |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      4 | Neha       | Verma     | neha.verma@example.com    | Pune  |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com   | Delhi |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com | Delhi |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
+--------+------------+-----------+---------------------------+-------+--------------+------------+---------+-----------+--------+------------+
5 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City not in ('Pune' , 'Delhi' , 'Mumbai');
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
15 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City like '%a';
+--------+------------+-----------+-------------------------+---------+--------------+------------+-------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                   | City    | Phone_Number | Hired_date | Bonus | Salary   | Active | Department |
+--------+------------+-----------+-------------------------+---------+--------------+------------+-------+----------+--------+------------+
|      8 | Meera      | Gupta     | meera.gupta@example.com | Kolkata |   9988771234 | 2019-07-22 |  3000 | 53000.00 |      0 | Marketing  |
+--------+------------+-----------+-------------------------+---------+--------------+------------+-------+----------+--------+------------+
1 row in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City like '%a%';
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
12 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City like 'a%';
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                    | City      | Phone_Number | Hired_date | Bonus  | Salary   | Active | Department |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
|      5 | Suresh     | Patel     | suresh.patel@example.com | Ahmedabad |   9876501234 | 2025-09-25 | 3000.5 | 52800.00 |      1 | IT         |
+--------+------------+-----------+--------------------------+-----------+--------------+------------+--------+----------+--------+------------+
1 row in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City is null;
Empty set (0.0011 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp where City is not null;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp First_Name , Emp_Id & First_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '& First_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id & 1=1;
+--------+------------+-----------+------------------------------+-----------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City      | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+-----------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune      |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai   |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur    |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur    |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore    |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi     |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|  ^C 19 | Manish     | Kapoor    | manishselect * from emp  where Emp_id & 1=;  9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id & 1=; ------------+------------+---------+-----------+--------+------------+
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id & 1=1;
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id & 1=1;
 MySQL  localhost:33060+ ssl  demo  SQL >
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id & 1>2;
Empty set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id | 1>2;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |     0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 | 55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
19 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id ^ 2>3;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 | 55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 | 52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 | 62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 | 53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 | 50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 | 59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 | 51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 | 54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 | 58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 | 57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 | 49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 | 56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 | 55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 | 51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+----------+--------+------------+
17 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , sum(Salary) As Total_salary w                           select First_Name , sum(Salary) As Total_salary                             select First_Name , sum(Salary) As Total_salary                             select First_Name , sum(Salary) As Total_salary^C
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name , sum(Salary) As Total_Salary from emp group by First_Name;
+------------+--------------+
| First_Name | Total_Salary |
+------------+--------------+
| Rahul      |    275000.55 |
| Priya      |         0.00 |
| Aman       |     49500.00 |
| Neha       |     55000.50 |
| Suresh     |     52800.00 |
| Anjali     |     62700.83 |
| Vikram     |     51700.55 |
| Meera      |     53000.00 |
| Rohan      |     50600.28 |
| Kavya      |     59400.55 |
| Arjun      |     57200.83 |
| Pooja      |     51700.00 |
| Sanjay     |     54000.25 |
| Neetu      |     58300.83 |
| Simran     |     57200.00 |
| Vikas      |     49000.25 |
| Riya       |     56100.83 |
| Manish     |     55000.28 |
| Ananya     |     51700.55 |
+------------+--------------+
19 rows in set (0.0237 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select City , sum(Salary) As Total_Salary from emp group by City;
+------------+--------------+
| City       | Total_Salary |
+------------+--------------+
| Pune       |    275000.50 |
| Delhi      |    104000.53 |
| Bangalore  |    103500.25 |
| Ahmedabad  |     52800.00 |
| Hyderabad  |     62700.83 |
| Chennai    |     51700.55 |
| Kolkata    |     53000.00 |
| Nagpur     |     50600.28 |
| Coimbatore |     59400.55 |
| Jaipur     |     57200.83 |
| Lucknow    |     51700.00 |
| Surat      |     58300.83 |
| Indore     |     55000.55 |
| Chandigarh |     57200.00 |
| Kochi      |     56100.83 |
| Varanasi   |     51700.55 |
+------------+--------------+
16 rows in set (0.0050 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , sum(Salary) As Total_Salary from emp group by Department;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         |    481401.28 |
| Account    |    268402.21 |
| HR         |    236503.04 |
| Marketing  |    213600.55 |
+------------+--------------+
4 rows in set (0.0046 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , avg(Salary) As Total_Salary from emp group by Department;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         | 68771.611429 |
| Account    | 53680.442000 |
| HR         | 59125.760000 |
| Marketing  | 53400.137500 |
+------------+--------------+
4 rows in set (0.0036 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , min(Salary) As Total_Salary from emp group by Department;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         |         0.00 |
| Account    |     49500.00 |
| HR         |     56100.83 |
| Marketing  |     51700.00 |
+------------+--------------+
4 rows in set (0.0032 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , max(Salary) As Total_Salary from emp group by Department;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         |    220000.00 |
| Account    |     57200.83 |
| HR         |     62700.83 |
| Marketing  |     57200.00 |
+------------+--------------+
4 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , count(*) As Total_Salary from emp group by Department;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         |            7 |
| Account    |            5 |
| HR         |            4 |
| Marketing  |            4 |
+------------+--------------+
4 rows in set (0.0033 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , count(*) As Total_Salary from emp group by Department having count(*)>2;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         |            7 |
| Account    |            5 |
| HR         |            4 |
| Marketing  |            4 |
+------------+--------------+
4 rows in set (0.0045 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , count(*) As Total_Salary from emp group by Department having count(*)<2;
Empty set (0.0016 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , count(*) As Total_Salary from emp group by Department having count(*)<5;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| HR         |            4 |
| Marketing  |            4 |
+------------+--------------+
2 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , sum(Salary) As Total_Salary from emp group by Department having sum(Salary)<5;
Empty set (0.0050 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , sum(Salary) As Total_Salary from emp group by Department having sum(Salary)>2;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| IT         |    481401.28 |
| Account    |    268402.21 |
| HR         |    236503.04 |
| Marketing  |    213600.55 |
+------------+--------------+
4 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, COUNT(*) AS total_employees
                                       -> FROM emp
                                       -> GROUP BY Department
                                       -> HAVING COUNT(*) > 3;
+------------+-----------------+
| Department | total_employees |
+------------+-----------------+
| IT         |               7 |
| Account    |               5 |
| HR         |               4 |
| Marketing  |               4 |
+------------+-----------------+
4 rows in set (0.0031 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City, AVG(Salary) AS avg_salary
                                       -> FROM emp
                                       -> GROUP BY City
                                       -> HAVING AVG(Salary) > 50000;
+------------+---------------+
| City       | avg_salary    |
+------------+---------------+
| Pune       | 137500.250000 |
| Bangalore  |  51750.125000 |
| Ahmedabad  |  52800.000000 |
| Hyderabad  |  62700.830000 |
| Chennai    |  51700.550000 |
| Kolkata    |  53000.000000 |
| Nagpur     |  50600.280000 |
| Coimbatore |  59400.550000 |
| Jaipur     |  57200.830000 |
| Lucknow    |  51700.000000 |
| Surat      |  58300.830000 |
| Indore     |  55000.550000 |
| Chandigarh |  57200.000000 |
| Kochi      |  56100.830000 |
| Varanasi   |  51700.550000 |
+------------+---------------+
15 rows in set (0.0040 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, SUM(Bonus) AS total_bonus
                                       -> FROM emp
                                       -> GROUP BY Department
                                       -> HAVING SUM(Bonus) > 10000;
+------------+-------------+
| Department | total_bonus |
+------------+-------------+
| IT         |     32202.5 |
| Account    |    20101.75 |
| HR         |       40000 |
| Marketing  |       12000 |
+------------+-------------+
4 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select Department  , avg(Bonus) As Total_Salary from emp group by Department;
+------------+-------------------+
| Department | Total_Salary      |
+------------+-------------------+
| IT         | 4600.357142857143 |
| Account    |           4020.35 |
| HR         |             10000 |
| Marketing  |              3000 |
+------------+-------------------+
4 rows in set (0.0050 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City, sum(Salary) AS avg_salary FROM emp GROUP BY City HAVING sum(Salary) > 500000;
Empty set (0.0028 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City, sum(Salary) AS avg_salary FROM emp GROUP BY City HAVING sum(Salary) < 500000;
+------------+------------+
| City       | avg_salary |
+------------+------------+
| Pune       |  275000.50 |
| Delhi      |  104000.53 |
| Bangalore  |  103500.25 |
| Ahmedabad  |   52800.00 |
| Hyderabad  |   62700.83 |
| Chennai    |   51700.55 |
| Kolkata    |   53000.00 |
| Nagpur     |   50600.28 |
| Coimbatore |   59400.55 |
| Jaipur     |   57200.83 |
| Lucknow    |   51700.00 |
| Surat      |   58300.83 |
| Indore     |   55000.55 |
| Chandigarh |   57200.00 |
| Kochi      |   56100.83 |
| Varanasi   |   51700.55 |
+------------+------------+
16 rows in set (0.0040 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City, sum(Salary) AS avg_salary FROM emp GROUP BY City HAVING sum(Salary) < 50000;
Empty set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City, sum(Salary) AS avg_salary FROM emp GROUP BY City HAVING sum(Salary) < 70000;
+------------+------------+
| City       | avg_salary |
+------------+------------+
| Ahmedabad  |   52800.00 |
| Hyderabad  |   62700.83 |
| Chennai    |   51700.55 |
| Kolkata    |   53000.00 |
| Nagpur     |   50600.28 |
| Coimbatore |   59400.55 |
| Jaipur     |   57200.83 |
| Lucknow    |   51700.00 |
| Surat      |   58300.83 |
| Indore     |   55000.55 |
| Chandigarh |   57200.00 |
| Kochi      |   56100.83 |
| Varanasi   |   51700.55 |
+------------+------------+
13 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, COUNT(*) AS total_employees
                                       -> FROM emp
                                       -> GROUP BY Department
                                       -> HAVING COUNT(*) > 3;
+------------+-----------------+
| Department | total_employees |
+------------+-----------------+
| IT         |               7 |
| Account    |               5 |
| HR         |               4 |
| Marketing  |               4 |
+------------+-----------------+
4 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, SUM(Salary) AS total_salary
                                       -> FROM emp
                                       -> GROUP BY Department
                                       -> HAVING SUM(Salary) > 200000;
+------------+--------------+
| Department | total_salary |
+------------+--------------+
| IT         |    481401.28 |
| Account    |    268402.21 |
| HR         |    236503.04 |
| Marketing  |    213600.55 |
+------------+--------------+
4 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City, AVG(Salary) AS avg_salary
                                       -> FROM emp
                                       -> GROUP BY City
                                       -> HAVING AVG(Salary) > 50000;
+------------+---------------+
| City       | avg_salary    |
+------------+---------------+
| Pune       | 137500.250000 |
| Bangalore  |  51750.125000 |
| Ahmedabad  |  52800.000000 |
| Hyderabad  |  62700.830000 |
| Chennai    |  51700.550000 |
| Kolkata    |  53000.000000 |
| Nagpur     |  50600.280000 |
| Coimbatore |  59400.550000 |
| Jaipur     |  57200.830000 |
| Lucknow    |  51700.000000 |
| Surat      |  58300.830000 |
| Indore     |  55000.550000 |
| Chandigarh |  57200.000000 |
| Kochi      |  56100.830000 |
| Varanasi   |  51700.550000 |
+------------+---------------+
15 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, AVG(Bonus) AS avg_bonus
                                       -> FROM emp
                                       -> GROUP BY Department
                                       -> HAVING AVG(Bonus) >= 3000;
+------------+-------------------+
| Department | avg_bonus         |
+------------+-------------------+
| IT         | 4600.357142857143 |
| Account    |           4020.35 |
| HR         |             10000 |
| Marketing  |              3000 |
+------------+-------------------+
4 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department, COUNT(*) AS active_employees
                                       -> FROM emp
                                       -> WHERE Active = TRUE
                                       -> GROUP BY Department
                                       -> HAVING COUNT(*) > 2;
+------------+------------------+
| Department | active_employees |
+------------+------------------+
| IT         |                4 |
| Account    |                5 |
| HR         |                4 |
| Marketing  |                3 |
+------------+------------------+
4 rows in set (0.0032 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0031 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > CREATE TABLE departments (
                                       ->     dept_id INT PRIMARY KEY,
                                       ->     dept_name VARCHAR(50),
                                       ->     location VARCHAR(50)
                                       -> );
Query OK, 0 rows affected (0.1647 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > INSERT INTO departments (dept_id, dept_name, location) VALUES
                                       -> (1, 'HR', 'Delhi'),
                                       -> (2, 'IT', 'Mumbai'),
                                       -> (3, 'Finance', 'Pune'),
                                       -> (4, 'Marketing', 'Bangalore'),
                                       -> (5, 'Operations', 'Hyderabad'),
                                       -> (6, 'Sales', 'Chennai'),
                                       -> (7, 'R&D', 'Bangalore'),
                                       -> (8, 'Support', 'Kolkata'),
                                       -> (9, 'Procurement', 'Delhi'),
                                       -> (10, 'Logistics', 'Pune'),
                                       -> (11, 'Legal', 'Mumbai'),
                                       -> (12, 'Admin', 'Chennai'),
                                       -> (13, 'Quality', 'Hyderabad'),
                                       -> (14, 'Accounts', 'Pune'),
                                       -> (15, 'Customer Service', 'Kolkata'),
                                       -> (16, 'Business Development', 'Delhi'),
                                       -> (17, 'Content', 'Bangalore'),
                                       -> (18, 'Design', 'Mumbai'),
                                       -> (19, 'Analytics', 'Pune'),
                                       -> (20, 'Strategy', 'Hyderabad');
Query OK, 20 rows affected (0.0144 sec)

Records: 20  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  demo  SQL > select * from departments;
+---------+----------------------+-----------+
| dept_id | dept_name            | location  |
+---------+----------------------+-----------+
|       1 | HR                   | Delhi     |
|       2 | IT                   | Mumbai    |
|       3 | Finance              | Pune      |
|       4 | Marketing            | Bangalore |
|       5 | Operations           | Hyderabad |
|       6 | Sales                | Chennai   |
|       7 | R&D                  | Bangalore |
|       8 | Support              | Kolkata   |
|       9 | Procurement          | Delhi     |
|      10 | Logistics            | Pune      |
|      11 | Legal                | Mumbai    |
|      12 | Admin                | Chennai   |
|      13 | Quality              | Hyderabad |
|      14 | Accounts             | Pune      |
|      15 | Customer Service     | Kolkata   |
|      16 | Business Development | Delhi     |
|      17 | Content              | Bangalore |
|      18 | Design               | Mumbai    |
|      19 | Analytics            | Pune      |
|      20 | Strategy             | Hyderabad |
+---------+----------------------+-----------+
20 rows in set (0.0051 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Id, e.First_Name, e.Department, e.Salary, d.location
                                       -> FROM emp e
                                       -> INNER JOIN departments d
                                       -> ON e.Department = d.dept_name;
ERROR: 1054: Unknown column 'e.Id' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Emp_Id, e.First_Name, e.Department, e.Salary, d.location FROM emp e INNER JOIN departments d ON e.Department = d.dept_name;
+--------+------------+------------+-----------+-----------+
| Emp_Id | First_Name | Department | Salary    | location  |
+--------+------------+------------+-----------+-----------+
|     18 | Riya       | HR         |  56100.83 | Delhi     |
|     14 | Neetu      | HR         |  58300.83 | Delhi     |
|     10 | Kavya      | HR         |  59400.55 | Delhi     |
|      6 | Anjali     | HR         |  62700.83 | Delhi     |
|     17 | Vikas      | IT         |  49000.25 | Mumbai    |
|     13 | Sanjay     | IT         |  54000.25 | Mumbai    |
|      9 | Rohan      | IT         |  50600.28 | Mumbai    |
|      5 | Suresh     | IT         |  52800.00 | Mumbai    |
|      4 | Neha       | IT         |  55000.50 | Mumbai    |
|      2 | Priya      | IT         |      0.00 | Mumbai    |
|      1 | Rahul      | IT         | 220000.00 | Mumbai    |
|     20 | Ananya     | Marketing  |  51700.55 | Bangalore |
|     16 | Simran     | Marketing  |  57200.00 | Bangalore |
|     12 | Pooja      | Marketing  |  51700.00 | Bangalore |
|      8 | Meera      | Marketing  |  53000.00 | Bangalore |
+--------+------------+------------+-----------+-----------+
15 rows in set (0.0048 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id order by Acs
                                       -> ;
ERROR: 1054: Unknown column 'Acs' in 'order clause'
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  where Emp_id order by Asc ;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Asc' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp  order by  Emp_id  Asc ;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0034 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select City from emp union location from departments;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'location from departments' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select City from emp union select  location from departments;
+------------+
| City       |
+------------+
| Pune       |
| Delhi      |
| Bangalore  |
| Ahmedabad  |
| Hyderabad  |
| Chennai    |
| Kolkata    |
| Nagpur     |
| Coimbatore |
| Jaipur     |
| Lucknow    |
| Surat      |
| Indore     |
| Chandigarh |
| Kochi      |
| Varanasi   |
| Mumbai     |
+------------+
17 rows in set (0.0716 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select City from emp intersect select  location from departments;
+-----------+
| City      |
+-----------+
| Pune      |
| Delhi     |
| Bangalore |
| Hyderabad |
| Chennai   |
| Kolkata   |
+-----------+
6 rows in set (0.0059 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select City from except intersect select  location from departments;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'except intersect select  location from departments' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select City from emp  except select  location from departments;
+------------+
| City       |
+------------+
| Ahmedabad  |
| Nagpur     |
| Coimbatore |
| Jaipur     |
| Lucknow    |
| Surat      |
| Indore     |
| Chandigarh |
| Kochi      |
| Varanasi   |
+------------+
10 rows in set (0.0027 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name from  emp selectDept_name from departments;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from departments' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name from  emp union selectDept_name from departments;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selectDept_name from departments' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department AS Dept FROM emp

                                       -> UNION
                                       -> SELECT dept_name AS Dept FROM departments;
+----------------------+
| Dept                 |
+----------------------+
| IT                   |
| Account              |
| HR                   |
| Marketing            |
| Finance              |
| Operations           |
| Sales                |
| R&D                  |
| Support              |
| Procurement          |
| Logistics            |
| Legal                |
| Admin                |
| Quality              |
| Accounts             |
| Customer Service     |
| Business Development |
| Content              |
| Design               |
| Analytics            |
| Strategy             |
+----------------------+
21 rows in set (0.0290 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name from  emp union select Dept_name  from departments;
+----------------------+
| First_Name           |
+----------------------+
| Rahul                |
| Priya                |
| Aman                 |
| Neha                 |
| Suresh               |
| Anjali               |
| Vikram               |
| Meera                |
| Rohan                |
| Kavya                |
| Arjun                |
| Pooja                |
| Sanjay               |
| Neetu                |
| Simran               |
| Vikas                |
| Riya                 |
| Manish               |
| Ananya               |
| HR                   |
| IT                   |
| Finance              |
| Marketing            |
| Operations           |
| Sales                |
| R&D                  |
| Support              |
| Procurement          |
| Logistics            |
| Legal                |
| Admin                |
| Quality              |
| Accounts             |
| Customer Service     |
| Business Development |
| Content              |
| Design               |
| Analytics            |
| Strategy             |
+----------------------+
39 rows in set (0.0041 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select First_Name as name from  emp union select Dept_name  As name from departments;
+----------------------+
| name                 |
+----------------------+
| Rahul                |
| Priya                |
| Aman                 |
| Neha                 |
| Suresh               |
| Anjali               |
| Vikram               |
| Meera                |
| Rohan                |
| Kavya                |
| Arjun                |
| Pooja                |
| Sanjay               |
| Neetu                |
| Simran               |
| Vikas                |
| Riya                 |
| Manish               |
| Ananya               |
| HR                   |
| IT                   |
| Finance              |
| Marketing            |
| Operations           |
| Sales                |
| R&D                  |
| Support              |
| Procurement          |
| Logistics            |
| Legal                |
| Admin                |
| Quality              |
| Accounts             |
| Customer Service     |
| Business Development |
| Content              |
| Design               |
| Analytics            |
| Strategy             |
+----------------------+
39 rows in set (0.0059 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT First_Name AS Name FROM emp

                                       -> UNION
                                       -> SELECT dept_name AS Name FROM departments;
+----------------------+
| Name                 |
+----------------------+
| Rahul                |
| Priya                |
| Aman                 |
| Neha                 |
| Suresh               |
| Anjali               |
| Vikram               |
| Meera                |
| Rohan                |
| Kavya                |
| Arjun                |
| Pooja                |
| Sanjay               |
| Neetu                |
| Simran               |
| Vikas                |
| Riya                 |
| Manish               |
| Ananya               |
| HR                   |
| IT                   |
| Finance              |
| Marketing            |
| Operations           |
| Sales                |
| R&D                  |
| Support              |
| Procurement          |
| Logistics            |
| Legal                |
| Admin                |
| Quality              |
| Accounts             |
| Customer Service     |
| Business Development |
| Content              |
| Design               |
| Analytics            |
| Strategy             |
+----------------------+
39 rows in set (0.0068 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select City from emp where City in(select location from departments);
+-----------+
| City      |
+-----------+
| Pune      |
| Delhi     |
| Bangalore |
| Pune      |
| Hyderabad |
| Chennai   |
| Kolkata   |
| Bangalore |
| Delhi     |
| Delhi     |
+-----------+
10 rows in set (0.0209 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City FROM emp
                                       -> WHERE City IN (SELECT location FROM departments);
+-----------+
| City      |
+-----------+
| Pune      |
| Delhi     |
| Bangalore |
| Pune      |
| Hyderabad |
| Chennai   |
| Kolkata   |
| Bangalore |
| Delhi     |
| Delhi     |
+-----------+
10 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0093 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from department;
ERROR: 1146: Table 'demo.department' doesn't exist
 MySQL  localhost:33060+ ssl  demo  SQL > select * from departments;
+---------+----------------------+-----------+
| dept_id | dept_name            | location  |
+---------+----------------------+-----------+
|       1 | HR                   | Delhi     |
|       2 | IT                   | Mumbai    |
|       3 | Finance              | Pune      |
|       4 | Marketing            | Bangalore |
|       5 | Operations           | Hyderabad |
|       6 | Sales                | Chennai   |
|       7 | R&D                  | Bangalore |
|       8 | Support              | Kolkata   |
|       9 | Procurement          | Delhi     |
|      10 | Logistics            | Pune      |
|      11 | Legal                | Mumbai    |
|      12 | Admin                | Chennai   |
|      13 | Quality              | Hyderabad |
|      14 | Accounts             | Pune      |
|      15 | Customer Service     | Kolkata   |
|      16 | Business Development | Delhi     |
|      17 | Content              | Bangalore |
|      18 | Design               | Mumbai    |
|      19 | Analytics            | Pune      |
|      20 | Strategy             | Hyderabad |
+---------+----------------------+-----------+
20 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT department FROM emp WHERE department IN (SELECT dept_name FROM departments);
+------------+
| department |
+------------+
| IT         |
| IT         |
| IT         |
| IT         |
| HR         |
| Marketing  |
| IT         |
| HR         |
| Marketing  |
| IT         |
| HR         |
| Marketing  |
| IT         |
| HR         |
| Marketing  |
+------------+
15 rows in set (0.0046 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department FROM emp
                                       -> WHERE Department IN (SELECT dept_name FROM departments);
+------------+
| Department |
+------------+
| IT         |
| IT         |
| IT         |
| IT         |
| HR         |
| Marketing  |
| IT         |
| HR         |
| Marketing  |
| IT         |
| HR         |
| Marketing  |
| IT         |
| HR         |
| Marketing  |
+------------+
15 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department FROM emp WHERE Department not IN (SELECT dept_name FROM departments);
+------------+
| Department |
+------------+
| Account    |
| Account    |
| Account    |
| Account    |
| Account    |
+------------+
5 rows in set (0.0122 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City FROM emp WHERE City not  IN (SELECT location FROM departments);
+------------+
| City       |
+------------+
| Ahmedabad  |
| Nagpur     |
| Coimbatore |
| Jaipur     |
| Lucknow    |
| Surat      |
| Indore     |
| Chandigarh |
| Kochi      |
| Varanasi   |
+------------+
10 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT dept_name FROM departments
                                       -> WHERE dept_name NOT IN (SELECT Department FROM emp);
+----------------------+
| dept_name            |
+----------------------+
| Finance              |
| Operations           |
| Sales                |
| R&D                  |
| Support              |
| Procurement          |
| Logistics            |
| Legal                |
| Admin                |
| Quality              |
| Accounts             |
| Customer Service     |
| Business Development |
| Content              |
| Design               |
| Analytics            |
| Strategy             |
+----------------------+
17 rows in set (0.0033 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp WHERE dept_name NOT IN (SELECT Dept_name FROM department);
ERROR: 1146: Table 'demo.department' doesn't exist
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp WHERE dept_name NOT IN (SELECT Dept_name FROM departments);
ERROR: 1054: Unknown column 'dept_name' in 'IN/ALL/ANY subquery'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT * FROM emp WHERE department NOT IN (SELECT Dept_name FROM departments);
+--------+------------+-----------+------------------------------+-----------+--------------+------------+---------+----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City      | Phone_Number | Hired_date | Bonus   | Salary   | Active | Department |
+--------+------------+-----------+------------------------------+-----------+--------------+------------+---------+----------+--------+------------+
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore |   9988776655 | 2025-09-25 | 4000.25 | 49500.00 |      1 | Account    |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai   |   9123450987 | 2025-09-25 | 3800.25 | 51700.55 |      1 | Account    |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur    |   9876509876 | 2025-09-25 |  4200.5 | 57200.83 |      1 | Account    |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore    |   9988773456 | 2025-09-25 |  4000.5 | 55000.55 |      1 | Account    |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi     |   9123456781 | 2025-09-25 | 4100.25 | 55000.28 |      1 | Account    |
+--------+------------+-----------+------------------------------+-----------+--------------+------------+---------+----------+--------+------------+
5 rows in set (0.0036 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select City from emp where City <> 'Pune' union select location form Departments where location <> 'pune';
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Departments where location <> 'pune'' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT City AS Name FROM emp
                                       -> WHERE City <> 'Pune'
                                       -> UNION
                                       -> SELECT location AS Name FROM departments
                                       -> WHERE location <> 'Pune';
+------------+
| Name       |
+------------+
| Delhi      |
| Bangalore  |
| Ahmedabad  |
| Hyderabad  |
| Chennai    |
| Kolkata    |
| Nagpur     |
| Coimbatore |
| Jaipur     |
| Lucknow    |
| Surat      |
| Indore     |
| Chandigarh |
| Kochi      |
| Varanasi   |
| Mumbai     |
+------------+
16 rows in set (0.0132 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department AS Name FROM emp WHERE City in ('HR' , 'IT') UNION SELECT dept_name AS Name FROM departments WHERE dept_name  in('HR' , 'IT');
+------+
| Name |
+------+
| HR   |
| IT   |
+------+
2 rows in set (0.0069 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT Department AS Dept FROM emp

                                       -> WHERE Department IN ('HR','IT')
                                       -> UNION
                                       -> SELECT dept_name AS Dept FROM departments
                                       -> WHERE dept_name IN ('HR','IT');
+------+
| Dept |
+------+
| IT   |
| HR   |
+------+
2 rows in set (0.0022 sec)


 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.First_Name, e.Salary, d.dept_name, d.location
                                       -> FROM emp e
                                       -> INNER JOIN departments d
                                       -> ON e.Department = d.dept_name;
+------------+-----------+-----------+-----------+
| First_Name | Salary    | dept_name | location  |
+------------+-----------+-----------+-----------+
| Riya       |  56100.83 | HR        | Delhi     |
| Neetu      |  58300.83 | HR        | Delhi     |
| Kavya      |  59400.55 | HR        | Delhi     |
| Anjali     |  62700.83 | HR        | Delhi     |
| Vikas      |  49000.25 | IT        | Mumbai    |
| Sanjay     |  54000.25 | IT        | Mumbai    |
| Rohan      |  50600.28 | IT        | Mumbai    |
| Suresh     |  52800.00 | IT        | Mumbai    |
| Neha       |  55000.50 | IT        | Mumbai    |
| Priya      |      0.00 | IT        | Mumbai    |
| Rahul      | 220000.00 | IT        | Mumbai    |
| Ananya     |  51700.55 | Marketing | Bangalore |
| Simran     |  57200.00 | Marketing | Bangalore |
| Pooja      |  51700.00 | Marketing | Bangalore |
| Meera      |  53000.00 | Marketing | Bangalore |
+------------+-----------+-----------+-----------+
15 rows in set (0.0270 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select e.First_Name , e.Salary ,d.dept_name , d.location form emp e inner join departments d on  e.department=d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp e inner join departments d on  e.department=d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select e.First_Name , e.Salary , d.dept_name , d.location from emp e inner join departments d on e.department=d.dept_name;
+------------+-----------+-----------+-----------+
| First_Name | Salary    | dept_name | location  |
+------------+-----------+-----------+-----------+
| Riya       |  56100.83 | HR        | Delhi     |
| Neetu      |  58300.83 | HR        | Delhi     |
| Kavya      |  59400.55 | HR        | Delhi     |
| Anjali     |  62700.83 | HR        | Delhi     |
| Vikas      |  49000.25 | IT        | Mumbai    |
| Sanjay     |  54000.25 | IT        | Mumbai    |
| Rohan      |  50600.28 | IT        | Mumbai    |
| Suresh     |  52800.00 | IT        | Mumbai    |
| Neha       |  55000.50 | IT        | Mumbai    |
| Priya      |      0.00 | IT        | Mumbai    |
| Rahul      | 220000.00 | IT        | Mumbai    |
| Ananya     |  51700.55 | Marketing | Bangalore |
| Simran     |  57200.00 | Marketing | Bangalore |
| Pooja      |  51700.00 | Marketing | Bangalore |
| Meera      |  53000.00 | Marketing | Bangalore |
+------------+-----------+-----------+-----------+
15 rows in set (0.0043 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select e.First_Name , e.Salary , d.dept_name , d.location from emp e left join departments d on e.department=d.dept_name;
+------------+-----------+-----------+-----------+
| First_Name | Salary    | dept_name | location  |
+------------+-----------+-----------+-----------+
| Rahul      | 220000.00 | IT        | Mumbai    |
| Priya      |      0.00 | IT        | Mumbai    |
| Aman       |  49500.00 | NULL      | NULL      |
| Neha       |  55000.50 | IT        | Mumbai    |
| Suresh     |  52800.00 | IT        | Mumbai    |
| Anjali     |  62700.83 | HR        | Delhi     |
| Vikram     |  51700.55 | NULL      | NULL      |
| Meera      |  53000.00 | Marketing | Bangalore |
| Rohan      |  50600.28 | IT        | Mumbai    |
| Kavya      |  59400.55 | HR        | Delhi     |
| Arjun      |  57200.83 | NULL      | NULL      |
| Pooja      |  51700.00 | Marketing | Bangalore |
| Sanjay     |  54000.25 | IT        | Mumbai    |
| Neetu      |  58300.83 | HR        | Delhi     |
| Rahul      |  55000.55 | NULL      | NULL      |
| Simran     |  57200.00 | Marketing | Bangalore |
| Vikas      |  49000.25 | IT        | Mumbai    |
| Riya       |  56100.83 | HR        | Delhi     |
| Manish     |  55000.28 | NULL      | NULL      |
| Ananya     |  51700.55 | Marketing | Bangalore |
+------------+-----------+-----------+-----------+
20 rows in set (0.0029 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select e.First_Name , e.Salary , d.dept_name , d.location from emp e rigth join departments d on e.department=d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rigth join departments d on e.department=d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select * from emp;
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
| Emp_Id | First_Name | Last_name | Email                        | City       | Phone_Number | Hired_date | Bonus   | Salary    | Active | Department |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
|      1 | Rahul      | Sharma    | rahul.sharma@example.com     | Pune       |   9876543210 | 2025-09-25 |    9000 | 220000.00 |      1 | IT         |
|      2 | Priya      | Kumar     | priya.kumar@example.com      | Delhi      |   9123456780 | 2025-09-25 |    5000 |      0.00 |      1 | IT         |
|      3 | Aman       | Singh     | aman.singh@example.com       | Bangalore  |   9988776655 | 2025-09-25 | 4000.25 |  49500.00 |      1 | Account    |
|      4 | Neha       | Verma     | neha.verma@example.com       | Pune       |   9876123450 | 2019-11-12 | 3500.75 |  55000.50 |      0 | IT         |
|      5 | Suresh     | Patel     | suresh.patel@example.com     | Ahmedabad  |   9876501234 | 2025-09-25 |  3000.5 |  52800.00 |      1 | IT         |
|      6 | Anjali     | Rao       | anjali.rao@example.com       | Hyderabad  |   9876547890 | 2025-09-25 |   10000 |  62700.83 |      1 | HR         |
|      7 | Vikram     | Chaudhary | vikram.chaudhary@example.com | Chennai    |   9123450987 | 2025-09-25 | 3800.25 |  51700.55 |      1 | Account    |
|      8 | Meera      | Gupta     | meera.gupta@example.com      | Kolkata    |   9988771234 | 2019-07-22 |    3000 |  53000.00 |      0 | Marketing  |
|      9 | Rohan      | Deshmukh  | rohan.deshmukh@example.com   | Nagpur     |   9876540987 | 2025-09-25 | 3500.25 |  50600.28 |      1 | IT         |
|     10 | Kavya      | Iyer      | kavya.iyer@example.com       | Coimbatore |   9123454321 | 2025-09-25 |   10000 |  59400.55 |      1 | HR         |
|     11 | Arjun      | Malhotra  | arjun.malhotra@example.com   | Jaipur     |   9876509876 | 2025-09-25 |  4200.5 |  57200.83 |      1 | Account    |
|     12 | Pooja      | Saxena    | pooja.saxena@example.com     | Lucknow    |   9988774321 | 2025-09-25 |    3000 |  51700.00 |      1 | Marketing  |
|     13 | Sanjay     | Reddy     | sanjay.reddy@example.com     | Bangalore  |   9123456789 | 2019-06-12 |  4300.5 |  54000.25 |      0 | IT         |
|     14 | Neetu      | Shah      | neetu.shah@example.com       | Surat      |   9876543212 | 2025-09-25 |   10000 |  58300.83 |      1 | HR         |
|     15 | Rahul      | Jain      | rahul.jain@example.com       | Indore     |   9988773456 | 2025-09-25 |  4000.5 |  55000.55 |      1 | Account    |
|     16 | Simran     | Kaur      | simran.kaur@example.com      | Chandigarh |   9123459876 | 2025-09-25 |    3000 |  57200.00 |      1 | Marketing  |
|     17 | Vikas      | Mehta     | vikas.mehta@example.com      | Delhi      |   9876504321 | 2020-02-05 |  3900.5 |  49000.25 |      0 | IT         |
|     18 | Riya       | Nair      | riya.nair@example.com        | Kochi      |   9988775678 | 2025-09-25 |   10000 |  56100.83 |      1 | HR         |
|     19 | Manish     | Kapoor    | manish.kapoor@example.com    | Delhi      |   9123456781 | 2025-09-25 | 4100.25 |  55000.28 |      1 | Account    |
|     20 | Ananya     | Tripathi  | ananya.tripathi@example.com  | Varanasi   |   9876549870 | 2025-09-25 |    3000 |  51700.55 |      1 | Marketing  |
+--------+------------+-----------+------------------------------+------------+--------------+------------+---------+-----------+--------+------------+
20 rows in set (0.0039 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select * from departments;
+---------+----------------------+-----------+
| dept_id | dept_name            | location  |
+---------+----------------------+-----------+
|       1 | HR                   | Delhi     |
|       2 | IT                   | Mumbai    |
|       3 | Finance              | Pune      |
|       4 | Marketing            | Bangalore |
|       5 | Operations           | Hyderabad |
|       6 | Sales                | Chennai   |
|       7 | R&D                  | Bangalore |
|       8 | Support              | Kolkata   |
|       9 | Procurement          | Delhi     |
|      10 | Logistics            | Pune      |
|      11 | Legal                | Mumbai    |
|      12 | Admin                | Chennai   |
|      13 | Quality              | Hyderabad |
|      14 | Accounts             | Pune      |
|      15 | Customer Service     | Kolkata   |
|      16 | Business Development | Delhi     |
|      17 | Content              | Bangalore |
|      18 | Design               | Mumbai    |
|      19 | Analytics            | Pune      |
|      20 | Strategy             | Hyderabad |
+---------+----------------------+-----------+
20 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select e.Emp_id , e.department , e.Salary , d.dept_name from emp e left join departments d on e.department = d.dept_name;
+--------+------------+-----------+-----------+
| Emp_id | department | Salary    | dept_name |
+--------+------------+-----------+-----------+
|      1 | IT         | 220000.00 | IT        |
|      2 | IT         |      0.00 | IT        |
|      3 | Account    |  49500.00 | NULL      |
|      4 | IT         |  55000.50 | IT        |
|      5 | IT         |  52800.00 | IT        |
|      6 | HR         |  62700.83 | HR        |
|      7 | Account    |  51700.55 | NULL      |
|      8 | Marketing  |  53000.00 | Marketing |
|      9 | IT         |  50600.28 | IT        |
|     10 | HR         |  59400.55 | HR        |
|     11 | Account    |  57200.83 | NULL      |
|     12 | Marketing  |  51700.00 | Marketing |
|     13 | IT         |  54000.25 | IT        |
|     14 | HR         |  58300.83 | HR        |
|     15 | Account    |  55000.55 | NULL      |
|     16 | Marketing  |  57200.00 | Marketing |
|     17 | IT         |  49000.25 | IT        |
|     18 | HR         |  56100.83 | HR        |
|     19 | Account    |  55000.28 | NULL      |
|     20 | Marketing  |  51700.55 | Marketing |
+--------+------------+-----------+-----------+
20 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select e.Emp_id , e.department , e.Salary , d.dept_name from emp e rigth join departments d on e.department = d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rigth join departments d on e.department = d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select e.Emp_id , e.department , e.Salary , d.dept_name  , d.location from emp e rigth join departments d on e.department = d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rigth join departments d on e.department = d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select e.Emp_id , e.First_Name ,e.department , e.Salary , d.dept_name  , d.location from emp e rigth join departments d on e.department = d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rigth join departments d on e.department = d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location
                                       -> FROM emp e
                                       -> RIGHT JOIN departments d
                                       -> ON e.Department = d.dept_name;
ERROR: 1054: Unknown column 'e.Id' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Emp_Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location FROM emp e RIGHT JOIN departments d ON e.Department = d.dept_name;
+--------+------------+------------+-----------+----------------------+-----------+
| Emp_Id | First_Name | Department | Salary    | dept_name            | location  |
+--------+------------+------------+-----------+----------------------+-----------+
|     18 | Riya       | HR         |  56100.83 | HR                   | Delhi     |
|     14 | Neetu      | HR         |  58300.83 | HR                   | Delhi     |
|     10 | Kavya      | HR         |  59400.55 | HR                   | Delhi     |
|      6 | Anjali     | HR         |  62700.83 | HR                   | Delhi     |
|     17 | Vikas      | IT         |  49000.25 | IT                   | Mumbai    |
|     13 | Sanjay     | IT         |  54000.25 | IT                   | Mumbai    |
|      9 | Rohan      | IT         |  50600.28 | IT                   | Mumbai    |
|      5 | Suresh     | IT         |  52800.00 | IT                   | Mumbai    |
|      4 | Neha       | IT         |  55000.50 | IT                   | Mumbai    |
|      2 | Priya      | IT         |      0.00 | IT                   | Mumbai    |
|      1 | Rahul      | IT         | 220000.00 | IT                   | Mumbai    |
|   NULL | NULL       | NULL       |      NULL | Finance              | Pune      |
|     20 | Ananya     | Marketing  |  51700.55 | Marketing            | Bangalore |
|     16 | Simran     | Marketing  |  57200.00 | Marketing            | Bangalore |
|     12 | Pooja      | Marketing  |  51700.00 | Marketing            | Bangalore |
|      8 | Meera      | Marketing  |  53000.00 | Marketing            | Bangalore |
|   NULL | NULL       | NULL       |      NULL | Operations           | Hyderabad |
|   NULL | NULL       | NULL       |      NULL | Sales                | Chennai   |
|   NULL | NULL       | NULL       |      NULL | R&D                  | Bangalore |
|   NULL | NULL       | NULL       |      NULL | Support              | Kolkata   |
|   NULL | NULL       | NULL       |      NULL | Procurement          | Delhi     |
|   NULL | NULL       | NULL       |      NULL | Logistics            | Pune      |
|   NULL | NULL       | NULL       |      NULL | Legal                | Mumbai    |
|   NULL | NULL       | NULL       |      NULL | Admin                | Chennai   |
|   NULL | NULL       | NULL       |      NULL | Quality              | Hyderabad |
|   NULL | NULL       | NULL       |      NULL | Accounts             | Pune      |
|   NULL | NULL       | NULL       |      NULL | Customer Service     | Kolkata   |
|   NULL | NULL       | NULL       |      NULL | Business Development | Delhi     |
|   NULL | NULL       | NULL       |      NULL | Content              | Bangalore |
|   NULL | NULL       | NULL       |      NULL | Design               | Mumbai    |
|   NULL | NULL       | NULL       |      NULL | Analytics            | Pune      |
|   NULL | NULL       | NULL       |      NULL | Strategy             | Hyderabad |
+--------+------------+------------+-----------+----------------------+-----------+
32 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select E.Emp_Id , e.department , d.dept_name , d.location from emp e right join department d on e.department=d.dept_name;
ERROR: 1146: Table 'demo.department' doesn't exist
 MySQL  localhost:33060+ ssl  demo  SQL > select E.Emp_Id , e.department , d.dept_name , d.location from emp e right join departments d on e.department=d.dept_name;
+--------+------------+----------------------+-----------+
| Emp_Id | department | dept_name            | location  |
+--------+------------+----------------------+-----------+
|     18 | HR         | HR                   | Delhi     |
|     14 | HR         | HR                   | Delhi     |
|     10 | HR         | HR                   | Delhi     |
|      6 | HR         | HR                   | Delhi     |
|     17 | IT         | IT                   | Mumbai    |
|     13 | IT         | IT                   | Mumbai    |
|      9 | IT         | IT                   | Mumbai    |
|      5 | IT         | IT                   | Mumbai    |
|      4 | IT         | IT                   | Mumbai    |
|      2 | IT         | IT                   | Mumbai    |
|      1 | IT         | IT                   | Mumbai    |
|   NULL | NULL       | Finance              | Pune      |
|     20 | Marketing  | Marketing            | Bangalore |
|     16 | Marketing  | Marketing            | Bangalore |
|     12 | Marketing  | Marketing            | Bangalore |
|      8 | Marketing  | Marketing            | Bangalore |
|   NULL | NULL       | Operations           | Hyderabad |
|   NULL | NULL       | Sales                | Chennai   |
|   NULL | NULL       | R&D                  | Bangalore |
|   NULL | NULL       | Support              | Kolkata   |
|   NULL | NULL       | Procurement          | Delhi     |
|   NULL | NULL       | Logistics            | Pune      |
|   NULL | NULL       | Legal                | Mumbai    |
|   NULL | NULL       | Admin                | Chennai   |
|   NULL | NULL       | Quality              | Hyderabad |
|   NULL | NULL       | Accounts             | Pune      |
|   NULL | NULL       | Customer Service     | Kolkata   |
|   NULL | NULL       | Business Development | Delhi     |
|   NULL | NULL       | Content              | Bangalore |
|   NULL | NULL       | Design               | Mumbai    |
|   NULL | NULL       | Analytics            | Pune      |
|   NULL | NULL       | Strategy             | Hyderabad |
+--------+------------+----------------------+-----------+
32 rows in set (0.0117 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select E.Emp_Id , e.department , d.dept_name , d.location from emp e full join departments d on e.department=d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'full join departments d on e.department=d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > select E.Emp_Id , e.department , d.dept_name , d.location from emp e full outer  join departments d on e.department=d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'full outer  join departments d on e.department=d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location
                                       -> FROM emp e
                                       -> FULL OUTER JOIN departments d
                                       -> ON e.Department = d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FULL OUTER JOIN departments d
ON e.Department = d.dept_name' at line 3
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Emp_Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location FROM emp e FULL OUTER JOIN departments d ON e.Department = d.dept_name;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FULL OUTER JOIN departments d ON e.Department = d.dept_name' at line 1
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location
                                       -> FROM emp e
                                       -> LEFT JOIN departments d
                                       -> ON e.Department = d.dept_name
                                       -> UNION
                                       -> SELECT e.Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location
                                       -> FROM emp e
                                       -> RIGHT JOIN departments d
                                       -> ON e.Department = d.dept_name;
ERROR: 1054: Unknown column 'e.Id' in 'field list'
 MySQL  localhost:33060+ ssl  demo  SQL > SELECT e.Emp_Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location FROM emp e LEFT JOIN departments d ON e.Department = d.dept_name UNION SELECT e.Emp_Id, e.First_Name, e.Department, e.Salary, d.dept_name, d.location FROM emp e RIGHT JOIN departments d ON e.Department = d.dept_name;
+--------+------------+------------+-----------+----------------------+-----------+
| Emp_Id | First_Name | Department | Salary    | dept_name            | location  |
+--------+------------+------------+-----------+----------------------+-----------+
|      1 | Rahul      | IT         | 220000.00 | IT                   | Mumbai    |
|      2 | Priya      | IT         |      0.00 | IT                   | Mumbai    |
|      3 | Aman       | Account    |  49500.00 | NULL                 | NULL      |
|      4 | Neha       | IT         |  55000.50 | IT                   | Mumbai    |
|      5 | Suresh     | IT         |  52800.00 | IT                   | Mumbai    |
|      6 | Anjali     | HR         |  62700.83 | HR                   | Delhi     |
|      7 | Vikram     | Account    |  51700.55 | NULL                 | NULL      |
|      8 | Meera      | Marketing  |  53000.00 | Marketing            | Bangalore |
|      9 | Rohan      | IT         |  50600.28 | IT                   | Mumbai    |
|     10 | Kavya      | HR         |  59400.55 | HR                   | Delhi     |
|     11 | Arjun      | Account    |  57200.83 | NULL                 | NULL      |
|     12 | Pooja      | Marketing  |  51700.00 | Marketing            | Bangalore |
|     13 | Sanjay     | IT         |  54000.25 | IT                   | Mumbai    |
|     14 | Neetu      | HR         |  58300.83 | HR                   | Delhi     |
|     15 | Rahul      | Account    |  55000.55 | NULL                 | NULL      |
|     16 | Simran     | Marketing  |  57200.00 | Marketing            | Bangalore |
|     17 | Vikas      | IT         |  49000.25 | IT                   | Mumbai    |
|     18 | Riya       | HR         |  56100.83 | HR                   | Delhi     |
|     19 | Manish     | Account    |  55000.28 | NULL                 | NULL      |
|     20 | Ananya     | Marketing  |  51700.55 | Marketing            | Bangalore |
|   NULL | NULL       | NULL       |      NULL | Finance              | Pune      |
|   NULL | NULL       | NULL       |      NULL | Operations           | Hyderabad |
|   NULL | NULL       | NULL       |      NULL | Sales                | Chennai   |
|   NULL | NULL       | NULL       |      NULL | R&D                  | Bangalore |
|   NULL | NULL       | NULL       |      NULL | Support              | Kolkata   |
|   NULL | NULL       | NULL       |      NULL | Procurement          | Delhi     |
|   NULL | NULL       | NULL       |      NULL | Logistics            | Pune      |
|   NULL | NULL       | NULL       |      NULL | Legal                | Mumbai    |
|   NULL | NULL       | NULL       |      NULL | Admin                | Chennai   |
|   NULL | NULL       | NULL       |      NULL | Quality              | Hyderabad |
|   NULL | NULL       | NULL       |      NULL | Accounts             | Pune      |
|   NULL | NULL       | NULL       |      NULL | Customer Service     | Kolkata   |
|   NULL | NULL       | NULL       |      NULL | Business Development | Delhi     |
|   NULL | NULL       | NULL       |      NULL | Content              | Bangalore |
|   NULL | NULL       | NULL       |      NULL | Design               | Mumbai    |
|   NULL | NULL       | NULL       |      NULL | Analytics            | Pune      |
|   NULL | NULL       | NULL       |      NULL | Strategy             | Hyderabad |
+--------+------------+------------+-----------+----------------------+-----------+
37 rows in set (0.0135 sec)
 MySQL  localhost:33060+ ssl  demo  SQL > select e.Emp_id As id , d.location , e.department from emp e join departments d on e.departments = d.dept_name and e.Emp_id <> d.dept_id;
ERROR: 1054: Unknown column 'e.departments' in 'on clause'
 MySQL  localhost:33060+ ssl  demo  SQL > select e.Emp_id As id , d.location , e.department from emp e join departments d on e.department = d.dept_name and e.Emp_id <> d.dept_id;
+----+-----------+------------+
| id | location  | department |
+----+-----------+------------+
| 18 | Delhi     | HR         |
| 14 | Delhi     | HR         |
| 10 | Delhi     | HR         |
|  6 | Delhi     | HR         |
| 17 | Mumbai    | IT         |
| 13 | Mumbai    | IT         |
|  9 | Mumbai    | IT         |
|  5 | Mumbai    | IT         |
|  4 | Mumbai    | IT         |
|  1 | Mumbai    | IT         |
| 20 | Bangalore | Marketing  |
| 16 | Bangalore | Marketing  |
| 12 | Bangalore | Marketing  |
|  8 | Bangalore | Marketing  |
+----+-----------+------------+
14 rows in set (0.0046 sec)



