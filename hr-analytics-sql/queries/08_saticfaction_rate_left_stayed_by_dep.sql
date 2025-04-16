SELECT 
    Department, 
	AVG(CASE WHEN left = 1 THEN satisfaction_level ELSE NULL END) AS left_satisfaction_level,
    AVG(CASE WHEN left = 0 THEN satisfaction_level ELSE NULL END) AS stayed_satisfaction_level
FROM employees
GROUP BY Department
