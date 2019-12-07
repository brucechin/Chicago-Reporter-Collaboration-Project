-- Tableau Chart #1: What's the percentage of allegations sustained across victim races?

select race, 100 * AVG(CASE WHEN final_finding = 'SU' THEN 1 ELSE 0 END) AS percent_sustained from data_officerallegation inner join data_victim on data_officerallegation.allegation_id = data_victim.allegation_id group by race;