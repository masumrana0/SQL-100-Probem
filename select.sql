-- select every columen on in the students table
SELECT * from students

-- select only email
SELECT email from students

-- select only student with modify column name
SELECT email as student_email from students

-- retrieve according to age ascending
SELECT * FROM students ORDER BY age ASC;

-- retrieve data in the unique one by using DISTINCT
SELECT DISTINCT country from students;

SELECT blood_group, student_id from students;

-- retrieve data by the specific country name
SELECT * from students age WHERE country = 'CHINA'

SELECT *
FROM students age
WHERE
    grade = 'A'
    and course = 'Computer Science'

SELECT * FROM students WHERE grade = 'A' or grade = 'B';

SELECT * FROM students WHERE age > 18

/*
@Scalar funtions
UPPER() convert a string to uppercase.
LOWER() convert a string to lowercase.
CONCAT() concatenates two or more strings.
LENGTH() Returns the number of characters in a string.
*/

SELECT upper(first_name) from students;

SELECT lower(last_name) from students;

SELECT concat(first_name, ' ', last_name) from students;

SELECT length(first_name) from students;

/*
@Aggregate functions

AVG() calculate the average of a set of values
MAX() return a max value in a set.
MIN() return the minimum value of a set.
SUM() calculates all numbers of total value in a set. 
COUNT() counts the number of rows in a set.
*/

SELECT AVG(AGE) FROM students

SELECT MAX(age) from students;

SELECT MIN(age) FROM students;

SELECT SUM(age) from students;

-- NOT : its retrieve all country students data expect USA.
SELECT * FROM students WHERE NOT country = 'USA'

-- COALESCE : COALESCE handle null value smartly.
SELECT COALESCE(email, 'email not provided') from students;

-- IN
SELECT * FROM students WHERE country IN ('USA', 'Canada') LIMIT 4;

--  NOT IN
SELECT * FROM students WHERE country NOT IN ('USA', 'Canada');

-- BETWEEN
SELECT * FROM students WHERE age BETWEEN 14 AND 20;

-- LIKE
-- '%n': it's means that firstName can be anything but it must be include the latter  is 'n' as required
SELECT * FROM students WHERE first_name LIKE '%n';

SELECT * FROM students WHERE first_name LIKE 'N%';

-- '---f%': means that there must be three characters before 'f', and any number of characters may follow 'f' (including none).
SELECT * FROM students WHERE first_name LIKE '---a%'

-- update data
UPDATE students
set
    email = 'masum.rana@gmail.com'
WHERE
    student_id = 32;


SELECT * FROM students