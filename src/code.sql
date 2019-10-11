/*

SQL statements for Checkpoint-1

REMINDER : You should execute the code line by line;

*/

/*

Question 1 : what's the relation between average number of complaints received per year and the age of a police officer? 
older - >more complaints or something else?

*/

CREATE view allegation_per_age AS SELECT birth_year, count(birth_year) allegation_count FROM data_officer WHERE id in (SELECT officer_id FROM data_officerallegation) GROUP BY birth_year ORDER BY birth_year;

CREATE view officers_per_age AS SELECT birth_year, count(birth_year) officers_count FROM data_officer GROUP BY birth_year ORDER BY birth_year;

SELECT allegation_per_age.birth_year, allegation_count, officers_count FROM allegation_per_age INNER JOIN officers_per_age on allegation_per_age.birth_year = officers_per_age.birth_year;

SELECT allegation_per_age.birth_year, allegation_count, officers_count, cast(allegation_count as float)/cast(officers_count as float) allegation_frequency FROM allegation_per_age INNER JOIN officers_per_age on allegation_per_age.birth_year = officers_per_age.birth_year;


/*

Question 2 : Do those who receive no complaints get more awards ?

*/

SELECT count(*) FROM data_award WHERE EXISTS (SELECT officer_id FROM data_officerallegation WHERE data_award.officer_id = officer_id);
-- number of awards received by those who were complained  : 656116

SELECT count(distinct officer_id) FROM data_officerallegation;
-- number of officers who receive 1 or more complaints : 22813

SELECT count(*) FROM data_award WHERE not EXISTS (SELECT officer_id FROM data_officerallegation WHERE data_award.officer_id = officer_id);
-- number of awards received by those who never receive complaints : 40073

SELECT count(*) FROM data_officer WHERE not EXISTS (SELECT officer_id FROM data_officerallegation WHERE data_officer.id = officer_id);
-- number of officers who never receive complaints : 10858


/*

Question 3 : what's the average number of complaints received per year and officer?

*/

SELECT count(*) FROM data_officerallegation;
-- total complaints : 244455

SELECT max(start_date) FROM data_officerallegation;
--     max     
-- ------------
--  2018-02-23

SELECT min(start_date) FROM data_officerallegation;
--     min     
-- ------------
--  1967-10-21

-- so the dataset records the complaints in the past 50 years

/*

Question 4 : what's the average number of complaints FROM different racial officers per year?

*/

SELECT race, count(race) cnt FROM data_officer GROUP BY race ORDER BY cnt desc;
-- distribution of all the officers
--               race              |  cnt  
-- --------------------------------+-------
--  White                          | 20671
--  Black                          |  7630
--  Hispanic                       |  4579
--  Asian/Pacific                  |   539
--  Unknown                        |   190
--  Native American/Alaskan Native |    62

SELECT race, count(race) cnt FROM data_officer WHERE data_officer.id in (SELECT officer_id FROM data_officerallegation) GROUP BY race ORDER BY cnt desc;
-- distribution of officers who received 1 or more complaints
--               race              |  cnt  
-- --------------------------------+-------
--  White                          | 13373
--  Black                          |  5697
--  Hispanic                       |  3290
--  Asian/Pacific                  |   385
--  Native American/Alaskan Native |    53
--  Unknown                        |    15


SELECT race, sum(cnt) FROM allegation_per_officer INNER JOIN data_officer on allegation_per_officer.officer_id = data_officer.id GROUP BY race ORDER BY sum(cnt) desc;
-- number of complaints received by officers of each race
--               race              |  sum   
-- --------------------------------+--------
--  White                          | 134710
--  Black                          |  66854
--  Hispanic                       |  38342
--  Asian/Pacific                  |   3808
--  Native American/Alaskan Native |    648
--  Unknown                        |     93

SELECT race, sum(count) cnt FROM data_racepopulation GROUP BY race ORDER BY cnt desc;
-- race distribution of the residents
--       race       |   cnt   
-- -----------------+---------
--  White           | 1729593
--  Black           | 1712474
--  Hispanic        | 1569483
--  Asian           |  305590
--  Other           |   91342
--  Native American |    4097

SELECT race, count(race) cnt FROM data_complainant GROUP BY race ORDER BY cnt desc;
-- race distribution of the residents who complained to Chicago PD
--               race              |  cnt  
-- --------------------------------+-------
--  Black                          | 50322
--  White                          | 17961
--  Hispanic                       |  8494
--                                 |  8248
--  Asian/Pacific Islander         |   712
--  Native American/Alaskan Native |   109


/*

Question 5 : what's the average income of those officers who have received complaints and the  average salary of the whole Chicago police officers?

*/


SELECT avg(salary) FROM data_salary WHERE officer_id not in (SELECT officer_id FROM data_officerallegation);
-- 75726

SELECT avg(salary) FROM data_salary WHERE officer_id in (SELECT id FROM data_officer WHERE not EXISTS (SELECT officer_id FROM data_officerallegation WHERE data_officer.id = officer_id));
-- 66480
    
SELECT avg(salary) FROM data_salary;
-- 75291




/*

codes for extra thoughts

*/

