 
 Create database examdb;

 CREATE TABLE employee(
	emp_id INT NOT NULL,
	emp_name VARCHAR(15),
	Department VARCHAr(20),
	DOB DATE,
	Marital_status CHAR(1),
	Job_title VARCHAR(15),
	Hiredate DATE,
	salary FLOAT
	);
	--to view table
	SELECT * FROM employee;
--Adding a primary key constraint to emp_id field
ALTER TABLE employee
ADD CONSTRAINT pk_emp_id PRIMARY KEY (emp_id); 

--1b. WAQ to modify the length of a field emp_name varchar(25);

--Modifying the length of the emp_name field
ALTER TABLE employee
alter COLUMN emp_name VARCHAR(25);

--1d. WAQ to insert 
INSERT into employee values
(2,'Narayan KShrestha','Politics','10/15/1965','N','Politician','10/25/1999',500000),
(3,'Sonu Nigam','Music','10/15/1969','N','Singer','10/25/1985',5000000),
(4,'Dr. Upendra Devkota','Health','10/15/1955','Y','Doctor','10/25/1977',500000),
(5,'Dr. A. Kalam ','Science','10/15/1945','N','Scientist','10/25/1969',50000000),
(6,'Dr. Bhola Rijal','Health','10/15/1960','N','Doctor','10/25/1989',400000),
(7,'Mahabir Pun','Science','10/15/1965','Y','Scientist','10/25/2009',500000);

DELETE FROM employee 
WHERE emp_id = 2;


select * from employee



delete department from employee;

--1f. WQA to add the new column called gender varchar(10);
--Adding a new column called gender
 ALTER TABLE employee
 ADD gender VARCHAr(10);

 --Updating the gender for a specific employee
 UPDATE employee
 SET gender = 'Male'
 WHERE emp_id in (3,4,5,6);

 UPDATE employee
 SET gender = 'Female'
 WHERE emp_id in (2,7);

 select * from employee

 --2.WAQ to show the employee name, and their job title .
 select emp_name,job_title from employee;

 --3.WAQ to show the smallest salary of them.

 select min(salary) as minimun_salary from employee

 --show all fields for the employee with the smallest salary
 SELECT emp_id, emp_name, salary
 FROM employee
 WHERE salary=(SELECT MIN(salary) FROM employee);

 --Show names,IDs, and annual

 SELECT emp_id,emp_name,salary * 12 AS Annual_salary
 FROM employee;

 --5. Show  the average salary of the employee.
 SELECT avg(salary) AS average_salary FROM employee;

 SELECT emp_id, emp_name, salary
 FROM employee
 WHERE salary<(SELECT Avg(salary) FROM employee);

  SELECT sum(salary) As total_salary from employee;

  SELECT count(emp_id) AS total_employee from employee;

  SELECT * from employee order by salary desc;

    SELECT * from employee order by emp_id desc;

  SELECT * from employee order by salary asc;

  SELECT * from employee order by DOB desc;

  --ALTER TABLE employee
  --RENAME TO emp;


  --CREATE USER VS IDENTIFIED BY 1234;

  --CREATE ROLE VSAdmin;

  --GRANT SELECT,INSERT, UPDATE ON emp TO  role_VsAdmin;

  --GRANT VSAdmin TO VS;

  CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    DOB DATE,
    salary DECIMAL(10, 2)
);

SELECT * FROM emp;

alter table emp
add constraint dipti primary key(emp_id)

ALTER table emp
Add department_id int;

create table department(
dep_id int primary key,
dep_name Varchar(12)
);

insert into department values (1, 'account')

 Insert into emp(emp_id,name,address,DOB,salary) values(1,'dipti','bkt','10/15/1987',8000)
  Insert into emp(emp_id,name,address,DOB,salary) values(2,'rusma','ktm','9/15/1987',9000)
   Insert into emp(emp_id,name,address,DOB,salary) values(3,'rabina','ktm','8/15/1987',10000)
    Insert into emp(emp_id,name,address,DOB,salary) values(4,'udit','bkt','7/15/1987',11000)
	
	ALTER TABLE emp ADD CONSTRAINT fk_name FOREIGN KEY
	(Department_id) REFERENCES department(dep_id);

	select * from emp;








-- Inserting rows



select * from employee;





 