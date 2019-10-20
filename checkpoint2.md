**Tableau Chart #1: What's the percentage of allegations sustained across victim races?**

select race, 100 * AVG(CASE WHEN final_finding = 'SU' THEN 1 ELSE 0 END) AS percent_sustained from data_officerallegation inner join data_victim on data_officerallegation.allegation_id = data_victim.allegation_id group by race;


**Tableau Chart #2: What's the distribution of investigation times?**

select distinct(allegation_id), end_date - start_date duration from data_officerallegation where end_date - start_date > 0;

**Tableau Chart #3: What's the frequency of each disciplinary action?**

select final_outcome, count(*) freq from data_officerallegation group by final_outcome order by freq desc ;

**Interactive Visualization #1: What's the influence of victim race on the last two distributions? Implementation details: Add an interactive dimension "victim race" to Tableau Charts #2 and #3.**

**Chart4A**
select distinct(data_officerallegation.allegation_id), race, end_date - start_date duration from data_officerallegation inner join data_victim dv on data_officerallegation.allegation_id = dv.allegation_id where race != '' and end_date - start_date > 0;
**Chart 4B**
select distinct(data_officerallegation.allegation_id), race, final_outcome from data_officerallegation inner join data_victim dv on data_officerallegation.allegation_id = dv.allegation_id;
