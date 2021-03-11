CREATE TABLE department
(dept_nbr       INTEGER         NOT NULL,
dept_name       VARCHAR(20)     NOT NULL,
dept_location   VARCHAR(15)     NOT NULL,
PRIMARY KEY (dept_nbr)
);

CREATE TABLE employee
(emp_nbr        INTEGER         NOT NULL,
emp_first_name  VARCHAR(10)     NOT NULL,
emp_last_name   VARCHAR(20)     NOT NULL,
emp_job_title   VARCHAR(30)     ,
mgr_nbr         INTEGER         ,
hire_date       DATE            ,
salary          DECIMAL(10,2)   ,
dept_nbr        INTEGER         ,
PRIMARY KEY (emp_nbr),
FOREIGN KEY (dept_nbr) REFERENCES department (dept_nbr)
);

