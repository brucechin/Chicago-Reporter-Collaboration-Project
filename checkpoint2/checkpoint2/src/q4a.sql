-- Interactive Visualization #1: What's the influence of victim race on the last two distributions? Implementation details: Add an interactive dimension "victim race" to Tableau Charts #2 and #3.**

-- Chart4A

select distinct(data_officerallegation.allegation_id), race, end_date - start_date duration from data_officerallegation inner join data_victim dv on data_officerallegation.allegation_id = dv.allegation_id where race != '' and end_date - start_date > 0;