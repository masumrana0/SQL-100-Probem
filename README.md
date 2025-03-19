# Employee Management SQL Database

## Overview
This repository contains the SQL schema and queries for an **Employee Management System**. It includes:
- **Department & Employee Table Creation**
- **Data Insertion Scripts**
- **100 SQL Queries** covering various use cases like retrieval, joins, aggregation, and advanced analysis.

---

## Database Schema

### **Departments Table**
```sql
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
```

### **Sample Data for Departments**
```sql
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
```

### **Employees Table**
```sql
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
    FOREIGN KEY (department_id) REFERENCES departments (department_id)
);
```

### **Sample Data for Employees (First 5 rows)**
```sql
INSERT INTO Employees (employee_id, "name", email, age, salary, department_id, status, hire_date) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 30, 55000.00, 1, 'Active', '2022-01-15'),
(2, 'Bob Smith', 'bob.smith@example.com', 40, 60000.00, 2, 'Inactive', '2021-06-20'),
(3, 'Charlie Brown', 'charlie.brown@example.com', 28, 48000.00, 1, 'Probation', '2023-02-10'),
(4, 'David White', 'david.white@example.com', 35, 75000.00, 3, 'Active', '2020-09-05'),
(5, 'Emma Davis', 'emma.davis@example.com', 45, 80000.00, 2, 'Active', '2019-11-12');
```
(Full dataset includes **50 employees**)

---

## **SQL Queries**

### **Basic Queries (1-20)**
1. Retrieve all employees' details.
2. Retrieve only employee names and their salaries.
3. Retrieve all departments.
4. Retrieve employees whose salary is greater than 70,000.
5. Retrieve employees who belong to the "HR" department.
6. Retrieve employees whose names start with the letter "A".
7. Retrieve employees who have 'Inactive' status.
8. Retrieve employees who are older than 30.
9. Retrieve employees who have an email ending with "@email.com".
10. Retrieve employees sorted by their salary in descending order.
11. Retrieve employees who have a salary between 60,000 and 90,000.
12. Retrieve employees whose age is between 25 and 35.
13. Retrieve employees who are not in the "Sales" department.
14. Retrieve the first 10 employees from the table.
15. Retrieve employees whose names contain 'son'.
16. Retrieve all employees, replacing NULL values in salary with 50,000.
17. Retrieve employees with distinct status values.
18. Retrieve employees who have duplicate salaries.
19. Retrieve employees who have the same first name.
20. Retrieve employees who don’t have an email.

### **JOIN Queries (21-40)**
21. Retrieve employees along with their department names.
22. Retrieve employees and departments where department name starts with "M".
23. Retrieve employees working in departments with IDs greater than 5.
24. Retrieve employees who work in the same department as "Alice Johnson".
25. Retrieve employees who work in departments where at least 5 employees exist.
26. Retrieve all employees and include departments even if they have no employees (LEFT JOIN).
27. Retrieve all departments and include employees even if they have no department (RIGHT JOIN).
28. Retrieve employees working in Marketing or HR.
29. Retrieve employees along with their department sorted by department name.
30. Retrieve departments along with the number of employees in each.

### **Aggregation & Grouping (41-60)**
41. Count the number of employees in each department.
42. Find the average salary of all employees.
43. Find the highest salary in each department.
44. Find the lowest salary in each department.
45. Count the number of employees whose salary is above 60,000.
46. Count employees by their status (Active, Inactive, Probation).
47. Find the total salary of all employees combined.
48. Find the average salary of employees older than 30.
49. Count employees whose email ends in "@company.com".
50. Find the total salary paid in each department, only for active employees.

### **Subqueries & Nested Queries (61-80)**
61. Find employees who have the highest salary in their department.
62. Find employees whose salary is higher than the company’s average salary.
63. Find employees whose age is above the company’s average age.
64. Find employees who earn more than the department average salary.
65. Retrieve departments with more than 5 employees.
66. Retrieve employees who have never been promoted (if promotion history exists).
67. Retrieve employees who don’t belong to any department.
68. Find employees who joined before the oldest employee in Marketing.
69. Retrieve employees whose salary is lower than the highest salary in HR.
70. Retrieve the top 3 highest-paid employees.

### **Advanced Queries (81-100)**
81. Retrieve employees who haven’t received a salary increase in 2 years.
82. Retrieve employees who joined in the last 6 months.
83. Retrieve employees who don’t have a unique email (duplicate emails).
84. Retrieve employees who belong to multiple departments.
85. Retrieve employees who never logged in (if login history exists).
86. Retrieve the youngest employee in each department.
87. Retrieve the oldest employee in each department.
88. Retrieve the employee with the longest tenure.
89. Retrieve employees whose salary increased by more than 20% in the last year.
90. Retrieve employees who don’t have a salary assigned.
91. Retrieve employees with the same salary as their manager.
92. Retrieve employees who were hired on a weekend.
93. Retrieve the third highest-paid employee.
94. Retrieve employees whose names are palindromes.
95. Retrieve employees who were hired on the first day of the month.
96. Retrieve employees who belong to a department with a name longer than 10 characters.
97. Retrieve the top 10% highest earners in the company.
98. Retrieve employees whose salary increased by exactly 10% last year.
99. Retrieve employees who have the same first and last name.
100. Retrieve the department with the highest percentage of active employees.

---

## 📌 **How to Use**
- Run the schema SQL commands to set up the database.
- Insert sample data into the tables.
- Execute queries based on your requirements.

💡 **Feel free to contribute and extend this repository!** 🚀

