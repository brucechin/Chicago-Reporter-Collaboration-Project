\set ECHO all

DROP TABLE IF EXISTS data_arrest_load;
-- "ID","Arrest Year","ARREST ID","CHARGE CODE","ARREST EVENT","FIRST NAME","LAST NAME","Middle Initial","AGE","SEX","RACE","CB Number","FBI CODE","HOUR","St Number","DIR","STREET NAME","BEAT","DISTRICT","AREA","ARREST CHARGE ID","STATUTE","STATUE DESCRIPTION","RELEASED FROM LOCKUP","BOND AMT","BOND TYPE","BOND_DATE","PHOTOGRAPHED DATE","ARREST DATE"



CREATE  TABLE data_arrest_load (
    id varchar,
    Arrest_Year VARCHAR,
    ARREST_ID VARCHAR,
    CHARGE_CODE VARCHAR,
    ARREST_EVENT VARCHAR,
    FIRST_NAME VARCHAR,
    LAST_NAME VARCHAR,
    Middle_Initial VARCHAR,
    AGE VARCHAR,
    SEX VARCHAR,
    RACE VARCHAR,
    CB_number VARCHAR,
    FBI_CODE VARCHAR,
    HOUR_ VARCHAR,
    street_number VARCHAR,
    direction VARCHAR,
    STREET_NAME VARCHAR,
    BEAT VARCHAR,
    DISTRICT VARCHAR,
    AREA VARCHAR,
    ARREST_CHARGE_ID VARCHAR, -- is this redundant to charge code? No, because both arise in the same file in many cases
    STATUTE VARCHAR,
    STATUTE_DESCRIPTION VARCHAR,
    RELEASE_date VARCHAR,
    BOND_amount VARCHAR,
    BOND_TYPE VARCHAR,
    BOND_DATE VARCHAR,
    PHOTOGRAPHED_DATE VARCHAR,
    ARREST_DATE VARCHAR);

COPY data_arrest_load FROM '/home/liankeqin/repos/Chicago-Reporter-Collaboration-Project/data_arrest.csv'
    DELIMITER ',' CSV HEADER;



-- fix the blanks
UPDATE data_arrest_load SET beat=NULL WHERE beat='';
UPDATE data_arrest_load SET district=NULL WHERE DISTRICT='';
UPDATE data_arrest_load SET area=NULL WHERE area='';
UPDATE data_arrest_load SET bond_amount=NULL WHERE bond_amount='';
UPDATE data_arrest_load SET arrest_date=NULL WHERE arrest_date='';
UPDATE data_arrest_load SET bond_date=NULL WHERE bond_date='';
UPDATE data_arrest_load SET release_date=NULL WHERE release_date='';
UPDATE data_arrest_load SET photographed_date=NULL WHERE photographed_date='';
UPDATE data_arrest_load SET cb_number=NULL WHERE cb_number='';




DROP TABLE IF EXISTS data_arrest CASCADE;

-- cast all of the variables
SELECT id::integer id ,arrest_year::integer arrest_year,  arrest_id::integer arrest_id, CHARGE_CODE,ARREST_EVENT,
       initcap(first_name) first_name, middle_initial, initcap(last_name) last_name,
       age::integer age, sex, race, cb_number::integer cb_number, fbi_code, hour_::integer hour_,  street_number, direction, street_name,
       beat::integer beat, district::integer district, area::integer area,
       arrest_charge_id, statute, statute_description, release_date::date release_date, bond_amount::float bond_amount, bond_type, bond_date::date bond_date,
       photographed_date::date, arrest_date::date
INTO data_arrest
FROM data_arrest_load;

ALTER TABLE data_arrest ADD PRIMARY KEY(id);


DROP TABLE data_arrest_load;

-- COPY data_arrest(id, arrest_year, arrest_id, charge_code, arrest_event, first_name, middle_initial, last_name, age, sex, race, cb_number, fbi_code, hour_, street_number, direction, street_name, beat, district, area, arrest_charge_id, statute, statute_description, release_date, bond_amount, bond_type, bond_date, photographed_date, arrest_date)
-- TO 'solution/arrests/arrests-output-solution.csv'
-- DELIMITER ',' CSV HEADER;

