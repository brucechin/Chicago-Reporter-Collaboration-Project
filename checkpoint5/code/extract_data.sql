
--- question 1 data retrieval
select data_victim.allegation_id, race, allegation_category_id, investigator_id, current_star, end_date - start_date duration
from data_victim inner join data_officerallegation d on data_victim.allegation_id = d.allegation_id
    inner join data_investigatorallegation di on d.allegation_id = di.allegation_id;


--question 2 data retrieval
select data_victim.allegation_id, race, allegation_category_id, investigator_id, current_star, final_outcome
from data_victim inner join data_officerallegation d on data_victim.allegation_id = d.allegation_id
    inner join data_investigatorallegation di on d.allegation_id = di.allegation_id;

--question 3 data retrieval

-- we suppose you have created the case_map before
-- CREATE TABLE case_map(
--     case_id INTEGER REFERENCES cases_ipracase(id),
--     allegation_id INTEGER REFERENCES data_allegation(id));

select ci.id case_id, da.id allegation_id into case_map from cases_ipracase ci inner join data_allegation da on ci.cr_no::varchar = da.crid;

create view case_allegation_settlement as (select cases_payment.case_id, allegation_id, sum(payment) settlement_num from cases_payment inner join case_map on cases_payment.case_id = case_map.case_id group by cases_payment.case_id, case_map.allegation_id);

select data_victim.allegation_id, race, cases_case.primary_cause, judge, settlement_num
from data_victim inner join data_officerallegation d on data_victim.allegation_id = d.allegation_id
    inner join data_investigatorallegation di on d.allegation_id = di.allegation_id
    inner join case_allegation_settlement cas on d.allegation_id = cas.allegation_id
    inner join cases_case on cases_case.id = cas.case_id;

--question 4 data retrieval

select public.data_allegation.id allegation_id, crid, allegation_name, category, final_outcome, d.race investigator_race, dv.race victim_race  from data_allegation
    inner join data_victim dv on data_allegation.id = dv.allegation_id
    inner join data_investigatorallegation di on data_allegation.id = di.allegation_id
    inner join data_investigator d on di.investigator_id = d.id
    inner join data_officerallegation doa on data_allegation.id = doa.allegation_id
    inner join data_allegationcategory da on doa.allegation_category_id = da.id;

-- use the crid above to link challenge3 data document_text