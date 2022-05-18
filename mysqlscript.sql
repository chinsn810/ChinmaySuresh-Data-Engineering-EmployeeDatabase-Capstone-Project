-- Login to mysql in shell
-- mysql -u anabig114247 -pBigdata123

-- choose database
use anabig114247;

-- upload all files to local before table creating and loading of data


-- create titles table
CREATE TABLE titles (
title_id VARCHAR(20),
title VARCHAR(20));
LOAD DATA LOCAL INFILE "/home/anabig114247/titles.csv" INTO TABLE titles                                                                                   
               FIELDS TERMINATED BY ',' IGNORE 1 ROWS;


-- create employees table
CREATE TABLE employees (                                                                                                                                         
emp_no INT NOT NULL,                                                                                                                                             
emp_title_id VARCHAR(20) NOT NULL,                                                                                                                               
birth_date VARCHAR(10) NOT NULL,                                                                                                                                 
first_name VARCHAR(20) NOT NULL,                                                                                                                                 
last_name VARCHAR(20) NOT NULL,                                                                                                                                                                                                                                                                                                
sex VARCHAR(20) NOT NULL,                                                                                                                                                                                                                                                                                                       
hire_date VARCHAR(10) NOT NULL,                                                                                                                                                                                                                                                                                                no_of_projects INT NOT NULL,                                                                                                                                                                                                                                                                                                  
Last_performance_rating VARCHAR(20) NOT NULL,                                                                                                                                                                                                                                                                                 
lefts BOOLEAN NOT NULL,                                                                                                                                                                                                                                                                                                      
Last_date VARCHAR(10)                                                                                                                                                                                                                                                                                                           
);                                                                                                                                                                                                                                                        LOAD DATA LOCAL INFILE "/home/anabig114247/employees.csv" INTO TABLE employees                                                                                   
               FIELDS TERMINATED BY ',' IGNORE 1 ROWS;


-- create salaries table
CREATE TABLE salaries (                                                                                                                                                                                                                  
emp_no INT,                                                                                                                                    
salary BIGINT);                                                                                                                                                                               
LOAD DATA LOCAL INFILE "/home/anabig114247/salaries.csv" INTO TABLE salaries
 FIELDS TERMINATED BY ',' IGNORE 1 ROWS;


-- create department table
CREATE TABLE depts (                                                                                                                                   
dept_no VARCHAR(20),                                                                                                                               
dept_name VARCHAR(20));                                                                                                                                                                                                                                                         LOAD DATA LOCAL INFILE "/home/anabig114247/departments.csv" INTO TABLE depts
              FIELDS TERMINATED BY ',' IGNORE 1 ROWS;

--create department-manager table
CREATE TABLE depts_man (                                                                                                                               
dept_no VARCHAR(20),                                                                                                                        
emp_no int);                                                                                                                                                                             
LOAD DATA LOCAL INFILE "/home/anabig114247/dept_manager.csv" INTO TABLE depts_man                                                                              FIELDS TERMINATED BY ',' IGNORE 1 ROWS;

--create department-employees table
CREATE TABLE dept_emp (                                                                                                                        
emp_no int,                                                                                                                            
dept_no VARCHAR(20));                                                                                                                                                                  
LOAD DATA LOCAL INFILE "/home/anabig114247/dept_emp.csv" INTO TABLE dept_emp
              FIELDS TERMINATED BY ',' IGNORE 1 ROWS;
