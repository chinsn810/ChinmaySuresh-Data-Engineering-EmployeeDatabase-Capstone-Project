CREATE DATABASE capst1chin;

USE capst1chin;

CREATE EXTERNAL TABLE title (
title_id STRING,
title STRING)
STORED AS AVRO
LOCATION "/user/anabig114247/titles";

CREATE EXTERNAL TABLE emps (                                                                                                                                            
emp_no INT,                                                                                                                                                             
emp_title_id STRING,                                                                                                                                                    
birth_date STRING,                                                                                                                                                      
first_name STRING,                                                                                                                                                      
last_name STRING,                                                                                                                                                       
sex STRING,                                                                                                                                                             
hire_date STRING,                                                                                                                                                       
no_of_projects INT,                                                                                                                                                     
Last_performance_rating STRING,                                                                                                                                         
lefts INT,                                                                                                                                                              
Last_date STRING)                                                                                                                                                       
STORED AS AVRO                                                                                                                                                          
LOCATION "/user/anabig114247/empl"                                                                                                                                      
TBLPROPERTIES ('avro.schema.url'='/user/anabig114247/new1/empl.avsc');

CREATE TABLE emp as                                                                                                                                                     
SELECT emp_no, emp_title_id, CAST(from_unixtime(unix_timestamp(birth_date, 'dd-MM-yyyy')) AS timestamp) birth_date, first_name, last_name, sex, 
CAST(from_unixtime(unix_timestamp(hire_date, 'dd-MM-yyyy')) AS timestamp) hire_date, no_of_projects, Last_performance_rating, lefts, 
CAST(from_unixtime(unix_timestamp(Last_date, 'dd-MM-yyyy')) AS timestamp) last_date from emps;

CREATE EXTERNAL TABLE salary (
emp_no INT,
salary BIGINT)
STORED AS AVRO 
LOCATION "/user/anabig114247/salaries";

CREATE EXTERNAL TABLE dept (
dept_no STRING, 
dept_name STRING)
STORED AS AVRO 
LOCATION "/user/anabig114247/depts";

CREATE EXTERNAL TABLE depts_emp (
emp_no INT,
dept_no STRING)
STORED AS AVRO 
LOCATION "/user/anabig114247/dept_emp";

CREATE EXTERNAL TABLE dept_man (
dept_no STRING, 
emp_no INT)
STORED AS AVRO 
LOCATION "/user/anabig114247/depts_man";
