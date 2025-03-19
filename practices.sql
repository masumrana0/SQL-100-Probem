CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    team_id INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2),
    hire_date DATE NOT NULL,
    Foreign Key (department_id) REFERENCES departments (department_id),
    Foreign Key (team_id) REFERENCES teams (team_id)
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    Foreign Key (department_id) REFERENCES departments (department_id)
);

-- insert departments
INSERT INTO
    departments (department_name)
VALUES ('Engineering'),
    ('HR'),
    ('Finance'),
    ('Marketing'),
    ('Sales'),
    ('Operations'),
    ('IT'),
    ('Customer Support');

-- teams insert
INSERT INTO
    teams (team_name, department_id)
VALUES (
        'Software Development',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Engineering'
        )
    ),
    (
        'Recruitment',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'HR'
        )
    ),
    (
        'Accounts',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Finance'
        )
    ),
    (
        'Digital Marketing',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Marketing'
        )
    ),
    (
        'Technical Support',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Customer Support'
        )
    );

--  insert employee
INSERT INTO
    employees (
        first_name,
        last_name,
        department_id,
        team_id,
        email,
        salary,
        hire_date
    )
VALUES (
        'Alice',
        'Smith',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Engineering'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Software Development'
        ),
        'alice.smith@email.com',
        85000.00,
        '2022-01-15'
    ),
    (
        'Bob',
        'Johnson',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'HR'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Recruitment'
        ),
        'bob.johnson@email.com',
        60000.00,
        '2021-05-23'
    ),
    (
        'Charlie',
        'Brown',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Finance'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Accounts'
        ),
        'charlie.brown@email.com',
        70000.00,
        '2020-11-11'
    ),
    (
        'David',
        'Williams',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Marketing'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Digital Marketing'
        ),
        'david.williams@email.com',
        75000.00,
        '2023-03-10'
    ),
    (
        'Emma',
        'Davis',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Customer Support'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Technical Support'
        ),
        'emma.davis@email.com',
        55000.00,
        '2022-06-20'
    ),
    (
        'Frank',
        'Miller',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Engineering'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Software Development'
        ),
        'frank.miller@email.com',
        90000.00,
        '2019-07-25'
    ),
    (
        'Grace',
        'Wilson',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Finance'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Accounts'
        ),
        'grace.wilson@email.com',
        72000.00,
        '2020-02-15'
    ),
    (
        'Henry',
        'Moore',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Marketing'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Digital Marketing'
        ),
        'henry.moore@email.com',
        78000.00,
        '2023-08-01'
    ),
    (
        'Isabella',
        'Taylor',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Customer Support'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Technical Support'
        ),
        'isabella.taylor@email.com',
        57000.00,
        '2021-09-10'
    ),
    (
        'Jack',
        'Anderson',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'HR'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Recruitment'
        ),
        'jack.anderson@email.com',
        62000.00,
        '2020-12-30'
    ),
    (
        'Kelly',
        'Thomas',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Engineering'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Software Development'
        ),
        'kelly.thomas@email.com',
        91000.00,
        '2021-04-22'
    ),
    (
        'Liam',
        'White',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Finance'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Accounts'
        ),
        'liam.white@email.com',
        73000.00,
        '2022-07-19'
    ),
    (
        'Mia',
        'Harris',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Marketing'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Digital Marketing'
        ),
        'mia.harris@email.com',
        76000.00,
        '2023-01-05'
    ),
    (
        'Nathan',
        'Martin',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Customer Support'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Technical Support'
        ),
        'nathan.martin@email.com',
        56000.00,
        '2021-10-15'
    ),
    (
        'Olivia',
        'Lee',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'HR'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Recruitment'
        ),
        'olivia.lee@email.com',
        63000.00,
        '2020-09-28'
    ),
    (
        'Paul',
        'Scott',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Engineering'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Software Development'
        ),
        'paul.scott@email.com',
        88000.00,
        '2018-05-20'
    ),
    (
        'Quinn',
        'Green',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Finance'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Accounts'
        ),
        'quinn.green@email.com',
        71000.00,
        '2019-06-30'
    ),
    (
        'Ryan',
        'Adams',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Marketing'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Digital Marketing'
        ),
        'ryan.adams@email.com',
        77000.00,
        '2022-03-18'
    ),
    (
        'Sophia',
        'Baker',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'Customer Support'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Technical Support'
        ),
        'sophia.baker@email.com',
        58000.00,
        '2020-11-11'
    ),
    (
        'Thomas',
        'Carter',
        (
            SELECT department_id
            FROM departments
            WHERE
                department_name = 'HR'
        ),
        (
            SELECT team_id
            FROM teams
            WHERE
                team_name = 'Recruitment'
        ),
        'thomas.carter@email.com',
        64000.00,
        '2021-08-25'
    );

DROP table employees;

DROP TABLE departments

DROP TABLE teams

