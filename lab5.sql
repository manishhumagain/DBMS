CREATE USER 'John' IDENTIFIED BY 'John@123';

GRANT SELECT
ON Students
TO 'John';

SELECT *from Students;

GRANT INSERT
ON Students
TO 'John';

INSERT INTO Students (student_Id,name,email,phone_number) VALUES(
    10,'John','john@example.com',0987654321
)

SELECT *from Students;

REVOKE SELECT
ON Students
FROM 'John';


