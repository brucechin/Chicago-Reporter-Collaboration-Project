\set ECHO all

-- "ID","CB Number","Arrest Year","First Name","Middle Initial","Last Name","Suffix","Apointed Date","Arrest Date","Officer Role","Star" #Arrest ID

DROP TABLE IF EXISTS data_officerarrest;
CREATE TABLE data_officerarrest (
 id_ varchar,
 cb_number_ varchar,
 arrest_year_ varchar,
 first_name varchar,
 middle_initial varchar,
 last_name varchar,
 suffix_name varchar,
 appointed_date_  varchar,
 arrest_date_  varchar,
 officer_role  varchar,
 star  varchar,
 arrest_id_ varchar);


COPY data_officerarrest FROM '/home/liankeqin/repos/Chicago-Reporter-Collaboration-Project/data_officerarrest.csv'
    DELIMITER ',' CSV HEADER;

-- validate all nulls
UPDATE data_officerarrest SET appointed_date_ = NULL WHERE appointed_date_='';
UPDATE data_officerarrest SET arrest_date_ = NULL WHERE arrest_date_='';
UPDATE data_officerarrest SET cb_number_=NULL WHERE cb_number_='';
UPDATE data_officerarrest SET suffix_name=NULL where suffix_name='';
UPDATE data_officerarrest SET middle_initial=NULL where middle_initial='';
UPDATE data_officerarrest SET star=NULL WHERE star='';
UPDATE data_officerarrest SET arrest_id_=NULL WHERE arrest_id_ = '';




 ALTER TABLE data_officerarrest ADD COLUMN id INTEGER;
 ALTER TABLE data_officerarrest ADD COLUMN cb_number INTEGER;
 ALTER TABLE data_officerarrest ADD COLUMN arrest_year INTEGER;
 ALTER TABLE data_officerarrest ADD COLUMN appointed_date DATE;
 ALTER TABLE data_officerarrest ADD COLUMN arrest_date DATE;
 ALTER TABLE data_officerarrest ADD COLUMN arrest_id INTEGER REFERENCES data_arrest(id);



 UPDATE data_officerarrest SET id=id_::INTEGER, cb_number=cb_number_::INTEGER, arrest_year=arrest_year_::INTEGER,
    appointed_date=appointed_date_::DATE, arrest_date=arrest_date_::DATE, arrest_id=arrest_id_::INTEGER;



-- drop supporting strings
ALTER TABLE data_officerarrest DROP COLUMN id_;
ALTER TABLE data_officerarrest DROP COLUMN cb_number_;
ALTER TABLE data_officerarrest DROP COLUMN arrest_year_;
ALTER TABLE data_officerarrest DROP COLUMN appointed_date_;
ALTER TABLE data_officerarrest DROP COLUMN arrest_date_;
ALTER TABLE data_officerarrest DROP COLUMN arrest_id_;


ALTER TABLE data_officerarrest ADD PRIMARY KEY(id);




CREATE INDEX arrest_year_idx  ON data_officerarrest(arrest_year, cb_number);
CREATE INDEX arr_cb_idx  ON distinct_cbs USING hash(cb_number);
CREATE INDEX off_cb_idx  ON data_officerarrest USING hash(cb_number);








           




-- ALTER TABLE data_officerarrest ADD COLUMN officer_id INTEGER REFERENCES data_officer(id);

-- for data science challenge i
-- COPY data_officerarrest(id, arrest_year, first_name, middle_initial, last_name, suffix_name, officer_role, star, cb_number, appointed_date, arrest_date, arrest_id)   
--    TO '/Users/jennie/teaching/eecs396-496/2019-fall/arrest-data-assignment-ready/solution/arresting-officers/arresting-officers-solution.csv'
--    DELIMITER ',' CSV HEADER;
