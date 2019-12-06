
--- question 1 data retrieval
select data_victim.allegation_id, race, allegation_category_id, investigator_id, current_star, end_date - start_date duration
from data_victim inner join data_officerallegation d on data_victim.allegation_id = d.allegation_id
    inner join data_investigatorallegation di on d.allegation_id = di.allegation_id;


--question 2 data retrieval
select data_victim.allegation_id, race, allegation_category_id, investigator_id, current_star, disciplined
from data_victim inner join data_officerallegation d on data_victim.allegation_id = d.allegation_id
    inner join data_investigatorallegation di on d.allegation_id = di.allegation_id;

--question 3 data retrieval

-- we suppose you have created the case_map before
-- CREATE TABLE case_map(
--     case_id INTEGER REFERENCES cases_ipracase(id),
--     allegation_id INTEGER REFERENCES data_allegation(id));

select ci.id case_id, da.id allegation_id into case_map from cases_ipracase ci inner join data_allegation da on ci.cr_no::varchar = da.crid;

create view case_allegation_settlement as (select cases_payment.case_id, allegation_id, sum(payment) settlement_num from cases_payment inner join case_map on cases_payment.case_id = case_map.case_id group by cases_payment.case_id, case_map.allegation_id);

select data_victim.allegation_id, race, allegation_category_id, judge, settlement_num
from data_victim inner join data_officerallegation d on data_victim.allegation_id = d.allegation_id
    inner join data_investigatorallegation di on d.allegation_id = di.allegation_id
    inner join case_allegation_settlement cas on d.allegation_id = cas.allegation_id
    inner join cases_case on cases_case.id = cas.case_id;

--question 4 data retrieval

