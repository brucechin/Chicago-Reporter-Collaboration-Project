**Tableau Chart #1: What's the percentage of allegations sustained across victim races?**

select data_victim.allegation_id, race, final_finding from data_officerallegation inner join data_victim on data_officerallegation.allegation_id = data_victim.allegation_id


**Tableau Chart #2: What's the distribution of investigation times?**

select allegation_id, end_date - start_date duration from data_officerallegation;

**Tableau Chart #3: What's the frequency of each disciplinary action?**

select final_outcome, count(*) freq from data_officerallegation group by final_outcome order by freq desc ;