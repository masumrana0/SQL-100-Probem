CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'IT Support'),
(7, 'Research & Development'),
(8, 'Customer Service'),
(9, 'Legal'),
(10, 'Operations');

CREATE TYPE employee_status AS ENUM ('Active', 'Inactive', 'Probation');
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    "name" VARCHAR(200),
    email VARCHAR(100) UNIQUE,
    age INT,
    salary DECIMAL(10, 2),
    department_id INT,
    status employee_status,
    hire_date DATE,
    Foreign Key (department_id) REFERENCES departments (department_id)
);


INSERT INTO Employees (employee_id, "name", email, age, salary, department_id, status, hire_date) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 30, 55000.00, 1, 'Active', '2022-01-15'),
(2, 'Bob Smith', 'bob.smith@example.com', 40, 60000.00, 2, 'Inactive', '2021-06-20'),
(3, 'Charlie Brown', 'charlie.brown@example.com', 28, 48000.00, 1, 'Probation', '2023-02-10'),
(4, 'David White', 'david.white@example.com', 35, 75000.00, 3, 'Active', '2020-09-05'),
(5, 'Emma Davis', 'emma.davis@example.com', 45, 80000.00, 2, 'Active', '2019-11-12'),
(6, 'Frank Harris', 'frank.harris@example.com', 33, 65000.00, 3, 'Inactive', '2021-08-22'),
(7, 'Grace Lee', 'grace.lee@example.com', 29, 50000.00, 1, 'Active', '2023-04-18'),
(8, 'Henry Wilson', 'henry.wilson@example.com', 50, 90000.00, 4, 'Active', '2018-07-30'),
(9, 'Isabella Clark', 'isabella.clark@example.com', 27, 47000.00, 2, 'Probation', '2023-06-15'),
(10, 'Jack Martinez', 'jack.martinez@example.com', 31, 72000.00, 4, 'Inactive', '2020-10-10'),
(11, 'Karen Scott', 'karen.scott@example.com', 37, 56000.00, 1, 'Active', '2021-12-05'),
(12, 'Liam Brown', 'liam.brown@example.com', 29, 51000.00, 2, 'Active', '2022-08-21'),
(13, 'Mia Wilson', 'mia.wilson@example.com', 26, 47000.00, 3, 'Probation', '2023-07-11'),
(14, 'Noah Harris', 'noah.harris@example.com', 32, 58000.00, 1, 'Inactive', '2020-05-14'),
(15, 'Olivia Davis', 'olivia.davis@example.com', 34, 69000.00, 4, 'Active', '2019-09-27'),
(16, 'Peter Adams', 'peter.adams@example.com', 38, 74000.00, 2, 'Inactive', '2018-11-02'),
(17, 'Quinn Lewis', 'quinn.lewis@example.com', 27, 46000.00, 3, 'Probation', '2023-03-19'),
(18, 'Rachel King', 'rachel.king@example.com', 30, 53000.00, 1, 'Active', '2021-06-28'),
(19, 'Samuel Wright', 'samuel.wright@example.com', 36, 80000.00, 4, 'Active', '2017-12-15'),
(20, 'Taylor Hill', 'taylor.hill@example.com', 28, 49000.00, 2, 'Probation', '2023-01-07'),
(21, 'Uma Baker', 'uma.baker@example.com', 39, 66000.00, 1, 'Active', '2020-02-29'),
(22, 'Victor Green', 'victor.green@example.com', 35, 73000.00, 3, 'Inactive', '2021-10-22'),
(23, 'Wendy Foster', 'wendy.foster@example.com', 33, 52000.00, 2, 'Active', '2022-04-16'),
(24, 'Xander Price', 'xander.price@example.com', 29, 48000.00, 4, 'Probation', '2023-09-14'),
(25, 'Yvonne Bell', 'yvonne.bell@example.com', 31, 60000.00, 3, 'Active', '2019-08-30'),
(26, 'Zachary Reed', 'zachary.reed@example.com', 45, 85000.00, 1, 'Active', '2016-10-05'),
(27, 'Anna Howard', 'anna.howard@example.com', 42, 78000.00, 2, 'Inactive', '2017-03-25'),
(28, 'Brian Carter', 'brian.carter@example.com', 37, 69000.00, 3, 'Active', '2018-06-12'),
(29, 'Catherine Brooks', 'catherine.brooks@example.com', 30, 54000.00, 4, 'Probation', '2023-05-01'),
(30, 'Derek Ward', 'derek.ward@example.com', 34, 61000.00, 1, 'Active', '2021-02-18'),
(31, 'Eleanor Perry', 'eleanor.perry@example.com', 28, 47000.00, 2, 'Inactive', '2020-07-08'),
(32, 'Felix Hughes', 'felix.hughes@example.com', 41, 77000.00, 3, 'Active', '2019-04-23'),
(33, 'Gina Coleman', 'gina.coleman@example.com', 36, 68000.00, 4, 'Active', '2018-12-11'),
(34, 'Harry Jenkins', 'harry.jenkins@example.com', 29, 51000.00, 1, 'Probation', '2023-08-30'),
(35, 'Ivy Edwards', 'ivy.edwards@example.com', 32, 59000.00, 2, 'Active', '2022-09-04'),
(36, 'Jason Murphy', 'jason.murphy@example.com', 38, 72000.00, 3, 'Inactive', '2017-05-14'),
(37, 'Kylie Fisher', 'kylie.fisher@example.com', 27, 46000.00, 4, 'Active', '2023-10-10'),
(38, 'Leonard Ortiz', 'leonard.ortiz@example.com', 50, 89000.00, 1, 'Active', '2015-07-19'),
(39, 'Megan Simmons', 'megan.simmons@example.com', 31, 62000.00, 2, 'Inactive', '2021-01-12'),
(40, 'Nathan Bishop', 'nathan.bishop@example.com', 28, 49000.00, 3, 'Probation', '2023-06-25'),
(41, 'Olga Rivera', 'olga.rivera@example.com', 42, 78000.00, 4, 'Active', '2016-09-21'),
(42, 'Paul Sanders', 'paul.sanders@example.com', 37, 70000.00, 1, 'Inactive', '2019-02-16'),
(43, 'Quincy Turner', 'quincy.turner@example.com', 35, 66000.00, 2, 'Active', '2018-08-27'),
(44, 'Rebecca Cox', 'rebecca.cox@example.com', 29, 51000.00, 3, 'Probation', '2023-03-11'),
(45, 'Steven Flores', 'steven.flores@example.com', 39, 74000.00, 4, 'Active', '2017-11-05'),
(46, 'Tracy Bennett', 'tracy.bennett@example.com', 34, 60000.00, 1, 'Active', '2020-05-09'),
(47, 'Ursula Jenkins', 'ursula.jenkins@example.com', 28, 49000.00, 2, 'Probation', '2023-12-01'),
(48, 'Vincent Howard', 'vincent.howard@example.com', 45, 83000.00, 3, 'Active', '2016-04-14'),
(49, 'Walter Rogers', 'walter.rogers@example.com', 50, 90000.00, 4, 'Inactive', '2015-06-30'),
(50, 'Xenia Allen', 'xenia.allen@example.com', 33, 57000.00, 1, 'Active', '2021-07-21');

