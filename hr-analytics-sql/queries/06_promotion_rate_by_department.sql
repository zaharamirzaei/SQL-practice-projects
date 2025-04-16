SELECT Department,
	ROUND(100.0 * SUM(CASE WHEN promotion_last_5years = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS promotion_rate
FROM employees
GROUP BY Department