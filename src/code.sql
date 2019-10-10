/*

SQL statements for Checkpoint-1

REMINDER : You should execute the code line by line;

*/

/*

Question 1 : what's the relation between average number of complaints received per year and the age of a police officer? 
older - >more complaints or something else?

*/

create view allegation_per_age as select birth_year, count(birth_year) allegation_count from data_officer where id in (select officer_id from data_officerallegation) group by birth_year order by birth_year;

create view officers_per_age as select birth_year, count(birth_year) officers_count from data_officer group by birth_year order by birth_year;

select allegation_per_age.birth_year, allegation_count, officers_count from allegation_per_age inner join officers_per_age on allegation_per_age.birth_year = officers_per_age.birth_year;

select allegation_per_age.birth_year, allegation_count, officers_count, cast(allegation_count as float)/cast(officers_count as float) allegation_frequency from allegation_per_age inner join officers_per_age on allegation_per_age.birth_year = officers_per_age.birth_year;


/*

Question 2 : Do those who receive no complaints get more awards ?

*/

select count(*) from data_award where exists (select officer_id from data_officerallegation where data_award.officer_id = officer_id);
-- number of awards received by those who were complained  : 656116

select count(distinct officer_id) from data_officerallegation;
-- number of officers who receive 1 or more complaints : 22813

select count(*) from data_award where not exists (select officer_id from data_officerallegation where data_award.officer_id = officer_id);
-- number of awards received by those who never receive complaints : 40073

select count(*) from data_officer where not exists (select officer_id from data_officerallegation where data_officer.id = officer_id);
-- number of officers who never receive complaints : 10858


/*

Question 3 : what's the average number of complaints received per year and officer?

*/

select count(*) from data_officerallegation;
-- total complaints : 244455

select max(start_date) from data_officerallegation;
--     max     
-- ------------
--  2018-02-23

select min(start_date) from data_officerallegation;
--     min     
-- ------------
--  1967-10-21

-- so the dataset records the complaints in the past 50 years

/*

Question 4 : what's the average number of complaints from different racial officers per year?

*/

select race, count(race) cnt from data_officer group by race order by cnt desc;
-- distribution of all the officers
--               race              |  cnt  
-- --------------------------------+-------
--  White                          | 20671
--  Black                          |  7630
--  Hispanic                       |  4579
--  Asian/Pacific                  |   539
--  Unknown                        |   190
--  Native American/Alaskan Native |    62

select race, count(race) cnt from data_officer where data_officer.id in (select officer_id from data_officerallegation) group by race order by cnt desc;
-- distribution of officers who received 1 or more complaints
--               race              |  cnt  
-- --------------------------------+-------
--  White                          | 13373
--  Black                          |  5697
--  Hispanic                       |  3290
--  Asian/Pacific                  |   385
--  Native American/Alaskan Native |    53
--  Unknown                        |    15


select race, sum(cnt) from allegation_per_officer inner join data_officer on allegation_per_officer.officer_id = data_officer.id group by race order by sum(cnt) desc;
-- number of complaints received by officers of each race
--               race              |  sum   
-- --------------------------------+--------
--  White                          | 134710
--  Black                          |  66854
--  Hispanic                       |  38342
--  Asian/Pacific                  |   3808
--  Native American/Alaskan Native |    648
--  Unknown                        |     93

select race, sum(count) cnt from data_racepopulation group by race order by cnt desc;
-- race distribution of the residents
--       race       |   cnt   
-- -----------------+---------
--  White           | 1729593
--  Black           | 1712474
--  Hispanic        | 1569483
--  Asian           |  305590
--  Other           |   91342
--  Native American |    4097

select race, count(race) cnt from data_complainant group by race order by cnt desc;
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


select avg(salary) from data_salary where officer_id not in (select officer_id from data_officerallegation);
-- 75726

select avg(salary) from data_salary where officer_id in (select id from data_officer where not exists (select officer_id from data_officerallegation where data_officer.id = officer_id));
-- 66480
    
select avg(salary) from data_salary;
-- 75291




/*

codes for extra thoughts

*/

-- see which locations have higher frequency of complaints
select location, count(location) cnt from data_allegation group by location order by cnt desc;


-- see the bureau pyramid of Chicago PD
select rank, count(rank) from data_officer group by rank order by count(rank) ;
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


-- see number of complaints received from different rank of officers
select rank, count(rank) from data_officer where id in (select officer_id from data_officerallegation) group by rank order by count(rank);
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
create view officer_rank as select rank, count(rank) from data_officer group by rank order by count(rank) ;

create view officer_rank as select rank, count(rank) from data_officer group by rank order by count(rank) ;

select officer_rank.rank, officer_rank.count off_cnt, allegation_rank.count all_cnt,cast(allegation_rank.count as float)/cast(officer_rank.count as float) ratio from officer_rank inner join allegation_rank on officer_rank.rank = allegation_rank.rank;
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
