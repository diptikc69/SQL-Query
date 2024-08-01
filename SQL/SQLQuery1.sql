CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    DOB DATE,
    salary DECIMAL(10, 2),
);

select * from emp;
ALTER TABLE emp
ADD CONSTRAINT pk_emp PRIMARY KEY (emp_id),
ADD CONSTRAINT chk_salary CHECK (salary > 10000);


