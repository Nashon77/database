CREATE DATABASE university;

-- Creating schema for student
CREATE SCHEMA IF NOT EXISTS student;
-- Creating table for student
CREATE TABLE IF NOT EXISTS student (
student_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
phone VARCHAR(20),
department_id INT NOT NULL,
CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES department (department_id)
);
-- Creating schema for lecturer
CREATE SCHEMA IF NOT EXISTS lecturer;

-- Creating table for lecturer
CREATE TABLE IF NOT EXISTS lecturer (
lecturer_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
phone VARCHAR(20),
department_id INT NOT NULL,
CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES department (department_id)
);
-- Creating schema for venue
CREATE SCHEMA IF NOT EXISTS venue;

-- Creating table for venue
CREATE TABLE IF NOT EXISTS venue (
venue_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
capacity INT,
location POINT
);
-- Creating schema for department
CREATE SCHEMA IF NOT EXISTS department;

-- Creating table for department
CREATE TABLE IF NOT EXISTS department (
department_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
faculty VARCHAR(50) NOT NULL
);