/*

Basic Queries (1-20)
1.Retrieve all employees' details.
2.Retrieve only employee names and their salaries.
3.Retrieve all departments.
4.Retrieve employees whose salary is greater than 70,000.
5.Retrieve employees who belong to the "HR" department.
6.Retrieve employees whose names start with the letter "A".
7.Retrieve employees who have 'Inactive' status.
8.Retrieve employees who are older than 30.
9.Retrieve employees who have an email ending with "@email.com".
10.Retrieve employees sorted by their salary in descending order.
11.Retrieve employees who have a salary between 60,000 and 90,000.
12.Retrieve employees whose age is between 25 and 35.
13.Retrieve employees who are not in the "Sales" department.
14.Retrieve the first 10 employees from the table.
15.Retrieve employees whose names contain 'son'.
16.Retrieve all employees, replacing NULL values in salary with 50,000.
17.Retrieve employees with distinct status values.
18.Retrieve employees who have duplicate salaries.
19.Retrieve employees who have the same first name.
20.Retrieve employees who don’t have an email.


JOIN Queries (21-40)
21.Retrieve employees along with their department names.
22.Retrieve employees and departments where department name starts with "M".
23.Retrieve employees working in departments with IDs greater than 5.
24.Retrieve employees who work in the same department as "Alice Johnson".
25.Retrieve employees who work in departments where at least 5 employees exist.
26.Retrieve all employees and include departments even if they have no employees (LEFT JOIN).
27.Retrieve all departments and include employees even if they have no department (RIGHT JOIN).
28.Retrieve employees working in Marketing or HR.
29.Retrieve employees along with their department sorted by department name.
30.Retrieve departments along with the number of employees in each.
31.Retrieve employees who work in the largest department (by employee count).
32.Retrieve employees working in departments where the average salary is greater than 75,000.
33.Retrieve employees whose salary is higher than the average salary in their department.
34.Retrieve employees who work in multiple departments (if allowed).
35.Retrieve employees who are the only ones in their department.
36.Retrieve employees and departments where the department name contains 'Tech'.
37.Retrieve employees whose salary matches the highest salary in their department.
38.Retrieve departments that have no employees assigned.
39.Retrieve the total salary paid in each department.
40.Retrieve employees along with their department name and status.


Aggregation & Grouping (41-60)
41.Count the number of employees in each department.
42.Find the average salary of all employees.
43.Find the highest salary in each department.
44.Find the lowest salary in each department.
45.Count the number of employees whose salary is above 60,000.
46.Count employees by their status (Active, Inactive, Probation).
47.Find the total salary of all employees combined.
48.Find the average salary of employees older than 30.
49.Count employees whose email ends in "@company.com".
50.Find the total salary paid in each department, only for active employees.
51.Find the average age of employees in each department.
52.Find the highest and lowest salaries in the company.
53.Find the department with the highest total salary paid.
54.Find the department with the lowest total salary paid.
55.Find the department with the most employees.
56.Find the department with the least employees.
57.Find the percentage of employees in each department.
58.Find employees whose salaries are higher than the company's average salary.
59.Find the total salary of employees in departments with at least 10 employees.
60.Find the number of employees hired in each year (assuming hire date exists).\


Subqueries & Nested Queries (61-80)
61.Find employees who have the highest salary in their department.
62.Find employees whose salary is higher than the company’s average salary.
63.Find employees whose age is above the company’s average age.
64.Find employees who earn more than the department average salary.
65.Retrieve departments with more than 5 employees.
66.Retrieve employees who have never been promoted (if promotion history exists).
67.Retrieve employees who don’t belong to any department.
68.Find employees who joined before the oldest employee in Marketing.
69.Retrieve employees whose salary is lower than the highest salary in HR.
70.Retrieve the top 3 highest paid employees.
71.Retrieve the bottom 5 lowest paid employees.
72.Retrieve employees who have the same salary as another employee.
73.Find employees whose salary is within 10% of the company’s average salary.
74.Retrieve employees who have a manager with a higher salary.
75.Retrieve employees whose salary matches the second highest salary in the company.
76.Retrieve employees who have at least 2 colleagues in the same department.
77.Retrieve the department with the most employees.
78.Retrieve the department with the least employees.
79.Retrieve the department with the highest average salary.
80.Retrieve employees who are earning more than their managers.

Advanced Queries (81-100)
81.Retrieve employees who haven’t received a salary increase in 2 years.
82.Retrieve employees who joined in the last 6 months.
83.Retrieve employees who don’t have a unique email (duplicate emails).
84.Retrieve employees who belong to multiple departments.
85.Retrieve employees who never logged in (if login history exists).
86.Retrieve the youngest employee in each department.
87.Retrieve the oldest employee in each department.
88.Retrieve the employee with the longest tenure.
89.Retrieve employees whose salary increased by more than 20% in the last year.
90.Retrieve employees who don’t have a salary assigned.
91.Retrieve employees with the same salary as their manager.
92.Retrieve employees who were hired on a weekend.
93.Retrieve the third highest paid employee.
94.Retrieve employees whose names are palindromes.
95.Retrieve employees who were hired on the first day of the month.
96.Retrieve employees who belong to a department with a name longer than 10 characters.
97.Retrieve the top 10% highest earners in the company.
98.Retrieve employees whose salary increased by exactly 10% last year.
99.Retrieve employees who have the same first and last name.
100.Retrieve the department with the highest percentage of active employees.






 