SELECT 
    Department, 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN left = 1 THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN left = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS left_percentage
FROM employees
GROUP BY Department
ORDER BY left_percentage DESC;