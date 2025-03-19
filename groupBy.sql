SELECT * from students;

SELECT country,count(*) from students
GROUP BY country;



-- Filter Groups Using Having to show only countyries with average age avove 18
SELECT country, avg(age) from students
GROUP BY country
HAVING avg(age) > 22;


-- Count students Born in Each Year
SELECT age,count(*) from students
GROUP BY age

SELECT dob,extract(year from dob::date) as DateOFYear, count(*) from students
GROUP BY  dob
