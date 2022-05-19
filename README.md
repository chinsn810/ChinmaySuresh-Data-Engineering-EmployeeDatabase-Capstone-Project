# DATA ENGINEERING MODEL ANALYSIS

#### Creation of an end-to-end data pipeline and data analysis based on database of employees from 1980s-1995s belonging to a big corporation.

### TECHNOLOGY STACK:
#### RDBMS, MySQL, SQOOP, HDFS, HIVE, IMPALA, SPARK, SparkML, LINUX

## STEPS:
1)	Data Ingestion which involves transfer of data from Created Tables in RDBMS (MySQL) to HDFS as AVRO files using SQOOP.

2)	Load AVRO data files into created Hive tables.

3)	Establish connection between PySpark and Hive metastore.

4)	Data Analysis with Impala (ImpalaQL) and PySpark (Spark SQL).

5)	Building a ML classification model in PySpark to predict whether a employee will leave or not.
Then create a ML pipeline encompassing all the process/stages which includes the transformation processes i.e, String Indexing, Vector Assembling, Classifier

6)	Creating an end-to-end pipeline
    
