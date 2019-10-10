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

