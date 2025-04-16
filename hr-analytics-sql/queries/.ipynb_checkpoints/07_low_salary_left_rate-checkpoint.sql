SELECT 
    ROUND(100.0 * SUM(CASE WHEN left = 1 AND salary= 'low' THEN 1 ELSE 0 END) / COUNT(*),4) AS low_left_percentage
FROM employees
