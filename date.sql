SHOW timezone;

SELECT now();


CREATE TABLE timeZ(

    ts TIMESTAMP WITHOUT TIME ZONE,
    tsz TIMESTAMP WITH TIME ZONE
)  

INSERT INTO timeZ VALUES('2024-01-12 10:35:00', '2024-01-12 10:35:00');

SELECT * from timeZ;

SELECT CURRENT_DATE;

SELECT now()::DATE;
SELECT now()::TIME;

SELECT to_char(NOW(),'dd/mm/yyyy')

SELECT to_char(NOW(),'DD');

SELECT to_char(NOW(),'MM');

SELECT CURRENT_DATE-INTERVAL'20 year 5 month';

SELECT *, age(CURRENT_DATE,dob) from students;

SELECT extract(year from '2000-01-18'::date);

SELECT '1'::BOOLEAN;

