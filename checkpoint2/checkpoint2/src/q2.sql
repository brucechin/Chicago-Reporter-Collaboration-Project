-- Tableau Chart #2: What's the distribution of investigation times?

select distinct(allegation_id), end_date - start_date duration from data_officerallegation where end_date - start_date > 0;