/*🔹 Basic Queries
1.Retrieve all employees, teams and departments from the employees, teams and departments's table.
2.Get the first name and salary of all employees.
3.Retrieve employees from the "Engineering" department.
4.Retrieve employees from the 'Software Development' team .
5.Retrieve employees from the "HR" department and 'Recruitment' team .
6.Find employees hired after the year 2019.
7.Get employees with a salary greater than 60,000.
*/

-- 1
SELECT * from employees;

SELECT * from departments;

SELECT * FROM teams;

-- 2
SELECT first_name, salary from employees;

-- 3
SELECT *
FROM employees e
    JOIN departments d on e.department_id = d.department_id
WHERE
    d.department_name = 'Engineering';

-- 4
SELECT *
from employees e
    JOIN teams t on t.team_id = e.team_id
WHERE
    t.team_name = 'Software Development';

--5. Retrieve employees from the "HR" department and 'Recruitment' team .
SELECT *
FROM
    employees e
    JOIN departments d on d.department_id = e.department_id
    JOIN teams t on t.team_id = e.team_id
WHERE
    d.department_name = 'HR'
    AND t.team_name = 'Recruitment'

-- 6.Find employees hired after the year 2019.
SELECT * FROM employees WHERE EXTRACT( YEAR FROM hire_date ) > 2019

-- 7.Get employees with a salary greater than 60,000.
SELECT * FROM employees WHERE salary > 60000;

/*
🔹 Intermediate Queries
8.Get the total number of employees.
9.Find the highest-paid employee.
10.List employees in order of hire date (oldest first).
11.Find employees whose first name starts with 'A'.
12.Get the average salary of all employees.
*/

-- 8.Get the total number of employees.
SELECT COUNT(*) as total_employee from employees;

-- 9.Find the highest-paid employee.
SELECT *
FROM employees
WHERE
    salary = (
        SELECT max(salary)
        from employees
    )

-- 10.List employees in order of hire date (oldest first).
SELECT * from employees ORDER BY hire_date ASC;

-- 11.Find employees whose first name starts with 'A'.
SELECT * FROM employees WHERE first_name LIKE 'A%';

-- 12.Get the average salary of all employees.
SELECT avg(salary) as average_salary from employees;

/*
🔹 Joins & Aggregations
13.Get all employees along with their department names.
14.Count how many employees are in each department.
15.Find the total salary paid in each department.
16.Get the department with the highest total salary.
17.Retrieve employees who were hired in the last 3 years.

*/

-- 13.Get all employees along with their department names.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.department_id AS emp_department_id,
    e.salary,
    e.hire_date,
    d.department_name
FROM employees e
    JOIN departments d on d.department_id = e.department_id;

SELECT * FROM employees JOIN departments USING (department_id);

-- 14.Count how many employees are in each department.
SELECT
    department_name,
    count(*) as employeePerDepartment
from employees
    JOIN departments USING (department_id)
GROUP BY (department_name);

-- 15.Find the total salary paid in each department.
SELECT department_name, sum(salary) as totalPaid
from employees
    JOIN departments USING (department_id)
GROUP BY (department_name);

-- 16.Get the department with the highest total salary.
SELECT * FROM employees;

SELECT
    department_name,
    sum(salary) as total_salary,
    count(*)
from employees
    JOIN departments USING (department_id)
GROUP BY
    department_name
ORDER BY total_salary DESC
LIMIT 1

-- 17.Retrieve employees who were hired in the last 3 years.
SELECT *
FROM employees
WHERE
    hire_date >= CURRENT_DATE - INTERVAL '3 years';

/*
🔹 Advanced Queries
18.Find the employee(s) with the second-highest salary.
19.Get employees and indicate whether their salary is above or below the average.
20.Delete employees who have a salary lower than 60,000.
21.Update the salary of employees in the "Marketing" department by 10%.
22.Retrieve the department with the most employees.

*/

--18 Find the employee(s) with the second-highest salary.
SELECT * FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 1;

-- 19.Get employees and indicate whether their salary is above or below the average.

DROP VIEW IF EXISTS avg_salary;

CREATE VIEW avg_salary AS
SELECT avg(salary) AS avg_salary
FROM employees;

SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    CASE
        WHEN (
            SELECT avg_salary
            from avg_salary
        ) > salary THEN 'Above Average'
        WHEN (
            SELECT avg_salary
            from avg_salary
        ) = salary THEN 'Average'
        ELSE 'Below Average'
    end as salary_status
from employees;

-- 20.Delete employees who have a salary lower than 60,000.
DELETE FROM employees WHERE salary < 60000

SELECT * FROM departments;
--  21.Update the salary of employees in the "Marketing" department by 10%.
UPDATE employees
SET
    salary = salary * 1.10
FROM departments
WHERE
    employees.department_id = departments.department_id
    AND departments.department_name = 'Marketing';

--  22.Retrieve the department with the most employees.
SELECT department_name, count(*) as total_employee FROM employees
JOIN departments USING(department_id)
GROUP BY department_name
ORDER BY total_employee DESC
LIMIT 1