SELECT primary_cause, ROUND(AVG(payment),1) AS "Average" FROM victim_results GROUP BY primary_cause;
