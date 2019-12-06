SELECT race, primary_cause, avg(payment), COUNT(*) FROM victim_results GROUP BY race, primary_cause ORDER BY race  ASC;
