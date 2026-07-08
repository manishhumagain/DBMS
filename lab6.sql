CREATE DATABASE security_lab;
USE security_lab;
CREATE TABLE students (
student_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
enrollment_date DATE NOT NULL
);
CREATE TABLE courses (
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100) NOT NULL,
instructor VARCHAR(100),
credits INT NOT NULL
);
CREATE TABLE enrollments (
enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT NOT NULL,
course_id INT NOT NULL,
grade VARCHAR(2),
enrollment_date DATE NOT NULL,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'AppPass123!';

CREATE USER 'report_user'@'%' IDENTIFIED BY 'ReportPass456!';

ALTER USER 'app_user'@'localhost' IDENTIFIED BY 'NewSecurePass789!';

-- Lock the account
ALTER USER 'report_user'@'%' ACCOUNT LOCK;
-- Unlock the account
ALTER USER 'report_user'@'%' ACCOUNT UNLOCK;

DROP USER 'app_user'@'localhost';

GRANT SELECT ON security_lab.students TO 'app_user'@'localhost';

