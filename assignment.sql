-- Active: 1741862659758@@127.0.0.1@5432@company_db
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY  NOT NULL,
    department_name VARCHAR(100) NOT NULL
)

INSERT INTO departments (department_name) VALUES
    ('Human Resources'),
    ('Finance'),
    ('Marketing'),
    ('IT'),
    ('Sales'),
    ('Operations'),
    ('Customer Support'),
    ('Legal'),
    ('Research & Development'),
    ('Administration');


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY NOT NULL,
    employee_name VARCHAR(50),
    age INT,
    email VARCHAR(200),
    department_id INT NOT NULL,
    salary NUMERIC,
    status VARCHAR(20),
    Foreign Key (department_id) REFERENCES departments (department_id)
)

INSERT INTO employees (employee_name, age, email, department_id, salary, status) VALUES
('Alice Johnson', 28, 'alice.johnson@email.com', 1, 65000, 'Active'),
('Bob Smith', 35, 'bob.smith@email.com', 2, 72000, 'Inactive'),
('Charlie Brown', 42, 'charlie.brown@email.com', 3, 85000, 'Active'),
('David Lee', 30, 'david.lee@email.com', 4, 60000, 'Active'),
('Eve Turner', 25, 'eve.turner@email.com', 5, 58000, 'Probation'),
('Frank White', 38, 'frank.white@email.com', 6, 92000, 'Active'),
('Grace Adams', 31, 'grace.adams@email.com', 7, 69000, 'Active'),
('Henry Wilson', 27, 'henry.wilson@email.com', 8, 57000, 'Inactive'),
('Isabel Martinez', 29, 'isabel.martinez@email.com', 9, 61000, 'Active'),
('Jack Nelson', 40, 'jack.nelson@email.com', 10, 98000, 'Active'),
('Kevin Parker', 33, 'kevin.parker@email.com', 1, 74000, 'Active'),
('Laura Scott', 36, 'laura.scott@email.com', 2, 77000, 'Inactive'),
('Michael Reed', 45, 'michael.reed@email.com', 3, 91000, 'Probation'),
('Nancy Evans', 39, 'nancy.evans@email.com', 4, 62000, 'Active'),
('Oliver Bennett', 26, 'oliver.bennett@email.com', 5, 59000, 'Active'),
('Paula Fisher', 34, 'paula.fisher@email.com', 6, 75000, 'Inactive'),
('Quincy Rogers', 29, 'quincy.rogers@email.com', 7, 67000, 'Probation'),
('Rachel Howard', 31, 'rachel.howard@email.com', 8, 73000, 'Active'),
('Samuel Edwards', 28, 'samuel.edwards@email.com', 9, 56000, 'Active'),
('Tina Morris', 37, 'tina.morris@email.com', 10, 81000, 'Inactive'),
('Ulysses Young', 41, 'ulysses.young@email.com', 1, 88000, 'Active'),
('Victoria Hall', 30, 'victoria.hall@email.com', 2, 64000, 'Probation'),
('Walter Green', 32, 'walter.green@email.com', 3, 71000, 'Active'),
('Xavier Brooks', 27, 'xavier.brooks@email.com', 4, 55000, 'Inactive'),
('Yvonne Collins', 35, 'yvonne.collins@email.com', 5, 72000, 'Active'),
('Zachary Powell', 38, 'zachary.powell@email.com', 6, 89000, 'Active'),
('Amy Carter', 42, 'amy.carter@email.com', 7, 91000, 'Inactive'),
('Brian Murphy', 33, 'brian.murphy@email.com', 8, 78000, 'Active'),
('Catherine Foster', 29, 'catherine.foster@email.com', 9, 60000, 'Probation'),
('Daniel Simmons', 44, 'daniel.simmons@email.com', 10, 85000, 'Active'),
('Elena Richardson', 26, 'elena.richardson@email.com', 1, 56000, 'Inactive'),
('Felix Cooper', 31, 'felix.cooper@email.com', 2, 69000, 'Active'),
('Georgia Mitchell', 40, 'georgia.mitchell@email.com', 3, 80000, 'Active'),
('Harold Bryant', 39, 'harold.bryant@email.com', 4, 77000, 'Probation'),
('Isabella Harris', 28, 'isabella.harris@email.com', 5, 62000, 'Inactive'),
('Jacob Watson', 36, 'jacob.watson@email.com', 6, 93000, 'Active'),
('Kelly Sanders', 34, 'kelly.sanders@email.com', 7, 66000, 'Active'),
('Liam Peterson', 29, 'liam.peterson@email.com', 8, 71000, 'Probation'),
('Megan Flores', 41, 'megan.flores@email.com', 9, 75000, 'Inactive'),
('Nathaniel Barnes', 27, 'nathaniel.barnes@email.com', 10, 58000, 'Active'),
('Olivia Hayes', 32, 'olivia.hayes@email.com', 1, 64000, 'Active'),
('Patrick Russell', 37, 'patrick.russell@email.com', 2, 78000, 'Inactive'),
('Quinn Bennett', 45, 'quinn.bennett@email.com', 3, 85000, 'Active'),
('Rebecca King', 33, 'rebecca.king@email.com', 4, 72000, 'Probation'),
('Steven Diaz', 29, 'steven.diaz@email.com', 5, 61000, 'Active'),
('Tamara Owens', 38, 'tamara.owens@email.com', 6, 87000, 'Inactive'),
('Umar Torres', 31, 'umar.torres@email.com', 7, 73000, 'Active'),
('Vanessa Hughes', 26, 'vanessa.hughes@email.com', 8, 54000, 'Probation'),
('William Scott', 35, 'william.scott@email.com', 9, 77000, 'Active');

 
 

SELECT * from employees;


--1. Retrieve all employees with a salary greater than 60000
SELECT * from  employees
WHERE salary> 60000;