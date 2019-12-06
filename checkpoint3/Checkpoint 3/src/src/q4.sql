SELECT race, primary_cause, judge, COUNT(*), avg(payment) FROM victim_results GROUP BY race, primary_cause, judge  ORDER BY avg DESC;
