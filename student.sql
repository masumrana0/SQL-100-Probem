-- Active: 1741862659758@@127.0.0.1@5432@ph

-- `-- CREATE Table students (
-- --     student_id SERIAL PRIMARY KEY,
-- --     first_name VARCHAR(50),
-- --     last_name VARCHAR(50),
-- --     age INTEGER,
-- --     grade CHAR(2),
-- --     course VARCHAR(50),
-- --     email VARCHAR(50),
-- --     dob DATE,
-- --     blood_group VARCHAR(5),
-- --     country VARCHAR(50)
-- -- )`



INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2004-03-15', 'O+', 'USA'),
('Alice', 'Smith', 22, 'B', 'Mathematics', 'alice.smith@example.com', '2002-07-20', 'A-', 'Canada'),
('Bob', 'Johnson', 21, 'C', 'Physics', 'bob.johnson@example.com', '2003-05-10', 'B+', 'UK'),
('Emma', 'Brown', 19, 'A', 'Biology', 'emma.brown@example.com', '2005-08-25', 'AB+', 'Australia'),
('David', 'Wilson', 23, 'B', 'Engineering', 'david.wilson@example.com', '2001-12-14', 'O-', 'Germany'),
('Sophia', 'Garcia', 20, 'C', 'Chemistry', 'sophia.garcia@example.com', '2004-04-30', 'B-', 'Mexico'),
('James', 'Martinez', 22, 'A', 'Economics', 'james.martinez@example.com', '2002-06-05', 'A+', 'France'),
('Olivia', 'Lopez', 21, 'B', 'History', 'olivia.lopez@example.com', '2003-10-18', 'AB-', 'Spain'),
('Michael', 'Harris', 19, 'C', 'Political Science', 'michael.harris@example.com', '2005-09-12', 'O+', 'Italy'),
('Isabella', 'Clark', 23, 'A', 'Psychology', 'isabella.clark@example.com', '2001-11-22', 'A-', 'Brazil'),
('Ethan', 'Lewis', 20, 'B', 'Philosophy', 'ethan.lewis@example.com', '2004-02-28', 'B+', 'India'),
('Mia', 'Walker', 21, 'C', 'Sociology', 'mia.walker@example.com', '2003-07-08', 'AB+', 'Japan'),
('Benjamin', 'Hall', 19, 'A', 'Statistics', 'benjamin.hall@example.com', '2005-05-17', 'O-', 'South Korea'),
('Charlotte', 'Allen', 22, 'B', 'Business', 'charlotte.allen@example.com', '2002-01-25', 'B-', 'China'),
('Daniel', 'Young', 21, 'C', 'Literature', 'daniel.young@example.com', '2003-09-30', 'A+', 'South Africa');


INSERT INTO students (first_name, last_name, age, grade, course, dob, blood_group, country)  
VALUES ('Liam', 'Taylor', 20, 'A', 'Computer Science', '2004-06-12', 'O+', 'USA');


SELECT email as student_email FROM students;