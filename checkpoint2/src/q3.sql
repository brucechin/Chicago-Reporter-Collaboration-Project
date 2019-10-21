-- Tableau Chart #3: What's the frequency of each disciplinary action?

select final_outcome, count(*) freq from data_officerallegation group by final_outcome order by freq desc ;