-- see which locations have higher frequency of complaints
--                 location                  |  cnt  
-- --------------------------------------------+-------
--                                             | 70468
--  Public Way - Other                         | 61637
--  Private Residence                          | 21096
--  Police Building                            | 11480
--  Other Business Establishment               |  2686
--  Public Property - Other                    |  2308
--  Other Private Premise                      |  1728
--  XX                                         |  1438
--  Other Police Property                      |  1222
--  Lockup Facility                            |  1104
--  Food Sales/Restaurant                      |   739
--  Street                                     |   704
--  Police Communications System               |   562
--  Tavern/Liquor Store                        |   519
--  Public Transportation Veh./Facility        |   503
--  Police Facility/Veh Parking Lot            |   429
--  Airport                                    |   417
--  Park District Property                     |   408
--  Court Room                                 |   337
--  20                                         |   329
--  Residence                                  |   281
--  Expressway/Interstate System               |   229
--  Apartment                                  |    91
--  Sidewalk                                   |    91
--  Other                                      |    66
--  Jail / Lock-Up Facility                    |    57
--  Cpd Automotive Pound Facility              |    56
--  Police Maintenance Facility                |    46
--  Residential Yard (Front/Back)              |    46
--  Government Building/Property               |    42
--  Alley                                      |    40
--  014                                        |    37
--  Waterway. Incl Park District               |    30
--  Parking Lot/Garage(Non.Resid.)             |    27
--  Residence Porch/Hallway                    |    27
--  Commercial / Business Office               |    26
--  Restaurant                                 |    24
--  Hospital Building/Grounds                  |    23
--  Park Property                              |    18
--  School, Public, Building                   |    18
--  Bar Or Tavern                              |    17
--  Gas Station                                |    17
--  Highway/Expressway                         |    12
--  Vehicle Non-Commercial                     |    12
--  21                                         |    10


-- see the bureau pyramid of Chicago PD
SELECT rank, count(rank) FROM data_officer GROUP BY rank ORDER BY count(rank) ;
--               rank               | count 
-- ---------------------------------+-------
--  Director Of Caps                |     1
--  Assistant Superintendent        |     1
--  Superintendent'S Chief Of Staff |     3
--  Superintendent Of Police        |     6
--  First Deputy Superintendent     |     8
--  Deputy Superintendent           |    23
--  Other                           |    24
--  Assistant Deputy Superintendent |    25
--  Chief                           |    29
--  Deputy Chief                    |    61
--  Commander                       |   136
--  Captain                         |   327
--  Field Training Officer          |   341
--  Lieutenant                      |   960
--                                  |  2198
--  Detective                       |  3067
--  Sergeant                        |  3495
--  Police Officer                  | 22966


-- see number of complaints received FROM different rank of officers
SELECT rank, count(rank) FROM data_officer WHERE id in (SELECT officer_id FROM data_officerallegation) GROUP BY rank ORDER BY count(rank);
--               rank               | count 
-- ---------------------------------+-------
--  Assistant Superintendent        |     1
--  Superintendent'S Chief Of Staff |     1
--  Director Of Caps                |     1
--  First Deputy Superintendent     |     5
--  Superintendent Of Police        |     6
--  Other                           |    10
--  Assistant Deputy Superintendent |    14
--  Deputy Superintendent           |    15
--  Chief                           |    24
--  Deputy Chief                    |    50
--                                  |    93
--  Commander                       |   121
--  Captain                         |   211
--  Field Training Officer          |   302
--  Lieutenant                      |   718
--  Detective                       |  2316
--  Sergeant                        |  2704
--  Police Officer                  | 16221


-- see if the complaints received frequency among different ranks
CREATE view officer_rank AS SELECT rank, count(rank) FROM data_officer GROUP BY rank ORDER BY count(rank) ;

CREATE view officer_rank AS SELECT rank, count(rank) FROM data_officer GROUP BY rank ORDER BY count(rank) ;

SELECT officer_rank.rank, officer_rank.count off_cnt, allegation_rank.count all_cnt,cast(allegation_rank.count as float)/cast(officer_rank.count as float) ratio FROM officer_rank INNER JOIN allegation_rank on officer_rank.rank = allegation_rank.rank;
--               rank               | off_cnt | all_cnt |       ratio        
-- ---------------------------------+---------+---------+--------------------
--  Director Of Caps                |       1 |       1 |                  1
--  Assistant Superintendent        |       1 |       1 |                  1
--  Superintendent'S Chief Of Staff |       3 |       1 |  0.333333333333333
--  Superintendent Of Police        |       6 |       6 |                  1
--  First Deputy Superintendent     |       8 |       5 |              0.625
--  Deputy Superintendent           |      23 |      15 |  0.652173913043478
--  Other                           |      24 |      10 |  0.416666666666667
--  Assistant Deputy Superintendent |      25 |      14 |               0.56
--  Chief                           |      29 |      24 |  0.827586206896552
--  Deputy Chief                    |      61 |      50 |  0.819672131147541
--  Commander                       |     136 |     121 |  0.889705882352941
--  Captain                         |     327 |     211 |  0.645259938837921
--  Field Training Officer          |     341 |     302 |  0.885630498533724
--  Lieutenant                      |     960 |     718 |  0.747916666666667
--                                  |    2198 |      93 | 0.0423111919927207
--  Detective                       |    3067 |    2316 |  0.755135311379198
--  Sergeant                        |    3495 |    2704 |  0.773676680972818
--  Police Officer                  |   22966 |   16221 |  0.706304972568144


create view bad_cops_id as select officer_id, count(officer_id) cnt from data_officerallegation group by officer_id order by cnt desc;

select rank, count(id) from data_officer where id in (select officer_id from bad_cops_id where cnt > 50) group by rank order by count(id) desc;

--          rank          | count 
-- ------------------------+-------
--  Police Officer         |   198
--  Sergeant               |    66
--  Detective              |    23
--  Field Training Officer |     9
--  Lieutenant             |     9
--  Commander              |     4
--  Deputy Chief           |     1
--  Director Of Caps       |     1
