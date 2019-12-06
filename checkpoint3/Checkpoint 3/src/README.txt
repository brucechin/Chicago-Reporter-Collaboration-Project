README for Checkpoint #3
JaCoya Thompson, Lianke Qin and Victor S. Bursztyn.
---------------------------------------
Pre-requisites to create new dataset with integrated data:

1. From settlement-cr-core-tables.sql 2 tables are downloaded in csv format    format.

settlement=# \copy (SELECT * FROM cases_payment) to 'payee.csv' with csv

settlement=# \copy (SELECT id, victims, case_no, judge  FROM cases_case) to 'caseinfo.csv' with csv

2.  From cpdb.sql 1 table is downloaded in csv format

cpdb=# \copy (SELECT * FROM data_victim) to 'C:\tmp\payeeinformation.csv' with csv


3. Python code used to match data between 3 different files create new data set (victim_results.csv)


4. CSV file (victim_results.csv) is converted to SQL file (victim_results.sql)   
---------------------------------------
Pre-requisites to run queries:

Questions #1, #2, #3, and #4 require loading the victim_results.sql dataset.

psql victim < victim_results.sql

______________________________________
Questions and Queries:
Question #1: What's the average compensation amount by victim race?

To answer this question, execute the query in "src/q1.sql" or copy and paste the query below.

Query: 
SELECT race, ROUND(AVG(payment),1) AS "Average" FROM victim_results GROUP BY race;


Question #2: What's the average compensation amount by allegation type?

To answer this question execute the query in "src/q2.sql" or copy and paste the query below.

Query: 
SELECT primary_cause, ROUND(AVG(payment),1) AS "Average" FROM victim_results GROUP BY primary_cause;



Question #3: What's the average compensation amount by victim race and allegation type combined?

To answer this question, execute the query in "src/q3.sql" or copy and paste the query below.

Query: SELECT race, primary_cause, avg(payment) FROM victim_results GROUP BY race, primary_cause ORDER BY race  ASC;



Question #4: What's the average compensation amount by victim race, allegation type and case's judge combined?

To answer this question, execute the query in "src/q4.sql" or copy and paste the query below.

Query: SELECT race, primary_cause, judge, COUNT(*), avg(payment) FROM victim_results GROUP BY race, primary_cause, judge  ORDER BY avg DESC;

---------------------------------------

Analysis of our Findings:

Please refer to "findings.pdf."

---------------------------------------

Contact: JacoyaThompson2020@u.northwestern.edu, v-bursztyn@u.northwestern.edu and lianke.qin@northwestern.edu