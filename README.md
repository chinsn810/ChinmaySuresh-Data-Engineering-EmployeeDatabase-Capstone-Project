## DATA ENGINEERING CAPSTONE PROJECT

#### Creation of an end-to-end data pipeline and data analysis based on database of employees from 1980s-1995s belonging to a big corporation.

### DATA: 
#### We have 6 csv files based on employee database of more than 10 years:
#### employees.csv, salaries.csv, titles.csv, dept_emp.csv, dept_manager.csv, departments.csv 

### TECHNOLOGY STACK:
#### RDBMS, MySQL, SQOOP, HDFS, HIVE, IMPALA, SPARK, SparkML, LINUX

## STEPS:
1)	Data Ingestion which involves receiving data from Created Tables in RDBMS (MySQL) to and storing in HDFS as AVRO files using SQOOP.
   
   a. upload mysqlscipt.sql to local
   
   b. run the below command to create tables under 
   **$ source /home/anabig114247/create_db.sql**

2)	Create database and tables in Hive, and load AVRO files into the tables.
    hive -f capstone1.hql

3)	Establish connection between PySpark and Hive.

4)	Data Analysis with Impala (ImpalaSQL) and PySpark (Spark SQL) on Hive tables.

5)	Model Building in PySpark to predict whether a employee will leave or not.
Then create a model Pipeline encompassing all the process/stages which includes the transformation processes i.e, String Indexing, Vector Assembling, Classifier

6)	Creating an end-to-end pipeline
